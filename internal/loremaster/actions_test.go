package loremaster

import (
	"strings"
	"testing"
)

func baseAuthoringFacts() map[string]any {
	return map[string]any{
		"id": 123, "name": "Test Quest", "offer": 10, "level": 59,
		"unresolved": []any{}, "item": nil, "points": []any{
			map[string]any{"point": "start", "zone": "Durotar", "coord": []any{10.0, 20.0}, "name": "First", "id": 1},
			map[string]any{"point": "requirement", "zone": "Durotar", "coord": []any{15.0, 20.0}, "name": "Target", "id": 3},
			map[string]any{"point": "end", "zone": "Durotar", "coord": []any{20.0, 20.0}, "name": "Second", "id": 2},
		},
		"objectivesText": []any{"Defeat the target, then return to Second."},
		"objectiveItems": []any{}, "objectiveLabels": []any{}, "objectiveCounts": []any{},
		"otherObjectives": false, "requirements": []any{}, "races": []any{}, "classes": []any{},
		"skill": nil, "exclusiveTo": []any{}, "elite": false,
	}
}

func TestBuildAuthoringActionsUsesOfferLevelAndOmitsReturnCopy(t *testing.T) {
	goals, err := BuildAuthoringActions(baseAuthoringFacts(), "Horde")
	if err != nil {
		t.Fatal(err)
	}
	checkpoint := goals[0]
	if checkpoint["requiredLevel"] != 10 || !strings.Contains(checkpoint["text"].(string), "level 10") {
		t.Fatalf("checkpoint uses recommended level instead of offer level: %#v", checkpoint)
	}
	objective := goals[2]
	if objective["text"] != "Defeat the target." {
		t.Fatalf("objective text = %q", objective["text"])
	}
}

func TestBuildAuthoringActionsCreatesSeparateSourcedCollectionObjectives(t *testing.T) {
	facts := baseAuthoringFacts()
	facts["name"] = "Brains"
	facts["points"] = []any{
		map[string]any{"point": "start", "zone": "Silithus", "coord": []any{40.0, 88.0}, "name": "Frankal", "id": 1},
		map[string]any{"point": "end", "zone": "Silithus", "coord": []any{40.0, 88.0}, "name": "Frankal", "id": 1},
		map[string]any{"point": "sourcerequirement", "zone": "Silithus", "coord": []any{45.0, 28.0}, "name": "Ashi Cache", "id": 2, "type": 2, "item": "Ashi Brain"},
		map[string]any{"point": "sourcerequirement", "zone": "Silithus", "coord": []any{26.0, 55.0}, "name": "Zora Waywatcher", "id": 3, "type": 1, "item": "Zora Brain", "reacthorde": -1},
	}
	facts["objectiveItems"] = []any{100, 200}
	facts["objectiveLabels"] = []any{"Zora Brain", "Ashi Brain"}
	facts["objectiveCounts"] = []any{3, 1}
	facts["objectivesText"] = []any{"Recover a Zora Brain and an Ashi Brain."}
	goals, err := BuildAuthoringActions(facts, "Horde")
	if err != nil {
		t.Fatal(err)
	}
	objectives := goals[2:4]
	if objectives[0]["text"] != "Defeat Zora Waywatcher and loot Zora Brain." || objectives[1]["text"] != "Collect Ashi Brain from the marked object." {
		t.Fatalf("collection objective instructions = %#v", objectives)
	}
	firstComplete := object(objectives[0]["complete"])["questObjective"]
	secondComplete := object(objectives[1]["complete"])["questObjective"]
	if object(firstComplete)["index"] != 1 || object(firstComplete)["count"] != 3 || object(secondComplete)["index"] != 2 || object(secondComplete)["count"] != 1 {
		t.Fatalf("collection completion metadata = %#v / %#v", firstComplete, secondComplete)
	}
	turnin := goals[len(goals)-1]
	if len(anyList(turnin["dependsOn"])) != 2 {
		t.Fatalf("turn-in dependencies = %#v", turnin["dependsOn"])
	}
}

