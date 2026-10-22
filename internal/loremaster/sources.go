package loremaster

import (
	"bufio"
	"compress/gzip"
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"regexp"
	"sort"
	"strconv"
	"strings"
)

var sourcePriority = []string{"wowhead", "questiedb", "allthethings", "foreverclient"}
var sourceClassIDs = []int{1, 2, 3, 4, 5, 7, 8, 9, 11}
var evidenceKeys = map[string]bool{
	"name": true, "classes": true, "races": true, "faction": true,
	"requiredRaces": true, "requiredClasses": true, "questLevel": true,
	"requiredLevel": true, "zoneOrSort": true, "flags": true,
	"preQuestGroup": true, "preQuestSingle": true,
	"prerequisiteReferences": true, "objectivesText": true, "objectives": true,
	"requiredSkill": true, "sourceItemId": true, "startedBy": true,
	"finishedBy": true, "exclusiveTo": true, "breadcrumbs": true,
	"breadcrumbForQuestId": true, "requiredMinRep": true,
	"requiredMaxRep": true, "requiredSpell": true,
	"requiredSpecialization": true, "requiredRanks": true,
	"sourceQuestNumRequired": true, "requiredMaxLevel": true,
	"childQuests": true, "extraObjectives": true,
}

// SourcePriority reports the ordered source precedence used when a fact is
// observed by more than one source.
func SourcePriority() []string {
	return append([]string{}, sourcePriority...)
}

func sourceMap(value any) map[string]any { return object(value) }
func sourceList(value any) []any {
	if result, ok := value.([]any); ok {
		return result
	}
	return nil
}
func sourceInt(value any) (int, bool) { return intValue(value) }
func sourceString(value any) string   { text, _ := value.(string); return text }
func sourceIDs(value any) []any {
	if n, ok := sourceInt(value); ok {
		if n != 0 {
			return []any{n}
		}
		return []any{}
	}
	if values, ok := value.([]any); ok {
		return values
	}
	return []any{}
}
func nestedMap(m map[string]any, key string) map[string]any { return object(m[key]) }

