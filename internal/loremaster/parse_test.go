package loremaster

import (
	"path/filepath"
	"runtime"
	"strings"
	"testing"
)

func TestParseGoalsReadsQuestCompletionsAndActionDefaults(t *testing.T) {
	root := repositoryRoot(t)
	text := `MAP_ID = 1440
ns:RegisterGuide({ faction = "Horde", goals = {
 { id = "pickup", kind = "accept", priority = 1.5, classAction = "accept-747-the-hunt-begins", complete = { quest = { id = 747, state = "activeOrCompleted" } }, text = "Accept it.", conditions = { all = { { level = { min = 4 } }, { class = 9 }, { race = 2 }, { skill = 171 }, { faction = "Horde" } } } },
 { id = "objective", kind = "objective", complete = QuestObjective(747, 1, "Kill it") },
 { id = "note", kind = "note", complete = { item = { id = 747, minCount = 1 } } },
} })`
	goals, err := ParseGoals(root, text, "guide", "fixture.lua", "Horde")
	if err != nil {
		t.Fatal(err)
	}
	if len(goals) != 3 {
		t.Fatalf("got %d goals", len(goals))
	}
	if goals[0].QuestID != 747 || goals[0].Priority != 1.5 || goals[0].LevelMin != 4 || len(goals[0].Classes) != 1 || goals[0].Classes[0] != 9 || goals[0].Faction != "Horde" {
		t.Fatalf("goal metadata=%#v", goals[0])
	}
	if goals[1].QuestID != 747 || goals[1].ID != "objective" || goals[2].QuestID != 0 {
		t.Fatalf("completion quest IDs=%#v", goals)
	}
}

func TestGoalFieldIgnoresNestedKeysAndStrings(t *testing.T) {
	raw := `{ id = "x", text = "complete = \"not a field\"", conditions = { quest = { id = 1 } }, complete = { quest = { id = 2 } } }`
	value, err := GoalField(raw, "complete")
	if err != nil {
		t.Fatal(err)
	}
	if value != "{ quest = { id = 2 } }" {
		t.Fatalf("complete field=%q", value)
	}
}

func TestReplaceGoalsPreservesSurroundingGuideText(t *testing.T) {
	text := "-- prefix\nns:RegisterGuide({ goals = { { id = \"old\" } } })\n-- suffix\n"
	got, err := ReplaceGoals(text, `{ id = "new" }`)
	if err != nil {
		t.Fatal(err)
	}
	if !strings.HasPrefix(got, "-- prefix\n") || !strings.HasSuffix(got, "-- suffix\n") || !strings.Contains(got, `{ id = "new" }`) || strings.Contains(got, `id = "old"`) {
		t.Fatalf("ReplaceGoals() changed unrelated text or missed replacement: %s", got)
	}
}

func TestReplaceGoalsRejectsMissingTable(t *testing.T) {
	if _, err := ReplaceGoals("return {}", ""); err == nil {
		t.Fatal("ReplaceGoals() error = nil, want missing-goals error")
	}
}

func repositoryRoot(t *testing.T) string {
	t.Helper()
	_, file, _, ok := runtime.Caller(0)
	if !ok {
		t.Fatal("runtime caller unavailable")
	}
	return filepath.Clean(filepath.Join(filepath.Dir(file), "..", ".."))
}
