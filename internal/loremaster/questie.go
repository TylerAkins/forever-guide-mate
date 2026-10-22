package loremaster

import (
	"encoding/json"
	"fmt"
	"sort"
	"strconv"
	"strings"

	"github.com/TylerAkins/forever-guide-mate/internal/questexport"
	"github.com/TylerAkins/forever-guide-mate/internal/questiepolicy"
)

// Questie's requiredRaces mask holds one bit per race ID, as raceMaskById in
// QuestieDB's corrections/enum/expansions.lua defines. Bits 32 and 33 are
// Forever's Skyborne faction flags (IDs 95 and 96): they name a whole faction,
// not a race a character can be, so they map to a faction and not to a race
// condition. The requiredClasses mask uses the WoW class bits. The authoring
// tool names races and classes by the IDs below.
var (
	questieRaceIDs       = []int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 22, 24, 25, 26}
	questieRaceBits      = map[int]int{1: 1, 2: 2, 3: 4, 4: 8, 5: 16, 6: 32, 7: 64, 8: 128, 9: 256, 10: 512, 11: 1024, 22: 2097152, 24: 8388608, 25: 16777216, 26: 33554432}
	questieAllianceFlag  = 1 << 32
	questieHordeFlag     = 1 << 33
	allianceRaceIDs      = map[int]bool{1: true, 3: true, 4: true, 7: true}
	hordeRaceIDs         = map[int]bool{2: true, 5: true, 6: true, 8: true}
	sourceClassIDs       = []int{1, 2, 3, 4, 5, 7, 8, 9, 11}
	questieClassBits     = map[int]int{1: 1, 2: 2, 3: 4, 4: 8, 5: 16, 7: 64, 8: 128, 9: 256, 11: 1024}
	unsupportedMechanics = []string{"requiredMinRep", "requiredMaxRep", "requiredSpell", "requiredSpecialization", "requiredRanks", "requiredMaxLevel", "childQuests", "extraObjectives"}
)

const (
	spawnKindNPC    = 1
	spawnKindObject = 2
)

// questieView reads records as one faction sees them. The empty faction reads
// the base records, which the authoring flow uses before a faction is chosen.
type questieView struct {
	export  *questexport.Export
	faction string
}

// record returns the record for one entity and a reason it is not usable as
// observed. A class-specific record is still returned, so callers can keep the
// fields they need while the reason fails the quest closed.
func (view questieView) record(datatype string, id int) (map[string]any, string) {
	if view.faction == "" {
		if record, ok := view.export.Base[datatype][strconv.Itoa(id)]; ok {
			return record, ""
		}
		return nil, fmt.Sprintf("%s %d is absent from the QuestieDB export", datatype, id)
	}
	record, classSpecific, err := view.export.FactionRecord(view.faction, datatype, id)
	if err != nil {
		return nil, err.Error()
	}
	if classSpecific {
		return record, fmt.Sprintf("%s %d differs by class in QuestieDB; authoring is not class-specific", datatype, id)
	}
	return record, ""
}

// BuildQuestFacts derives the Loremaster facts for every quest in the QuestieDB
// export as one faction sees them. The empty faction reads the base records.
func BuildQuestFacts(export *questexport.Export, policy *questiepolicy.Policy, faction string) (map[int]map[string]any, error) {
	view := questieView{export: export, faction: faction}
	facts := make(map[int]map[string]any, len(export.Base["Quest"]))
	for key := range export.Base["Quest"] {
		id, err := strconv.Atoi(key)
		if err != nil {
			return nil, fmt.Errorf("invalid quest ID %q in the QuestieDB export", key)
		}
		fact, err := questFact(view, policy, id)
		if err != nil {
			return nil, err
		}
		facts[id] = fact
	}
	return facts, nil
}

