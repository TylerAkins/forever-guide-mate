// Package questdb turns the QuestieDB export into the quest records the level
// and prerequisite audits read.
package questdb

import (
	"fmt"
	"strconv"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
	"github.com/TylerAkins/forever-guide-mate/internal/questexport"
)

type LevelPair struct {
	Step  int `json:"step"`
	Offer int `json:"offer"`
}

var exportFields = []string{"name", "questLevel", "requiredLevel", "exclusiveTo", "breadcrumbs", "breadcrumbForQuestId", "nextQuestInChain", "requiredSkill"}

func number(value any) (int, bool) {
	switch v := value.(type) {
	case int:
		return v, true
	case float64:
		return int(v), v == float64(int(v))
	case string:
		n, e := strconv.Atoi(v)
		return n, e == nil
	default:
		return 0, false
	}
}

func listInts(value any) []any {
	if n, ok := number(value); ok && n > 0 {
		return []any{n}
	}
	items, ok := value.([]any)
	if !ok {
		return []any{}
	}
	result := []any{}
	for _, item := range items {
		if n, ok := number(item); ok && n > 0 {
			result = append(result, n)
		}
	}
	return result
}

func stringValue(value any) string {
	if v, ok := value.(string); ok {
		return v
	}
	return ""
}

// questRecord builds the record shape the level audits read from one base Quest
// record. Questie records no first-seen patch, so no quest is marked Forever-only.
func questRecord(id int, quest map[string]any) map[string]any {
	questLevel, hasQuestLevel := number(quest["questLevel"])
	requiredLevel, hasRequiredLevel := number(quest["requiredLevel"])
	var listedLevel, listedRequired any
	if hasQuestLevel {
		listedLevel = questLevel
	}
	if hasRequiredLevel {
		listedRequired = requiredLevel
	}
	classes := loremaster.ClassIDs(intOf(quest["requiredClasses"]))
	races := loremaster.RaceIDs(intOf(quest["requiredRaces"]))
	fields := map[string]any{"requiredClasses": idsAny(classes), "requiredRaces": idsAny(races)}
	for _, key := range exportFields {
		if value, exists := quest[key]; exists && value != nil {
			fields[key] = value
		}
	}
	for _, key := range []string{"questLevel", "requiredLevel"} {
		if n, ok := number(quest[key]); !ok || n <= 0 {
			delete(fields, key)
		}
	}
	reqclass := 0
	if len(classes) > 0 {
		reqclass = 1
	}
	return map[string]any{
		"id": id,
		"list": map[string]any{
			"id": id, "level": listedLevel, "reqlevel": listedRequired,
			"name": stringValue(quest["name"]), "reqclass": reqclass,
		},
		"minLevel": listedRequired,
		"classes":  idsAny(classes),
		"detail": map[string]any{
			"requirements": map[string]any{
				"allOf":            listInts(quest["preQuestGroup"]),
				"anyOf":            listInts(quest["preQuestSingle"]),
				"exclusiveTo":      listInts(quest["exclusiveTo"]),
				"breadcrumbs":      listInts(quest["breadcrumbs"]),
				"nextQuestInChain": quest["nextQuestInChain"],
			},
			"questie": map[string]any{"fields": fields},
		},
	}
}

func intOf(value any) int {
	n, _ := number(value)
	return n
}

func idsAny(ids []int) []any {
	result := make([]any, 0, len(ids))
	for _, id := range ids {
		result = append(result, id)
	}
	return result
}

// LoadQuestRecords returns the quest records keyed by quest ID.
func LoadQuestRecords(export *questexport.Export) (map[int]map[string]any, error) {
	records := make(map[int]map[string]any, len(export.Base["Quest"]))
	for key, quest := range export.Base["Quest"] {
		id, err := strconv.Atoi(key)
		if err != nil {
			return nil, fmt.Errorf("invalid quest ID %q in the QuestieDB export", key)
		}
		records[id] = questRecord(id, quest)
	}
	return records, nil
}

func RecordLevels(record map[string]any) (step, offer int) {
	return loremaster.StepLevel(record), loremaster.OfferLevel(record)
}

// LoadMinLevels returns the pickup and offer levels for every quest with a level.
func LoadMinLevels(export *questexport.Export) (map[int]LevelPair, error) {
	records, err := LoadQuestRecords(export)
	if err != nil {
		return nil, err
	}
	levels := map[int]LevelPair{}
	for questID, record := range records {
		step := loremaster.StepLevel(record)
		offer := loremaster.OfferLevel(record)
		if step > 0 {
			if offer == 0 {
				offer = step
			}
			levels[questID] = LevelPair{step, offer}
		} else if offer > 0 {
			levels[questID] = LevelPair{offer, offer}
		}
	}
	return levels, nil
}
