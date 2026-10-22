package loremaster

import (
	"fmt"
	"os/exec"
	"strings"
	"testing"
)

func TestPrerequisiteAvailabilityAllowsObservedRestrictedAncestorOnly(t *testing.T) {
	parent := map[string]any{"id": 10, "name": "Parent", "races": []any{1}, "classes": []any{}, "requirements": []any{}, "item": nil}
	child := map[string]any{"id": 123, "name": "Child", "requirements": []any{map[string]any{"mode": "any", "quests": []any{10}}}}
	condition := PrerequisiteAvailability(123, map[int]map[string]any{10: parent, 123: child}, nil, nil)
	lua, err := Lua(condition, 0)
	if err != nil {
		t.Fatal(err)
	}
	root := repositoryRoot(t)
	script := fmt.Sprintf(`local n={}; assert(loadfile('GuideEngine.lua'))('FGM',n)
local condition=%s
local state={raceID=2,classID=1,faction='Horde',level=60,quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true}
assert(n.EvaluateCondition(condition,state)==false,'Restricted ancestor excludes cold entry')
state.completedQuests[10]=true
assert(n.EvaluateCondition(condition,state)==true,'Observed predecessor history allows midway entry')
`, lua)
	command := exec.Command("luajit", "-")
	command.Dir = root
	command.Stdin = strings.NewReader(script)
	if output, err := command.CombinedOutput(); err != nil {
		t.Fatalf("Lua prerequisite evaluation failed: %v\n%s", err, output)
	}
}

func TestPrerequisiteAvailabilityModelsOptionalItemAndQuestHistory(t *testing.T) {
	parent := map[string]any{"id": 485, "name": "Parent", "item": map[string]any{"id": 8704, "name": "OOX-09/HL Distress Beacon"}, "requirements": []any{}}
	child := map[string]any{"id": 836, "name": "Child", "requirements": []any{map[string]any{"mode": "any", "quests": []any{485}}}}
	condition := PrerequisiteAvailability(836, map[int]map[string]any{485: parent, 836: child}, nil, nil)
	lua, err := Lua(condition, 0)
	if err != nil {
		t.Fatal(err)
	}
	root := repositoryRoot(t)
	script := fmt.Sprintf(`local n={}; assert(loadfile('GuideEngine.lua'))('FGM',n); assert(loadfile('PlayerState.lua'))('FGM',n)
local condition=%s
local state={raceID=1,classID=1,faction='Alliance',level=60,quests={},completedQuests={},items={},questLogKnown=true,questCompletionKnown=true}
assert(n.EvaluateCondition(condition,state)==false,'Missing optional drop excludes cold entry')
state.items['OOX-09/HL Distress Beacon']=1
assert(n.EvaluateCondition(condition,state)==true,'Held drop enables possible path')
state.items={}; state.quests[485]={}
assert(n.EvaluateCondition(condition,state)==true,'Active parent survives consumed starter')
state.quests={}; state.completedQuests[485]=true
assert(n.EvaluateCondition(condition,state)==true,'Completed parent allows follow-up')
assert(not state.completedQuests[836],'Availability never invents completion')
`, lua)
	command := exec.Command("luajit", "-")
	command.Dir = root
	command.Stdin = strings.NewReader(script)
	if output, err := command.CombinedOutput(); err != nil {
		t.Fatalf("Lua optional-item evaluation failed: %v\n%s", err, output)
	}
}

func TestLuaRendersValuesAndQuotesKeywordKeys(t *testing.T) {
	value := map[string]any{"not": map[string]any{"profession": map[string]any{"skillLineID": 333}}, "name": "Aster", "enabled": true, "empty": []any{}}
	rendered, err := Lua(value, 0)
	if err != nil {
		t.Fatal(err)
	}
	for _, expected := range []string{`["not"] =`, `name = "Aster"`, `enabled = true`, `empty = {}`} {
		if !strings.Contains(rendered, expected) {
			t.Errorf("Lua output %q missing %q", rendered, expected)
		}
	}
}

func containsMapKey(value any, key string) bool {
	if objectValue := object(value); objectValue != nil {
		if _, ok := objectValue[key]; ok {
			return true
		}
		for _, child := range objectValue {
			if containsMapKey(child, key) {
				return true
			}
		}
	}
	for _, child := range sourceList(value) {
		if containsMapKey(child, key) {
			return true
		}
	}
	return false
}