func questFact(view questieView, policy *questiepolicy.Policy, questID int) (map[string]any, error) {
	record, reason := view.record("Quest", questID)
	if record == nil {
		return nil, fmt.Errorf("quest %d: %s", questID, reason)
	}
	unresolved := []any{}
	addUnresolved := func(text string) {
		for _, existing := range unresolved {
			if existing == text {
				return
			}
		}
		unresolved = append(unresolved, text)
	}
	if reason != "" {
		addUnresolved(reason)
	}

	offer := positiveOr(intField(record["requiredLevel"]), 1)
	level := positiveOr(intField(record["questLevel"]), offer)
	name := textField(record["name"])
	if name == "" {
		name = fmt.Sprintf("Quest %d", questID)
	}

	raceMask := intField(record["requiredRaces"])
	races, racesUnknown := unpackRaces(raceMask)
	if racesUnknown {
		addUnresolved("Race mask has bits outside the supported races")
	}
	faction := factionForRaces(races)
	allianceFlag, hordeFlag := raceMask&questieAllianceFlag != 0, raceMask&questieHordeFlag != 0
	if allianceFlag != hordeFlag {
		flagged := "Horde"
		if allianceFlag {
			flagged = "Alliance"
		}
		if faction != "" && faction != flagged {
			addUnresolved("Faction and race observations have no applicable character")
		}
		faction = flagged
	}
	classes, classesUnknown := unpackClasses(intField(record["requiredClasses"]))
	if classesUnknown {
		addUnresolved("Class mask has bits outside the supported classes")
	}
	var skill any
	if raw := record["requiredSkill"]; raw != nil {
		pair := sourceList(raw)
		skillID, okSkill := fieldInt(pair, 0)
		rank, okRank := fieldInt(pair, 1)
		if !okSkill || !okRank {
			addUnresolved("Unsupported profession requirement")
		} else {
			skill = []any{skillID, rank}
		}
	}

	requirements := []any{}
	for _, entry := range []struct{ field, mode string }{{"preQuestGroup", "all"}, {"preQuestSingle", "any"}} {
		ids := idList(record[entry.field])
		invalid := false
		clean := []any{}
		seen := map[int]bool{}
		for _, id := range ids {
			if id <= 0 || id == questID {
				invalid = true
				continue
			}
			if !seen[id] {
				clean = append(clean, id)
				seen[id] = true
			}
		}
		if invalid {
			addUnresolved(entry.field + " has signed, self, or unsupported references")
		} else if len(clean) > 0 {
			requirements = append(requirements, map[string]any{"mode": entry.mode, "quests": clean})
		}
	}
	for _, field := range unsupportedMechanics {
		if truthy(record[field]) {
			addUnresolved(field + " requires reviewed mechanics not represented by this authoring tool")
		}
	}

	objectivesText := []any{}
	for _, line := range sourceList(record["objectivesText"]) {
		objectivesText = append(objectivesText, textField(line))
	}
	objectives := object(record["objectives"])
	creatures := objectiveRows(objectives["1"])
	objectsRows := objectiveRows(objectives["2"])
	itemRows := objectiveRows(objectives["3"])
	otherObjectives := len(creatures) > 0 || len(objectsRows) > 0

	builder := &factBuilder{view: view, addUnresolved: addUnresolved}
	npcs, objectIDs, itemIDs := providerGroups(record["startedBy"])
	points := []any{}
	for _, id := range npcs {
		points = append(points, builder.spawns("Npc", id, "start", "")...)
	}
	for _, id := range objectIDs {
		points = append(points, builder.spawns("Object", id, "start", "")...)
	}
	endNPCs, endObjects, _ := providerGroups(record["finishedBy"])
	for _, id := range endNPCs {
		points = append(points, builder.spawns("Npc", id, "end", "")...)
	}
	for _, id := range endObjects {
		points = append(points, builder.spawns("Object", id, "end", "")...)
	}
	for _, row := range creatures {
		points = append(points, builder.spawns("Npc", intField(rowField(row, 1)), "objective", "")...)
	}
	for _, row := range objectsRows {
		points = append(points, builder.spawns("Object", intField(rowField(row, 1)), "objective", "")...)
	}

	joined := strings.ToLower(strings.Join(textList(objectivesText), " "))
	objectiveItems := []any{}
	labels := []any{}
	counts := []any{}
	seenItems := map[int]bool{}
	for _, row := range itemRows {
		id := intField(rowField(row, 1))
		if id <= 0 || seenItems[id] {
			continue
		}
		seenItems[id] = true
		itemRecord, itemReason := view.record("Item", id)
		if itemReason != "" {
			addUnresolved(itemReason)
		}
		var label any
		if itemRecord != nil && itemReason == "" {
			if itemName := textField(itemRecord["name"]); itemName != "" && strings.Contains(joined, strings.ToLower(itemName)) {
				label = itemName
			}
		}
		var count any
		if n := intField(rowField(row, 3)); n > 0 {
			count = n
		}
		objectiveItems = append(objectiveItems, id)
		labels = append(labels, label)
		counts = append(counts, count)
		if label != nil {
			points = append(points, builder.dropSources(itemRecord, label.(string))...)
		}
	}

	var item any
	sourceItem := intField(record["sourceItemId"])
	if sourceItem > 0 && (len(npcs)+len(objectIDs) == 0 || len(itemIDs) > 0) {
		itemName := any(nil)
		if itemRecord, itemReason := view.record("Item", sourceItem); itemReason == "" && textField(itemRecord["name"]) != "" {
			itemName = textField(itemRecord["name"])
		}
		item = map[string]any{"id": sourceItem, "name": itemName}
	}

	flags := questexport.QuestFlags(record, questID, policy)
	flagValues := map[string]any{}
	for key, value := range flags {
		flagValues[key] = value
	}
	var holiday any
	if entry, ok := policy.HolidayEntry(questID); ok {
		holiday = map[string]any{"event": entry.Event, "hidden": entry.Hidden}
	}

	evidence := map[string]any{
		"source":          "QuestieDB",
		"artifactVersion": view.export.Manifest.ArtifactVersion,
		"buildCommit":     view.export.Manifest.BuildCommit,
	}

	return map[string]any{
		"id": questID, "name": name, "offer": offer, "level": level,
		"races": races, "classes": classes, "faction": faction, "skill": skill,
		"flags": flagValues, "holiday": holiday, "requirements": requirements, "unresolved": unresolved,
		"objectivesText": objectivesText, "objectiveItems": objectiveItems,
		"objectiveLabels": labels, "objectiveCounts": counts,
		"otherObjectives": otherObjectives, "points": points,
		"zoneId": intField(record["zoneOrSort"]), "item": item,
		"exclusiveTo": idsAny(record["exclusiveTo"]), "breadcrumbs": idsAny(record["breadcrumbs"]),
		"breadcrumbForQuestId": intField(record["breadcrumbForQuestId"]),
		"evidence":             evidence,
	}, nil
}

