package loremaster

import (
	"reflect"
	"strings"
	"testing"
)

func TestStepAndOfferLevel(t *testing.T) {
	tests := []struct {
		name        string
		record      map[string]any
		step, offer int
	}{
		{"classic offer", map[string]any{"list": map[string]any{"level": 10, "reqlevel": 6}, "minLevel": 6}, 6, 6},
		{"no first-seen rule", map[string]any{"list": map[string]any{"level": 11, "reqlevel": 5, "reqclass": 0}, "minLevel": 5, "classes": []any{}}, 5, 5},
		{"tomb weed offer", map[string]any{"id": 99142, "list": map[string]any{"id": 99142, "level": 11, "reqlevel": 5, "reqclass": 0}, "minLevel": 5, "classes": []any{}}, 5, 5},
		{"small gap", map[string]any{"list": map[string]any{"level": 3, "reqlevel": 2, "reqclass": 0}, "minLevel": 2, "classes": []any{}}, 2, 2},
		{"questie override", map[string]any{"list": map[string]any{"level": 11, "reqlevel": 5, "reqclass": 0}, "minLevel": 5, "classes": []any{}, "detail": map[string]any{"questie": map[string]any{"fields": map[string]any{"questLevel": 18, "requiredLevel": 12}}}}, 18, 12},
		{"questie offer without quest level", map[string]any{"list": map[string]any{"level": 20, "reqlevel": 10}, "detail": map[string]any{"questie": map[string]any{"fields": map[string]any{"requiredLevel": 10}}}}, 10, 10},
		{"questie zero keeps Wowhead level", map[string]any{"list": map[string]any{"level": 11, "reqlevel": 5, "reqclass": 0}, "minLevel": 5, "classes": []any{}, "detail": map[string]any{"questie": map[string]any{"fields": map[string]any{"questLevel": 0, "requiredLevel": 0}}}}, 5, 5},
		{"questie negative falls back", map[string]any{"list": map[string]any{"level": 3, "reqlevel": 2, "reqclass": 0}, "minLevel": 2, "classes": []any{}, "detail": map[string]any{"questie": map[string]any{"fields": map[string]any{"questLevel": -1, "requiredLevel": 0}}}}, 2, 2},
		{"class quest", map[string]any{"list": map[string]any{"level": 11, "reqlevel": 8, "reqclass": 2}, "minLevel": 8, "classes": []any{2}}, 8, 8},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := StepLevel(tt.record); got != tt.step {
				t.Errorf("StepLevel=%d, want %d", got, tt.step)
			}
			if got := OfferLevel(tt.record); got != tt.offer {
				t.Errorf("OfferLevel=%d, want %d", got, tt.offer)
			}
		})
	}
}

func TestInsertQuestGroupsOnlyAtSuitableVisitAndHonorsSeriesDependency(t *testing.T) {
	tests := []struct {
		name   string
		output []Goal
		step   Goal
		levels map[int]int
		want   []string
	}{
		{"same giver requires recommended level", []Goal{{ID: "early", Kind: "accept", QuestID: 100, Text: "Accept Something from Gazlowe."}, {ID: "visit", Kind: "accept", QuestID: 200, Text: "Accept Another from Gazlowe."}}, Goal{ID: "extra", Kind: "accept", QuestID: 300, Text: "Accept Extra from Gazlowe."}, map[int]int{100: 12, 200: 20, 300: 20}, []string{"early", "visit", "extra"}},
		{"early giver does not anchor higher quest", []Goal{{ID: "poster", Kind: "accept", QuestID: 895, Text: "Accept WANTED: Baron Longshore from The Poster."}, {ID: "later", Kind: "accept", QuestID: 900, Text: "Accept The Missing Shipment from Gazlowe."}}, Goal{ID: "bruuz", Kind: "accept", QuestID: 92706, Text: "Accept WANTED: Bruuz from The Poster."}, map[int]int{895: 16, 900: 20, 92706: 20}, []string{"poster", "bruuz", "later"}},
		{"follow-up uses turn-in dependency", []Goal{{ID: "parent", Kind: "turnin", QuestID: 1, Text: "Turn in Parent to Gazlowe."}, {ID: "later", Kind: "accept", QuestID: 2, Text: "Accept Later from Gazlowe."}}, Goal{ID: "follow", Kind: "accept", QuestID: 3, Text: "Accept Follow from Gazlowe.", Depends: []string{"parent"}}, map[int]int{1: 12, 2: 20, 3: 20}, []string{"parent", "follow", "later"}},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			got := InsertQuest(test.output, []Goal{test.step}, test.levels, 0)
			ids := make([]string, len(got))
			for i := range got {
				ids[i] = got[i].ID
			}
			if !reflect.DeepEqual(ids, test.want) {
				t.Fatalf("InsertQuest IDs = %v, want %v", ids, test.want)
			}
		})
	}
}