func TestBuildAuthoringActionsPrefersItemObjectOverHostileDrop(t *testing.T) {
	facts := baseAuthoringFacts()
	facts["points"] = []any{
		map[string]any{"point": "start", "zone": "Silithus", "coord": []any{51.0, 38.0}, "name": "Noggle"},
		map[string]any{"point": "end", "zone": "Silithus", "coord": []any{51.0, 38.0}, "name": "Noggle"},
		map[string]any{"point": "sourcerequirement", "zone": "Silithus", "coord": []any{44.0, 90.0}, "name": "Deathclasp", "type": 1, "item": "Lost Satchel", "reacthorde": -1},
		map[string]any{"point": "sourcerequirement", "zone": "Silithus", "coord": []any{44.0, 91.0}, "name": "Lost Satchel", "type": 2, "item": "Lost Satchel"},
	}
	facts["objectiveItems"] = []any{100}
	facts["objectiveLabels"] = []any{"Lost Satchel"}
	facts["objectiveCounts"] = []any{1}
	goals, err := BuildAuthoringActions(facts, "Horde")
	if err != nil {
		t.Fatal(err)
	}
	objective := goals[2]
	if !strings.Contains(objective["text"].(string), "marked object") || strings.Contains(objective["text"].(string), "Deathclasp") || object(anyList(objective["route"])[0])["label"] != "Lost Satchel" {
		t.Fatalf("object source did not take priority: %#v", objective)
	}
}

func TestBuildAuthoringActionsRejectsUnsupportedEvidence(t *testing.T) {
	tests := []struct {
		name    string
		mutate  func(map[string]any)
		message string
	}{
		{"unresolved mechanics", func(f map[string]any) { f["unresolved"] = []any{"requiredMinRep requires review"} }, "requiredMinRep"},
		{"item starter", func(f map[string]any) { f["item"] = map[string]any{"id": 1} }, "item starter"},
		{"missing supported return", func(f map[string]any) { f["points"] = []any{} }, "pickup or return"},
		{"missing material source", func(f map[string]any) { f["objectiveItems"] = []any{1, 2} }, "collection materials"},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			facts := baseAuthoringFacts()
			test.mutate(facts)
			if _, err := BuildAuthoringActions(facts, "Horde"); err == nil || !strings.Contains(err.Error(), test.message) {
				t.Fatalf("BuildAuthoringActions() error = %v, want containing %q", err, test.message)
			}
		})
	}
}

func TestBuildAuthoringActionsKeepsProfessionSkillLineContract(t *testing.T) {
	facts := baseAuthoringFacts()
	facts["skill"] = []any{333, 1}
	facts["objectivesText"] = []any{"Talk with Second."}
	goals, err := BuildAuthoringActions(facts, "Horde")
	if err != nil {
		t.Fatal(err)
	}
	for _, goal := range goals {
		conditions := anyList(object(goal["conditions"])["all"])
		found := false
		for _, raw := range conditions {
			if profession := object(object(raw)["profession"]); profession != nil && profession["skillLineID"] == 333 && profession["minRank"] == 1 {
				found = true
			}
		}
		if !found {
			t.Errorf("goal %s lacks the profession engine contract: %#v", goal["id"], goal["conditions"])
		}
		exclusions := object(goal["excludeWhen"])
		if len(anyList(exclusions["any"])) == 0 {
			t.Errorf("goal %s lacks profession exclusion", goal["id"])
		}
	}
}

func TestBuildAuthoringActionsRejectsUnexplainedIntermediateMaterial(t *testing.T) {
	facts := baseAuthoringFacts()
	facts["points"] = []any{
		map[string]any{"point": "start", "zone": "Durotar", "coord": []any{10.0, 20.0}, "name": "First", "id": 1},
		map[string]any{"point": "sourcerequirement", "zone": "Durotar", "coord": []any{15.0, 20.0}, "name": "First Mob", "item": "Bait", "id": 3},
		map[string]any{"point": "sourcerequirement", "zone": "Durotar", "coord": []any{16.0, 20.0}, "name": "Boss", "item": "Head", "id": 4},
		map[string]any{"point": "end", "zone": "Durotar", "coord": []any{20.0, 20.0}, "name": "Second", "id": 2},
	}
	facts["objectivesText"] = []any{"Bring the Head to Second."}
	if _, err := BuildAuthoringActions(facts, "Horde"); err == nil || !strings.Contains(err.Error(), "intermediate material") {
		t.Fatalf("BuildAuthoringActions() error = %v, want intermediate-material review", err)
	}
}