// factBuilder turns spawn lists into map points and records why a referenced
// entity cannot be used.
type factBuilder struct {
	view          questieView
	addUnresolved func(string)
}

// spawns returns one map point per spawn of an NPC or object. Each point keeps
// the faction's hostility to each side, which the collection instructions use.
func (b *factBuilder) spawns(datatype string, id int, kind, item string) []any {
	if id <= 0 {
		return nil
	}
	record, reason := b.view.record(datatype, id)
	if reason != "" {
		b.addUnresolved(reason)
		return nil
	}
	typeCode := spawnKindNPC
	if datatype == "Object" {
		typeCode = spawnKindObject
	}
	friendly := textField(record["friendlyToFaction"])
	reactAlliance, reactHorde := 1, 1
	if friendly == "" || friendly == "H" {
		reactAlliance = -1
	}
	if friendly == "" || friendly == "A" {
		reactHorde = -1
	}
	spawnsByZone := object(record["spawns"])
	result := []any{}
	for _, zoneKey := range numericKeys(spawnsByZone) {
		zone, _ := strconv.Atoi(zoneKey)
		for _, raw := range sourceList(spawnsByZone[zoneKey]) {
			coord := sourceList(raw)
			x, okX := numberField(coord, 0)
			y, okY := numberField(coord, 1)
			if !okX || !okY {
				b.addUnresolved(fmt.Sprintf("%s %d has a malformed spawn point", datatype, id))
				continue
			}
			point := map[string]any{
				"point": kind, "id": id, "zone": zone, "coord": []any{x, y},
				"name": textField(record["name"]), "type": typeCode,
			}
			if datatype == "Npc" {
				point["reactalliance"] = reactAlliance
				point["reacthorde"] = reactHorde
			}
			if item != "" {
				point["item"] = item
			}
			result = append(result, point)
		}
	}
	return result
}

// dropSources returns the NPC and object spawns that drop an item, labelled as
// the item's material source for collection instructions.
func (b *factBuilder) dropSources(itemRecord map[string]any, label string) []any {
	result := []any{}
	for _, id := range idList(itemRecord["npcDrops"]) {
		result = append(result, b.spawns("Npc", id, "sourcerequirement", label)...)
	}
	for _, id := range idList(itemRecord["objectDrops"]) {
		result = append(result, b.spawns("Object", id, "sourcerequirement", label)...)
	}
	return result
}

// providerGroups splits a Questie startedBy or finishedBy value into its NPC,
// object, and item groups.
func providerGroups(value any) (npcs, objects, items []int) {
	groups := sourceList(value)
	if len(groups) > 0 {
		npcs = idList(groups[0])
	}
	if len(groups) > 1 {
		objects = idList(groups[1])
	}
	if len(groups) > 2 {
		items = idList(groups[2])
	}
	return npcs, objects, items
}

// objectiveRows returns the rows of one objective group. A row is either a
// sequence {id, text, icon} or a sparse table keyed by index.
func objectiveRows(value any) []any {
	return sourceList(value)
}