func TestRecommendedLevel(t *testing.T) {
	if got := RecommendedLevel(map[string]any{"reqlevel": 15}, nil, ""); got != 15 {
		t.Fatalf("fallback=%d", got)
	}
	if got := RecommendedLevel(map[string]any{"level": "20", "reqlevel": 15}, nil, ""); got != 20 {
		t.Fatalf("level=%d", got)
	}
	if got := RecommendedLevel(nil, nil, "[li]Level: 20[/li]"); got != 20 {
		t.Fatalf("html=%d", got)
	}
}

func TestInsertQuestAndSetMinLevel(t *testing.T) {
	output := []Goal{{ID: "accept-poster", Kind: "accept", QuestID: 895, Text: "Accept WANTED from The Poster."}, {ID: "accept-later", Kind: "accept", QuestID: 900, Text: "Accept shipment from Gazlowe."}}
	step := Goal{ID: "accept-bruuz", Kind: "accept", QuestID: 92706, Text: "Accept WANTED from The Poster."}
	got := InsertQuest(output, []Goal{step}, map[int]int{895: 16, 900: 20, 92706: 20}, 0)
	if len(got) != 3 || got[1].ID != "accept-bruuz" {
		t.Fatalf("unexpected insertion: %#v", got)
	}
	raw := `{ conditions = { all = { { faction = "Horde" }, }, }, text = "Accept." }`
	updated := SetMinLevel(raw, 20)
	if !strings.Contains(updated, "{ level = { min = 20 } },") || !strings.Contains(updated, `{ faction = "Horde" }`) {
		t.Fatalf("condition not preserved: %s", updated)
	}
}

func TestPlaceWovenMovesAboveCeilingAndUpdatesPriorities(t *testing.T) {
	goals := []Goal{
		{ID: "accept-opener", Kind: "accept", Priority: 50, QuestID: 6282, Text: "Accept Harpies Threaten from Maggran Earthbinder.", Raw: `{ id = "accept-opener", kind = "accept", priority = 50, text = "Accept Harpies Threaten from Maggran Earthbinder." }`},
		{ID: "accept-extra", Kind: "accept", Priority: 51, QuestID: 86576, Text: "Accept Bloodfury Trinkets from Maggran Earthbinder.", Raw: `{ id = "accept-extra", kind = "accept", priority = 51, conditions = { level = { min = 20 } }, text = "Accept Bloodfury Trinkets from Maggran Earthbinder." }`},
		{ID: "accept-later", Kind: "accept", Priority: 60, QuestID: 6393, Text: "Accept Elemental War from Tsunaman.", Raw: `{ id = "accept-later", kind = "accept", priority = 60, text = "Accept Elemental War from Tsunaman." }`},
	}
	got := PlaceWoven(goals, map[int]bool{86576: true}, map[int]int{6282: 26, 86576: 26, 6393: 25}, 25)
	if len(got) != 3 || got[1].ID != "accept-later" || got[2].ID != "accept-extra" {
		t.Fatalf("woven action was not moved after a suitable stop: %#v", got)
	}
	if !strings.Contains(got[2].Raw, "min = 26") || got[2].Priority <= got[1].Priority {
		t.Fatalf("moved action level or priority incorrect: %#v", got[2])
	}
}

func TestPlaceWovenIsIdempotentAndKeepsSpineActions(t *testing.T) {
	goals := []Goal{
		{ID: "opener", Kind: "accept", Priority: 10, QuestID: 100, Text: "Accept First from Gazlowe.", Raw: `{ id = "opener", kind = "accept", priority = 10, text = "Accept First from Gazlowe." }`},
		{ID: "low", Kind: "accept", Priority: 20, QuestID: 200, Text: "Accept Low from Gazlowe.", Raw: `{ id = "low", kind = "accept", priority = 20, text = "Accept Low from Gazlowe." }`},
		{ID: "high", Kind: "accept", Priority: 21, QuestID: 300, Text: "Accept High from Gazlowe.", Raw: `{ id = "high", kind = "accept", priority = 21, text = "Accept High from Gazlowe." }`},
		{ID: "later", Kind: "accept", Priority: 30, QuestID: 400, Text: "Accept Later from Gazlowe.", Raw: `{ id = "later", kind = "accept", priority = 30, text = "Accept Later from Gazlowe." }`},
	}
	levels := map[int]int{100: 12, 200: 20, 300: 21, 400: 21}
	once := PlaceWoven(goals, map[int]bool{200: true, 300: true}, levels, 0)
	twice := PlaceWoven(once, map[int]bool{200: true, 300: true}, levels, 0)
	for i := range once {
		if once[i].ID != twice[i].ID {
			t.Fatalf("second placement changed order: first %#v, second %#v", once, twice)
		}
	}
	spine := []Goal{{ID: "spine", Kind: "accept", Priority: 10, QuestID: 895, Raw: `{ id = "spine", kind = "accept", priority = 10, conditions = { level = { min = 11 } } }`}}
	kept := PlaceWoven(spine, map[int]bool{}, map[int]int{895: 16}, 0)
	if kept[0].ID != "spine" || !strings.Contains(kept[0].Raw, "min = 11") {
		t.Fatalf("spine action was changed: %#v", kept[0])
	}
}

