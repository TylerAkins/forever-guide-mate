package questexport

import (
	"encoding/json"
	"os"
	"strings"
	"testing"

	"github.com/TylerAkins/forever-guide-mate/internal/questiepolicy"
)

func TestLoadFixtureResolvesVariantOverride(t *testing.T) {
	export, err := Load("testdata/export.json")
	if err != nil {
		t.Fatal(err)
	}
	base, err := export.Quest("", 78124)
	if err != nil {
		t.Fatal(err)
	}
	if !sameJSON(base["startedBy"], [][]int{{211022, 211033}, {409496}}) {
		t.Fatalf("base startedBy = %v", base["startedBy"])
	}
	horde, err := export.Quest("Horde/WARRIOR", 78124)
	if err != nil {
		t.Fatal(err)
	}
	if !sameJSON(horde["startedBy"], [][]int{{211022}, {409496}}) {
		t.Fatalf("Horde/WARRIOR startedBy = %v", horde["startedBy"])
	}
	alliance, err := export.Quest("Alliance/WARRIOR", 78124)
	if err != nil {
		t.Fatal(err)
	}
	if !sameJSON(alliance["startedBy"], base["startedBy"]) {
		t.Fatalf("variant without overrides must use the base record, got %v", alliance["startedBy"])
	}
}

func TestQuestRejectsUnknownVariantAndQuest(t *testing.T) {
	export, err := Load("testdata/export.json")
	if err != nil {
		t.Fatal(err)
	}
	if _, err := export.Quest("Orc/WARRIOR", 78124); err == nil {
		t.Fatal("unknown variant must fail")
	}
	if _, err := export.Quest("", 999999); err == nil {
		t.Fatal("unknown quest must fail")
	}
}

func TestParseRejectsInconsistentExports(t *testing.T) {
	fixture, err := readFixture()
	if err != nil {
		t.Fatal(err)
	}
	tests := []struct {
		name   string
		mutate func(map[string]any)
		want   string
	}{
		{"count mismatch", func(export map[string]any) {
			manifest := export["manifest"].(map[string]any)
			manifest["counts"].(map[string]any)["Quest"] = 3
		}, "manifest counts 3 Quest"},
		{"missing datatype", func(export map[string]any) {
			delete(export["base"].(map[string]any), "Item")
		}, "base is missing Item"},
		{"unknown datatype", func(export map[string]any) {
			export["base"].(map[string]any)["Spell"] = map[string]any{}
		}, "unknown datatype"},
		{"missing variant", func(export map[string]any) {
			delete(export["manifest"].(map[string]any)["variants"].(map[string]any), "Alliance/MAGE")
		}, "missing variant Alliance/MAGE"},
		{"override without base", func(export map[string]any) {
			override := export["variants"].(map[string]any)["Horde/WARRIOR"].(map[string]any)["Quest"].(map[string]any)
			delete(override, "78124")
			override["424242"] = map[string]any{"name": "Ghost"}
		}, "has no base record"},
		{"missing build commit", func(export map[string]any) {
			export["manifest"].(map[string]any)["buildCommit"] = ""
		}, "build commit"},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			var export map[string]any
			if err := json.Unmarshal(fixture, &export); err != nil {
				t.Fatal(err)
			}
			tt.mutate(export)
			data, err := json.Marshal(export)
			if err != nil {
				t.Fatal(err)
			}
			_, err = Parse(data)
			if err == nil {
				t.Fatal("expected an error")
			}
			if !strings.Contains(err.Error(), tt.want) {
				t.Fatalf("error = %v, want it to mention %q", err, tt.want)
			}
		})
	}
}

func TestQuestFlagsDeriveFromRecordAndPolicy(t *testing.T) {
	policy, err := questiepolicy.Parse([]byte(`{
		"holidays": [],
		"questTags": {
			"17": {"tagId": 81, "name": "Dungeon"},
			"18": {"tagId": 62, "name": "Raid"},
			"19": {"tagId": 85, "name": "Heroic"},
			"20": {"tagId": 41, "name": "PvP"},
			"21": {"tagId": 1, "name": "Elite"}
		}
	}`))
	if err != nil {
		t.Fatal(err)
	}
	record := map[string]any{"questFlags": float64(8), "specialFlags": float64(1)}
	flags := QuestFlags(record, 999, policy)
	if !flags["repeatable"] || !flags["sharable"] {
		t.Fatalf("repeatable and sharable should come from the record: %v", flags)
	}
	if flags["dungeon"] || flags["raid"] || flags["pvp"] {
		t.Fatalf("untagged quest must not be instanced or PvP: %v", flags)
	}
	for _, name := range []string{"daily", "weekly", "monthly"} {
		if flags[name] {
			t.Fatalf("%s must be false for every quest (decision I)", name)
		}
	}
	if !QuestFlags(record, 17, policy)["dungeon"] || !QuestFlags(record, 19, policy)["dungeon"] {
		t.Fatal("Dungeon and Heroic tags should set dungeon")
	}
	if !QuestFlags(record, 18, policy)["raid"] {
		t.Fatal("Raid tag should set raid")
	}
	if !QuestFlags(record, 20, policy)["pvp"] {
		t.Fatal("PvP tag should set pvp")
	}
	if QuestFlags(record, 21, policy)["dungeon"] || QuestFlags(record, 21, policy)["raid"] {
		t.Fatal("Elite tag must not be instanced")
	}
	plain := QuestFlags(map[string]any{"questFlags": float64(0), "specialFlags": float64(0)}, 17, policy)
	if plain["repeatable"] || plain["sharable"] {
		t.Fatalf("zero flags must be false: %v", plain)
	}
}

func sameJSON(actual any, expected any) bool {
	a, _ := json.Marshal(actual)
	b, _ := json.Marshal(expected)
	return string(a) == string(b)
}

func readFixture() ([]byte, error) {
	return os.ReadFile("testdata/export.json")
}

func TestAreaUIMapLooksUpZones(t *testing.T) {
	export, err := Load("testdata/export.json")
	if err != nil {
		t.Fatal(err)
	}
	if uiMap, ok := export.AreaUIMap(1519); !ok || uiMap != 1453 {
		t.Fatalf("AreaUIMap(1519) = %d, %v; want 1453", uiMap, ok)
	}
	if _, ok := export.AreaUIMap(99999); ok {
		t.Fatal("an unknown area must report no UiMap")
	}
}