func rowField(row any, index int) any {
	switch typed := row.(type) {
	case map[string]any:
		return typed[strconv.Itoa(index)]
	case []any:
		if index-1 < len(typed) {
			return typed[index-1]
		}
	}
	return nil
}

// RaceIDs returns the race IDs a requiredRaces mask names. Faction flags are not
// races, so they are left out.
func RaceIDs(mask int) []int {
	ids, _ := unpackRaceIDs(mask)
	return ids
}

// ClassIDs returns the class IDs a requiredClasses mask names.
func ClassIDs(mask int) []int {
	ids, _ := unpackClassIDs(mask)
	return ids
}

func unpackRaces(mask int) ([]any, bool) {
	ids, unknown := unpackRaceIDs(mask)
	result := make([]any, 0, len(ids))
	for _, id := range ids {
		result = append(result, id)
	}
	return result, unknown
}

func unpackClasses(mask int) ([]any, bool) {
	ids, unknown := unpackClassIDs(mask)
	result := make([]any, 0, len(ids))
	for _, id := range ids {
		result = append(result, id)
	}
	return result, unknown
}

// unpackRaceIDs lists the race IDs in a mask, and reports bits it does not map.
func unpackRaceIDs(mask int) ([]int, bool) {
	ids := []int{}
	known := 0
	for _, id := range questieRaceIDs {
		if bit := questieRaceBits[id]; mask&bit != 0 {
			ids = append(ids, id)
			known |= bit
		}
	}
	known |= mask & (questieAllianceFlag | questieHordeFlag)
	return ids, mask&^known != 0
}

// unpackClassIDs lists the class IDs in a mask, and reports bits it does not map.
func unpackClassIDs(mask int) ([]int, bool) {
	ids := []int{}
	mapped := 0
	for _, id := range sourceClassIDs {
		if bit := questieClassBits[id]; mask&bit != 0 {
			ids = append(ids, id)
			mapped |= bit
		}
	}
	return ids, mask&^mapped != 0
}

func factionForRaces(races []any) string {
	if len(races) == 0 {
		return ""
	}
	alliance, horde := true, true
	for _, raw := range races {
		id, _ := raw.(int)
		alliance = alliance && allianceRaceIDs[id]
		horde = horde && hordeRaceIDs[id]
	}
	switch {
	case alliance:
		return "Alliance"
	case horde:
		return "Horde"
	}
	return ""
}

// idList reads one ID or a list of IDs. Entries that are not numbers become 0,
// so callers treat them as invalid references.
func idList(value any) []int {
	switch typed := value.(type) {
	case nil:
		return nil
	case []any:
		result := make([]int, 0, len(typed))
		for _, raw := range typed {
			result = append(result, intField(raw))
		}
		return result
	}
	if n := intField(value); n != 0 {
		return []int{n}
	}
	return nil
}

func idsAny(value any) []any {
	result := []any{}
	for _, id := range idList(value) {
		if id > 0 {
			result = append(result, id)
		}
	}
	return result
}

func textList(values []any) []string {
	result := make([]string, 0, len(values))
	for _, value := range values {
		result = append(result, textField(value))
	}
	return result
}

func textField(value any) string {
	text, _ := value.(string)
	return text
}

// intField reads a JSON or Lua number as an int, or 0 when it is not a number.
func intField(value any) int {
	switch typed := value.(type) {
	case float64:
		return int(typed)
	case int:
		return typed
	case json.Number:
		n, _ := typed.Int64()
		return int(n)
	}
	return 0
}

func fieldInt(list []any, index int) (int, bool) {
	if index >= len(list) {
		return 0, false
	}
	switch list[index].(type) {
	case float64, int, json.Number:
		return intField(list[index]), true
	}
	return 0, false
}

func numberField(list []any, index int) (float64, bool) {
	if index >= len(list) {
		return 0, false
	}
	switch typed := list[index].(type) {
	case float64:
		return typed, true
	case int:
		return float64(typed), true
	case json.Number:
		n, err := typed.Float64()
		return n, err == nil
	}
	return 0, false
}

func positiveOr(value, fallback int) int {
	if value > 0 {
		return value
	}
	return fallback
}

// numericKeys returns the keys of a decimal-keyed table in numeric order.
func numericKeys(values map[string]any) []string {
	keys := make([]string, 0, len(values))
	for key := range values {
		keys = append(keys, key)
	}
	sort.Slice(keys, func(i, j int) bool {
		a, _ := strconv.Atoi(keys[i])
		b, _ := strconv.Atoi(keys[j])
		return a < b
	})
	return keys
}