func QuestFacts(questID int, attributes map[string]any) map[string]any {
	sources := nestedMap(attributes, "sourceData")
	observed := map[string]map[string]any{}
	for _, name := range sourcePriority {
		observed[name] = nestedMap(nestedMap(sources, name), "attributes")
	}
	choose := func(keys ...string) any {
		for _, name := range sourcePriority {
			for _, key := range keys {
				if value, exists := observed[name][key]; exists && value != nil {
					return value
				}
			}
		}
		return nil
	}
	wh := observed["wowhead"]
	catalog := nestedMap(wh, "wowheadCatalog")
	listed := nestedMap(catalog, "list")
	detail := nestedMap(wh, "wowheadDetail")
	flags := choose("flags")
	if flags == nil {
		flags = map[string]any{}
	}
	objectives := choose("objectives")
	items := []any{}
	otherObjectives := false
	if rows, ok := objectives.([]any); ok {
		if len(rows) > 2 {
			items = sourceList(rows[2])
		}
		for i := 0; i < 2 && i < len(rows); i++ {
			if truthy(rows[i]) {
				otherObjectives = true
			}
		}
	} else if rows, ok := objectives.(map[string]any); ok {
		items = sourceList(rows["item"])
	}
	objectiveItems := []any{}
	seenItems := map[int]bool{}
	for _, row := range items {
		var raw any
		switch value := row.(type) {
		case map[string]any:
			raw = value["id"]
		case []any:
			if len(value) > 0 {
				raw = value[0]
			}
		}
		if id, ok := sourceInt(raw); ok && !seenItems[id] {
			objectiveItems = append(objectiveItems, id)
			seenItems[id] = true
		}
	}
	objectiveLabels := make([]any, len(objectiveItems))
	objectiveCounts := make([]any, len(objectiveItems))
	for i := range objectiveLabels {
		objectiveLabels[i] = nil
		objectiveCounts[i] = nil
	}
	labelByID, countByID := map[int]string{}, map[int]int{}
	for _, row := range sourceList(nestedMap(observed["allthethings"], "objectives")["item"]) {
		entry := object(row)
		id, ok := sourceInt(entry["id"])
		if !ok {
			continue
		}
		text := sourceString(entry["text"])
		label := strings.TrimSpace(regexp.MustCompile(`^\s*\d+\s*/\s*\d+\s+`).ReplaceAllString(text, ""))
		if label != "" {
			labelByID[id] = label
		}
		if match := regexp.MustCompile(`^\s*\d+\s*/\s*(\d+)\s+`).FindStringSubmatch(text); match != nil {
			countByID[id], _ = strconv.Atoi(match[1])
		}
	}
	for i, value := range objectiveItems {
		id, _ := sourceInt(value)
		if label, ok := labelByID[id]; ok {
			objectiveLabels[i] = label
		}
		if count, ok := countByID[id]; ok {
			objectiveCounts[i] = count
		}
	}

	requirements := []any{}
	unresolved := []any{}
	for _, name := range sourcePriority {
		values := observed[name]
		_, group := values["preQuestGroup"]
		_, single := values["preQuestSingle"]
		if !group && !single {
			continue
		}
		for _, entry := range []struct{ field, mode string }{{"preQuestGroup", "all"}, {"preQuestSingle", "any"}} {
			ids := sourceIDs(values[entry.field])
			invalid := false
			clean := []any{}
			seen := map[int]bool{}
			for _, raw := range ids {
				id, ok := sourceInt(raw)
				if !ok || id <= 0 || id == questID {
					invalid = true
					continue
				}
				if !seen[id] {
					clean = append(clean, id)
					seen[id] = true
				}
			}
			if invalid {
				unresolved = append(unresolved, fmt.Sprintf("%s.%s has signed, self, or unsupported references", name, entry.field))
			} else if len(clean) > 0 {
				requirements = append(requirements, map[string]any{"mode": entry.mode, "quests": clean})
			}
		}
		break
	}
	for _, field := range []string{"requiredMinRep", "requiredMaxRep", "requiredSpell", "requiredSpecialization", "requiredRanks", "sourceQuestNumRequired", "requiredMaxLevel", "childQuests", "extraObjectives"} {
		if truthy(choose(field)) {
			unresolved = append(unresolved, field+" requires reviewed mechanics not represented by this authoring tool")
		}
	}
	traces := choose("races", "requiredRaces")
	if traces == nil {
		traces = []any{}
	}
	if _, ok := traces.([]any); !ok {
		unresolved = append(unresolved, "Race bitmask requires an explicit supported race observation")
		traces = []any{}
	}
	faction := choose("faction")
	if factionName := sourceString(faction); factionName != "" {
		allowed := map[string]map[int]bool{"Alliance": {1: true, 3: true, 4: true, 7: true, 95: true}, "Horde": {2: true, 5: true, 6: true, 8: true, 96: true}}
		if raceList, ok := traces.([]any); ok && len(raceList) > 0 && allowed[factionName] != nil {
			applicable := false
			for _, race := range raceList {
				if id, ok := sourceInt(race); ok && allowed[factionName][id] {
					applicable = true
				}
			}
			if !applicable {
				unresolved = append(unresolved, "Faction and race observations have no applicable character")
			}
		}
	}
	classes := choose("classes", "requiredClasses")
	if mask, ok := sourceInt(classes); ok {
		unpacked := []any{}
		for _, id := range sourceClassIDs {
			if mask&(1<<(id-1)) != 0 {
				unpacked = append(unpacked, id)
			}
		}
		classes = unpacked
	}
	if classes == nil {
		classes = []any{}
	}
	points := []any{}
	mapperObjectives := nestedMap(nestedMap(wh, "mapper"), "objectives")
	for _, groupKey := range sortedKeys(mapperObjectives) {
		group := mapperObjectives[groupKey]
		for _, level := range sourceList(object(group)["levels"]) {
			for _, point := range sourceList(level) {
				if p := object(point); p != nil {
					withZone := map[string]any{}
					for key, value := range p {
						withZone[key] = value
					}
					withZone["zone"] = object(group)["zone"]
					points = append(points, withZone)
				}
			}
		}
	}
	markup := sourceString(detail["infoboxMarkup"])
	itemMatch := regexp.MustCompile(`Start:.*?item=(\d+)/[^\]]*\]([^\[]+)`).FindStringSubmatch(markup)
	starter := choose("sourceItemId")
	providers := choose("startedBy")
	if list := sourceList(providers); len(list) > 0 {
		typed := object(list[0]) != nil
		providerIDs := []any{}
		nonItem := false
		if typed {
			for _, raw := range list {
				provider := object(raw)
				switch provider["type"] {
				case "item":
					providerIDs = append(providerIDs, provider["id"])
				case "npc", "object":
					nonItem = true
				}
			}
		} else {
			if len(list) > 2 {
				providerIDs = sourceIDs(list[2])
			}
			for _, raw := range list[:min(2, len(list))] {
				if truthy(raw) {
					nonItem = true
				}
			}
		}
		if nonItem && len(providerIDs) == 0 {
			starter = nil
		}
	}
	skill := choose("requiredSkill")
	if skill != nil {
		pair := sourceList(skill)
		if len(pair) < 2 {
			unresolved = append(unresolved, "Unsupported profession requirement")
			skill = nil
		} else if _, ok := sourceInt(pair[0]); !ok {
			unresolved = append(unresolved, "Unsupported profession requirement")
			skill = nil
		} else if _, ok := sourceInt(pair[1]); !ok {
			unresolved = append(unresolved, "Unsupported profession requirement")
			skill = nil
		}
	}
	positiveSource := func(key string, fallback int) int {
		for _, name := range sourcePriority {
			if n, ok := sourceInt(observed[name][key]); ok && n > 0 {
				return n
			}
		}
		return fallback
	}
	offer := positiveSource("requiredLevel", 1)
	level := positiveSource("questLevel", offer)
	var firstSeen any = listed["firstseenpatch"]
	forever := false
	if n, ok := sourceInt(firstSeen); ok && n == foreverPatch {
		forever = true
	}
	for _, declaration := range sourceList(observed["allthethings"]["declarations"]) {
		timeline := sourceString(nestedMap(object(declaration), "rawFields")["timeline"])
		if strings.Contains(timeline, "ADDED_1_60_1") {
			forever = true
		}
	}
	name := choose("name")
	if name == nil {
		name = fmt.Sprintf("Quest %d", questID)
	}
	item := any(nil)
	if itemMatch != nil {
		id, _ := strconv.Atoi(itemMatch[1])
		item = map[string]any{"id": id, "name": strings.TrimSpace(itemMatch[2])}
	} else if id, ok := sourceInt(starter); ok && id != 0 {
		item = map[string]any{"id": id, "name": nil}
	}
	exclusive := sourceIDs(choose("exclusiveTo"))
	breadcrumbs := sourceIDs(choose("breadcrumbs"))
	sourceRevisions := map[string]any{}
	for key, value := range sources {
		sourceRevisions[key] = object(value)["revision"]
	}
	evidence := map[string]any{}
	for name, values := range observed {
		selected := map[string]any{}
		for key, value := range values {
			if evidenceKeys[key] {
				selected[key] = value
			}
		}
		evidence[name] = selected
	}
	var questieZone any = observed["questiedb"]["zoneOrSort"]
	var zoneID any = wh["zoneId"]
	typeID, _ := sourceInt(listed["type"])
	return map[string]any{"id": questID, "name": name, "offer": offer, "level": level, "races": traces, "classes": classes, "faction": faction, "skill": skill, "flags": flags, "elite": typeID == 1, "requirements": requirements, "unresolved": unresolved, "objectivesText": chooseDefault(choose("objectivesText"), []any{}), "objectiveItems": objectiveItems, "objectiveLabels": objectiveLabels, "objectiveCounts": objectiveCounts, "otherObjectives": otherObjectives, "points": points, "startPins": chooseDefault(wh["startPins"], []any{}), "zoneId": zoneID, "questieZone": questieZone, "forever": forever, "firstseenpatch": firstSeen, "item": item, "exclusiveTo": exclusive, "breadcrumbs": breadcrumbs, "breadcrumbForQuestId": choose("breadcrumbForQuestId"), "evidence": evidence, "sourceRevisions": sourceRevisions}
}