func TestPlaceWovenKeepsActionWhenChapterReachesItsRecommendedLevel(t *testing.T) {
	goals := []Goal{
		{ID: "opener", Kind: "accept", Priority: 10, QuestID: 6282, Text: "Accept Harpies Threaten from Maggran Earthbinder.", Raw: `{ id = "opener", kind = "accept", priority = 10 }`},
		{ID: "woven", Kind: "accept", Priority: 11, QuestID: 86576, Text: "Accept Bloodfury Trinkets from Maggran Earthbinder.", Raw: `{ id = "woven", kind = "accept", priority = 11 }`},
	}
	got := PlaceWoven(goals, map[int]bool{86576: true}, map[int]int{6282: 26, 86576: 26}, 26)
	if got[0].ID != "opener" || got[1].ID != "woven" {
		t.Fatalf("quest at chapter ceiling moved: %#v", got)
	}
}

func TestFitPrioritiesShiftsLaterGoalsToMakeRoom(t *testing.T) {
	goals := []Goal{
		{ID: "before", Kind: "accept", Priority: 10, QuestID: 1, Raw: `{ id = "before", priority = 10, kind = "accept" }`},
		{ID: "moved-a", Kind: "accept", Priority: 2, QuestID: 9, Raw: `{ id = "moved-a", priority = 2, kind = "accept" }`},
		{ID: "moved-b", Kind: "objective", Priority: 3, QuestID: 9, Raw: `{ id = "moved-b", priority = 3, kind = "objective" }`},
		{ID: "after", Kind: "turnin", Priority: 11, QuestID: 2, Raw: `{ id = "after", priority = 11, kind = "turnin" }`},
	}
	FitPriorities(goals, map[int]bool{9: true})
	if goals[1].Priority != 11 || goals[2].Priority != 12 || goals[3].Priority != 13 {
		t.Fatalf("priorities did not make contiguous room: %#v", goals)
	}
	if !strings.Contains(goals[3].Raw, "priority = 13") {
		t.Fatalf("raw goal priority not updated: %s", goals[3].Raw)
	}
}

func TestFitPrioritiesPreservesFractionalNeighbors(t *testing.T) {
	goals := []Goal{
		{ID: "before", Priority: 780, QuestID: 1, Raw: `{ id = "before", priority = 780, kind = "accept" }`},
		{ID: "moved", Priority: 100, QuestID: 9, Raw: `{ id = "moved", priority = 100, kind = "accept" }`},
		{ID: "neighbor", Priority: 781, QuestID: 2, Raw: `{ id = "neighbor", priority = 781, kind = "objective" }`},
		{ID: "fraction", Priority: 781.5, QuestID: 3, Raw: `{ id = "fraction", priority = 781.5, kind = "objective" }`},
	}
	FitPriorities(goals, map[int]bool{9: true})
	if goals[3].Priority != 782.5 || !strings.Contains(goals[3].Raw, "priority = 782.5") {
		t.Fatalf("fractional priority lost: %#v", goals[3])
	}
}

func TestApplyLevelGateReconcilesExistingAndNamedConditions(t *testing.T) {
	tests := []struct {
		name, raw, want string
		level           int
	}{
		{"replace level", "{ conditions = { level = { min = 10 } }, text = \"quest\" }", "{ conditions = { level = { min = 20 } }, text = \"quest\" }", 20},
		{"preserve faction", "{\n            conditions = {\n                all = {\n                    { faction = \"Horde\" },\n                },\n            },\n            text = \"quest\"\n        }", "{\n            conditions = {\n                all = {\n                    { level = { min = 20 } },\n                    { faction = \"Horde\" },\n                },\n            },\n            text = \"quest\"\n        }", 20},
		{"combine named faction", "{\n            conditions = HORDE,\n            conditions = { level = { min = 10 } },\n        }", "{\n            conditions = {\n                all = {\n                    HORDE,\n                    { level = { min = 10 } },\n                },\n            },\n        }", 10},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			got := ApplyLevelGate(test.raw, test.level)
			if got != test.want {
				t.Fatalf("ApplyLevelGate()=%q, want %q", got, test.want)
			}
		})
	}
}

func TestApplyLevelGateRemovesLevelOneOnly(t *testing.T) {
	raw := "{\n    conditions = {\n        all = {\n            { faction = \"Horde\" },\n            { level = { min = 10 } },\n        },\n    },\n    text = \"quest\"\n}"
	got := ApplyLevelGate(raw, 1)
	if strings.Contains(got, "level =") || !strings.Contains(got, `{ faction = "Horde" }`) {
		t.Fatalf("level-one gate not removed safely: %s", got)
	}
}
