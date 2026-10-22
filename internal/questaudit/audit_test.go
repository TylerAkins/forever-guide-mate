package questaudit

import (
	"reflect"
	"testing"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
)

func record(id int, requirements map[string]any, fields map[string]any) map[string]any {
	return map[string]any{"id": id, "list": map[string]any{"id": id, "level": 10, "reqlevel": 5, "name": "Sample"}, "minLevel": 5, "classes": []any{}, "detail": map[string]any{"requirements": requirements, "questie": map[string]any{"fields": fields}}}
}
func goal(id string, quest int, kind, source string, priority float64, depends ...string) loremaster.Goal {
	return loremaster.Goal{ID: id, QuestID: quest, Kind: kind, SourceFile: source, Priority: priority, Depends: depends}
}

func TestRequirementMappingPreservesAllAnyAndMixedSemantics(t *testing.T) {
	if got := RequirementFromRecord(record(1, map[string]any{"allOf": []any{2, 3}}, nil)); !reflect.DeepEqual(got, &Requirement{"all", []int{2, 3}}) {
		t.Fatalf("allOf=%#v", got)
	}
	if got := RequirementFromRecord(record(1, map[string]any{"anyOf": []any{4}}, nil)); !reflect.DeepEqual(got, &Requirement{"any", []int{4}}) {
		t.Fatalf("anyOf=%#v", got)
	}
	if got := RequirementFromRecord(record(1, map[string]any{"allOf": []any{2}, "anyOf": []any{3}}, nil)); !reflect.DeepEqual(got, &Requirement{"mixed", []int{2, 3}}) {
		t.Fatalf("mixed=%#v", got)
	}
	if got := RequirementFromRecord(record(1, map[string]any{}, map[string]any{"preQuestGroup": []any{8, 9}})); !reflect.DeepEqual(got, &Requirement{"all", []int{8, 9}}) {
		t.Fatalf("legacy all=%#v", got)
	}
}

func TestCatalogMapsSchemaV2AndLevelFallbacks(t *testing.T) {
	value := record(92461, map[string]any{}, map[string]any{"preQuestSingle": []any{92460}, "requiredClasses": []any{7}, "requiredRaces": []any{2}})
	catalog := CatalogQuest(92461, value)
	if catalog.Forever || catalog.Requirement == nil || catalog.Requirement.Mode != "any" || !reflect.DeepEqual(catalog.RequiredClasses, []int{7}) || !reflect.DeepEqual(catalog.RequiredRaces, []int{2}) {
		t.Fatalf("catalog=%#v", catalog)
	}
	classic := record(50, map[string]any{}, map[string]any{"questLevel": 0, "requiredLevel": 0})
	if got := CatalogQuest(50, classic).StepLevel; got != 5 {
		t.Fatalf("zero Questie values should keep offer level: %d", got)
	}
}

func TestPrerequisiteAuditChecksLinkedPrerequisitesAndModes(t *testing.T) {
	child := goal("accept-30", 30, "accept", "zone.lua", 10, "turnin-20")
	parent := goal("turnin-20", 20, "turnin", "zone.lua", 5)
	findings := Audit([]loremaster.Goal{child, parent}, map[int]map[string]any{30: record(30, map[string]any{"allOf": []any{20}}, nil), 20: record(20, nil, nil)}, nil)
	for _, finding := range findings {
		if finding.Category == "missing-prerequisite" {
			t.Fatalf("linked prerequisite marked missing: %#v", findings)
		}
	}
	findings = Audit([]loremaster.Goal{goal("accept-30", 30, "accept", "zone.lua", 10)}, map[int]map[string]any{30: record(30, map[string]any{"anyOf": []any{20}}, nil)}, map[int]Requirement{30: {"all", []int{20}}})
	if !hasCategory(findings, "prerequisite-mode") {
		t.Fatalf("registered mode mismatch missing: %#v", findings)
	}
}

