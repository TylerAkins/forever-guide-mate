package loremaster

import (
	"fmt"
	"reflect"
	"strings"
	"testing"

	"github.com/TylerAkins/forever-guide-mate/internal/questexport"
	"github.com/TylerAkins/forever-guide-mate/internal/questiepolicy"
)

func testPolicy(t *testing.T) *questiepolicy.Policy {
	t.Helper()
	policy, err := questiepolicy.Parse([]byte(`{"holidays": [], "questTags": {}}`))
	if err != nil {
		t.Fatal(err)
	}
	return policy
}

func testExport(quests, npcs, objects, items map[string]map[string]any) *questexport.Export {
	return &questexport.Export{
		Manifest: questexport.Manifest{ArtifactVersion: "test-1", BuildCommit: "abc123"},
		Base: map[string]questexport.Records{
			"Quest": quests, "Npc": npcs, "Object": objects, "Item": items,
		},
	}
}

func buildFacts(t *testing.T, export *questexport.Export, faction string) map[int]map[string]any {
	t.Helper()
	facts, err := BuildQuestFacts(export, testPolicy(t), faction)
	if err != nil {
		t.Fatalf("BuildQuestFacts(%q): %v", faction, err)
	}
	return facts
}

func TestBuildQuestFactsMapsLevelsRacesAndClasses(t *testing.T) {
	facts := buildFacts(t, testExport(map[string]map[string]any{
		"10": {"name": "Alpha", "requiredLevel": 20, "requiredRaces": 1 | 2, "requiredClasses": 1 | 4},
		"11": {"name": "Beta", "questLevel": 7, "requiredRaces": 1},
		"12": {"name": "Gamma", "requiredRaces": 2 | 16},
	}, nil, nil, nil), "")
	alpha := facts[10]
	if alpha["offer"] != 20 || alpha["level"] != 20 {
		t.Fatalf("levels = %v / %v, want 20 / 20", alpha["offer"], alpha["level"])
	}
	if !reflect.DeepEqual(alpha["races"], []any{1, 2}) || !reflect.DeepEqual(alpha["classes"], []any{1, 3}) {
		t.Fatalf("races/classes = %v / %v", alpha["races"], alpha["classes"])
	}
	if alpha["faction"] != "" {
		t.Fatalf("mixed-faction races must not name a faction, got %v", alpha["faction"])
	}
	beta := facts[11]
	if beta["offer"] != 1 || beta["level"] != 7 || beta["faction"] != "Alliance" {
		t.Fatalf("beta = offer %v level %v faction %v", beta["offer"], beta["level"], beta["faction"])
	}
	if facts[12]["faction"] != "Horde" {
		t.Fatalf("gamma faction = %v, want Horde", facts[12]["faction"])
	}
}

func TestBuildQuestFactsRecordsVisibleAndHiddenHolidayPolicy(t *testing.T) {
	policy, err := questiepolicy.Parse([]byte(`{"holidays":[{"event":"Winter Veil","questId":60},{"event":"Noblegarden","hidden":true,"questId":61}],"questTags":{}}`))
	if err != nil {
		t.Fatal(err)
	}
	facts, err := BuildQuestFacts(testExport(map[string]map[string]any{
		"60": {"name": "Visible event quest"},
		"61": {"name": "Hidden event quest"},
	}, nil, nil, nil), policy, "")
	if err != nil {
		t.Fatal(err)
	}
	visible := object(facts[60]["holiday"])
	if visible["event"] != "Winter Veil" || visible["hidden"] != false || object(facts[60]["flags"])["holiday"] != true {
		t.Fatalf("visible holiday fact = %#v, flags %#v", facts[60]["holiday"], facts[60]["flags"])
	}
	hidden := object(facts[61]["holiday"])
	if hidden["event"] != "Noblegarden" || hidden["hidden"] != true || object(facts[61]["flags"])["holiday"] != true {
		t.Fatalf("hidden holiday fact = %#v, flags %#v", facts[61]["holiday"], facts[61]["flags"])
	}
}

