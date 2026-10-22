package questdb

import (
	"encoding/json"
	"os"
	"path/filepath"
	"reflect"
	"testing"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
)

func writeJSON(t *testing.T, path string, value any) {
	t.Helper()
	if err := os.MkdirAll(filepath.Dir(path), 0755); err != nil {
		t.Fatal(err)
	}
	data, err := json.Marshal(value)
	if err != nil {
		t.Fatal(err)
	}
	if err := os.WriteFile(path, data, 0644); err != nil {
		t.Fatal(err)
	}
}

func TestLoadMinLevelsMergesPartialExports(t *testing.T) {
	root := t.TempDir()
	index := filepath.Join(root, "index.json")
	writeJSON(t, index, map[string]any{"95981": map[string]any{"id": 95981, "minLevel": 10, "list": map[string]any{"level": 20, "reqlevel": 10, "firstseenpatch": 16001}}, "96821": map[string]any{"id": 96821, "minLevel": 1, "list": map[string]any{"level": 6, "reqlevel": 1, "firstseenpatch": 16001}}})
	writeJSON(t, filepath.Join(root, "export", "forever", "quests", "0001.json"), map[string]any{"quests": map[string]any{"95981": map[string]any{"id": 95981, "requiredLevel": 10}, "96821": map[string]any{"id": 96821, "questLevel": 0, "requiredLevel": -1}, "99411": map[string]any{"id": 99411, "requiredLevel": 5}}})
	levels, err := LoadMinLevels(index, root)
	if err != nil {
		t.Fatal(err)
	}
	for quest, want := range map[int]LevelPair{95981: {20, 10}, 96821: {6, 1}, 99411: {5, 5}} {
		if got := levels[quest]; got != want {
			t.Errorf("quest %d levels=%+v, want %+v", quest, got, want)
		}
	}
}

func TestNormalizeExportQuestMapsSchemaV2RequirementsAndEligibility(t *testing.T) {
	record, err := NormalizeExportQuest(map[string]any{"id": 92461, "name": "Harmony in Balance", "preQuestSingle": []any{92460}, "questLevel": 1, "requiredLevel": 1, "requiredClasses": []any{7}, "requiredRaces": []any{2}})
	if err != nil {
		t.Fatal(err)
	}
	if numberValue(record["id"]) != 92461 {
		t.Fatalf("quest id=%#v", record["id"])
	}
	if !reflect.DeepEqual(record["classes"], []any{7}) {
		t.Fatalf("classes=%#v", record["classes"])
	}
	detail := object(record["detail"])
	requirements := object(detail["requirements"])
	if !reflect.DeepEqual(requirements["anyOf"], []any{92460}) {
		t.Fatalf("requirements=%#v", requirements)
	}
	fields := object(object(detail["questie"])["fields"])
	if !reflect.DeepEqual(fields["requiredRaces"], []any{2}) {
		t.Fatalf("races=%#v", fields["requiredRaces"])
	}
}

func numberValue(value any) int { number, _ := number(value); return number }

func TestLoadRecordsMergesCompiledNavigationAndReplacesChain(t *testing.T) {
	root := t.TempDir()
	writeJSON(t, filepath.Join(root, "data", "forever", "compiled", "zones", "silverpine.json"), map[string]any{"quests": map[string]any{"95981": map[string]any{"index": map[string]any{"list": map[string]any{"level": 20, "reqlevel": 10, "firstseenpatch": 16001}}, "detail": map[string]any{"startPins": []any{map[string]any{"mapID": 1421}}, "requirements": map[string]any{"allOf": []any{99}}, "questie": map[string]any{"fields": map[string]any{"preQuestGroup": []any{99}}}}}}})
	writeJSON(t, filepath.Join(root, "export", "forever", "quests", "0001.json"), map[string]any{"quests": map[string]any{"95981": map[string]any{"id": 95981, "requiredLevel": 10, "preQuestSingle": []any{479}}}})
	records, err := LoadQuestRecords(root, "")
	if err != nil {
		t.Fatal(err)
	}
	record := records[95981]
	detail := object(record["detail"])
	requirements := object(detail["requirements"])
	groups, ok := requirements["anyOf"].([]any)
	questID := 0
	if ok && len(groups) == 1 {
		questID, _ = number(groups[0])
	}
	if !ok || len(groups) != 1 || questID != 479 {
		t.Fatalf("export chain not applied: %#v", requirements)
	}
	pins := detail["startPins"].([]any)
	mapID := 0
	if len(pins) == 1 {
		mapID, _ = number(object(pins[0])["mapID"])
	}
	if len(pins) != 1 || mapID != 1421 {
		t.Fatalf("navigation lost: %#v", pins)
	}
	if got := loremaster.StepLevel(record); got != 20 {
		t.Fatalf("step level=%d, want 20", got)
	}
}

func TestExplicitIndexDoesNotDiscoverSiblingDatabase(t *testing.T) {
	root := t.TempDir()
	index := filepath.Join(root, "fixed-index.json")
	writeJSON(t, index, map[string]any{"99": map[string]any{"id": 99, "minLevel": 9}})
	writeJSON(t, filepath.Join(root, "workspace", "wow-database", "export", "forever", "quests", "0001.json"), map[string]any{"quests": map[string]any{"99411": map[string]any{"id": 99411, "requiredLevel": 5}}})
	levels, err := LoadMinLevels(index, filepath.Join(root, "workspace", "addon"))
	if err != nil {
		t.Fatal(err)
	}
	if len(levels) != 1 || levels[99] != (LevelPair{9, 9}) {
		t.Fatalf("explicit index unexpectedly discovered sibling export: %#v", levels)
	}
}