func sortedKeys(values map[string]any) []string {
	keys := make([]string, 0, len(values))
	for key := range values {
		keys = append(keys, key)
	}
	sort.Strings(keys)
	return keys
}

func truthy(value any) bool {
	if value == nil || value == false {
		return false
	}
	switch collection := value.(type) {
	case []any:
		return len(collection) > 0
	case map[string]any:
		return len(collection) > 0
	}
	if n, ok := sourceInt(value); ok && n == 0 {
		return false
	}
	if s, ok := value.(string); ok && s == "" {
		return false
	}
	return true
}
func chooseDefault(value, fallback any) any {
	if value == nil {
		return fallback
	}
	return value
}

func LoadSourceFacts(databaseRoot string) (map[int]map[string]any, error) {
	path := filepath.Join(databaseRoot, "data", "forever", "compilation", "records.jsonl.gz")
	file, err := os.Open(path)
	if err != nil {
		return nil, err
	}
	defer file.Close()
	stream, err := gzip.NewReader(file)
	if err != nil {
		return nil, err
	}
	defer stream.Close()
	facts := map[int]map[string]any{}
	itemNames := map[int]string{}
	scanner := bufio.NewScanner(stream)
	scanner.Buffer(make([]byte, 4096), 32*1024*1024)
	for scanner.Scan() {
		decoder := json.NewDecoder(strings.NewReader(scanner.Text()))
		decoder.UseNumber()
		var record map[string]any
		if err := decoder.Decode(&record); err != nil {
			return nil, fmt.Errorf("decode source record: %w", err)
		}
		entityType := sourceString(record["entityType"])
		if entityType != "item" && entityType != "quest" {
			continue
		}
		entityID, err := strconv.Atoi(sourceString(record["entityId"]))
		if err != nil {
			return nil, fmt.Errorf("invalid source entity ID %v", record["entityId"])
		}
		attributes := nestedMap(record, "attributes")
		if entityType == "item" {
			if name := originalItemName(attributes); name != "" {
				itemNames[entityID] = name
			}
		}
		if entityType == "quest" {
			facts[entityID] = QuestFacts(entityID, attributes)
		}
	}
	if err := scanner.Err(); err != nil {
		return nil, err
	}
	for _, fact := range facts {
		if item := object(fact["item"]); item != nil && item["name"] == nil {
			if id, ok := sourceInt(item["id"]); ok {
				if name := itemNames[id]; name != "" {
					item["name"] = name
				}
			}
		}
	}
	return facts, nil
}