func TestBuildQuestFactsDerivesRequirementsAndFailsClosedOnMechanics(t *testing.T) {
	facts := buildFacts(t, testExport(map[string]map[string]any{
		"20": {"name": "Delta", "preQuestGroup": []any{1, 2}, "preQuestSingle": []any{3}},
		"21": {"name": "Echo", "preQuestGroup": []any{21}, "requiredSpell": 99},
	}, nil, nil, nil), "")
	requirements := facts[20]["requirements"].([]any)
	if len(requirements) != 2 || object(requirements[0])["mode"] != "all" || object(requirements[1])["mode"] != "any" {
		t.Fatalf("requirements = %#v", requirements)
	}
	if unresolved := facts[21]["unresolved"].([]any); len(unresolved) != 2 {
		t.Fatalf("self reference and spell requirement must both be unresolved, got %v", unresolved)
	}
	if unresolved := facts[20]["unresolved"].([]any); len(unresolved) != 0 {
		t.Fatalf("supported quest is unresolved: %v", unresolved)
	}
}

func TestBuildQuestFactsPointsComeFromProvidersObjectivesAndDrops(t *testing.T) {
	facts := buildFacts(t, testExport(map[string]map[string]any{
		"30": {
			"name": "Foxtrot", "requiredLevel": 5, "zoneOrSort": 44,
			"startedBy":      []any{[]any{100}},
			"finishedBy":     []any{[]any{101}},
			"objectivesText": []any{"Gather the Beacon fragment from the drone."},
			"objectives": map[string]any{
				"1": []any{[]any{200, "Kill it", 0}},
				"3": []any{map[string]any{"1": 300, "3": 4}},
			},
		},
	}, map[string]map[string]any{
		"100": {"name": "Starter", "friendlyToFaction": "A", "spawns": map[string]any{"44": []any{[]any{10, 20}}}},
		"101": {"name": "Finisher", "spawns": map[string]any{"44": []any{[]any{20, 20}}}},
		"200": {"name": "Target", "spawns": map[string]any{"44": []any{[]any{30, 30}}}},
		"400": {"name": "Drone", "spawns": map[string]any{"44": []any{[]any{40, 40, 1}}}},
	}, nil, map[string]map[string]any{
		"300": {"name": "Beacon fragment", "npcDrops": []any{400}},
	}), "Horde")
	fact := facts[30]
	points := fact["points"].([]any)
	kinds := map[string]int{}
	var starter, drop map[string]any
	for _, raw := range points {
		point := raw.(map[string]any)
		kinds[point["point"].(string)]++
		switch point["point"] {
		case "start":
			starter = point
		case "sourcerequirement":
			drop = point
		}
	}
	if kinds["start"] != 1 || kinds["end"] != 1 || kinds["objective"] != 1 || kinds["sourcerequirement"] != 1 {
		t.Fatalf("point kinds = %v", kinds)
	}
	if starter["id"] != 100 || starter["reactalliance"] != 1 || starter["reacthorde"] != -1 {
		t.Fatalf("starter hostility = %v / %v, want friendly to Alliance only", starter["reactalliance"], starter["reacthorde"])
	}
	if drop["item"] != "Beacon fragment" || drop["zone"] != 44 {
		t.Fatalf("drop source = %#v", drop)
	}
	if !reflect.DeepEqual(fact["objectiveItems"], []any{300}) || !reflect.DeepEqual(fact["objectiveLabels"], []any{"Beacon fragment"}) || !reflect.DeepEqual(fact["objectiveCounts"], []any{4}) {
		t.Fatalf("objectives = %v / %v / %v", fact["objectiveItems"], fact["objectiveLabels"], fact["objectiveCounts"])
	}
	if fact["otherObjectives"] != true {
		t.Fatalf("a creature objective must set otherObjectives")
	}
}

func TestBuildQuestFactsOmitsItemLabelWhenObjectiveTextDoesNotNameIt(t *testing.T) {
	facts := buildFacts(t, testExport(map[string]map[string]any{
		"31": {"name": "Golf", "objectivesText": []any{"Bring the sack back."}, "objectives": map[string]any{"3": []any{map[string]any{"1": 301}}}},
	}, nil, nil, map[string]map[string]any{"301": {"name": "Silver Coin"}}), "")
	if labels := facts[31]["objectiveLabels"].([]any); labels[0] != nil {
		t.Fatalf("an item the text does not name must have no label, got %v", labels[0])
	}
	if counts := facts[31]["objectiveCounts"].([]any); counts[0] != nil {
		t.Fatalf("an unknown count must stay unset, got %v", counts[0])
	}
}

