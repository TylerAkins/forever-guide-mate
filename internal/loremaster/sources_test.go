package loremaster

import (
	"compress/gzip"
	"encoding/json"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"reflect"
	"strings"
	"testing"
)

func TestQuestFactsSourcePrecedenceAndPrerequisiteSemantics(t *testing.T) {
	facts := QuestFacts(123, map[string]any{"sourceData": map[string]any{
		"wowhead":   sourceAttributes(map[string]any{"races": []any{}, "classes": []any{}, "requiredLevel": 10, "prerequisiteReferences": []any{99}}),
		"questiedb": sourceAttributes(map[string]any{"requiredRaces": []any{1}, "requiredClasses": []any{8}, "requiredLevel": 20, "preQuestGroup": []any{10, 11}}),
	}})
	if !reflect.DeepEqual(facts["races"], []any{}) || !reflect.DeepEqual(facts["classes"], []any{}) || facts["offer"] != 10 {
		t.Fatalf("higher-priority explicit empty observations lost: %#v", facts)
	}
	requirements := facts["requirements"].([]any)
	if len(requirements) != 1 || object(requirements[0])["mode"] != "all" || !reflect.DeepEqual(object(requirements[0])["quests"], []any{10, 11}) {
		t.Fatalf("wrong prerequisite evidence: %#v", requirements)
	}
}

func TestQuestFactsRetainsUnsupportedAndSignedEvidence(t *testing.T) {
	facts := QuestFacts(123, map[string]any{"sourceData": map[string]any{
		"questiedb": sourceAttributes(map[string]any{"preQuestSingle": []any{-10}, "requiredMinRep": []any{529, 3000}}),
	}})
	if len(facts["requirements"].([]any)) != 0 {
		t.Fatalf("signed prerequisite accepted: %#v", facts["requirements"])
	}
	unresolved := facts["unresolved"].([]any)
	if len(unresolved) != 2 {
		t.Fatalf("unsupported mechanics not surfaced: %#v", unresolved)
	}
	evidence := object(facts["evidence"])
	if !reflect.DeepEqual(object(evidence["questiedb"])["requiredMinRep"], []any{529, 3000}) {
		t.Fatalf("source evidence lost: %#v", evidence)
	}
}

func TestQuestFactsMapsObjectivesAndSourceItems(t *testing.T) {
	facts := QuestFacts(123, map[string]any{"sourceData": map[string]any{
		"wowhead":      sourceAttributes(map[string]any{"name": "Search", "objectives": map[string]any{"item": []any{map[string]any{"id": 100}}}, "wowheadCatalog": map[string]any{"list": map[string]any{"firstseenpatch": 16001}}, "wowheadDetail": map[string]any{"infoboxMarkup": "Start: [item=2794/hello]A starter item"}}),
		"allthethings": sourceAttributes(map[string]any{"objectives": map[string]any{"item": []any{map[string]any{"id": 100, "text": "0/3 Zora Brain"}}}}),
	}})
	if !reflect.DeepEqual(facts["objectiveItems"], []any{100}) || !reflect.DeepEqual(facts["objectiveLabels"], []any{"Zora Brain"}) || !reflect.DeepEqual(facts["objectiveCounts"], []any{3}) {
		t.Fatalf("objective facts mismatch: %#v", facts)
	}
	if facts["forever"] != true || object(facts["item"])["id"] != 2794 {
		t.Fatalf("patch/item facts mismatch: %#v", facts)
	}
}

func TestQuestFactsDoesNotTreatNPCStarterAsAnItem(t *testing.T) {
	facts := QuestFacts(123, map[string]any{"sourceData": map[string]any{
		"questiedb": sourceAttributes(map[string]any{"sourceItemId": 12815, "startedBy": []any{[]any{10838}}}),
	}})
	if facts["item"] != nil {
		t.Fatalf("NPC starter treated as item: %#v", facts["item"])
	}
}

func TestQuestFactsFallsBackToPositiveOfferAndFlagsFactionRaceConflict(t *testing.T) {
	facts := QuestFacts(123, map[string]any{"sourceData": map[string]any{
		"wowhead":   sourceAttributes(map[string]any{"requiredLevel": 0, "faction": "Alliance", "races": []any{2, 6, 8}}),
		"questiedb": sourceAttributes(map[string]any{"requiredLevel": 12}),
	}})
	if facts["offer"] != 12 {
		t.Fatalf("offer minimum = %v, want next positive observation 12", facts["offer"])
	}
	unresolved := sourceList(facts["unresolved"])
	found := false
	for _, item := range unresolved {
		if strings.Contains(strings.ToLower(sourceString(item)), "faction") {
			found = true
		}
	}
	if !found {
		t.Fatalf("conflicting faction/race observations were not flagged: %#v", unresolved)
	}
}

func TestQuestFactsPreservesSourceItemWithoutWowheadMarkup(t *testing.T) {
	facts := QuestFacts(123, map[string]any{"sourceData": map[string]any{
		"questiedb": sourceAttributes(map[string]any{"sourceItemId": 2794}),
	}})
	item := object(facts["item"])
	if item["id"] != 2794 || item["name"] != nil || object(object(facts["evidence"])["questiedb"])["sourceItemId"] != 2794 {
		t.Fatalf("unmarked source item was lost or invented: facts=%#v", facts)
	}
}

