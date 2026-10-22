package questdb

import (
	"reflect"
	"testing"

	"github.com/TylerAkins/forever-guide-mate/internal/questexport"
)

func testExport(quests map[string]map[string]any) *questexport.Export {
	return &questexport.Export{
		Manifest: questexport.Manifest{ArtifactVersion: "test", BuildCommit: "abc"},
		Base:     map[string]questexport.Records{"Quest": quests},
	}
}

func TestLoadMinLevelsUsesQuestLevelAndRequiredLevel(t *testing.T) {
	levels, err := LoadMinLevels(testExport(map[string]map[string]any{
		"1": {"questLevel": 20, "requiredLevel": 10},
		"2": {"requiredLevel": 6},
		"3": {"questLevel": 0, "requiredLevel": 0},
	}))
	if err != nil {
		t.Fatal(err)
	}
	if levels[1] != (LevelPair{Step: 20, Offer: 10}) || levels[2] != (LevelPair{Step: 6, Offer: 6}) {
		t.Fatalf("levels = %#v", levels)
	}
	if _, ok := levels[3]; ok {
		t.Fatal("a quest with no positive level must have no entry")
	}
}

func TestQuestRecordUnpacksMasksAndRequirements(t *testing.T) {
	records, err := LoadQuestRecords(testExport(map[string]map[string]any{
		"10": {"name": "Alpha", "requiredClasses": 1 | 4, "requiredRaces": 1 | 2, "preQuestGroup": []any{5, 6}, "preQuestSingle": []any{7}},
	}))
	if err != nil {
		t.Fatal(err)
	}
	record := records[10]
	if !reflect.DeepEqual(record["classes"], []any{1, 3}) {
		t.Fatalf("classes = %v, want warrior and hunter IDs", record["classes"])
	}
	fields := record["detail"].(map[string]any)["questie"].(map[string]any)["fields"].(map[string]any)
	if !reflect.DeepEqual(fields["requiredRaces"], []any{1, 2}) {
		t.Fatalf("requiredRaces = %v, want Human and Orc IDs", fields["requiredRaces"])
	}
	requirements := record["detail"].(map[string]any)["requirements"].(map[string]any)
	if !reflect.DeepEqual(requirements["allOf"], []any{5, 6}) || !reflect.DeepEqual(requirements["anyOf"], []any{7}) {
		t.Fatalf("requirements = %#v", requirements)
	}
}

func TestQuestRecordCarriesNoFirstSeenPatch(t *testing.T) {
	records, err := LoadQuestRecords(testExport(map[string]map[string]any{
		"95000": {"name": "Beta", "requiredLevel": 5},
	}))
	if err != nil {
		t.Fatal(err)
	}
	if _, ok := records[95000]["list"].(map[string]any)["firstseenpatch"]; ok {
		t.Fatal("QuestieDB records carry no first-seen patch")
	}
}
