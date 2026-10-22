package loremaster

import (
	"encoding/json"
	"os/exec"
	"path/filepath"
	"runtime"
	"testing"
)

func TestReportRetainsCharacterAndProfessionActionSets(t *testing.T) {
	_, file, _, _ := runtime.Caller(0)
	root := filepath.Clean(filepath.Join(filepath.Dir(file), "..", ".."))
	command := exec.Command("go", "run", "./cmd/loremaster-report", "--root", root, "--lua", "luajit")
	command.Dir = root
	output, err := command.Output()
	if err != nil {
		t.Fatalf("report command: %v", err)
	}
	var report map[string]map[string]any
	if err := json.Unmarshal(output, &report); err != nil {
		t.Fatal(err)
	}
	profiles := report["zephras-isle"]["profiles"].(map[string]any)
	for _, name := range []string{"Undead Paladin", "Tauren Druid"} {
		profile := profiles[name].(map[string]any)
		if !containsNumber(profile["levelingQuests"], 92514) || !containsNumber(profile["loremasterQuests"], 92514) || containsNumber(profile["loremasterQuests"], 94493) || containsNumber(profile["loremasterQuests"], 98284) {
			t.Fatalf("unexpected visitor profile %s: %#v", name, profile)
		}
		profession := profiles[name+" professions"].(map[string]any)
		if !containsNumber(profession["loremasterQuests"], 98284) {
			t.Fatalf("profession action missing for %s", name)
		}
	}
	mulgore := report["mulgore"]["profiles"].(map[string]any)["Tauren Druid"].(map[string]any)
	if !containsNumber(mulgore["added"], 99196) || !containsNumber(mulgore["omitted"], 76156) || len(mulgore["added"].([]any)) == 0 || len(mulgore["omitted"].([]any)) == 0 {
		t.Fatalf("the report did not retain the changed quest sets: %#v", mulgore)
	}
}

func containsNumber(value any, want int) bool {
	items, ok := value.([]any)
	if !ok {
		return false
	}
	for _, item := range items {
		if float64(want) == item {
			return true
		}
	}
	return false
}