func originalItemName(attributes map[string]any) string {
	sources := nestedMap(attributes, "sourceData")
	for _, name := range sourcePriority {
		observed := nestedMap(nestedMap(sources, name), "attributes")
		for _, key := range []string{"name", "Display_lang"} {
			if value := sourceString(observed[key]); value != "" {
				return value
			}
		}
		for _, entry := range sourceList(observed["observations"]) {
			if label := sourceString(object(entry)["label"]); label != "" {
				return label
			}
		}
	}
	return ""
}

func PrerequisiteAvailability(questID int, facts map[int]map[string]any, failures, visiting []int) map[string]any {
	return prerequisiteAvailability(questID, facts, intSet(failures), intSet(visiting))
}

func prerequisiteAvailability(questID int, facts map[int]map[string]any, failures, visiting map[int]bool) map[string]any {
	completed := map[string]any{"quest": map[string]any{"id": questID, "state": "completed"}}
	if failures[questID] || facts[questID] == nil || visiting[questID] {
		return completed
	}
	fact := facts[questID]
	history := map[string]any{"quest": map[string]any{"id": questID, "state": "activeOrCompleted"}}
	own := []any{}
	if item := object(fact["item"]); item != nil {
		name := sourceString(item["name"])
		if name == "" {
			return history
		}
		own = append(own, map[string]any{"item": map[string]any{"name": name, "minCount": 1}})
	}
	if faction := fact["faction"]; truthy(faction) {
		own = append(own, map[string]any{"faction": faction})
	}
	if races := fact["races"]; truthy(races) {
		own = append(own, map[string]any{"race": races})
	}
	if classes := fact["classes"]; truthy(classes) {
		own = append(own, map[string]any{"class": classes})
	}
	if skill := sourceList(fact["skill"]); len(skill) >= 2 {
		skillLine, _ := sourceInt(skill[0])
		rank, _ := sourceInt(skill[1])
		own = append(own, map[string]any{"profession": map[string]any{"skillLineID": skillLine, "minRank": rank}})
	}
	nextVisiting := make(map[int]bool, len(visiting)+1)
	for id := range visiting {
		nextVisiting[id] = true
	}
	nextVisiting[questID] = true
	for _, raw := range sourceList(fact["requirements"]) {
		group := object(raw)
		mode := sourceString(group["mode"])
		options := []any{}
		for _, parent := range sourceList(group["quests"]) {
			id, ok := sourceInt(parent)
			if ok {
				options = append(options, prerequisiteAvailability(id, facts, failures, nextVisiting))
			}
		}
		available := map[string]any{mode: options}
		if condition := group["conditions"]; truthy(condition) {
			available = map[string]any{"any": []any{map[string]any{"not": condition}, available}}
		}
		own = append(own, available)
	}
	return map[string]any{"any": []any{history, map[string]any{"all": own}}}
}