func TestQuestFactsMarksChildAndExtraObjectivesForReview(t *testing.T) {
	for _, test := range []struct {
		field string
		value any
	}{{"childQuests", []any{349}}, {"extraObjectives", []any{[]any{nil, 4, "Release the Servant", 1, []any{[]any{"object", 141812}}}}}} {
		facts := QuestFacts(123, map[string]any{"sourceData": map[string]any{"questiedb": sourceAttributes(map[string]any{test.field: test.value})}})
		found := false
		for _, reason := range sourceList(facts["unresolved"]) {
			found = found || strings.Contains(sourceString(reason), test.field)
		}
		if !found || object(object(facts["evidence"])["questiedb"])[test.field] == nil {
			t.Errorf("%s evidence was silently dropped: %#v", test.field, facts)
		}
	}
}

func TestLoadSourceFactsUsesOriginalItemObservations(t *testing.T) {
	root := t.TempDir()
	directory := filepath.Join(root, "data", "forever", "compilation")
	if err := os.MkdirAll(directory, 0755); err != nil {
		t.Fatal(err)
	}
	file, err := os.Create(filepath.Join(directory, "records.jsonl.gz"))
	if err != nil {
		t.Fatal(err)
	}
	writer := gzip.NewWriter(file)
	for _, record := range []map[string]any{
		{"entityType": "relationship", "entityId": "QuestFactionReward:1", "attributes": map[string]any{}},
		{"entityType": "quest", "entityId": "485", "attributes": map[string]any{"sourceData": map[string]any{"questiedb": sourceAttributes(map[string]any{"sourceItemId": 8704})}}},
		{"entityType": "item", "entityId": "8704", "attributes": map[string]any{"name": "Untrusted merged name", "sourceData": map[string]any{"questiedb": sourceAttributes(map[string]any{"name": "Observed beacon"}), "foreverclient": sourceAttributes(map[string]any{"Display_lang": "Lower priority name"})}}},
	} {
		data, _ := json.Marshal(record)
		if _, err := writer.Write(append(data, '\n')); err != nil {
			t.Fatal(err)
		}
	}
	if err := writer.Close(); err != nil {
		t.Fatal(err)
	}
	if err := file.Close(); err != nil {
		t.Fatal(err)
	}
	facts, err := LoadSourceFacts(root)
	if err != nil {
		t.Fatal(err)
	}
	if !reflect.DeepEqual(object(facts[485]["item"]), map[string]any{"id": 8704, "name": "Observed beacon"}) {
		t.Fatalf("item name did not follow source priority: %#v", facts[485]["item"])
	}
}

func TestPrerequisiteAvailabilityKeepsColdHistoryFallback(t *testing.T) {
	parent := map[string]any{"id": 10, "name": "Parent", "offer": 1, "level": 1, "races": []any{1}, "classes": []any{}, "requirements": []any{}, "item": nil}
	child := map[string]any{"id": 123, "name": "Child", "offer": 1, "level": 1, "requirements": []any{map[string]any{"mode": "any", "quests": []any{10}}}}
	condition := PrerequisiteAvailability(123, map[int]map[string]any{10: parent, 123: child}, nil, nil)
	choices := sourceList(condition["any"])
	if len(choices) != 2 {
		t.Fatalf("expected history and possible path: %#v", condition)
	}
	path := object(choices[1])
	all := sourceList(path["all"])
	if len(all) != 1 || !containsMapKey(all[0], "race") {
		t.Fatalf("restricted parent missing from possible path: %#v", path)
	}
	parentItem := map[string]any{"id": 10, "name": "Parent", "item": map[string]any{"id": 8704, "name": "Beacon"}, "requirements": []any{}}
	condition = PrerequisiteAvailability(123, map[int]map[string]any{10: parentItem, 123: child}, nil, nil)
	if !containsMapKey(condition, "item") {
		t.Fatalf("optional starter item missing: %#v", condition)
	}
}

func TestPrerequisiteAvailabilityAllowsObservedRestrictedAncestorOnly(t *testing.T) {
	parent := QuestFacts(10, map[string]any{"sourceData": map[string]any{
		"wowhead": sourceAttributes(map[string]any{"races": []any{1}, "classes": []any{}}),
	}})
	child := QuestFacts(123, map[string]any{"sourceData": map[string]any{
		"questiedb": sourceAttributes(map[string]any{"preQuestSingle": []any{10}}),
	}})
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
	parent := QuestFacts(485, map[string]any{"sourceData": map[string]any{
		"questiedb": sourceAttributes(map[string]any{"sourceItemId": 8704}),
	}})
	object(parent["item"])["name"] = "OOX-09/HL Distress Beacon"
	child := QuestFacts(836, map[string]any{"sourceData": map[string]any{
		"questiedb": sourceAttributes(map[string]any{"preQuestSingle": []any{485}}),
	}})
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

func sourceAttributes(attributes map[string]any) map[string]any {
	return map[string]any{"attributes": attributes}
}