func TestPrerequisiteAuditReportsUncoveredExtraAndMixedPrerequisites(t *testing.T) {
	goals := []loremaster.Goal{goal("accept-30", 30, "accept", "zone.lua", 10)}
	records := map[int]map[string]any{30: record(30, map[string]any{"allOf": []any{20, 21}}, nil)}
	findings := Audit(goals, records, map[int]Requirement{30: {"all", []int{20, 22}}})
	if !hasCategory(findings, "missing-prerequisite") || !hasCategory(findings, "extra-prerequisite") {
		t.Fatalf("missing/extra prerequisite findings absent: %#v", findings)
	}
	records[30] = record(30, map[string]any{"allOf": []any{20}, "anyOf": []any{21}}, nil)
	findings = Audit(goals, records, nil)
	if !hasCategory(findings, "prerequisite-mode") {
		t.Fatalf("mixed prerequisite finding absent: %#v", findings)
	}
}

func TestCatalogMissingRecordAndClassicFallback(t *testing.T) {
	if catalog := CatalogQuest(50, nil); catalog.RecordFound || catalog.Forever {
		t.Fatalf("missing record catalog=%#v", catalog)
	}
	classicRecord := map[string]any{"id": 50, "list": map[string]any{"level": 8, "reqlevel": 4}, "minLevel": 4, "classes": []any{}, "detail": map[string]any{}}
	catalog := CatalogQuest(50, classicRecord)
	if catalog.Forever || catalog.Requirement != nil || catalog.StepLevel != 4 {
		t.Fatalf("classic fallback catalog=%#v", catalog)
	}
	findings := Audit([]loremaster.Goal{goal("accept-22", 22, "accept", "zone.lua", 1)}, map[int]map[string]any{22: record(22, map[string]any{"anyOf": []any{21}}, nil)}, nil)
	if !hasCategory(findings, "missing-prerequisite") {
		t.Fatalf("classic prerequisite not reported: %#v", findings)
	}
}

func TestAuditReportsMissingRecordOrderConditionsExclusiveAndBreadcrumb(t *testing.T) {
	parent := record(10, map[string]any{"nextQuestInChain": 20, "exclusiveTo": []any{30}, "breadcrumbs": []any{40}}, map[string]any{"requiredClasses": []any{1, 7}, "requiredRaces": []any{2}, "requiredSkill": []any{171, 1}, "requiredLevel": 12})
	goals := []loremaster.Goal{goal("accept-10", 10, "accept", "zone.lua", 5), goal("turnin-10", 10, "turnin", "zone.lua", 30), goal("accept-20", 20, "accept", "zone.lua", 20), goal("accept-30", 30, "accept", "zone.lua", 15)}
	goals[0].LevelMin = 8
	goals[0].Classes = []int{1}
	goals[0].Races = []int{1}
	goals[0].Skills = []int{}
	goals[0].StepFaction = "Horde"
	findings := Audit(goals, map[int]map[string]any{10: parent, 20: record(20, nil, nil), 30: record(30, nil, nil)}, nil)
	for _, category := range []string{"order", "level", "class", "race", "skill", "exclusive", "breadcrumb"} {
		if !hasCategory(findings, category) {
			t.Errorf("missing %s finding: %#v", category, findings)
		}
	}
	missing := Audit([]loremaster.Goal{goal("accept-99", 99, "accept", "zone.lua", 1)}, map[int]map[string]any{}, nil)
	if !hasCategory(missing, "missing-record") {
		t.Fatalf("missing record not reported: %#v", missing)
	}
}

func TestParseRegisteredPrerequisites(t *testing.T) {
	got := ParseRegisteredPrerequisites(`ns:RegisterQuestPrerequisite({ quest = 30, mode = "any", quests = { 10, 20 } })`)
	if !reflect.DeepEqual(got[30], Requirement{"any", []int{10, 20}}) {
		t.Fatalf("registered=%#v", got)
	}
}

func hasCategory(findings []Finding, category string) bool {
	for _, finding := range findings {
		if finding.Category == category {
			return true
		}
	}
	return false
}