func TestBuildQuestFactsRecordsAbsentProviderAndSourceItem(t *testing.T) {
	facts := buildFacts(t, testExport(map[string]map[string]any{
		"40": {"name": "Hotel", "startedBy": []any{[]any{999}, []any{}, []any{500}}, "sourceItemId": 500},
	}, nil, nil, map[string]map[string]any{"500": {"name": "Token"}}), "")
	unresolved := facts[40]["unresolved"].([]any)
	if len(unresolved) != 1 || !strings.Contains(unresolved[0].(string), "Npc 999 is absent") {
		t.Fatalf("absent NPC must be unresolved, got %v", unresolved)
	}
	if item := object(facts[40]["item"]); item["id"] != 500 || item["name"] != "Token" {
		t.Fatalf("item = %#v", facts[40]["item"])
	}
}

func TestBuildQuestFactsFailsClosedWhenClassVariantsDisagree(t *testing.T) {
	export := testExport(map[string]map[string]any{
		"50": {"name": "India", "requiredLevel": 3},
	}, nil, nil, nil)
	export.Variants = map[string]map[string]questexport.Records{
		"Horde/WARRIOR": {"Quest": {"50": {"name": "India", "requiredLevel": 9}}},
	}
	horde := buildFacts(t, export, "Horde")
	if unresolved := horde[50]["unresolved"].([]any); len(unresolved) != 1 || !strings.Contains(unresolved[0].(string), "differs by class") {
		t.Fatalf("class-specific quest must fail closed, got %v", unresolved)
	}
	if alliance := buildFacts(t, export, "Alliance"); alliance[50]["offer"] != 3 || len(alliance[50]["unresolved"].([]any)) != 0 {
		t.Fatalf("an unaffected faction must keep the base record: %#v", alliance[50])
	}
}

func TestBuildQuestFactsAppliesFactionOverrideToEveryClass(t *testing.T) {
	export := testExport(map[string]map[string]any{
		"51": {"name": "Juliet", "requiredLevel": 3},
	}, nil, nil, nil)
	export.Variants = map[string]map[string]questexport.Records{}
	for _, class := range questexport.Classes {
		export.Variants["Horde/"+class] = map[string]questexport.Records{"Quest": {"51": {"name": "Juliet", "requiredLevel": 9}}}
	}
	facts := buildFacts(t, export, "Horde")
	if facts[51]["offer"] != 9 || len(facts[51]["unresolved"].([]any)) != 0 {
		t.Fatalf("a faction-wide override must apply without a class conflict: %#v", facts[51])
	}
}

func TestBuildQuestFactsReadsSkyborneFactionFlags(t *testing.T) {
	facts := buildFacts(t, testExport(map[string]map[string]any{
		"60": {"name": "Kilo", "requiredRaces": 1<<32 + 77},
		"61": {"name": "Lima", "requiredRaces": 1 << 33},
		"62": {"name": "Mike", "requiredRaces": 1<<32 + 178},
	}, nil, nil, nil), "")
	if !reflect.DeepEqual(facts[60]["races"], []any{1, 3, 4, 7}) || facts[60]["faction"] != "Alliance" || len(facts[60]["unresolved"].([]any)) != 0 {
		t.Fatalf("Alliance flag with Alliance races = %v / %v / %v", facts[60]["races"], facts[60]["faction"], facts[60]["unresolved"])
	}
	if !reflect.DeepEqual(facts[61]["races"], []any{}) || facts[61]["faction"] != "Horde" {
		t.Fatalf("Horde flag alone = %v / %v", facts[61]["races"], facts[61]["faction"])
	}
	if unresolved := facts[62]["unresolved"].([]any); len(unresolved) != 1 || !strings.Contains(unresolved[0].(string), "no applicable character") {
		t.Fatalf("Alliance flag with Horde races must fail closed, got %v", unresolved)
	}
}

func TestBuildQuestFactsCoversEveryQuestInTheExport(t *testing.T) {
	export := testExport(map[string]map[string]any{
		"70": {"name": "Echo", "requiredLevel": 4},
		"71": {"name": "Foxtrot", "requiredLevel": 5},
		"72": {"name": "Golf", "requiredLevel": 6},
	}, nil, nil, nil)
	for _, faction := range []string{"", "Horde", "Alliance"} {
		facts := buildFacts(t, export, faction)
		if len(facts) != len(export.Base["Quest"]) {
			t.Fatalf("faction %q produced %d facts for %d quests", faction, len(facts), len(export.Base["Quest"]))
		}
		for key := range export.Base["Quest"] {
			id := 0
			if _, err := fmt.Sscanf(key, "%d", &id); err != nil {
				t.Fatalf("invalid quest ID %q", key)
			}
			if facts[id] == nil {
				t.Fatalf("faction %q has no fact for quest %d", faction, id)
			}
		}
	}
}