func intSet(values []int) map[int]bool {
	result := map[int]bool{}
	for _, value := range values {
		result[value] = true
	}
	return result
}

var luaIdentifier = regexp.MustCompile(`^[A-Za-z_][A-Za-z0-9_]*$`)
var luaKeywords = map[string]bool{"and": true, "break": true, "do": true, "else": true, "elseif": true, "end": true, "false": true, "for": true, "function": true, "if": true, "in": true, "local": true, "nil": true, "not": true, "or": true, "repeat": true, "return": true, "then": true, "true": true, "until": true, "while": true}

func Lua(value any, depth int) (string, error) {
	switch typed := value.(type) {
	case nil:
		return "nil", nil
	case bool:
		if typed {
			return "true", nil
		}
		return "false", nil
	case json.Number:
		return string(typed), nil
	case int:
		return strconv.Itoa(typed), nil
	case int64:
		return strconv.FormatInt(typed, 10), nil
	case float64:
		return strconv.FormatFloat(typed, 'f', -1, 64), nil
	case string:
		return strconv.Quote(typed), nil
	case []any:
		if len(typed) == 0 {
			return "{}", nil
		}
		fields := make([]string, 0, len(typed))
		for _, item := range typed {
			field, err := Lua(item, depth+1)
			if err != nil {
				return "", err
			}
			fields = append(fields, field)
		}
		return renderLuaTable(fields, depth), nil
	case map[string]any:
		if len(typed) == 0 {
			return "{}", nil
		}
		keys := sortedKeys(typed)
		fields := make([]string, 0, len(keys))
		for _, key := range keys {
			renderedKey := key
			if !luaIdentifier.MatchString(key) || luaKeywords[key] {
				literal, err := Lua(key, depth+1)
				if err != nil {
					return "", err
				}
				renderedKey = "[" + literal + "]"
			}
			value, err := Lua(typed[key], depth+1)
			if err != nil {
				return "", err
			}
			fields = append(fields, renderedKey+" = "+value)
		}
		return renderLuaTable(fields, depth), nil
	default:
		return "", fmt.Errorf("unsupported Lua value %T", value)
	}
}

func renderLuaTable(fields []string, depth int) string {
	length := 0
	singleLine := true
	for _, field := range fields {
		length += len(field)
		if strings.Contains(field, "\n") {
			singleLine = false
		}
	}
	if singleLine && length < 110 {
		return "{ " + strings.Join(fields, ", ") + " }"
	}
	indent := strings.Repeat("    ", depth+1)
	return "{\n" + indent + strings.Join(fields, ",\n"+indent) + ",\n" + strings.Repeat("    ", depth) + "}"
}
