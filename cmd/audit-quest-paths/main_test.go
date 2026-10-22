package main

import (
	"path/filepath"
	"runtime"
	"testing"
)

func TestLoadGoalsParsesEveryShippedGuideRoot(t *testing.T) {
	_, file, _, ok := runtime.Caller(0)
	if !ok {
		t.Fatal("runtime source path unavailable")
	}
	root := filepath.Clean(filepath.Join(filepath.Dir(file), "..", ".."))
	goals, err := loadGoals(root)
	if err != nil {
		t.Fatal(err)
	}
	if len(goals) < 1000 {
		t.Fatalf("parsed only %d guide goals", len(goals))
	}
	var questGoals, conditioned int
	for _, goal := range goals {
		if goal.QuestID != 0 {
			questGoals++
		}
		if goal.StepFaction != "" || len(goal.Classes) > 0 || len(goal.Races) > 0 || goal.LevelMin > 0 {
			conditioned++
		}
	}
	if questGoals < 500 || conditioned == 0 {
		t.Fatalf("parser omitted expected guide data: quest goals=%d conditioned=%d", questGoals, conditioned)
	}
}
