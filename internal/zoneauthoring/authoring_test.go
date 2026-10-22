package zoneauthoring

import (
	"bytes"
	"compress/gzip"
	"encoding/json"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"runtime"
	"sort"
	"strconv"
	"strings"
	"testing"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
)

// scenario describes one zone preparation under test.
type scenario struct {
	// quests holds the observed quest facts keyed by quest identifier. The
	// "wowhead" key overrides the default Wowhead observation.
	quests map[int]map[string]any
	// sourceGoals are the Casual actions of the leveling source chapter.
	sourceGoals []map[string]any
	// extraGuides are additional Casual chapters.
	extraGuides []map[string]any
	// sourceCondition is the condition of the leveling source chapter.
	sourceCondition map[string]any
	// catalogQuests overrides the quests the zone catalog lists.
	catalogQuests []int
	// existingGoals are the goals of the guide that already exists.
	existingGoals []map[string]any
	// registered lists the prerequisites recorded by the guide export.
	registered map[string][]map[string]any
	// revision overrides the upstream checkout revision.
	revision string
}

// prepared is the outcome of one zone preparation.
type prepared struct {
	root  string
	text  string
	audit *orderedMap
}

// goals parses the rendered guide.
func (p prepared) goals(t *testing.T) []loremaster.Goal {
	t.Helper()
	goals, err := loremaster.ParseGoals(p.root, p.text, "", "", "")
	if err != nil {
		t.Fatalf("parse rendered guide: %v", err)
	}
	return goals
}

// repositoryRoot reports the repository root that holds the guide engine.
func repositoryRoot(t *testing.T) string {
	t.Helper()
	_, file, _, ok := runtime.Caller(0)
	if !ok {
		t.Fatal("locate the test source")
	}
	return filepath.Clean(filepath.Join(filepath.Dir(file), "..", ".."))
}

// jsonValue round-trips a value through JSON the way the exported snapshot
// reaches the authoring flow.
func jsonValue(t *testing.T, value any) any {
	t.Helper()
	data, err := json.Marshal(value)
	if err != nil {
		t.Fatalf("encode value: %v", err)
	}
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.UseNumber()
	var result any
	if err := decoder.Decode(&result); err != nil {
		t.Fatalf("decode value: %v", err)
	}
	return result
}

// prepare builds the temporary database, snapshot, and environment for one
// zone preparation.
func prepare(t *testing.T, s scenario) prepared {
	t.Helper()
	root := t.TempDir()
	classChains, err := os.ReadFile(filepath.Join(repositoryRoot(t), "ClassChains.lua"))
	if err != nil {
		t.Fatalf("read ClassChains.lua: %v", err)
	}
	if err := os.WriteFile(filepath.Join(root, "ClassChains.lua"), classChains, 0o644); err != nil {
		t.Fatalf("write ClassChains.lua: %v", err)
	}
	writeDatabase(t, root, s)
	snapshot := writeSnapshot(t, root, s)
	revision := s.revision
	if revision == "" {
		revision = UpstreamCommit
	}
	environment := Environment{
		Root:             root,
		Database:         root,
		Upstream:         root,
		Snapshot:         snapshot,
		UpstreamRevision: func() (string, error) { return revision, nil },
		VerifyUpstream:   func() error { return nil },
		DatabaseRevision: func() (string, error) { return revision, nil },
		UpstreamActions: func(string, string) ([]loremaster.Action, map[string]string, error) {
			return []loremaster.Action{}, map[string]string{}, nil
		},
	}
	text, audit, err := Prepare(ZoneSpec{
		Zone: "Redridge Mountains", Slug: "redridge-mountains",
		File: "Guides/Loremaster/RedridgeMountains.lua",
	}, environment)
	if err != nil {
		t.Fatalf("prepare zone: %v", err)
	}
	return prepared{root: root, text: text, audit: audit}
}

// prepareError runs one zone preparation that is expected to fail.
func prepareError(t *testing.T, s scenario) error {
	t.Helper()
	root := t.TempDir()
	classChains, err := os.ReadFile(filepath.Join(repositoryRoot(t), "ClassChains.lua"))
	if err != nil {
		t.Fatalf("read ClassChains.lua: %v", err)
	}
	if err := os.WriteFile(filepath.Join(root, "ClassChains.lua"), classChains, 0o644); err != nil {
		t.Fatalf("write ClassChains.lua: %v", err)
	}
	writeDatabase(t, root, s)
	snapshot := writeSnapshot(t, root, s)
	revision := s.revision
	if revision == "" {
		revision = UpstreamCommit
	}
	environment := Environment{
		Root:             root,
		Database:         root,
		Upstream:         root,
		Snapshot:         snapshot,
		UpstreamRevision: func() (string, error) { return revision, nil },
		VerifyUpstream:   func() error { return nil },
		DatabaseRevision: func() (string, error) { return revision, nil },
		UpstreamActions: func(string, string) ([]loremaster.Action, map[string]string, error) {
			return []loremaster.Action{}, map[string]string{}, nil
		},
	}
	_, _, err = Prepare(ZoneSpec{
		Zone: "Redridge Mountains", Slug: "redridge-mountains",
		File: "Guides/Loremaster/RedridgeMountains.lua",
	}, environment)
	if err == nil {
		t.Fatal("expected the zone preparation to fail")
	}
	return err
}

// writeDatabase records the compiled observations of one zone.
func writeDatabase(t *testing.T, root string, s scenario) {
	t.Helper()
	zones := filepath.Join(root, "data", "forever", "compiled", "zones")
	compilation := filepath.Join(root, "data", "forever", "compilation")
	for _, directory := range []string{zones, compilation} {
		if err := os.MkdirAll(directory, 0o755); err != nil {
			t.Fatalf("create %s: %v", directory, err)
		}
	}
	catalog := s.catalogQuests
	if catalog == nil {
		for quest := range s.quests {
			catalog = append(catalog, quest)
		}
		sort.Ints(catalog)
	}
	quests := map[string]any{}
	for _, quest := range catalog {
		quests[strconv.Itoa(quest)] = map[string]any{}
	}
	bundle, err := json.Marshal(map[string]any{
		"zone":   map[string]any{"zoneId": 44},
		"quests": quests,
	})
	if err != nil {
		t.Fatalf("encode zone bundle: %v", err)
	}
	if err := os.WriteFile(filepath.Join(zones, "redridge-mountains.json"), bundle, 0o644); err != nil {
		t.Fatalf("write zone bundle: %v", err)
	}
	if err := os.WriteFile(filepath.Join(compilation, "manifest.json"), []byte(`{"compilationFormatVersion":2}`), 0o644); err != nil {
		t.Fatalf("write manifest: %v", err)
	}
	identifiers := make([]int, 0, len(s.quests))
	for quest := range s.quests {
		identifiers = append(identifiers, quest)
	}
	sort.Ints(identifiers)
	var buffer bytes.Buffer
	stream := gzip.NewWriter(&buffer)
	for _, quest := range identifiers {
		fields := s.quests[quest]
		wowhead := map[string]any{
			"name":           fmt.Sprintf("Quest %d", quest),
			"faction":        "Horde",
			"races":          []any{},
			"classes":        []any{},
			"requiredLevel":  10,
			"questLevel":     10,
			"zoneId":         44,
			"wowheadCatalog": map[string]any{"list": map[string]any{"firstseenpatch": 11302}},
			"mapper": map[string]any{"objectives": map[string]any{"44": map[string]any{
				"zone": "Redridge Mountains",
				"levels": []any{[]any{
					map[string]any{"point": "start", "id": 1, "name": "First", "coord": []any{10, 20}},
					map[string]any{"point": "end", "id": 2, "name": "Second", "coord": []any{20, 20}},
				}},
			}}},
		}
		questiedb := map[string]any{}
		for key, value := range fields {
			if key == "wowhead" {
				continue
			}
			questiedb[key] = value
		}
		if override, ok := fields["wowhead"].(map[string]any); ok {
			for key, value := range override {
				wowhead[key] = value
			}
		}
		record, err := json.Marshal(map[string]any{
			"entityType": "quest",
			"entityId":   strconv.Itoa(quest),
			"attributes": map[string]any{"sourceData": map[string]any{
				"wowhead":   map[string]any{"attributes": wowhead, "revision": "wh"},
				"questiedb": map[string]any{"attributes": questiedb, "revision": "qd"},
			}},
		})
		if err != nil {
			t.Fatalf("encode record: %v", err)
		}
		stream.Write(record)
		stream.Write([]byte("\n"))
	}
	if err := stream.Close(); err != nil {
		t.Fatalf("close records: %v", err)
	}
	if err := os.WriteFile(filepath.Join(compilation, "records.jsonl.gz"), buffer.Bytes(), 0o644); err != nil {
		t.Fatalf("write records: %v", err)
	}
}

// writeSnapshot records the exported guides and prerequisites.
func writeSnapshot(t *testing.T, root string, s scenario) Snapshot {
	t.Helper()
	condition := s.sourceCondition
	if condition == nil {
		condition = map[string]any{"faction": "Horde"}
	}
	guides := []map[string]any{{
		"id":         "leveling-source",
		"category":   "Leveling Quest Guides",
		"conditions": condition,
		"goals":      jsonValue(t, s.sourceGoals),
	}}
	for _, guide := range s.extraGuides {
		guides = append(guides, jsonValue(t, guide).(map[string]any))
	}
	if len(s.existingGoals) > 0 {
		current := map[string]any{
			"id":        "loremaster-redridge-mountains",
			"title":     "Redridge Mountains",
			"category":  "Loremaster Guides",
			"revision":  1,
			"routeMode": "ordered",
			"goals":     jsonValue(t, s.existingGoals),
		}
		guides = append(guides, current)
		rendered, err := loremaster.Lua(jsonValue(t, current), 0)
		if err != nil {
			t.Fatalf("render the existing guide: %v", err)
		}
		path := filepath.Join(root, "Guides", "Loremaster", "RedridgeMountains.lua")
		if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
			t.Fatalf("create guide directory: %v", err)
		}
		if err := os.WriteFile(path, []byte("local _, ns = ...\nns:RegisterGuide("+rendered+")\n"), 0o644); err != nil {
			t.Fatalf("write the existing guide: %v", err)
		}
	}
	registered := s.registered
	if registered == nil {
		registered = map[string][]map[string]any{}
	}
	data, err := json.Marshal(map[string]any{
		"guides":        jsonValue(t, guides),
		"prerequisites": jsonValue(t, registered),
	})
	if err != nil {
		t.Fatalf("encode snapshot: %v", err)
	}
	snapshot, err := LoadSnapshot(data)
	if err != nil {
		t.Fatalf("load snapshot: %v", err)
	}
	return snapshot
}

// auditStatus reports the recorded disposition of one quest.
func auditStatus(t *testing.T, audit *orderedMap, quest int) string {
	t.Helper()
	quests := audit.Ordered("quests")
	if quests == nil {
		t.Fatal("the audit records no quests")
	}
	entry := quests.Ordered(strconv.Itoa(quest))
	if entry == nil {
		t.Fatalf("the audit records no quest %d", quest)
	}
	return text(entry.Value("status"))
}

// auditSupporting reports the recorded supporting quests.
func auditSupporting(t *testing.T, audit *orderedMap) []int {
	t.Helper()
	result := []int{}
	for _, value := range audit.List("supportingQuests") {
		quest, ok := integer(value)
		if !ok {
			t.Fatalf("the audit records an unreadable supporting quest %v", value)
		}
		result = append(result, quest)
	}
	return result
}

// findGoal reports the position of the first goal that matches.
func findGoal(goals []loremaster.Goal, matches func(loremaster.Goal) bool) int {
	for index, goal := range goals {
		if matches(goal) {
			return index
		}
	}
	return -1
}

func TestBreadcrumbFinishesBeforeItsTargetPickup(t *testing.T) {
	result := prepare(t, scenario{quests: map[int]map[string]any{
		10: {"breadcrumbForQuestId": 11},
		11: {},
	}})
	goals := result.goals(t)
	end := findGoal(goals, func(goal loremaster.Goal) bool { return goal.QuestID == 10 && goal.Kind == "turnin" })
	target := findGoal(goals, func(goal loremaster.Goal) bool { return goal.QuestID == 11 && goal.Kind == "accept" })
	if end < 0 || target < 0 {
		t.Fatalf("expected a breadcrumb turn-in and a target pickup, got %d and %d", end, target)
	}
	if end >= target {
		t.Fatalf("the breadcrumb turn-in at %d must precede the target pickup at %d", end, target)
	}
	for _, goal := range goals {
		if goal.QuestID != 10 {
			continue
		}
		if !strings.Contains(goal.Raw, "alternativeQuests") {
			t.Fatalf("goal %q records no breadcrumb alternative", goal.ID)
		}
	}
}

func TestSourceDependenciesResolveAcrossCasualChapters(t *testing.T) {
	sourceGoal := func(id, kind string) map[string]any {
		state := "activeOrCompleted"
		if kind == "objective" {
			state = "complete"
		}
		dependencies := []any{}
		if kind == "turnin" {
			dependencies = append(dependencies, "objective-10-quest-work")
		}
		return map[string]any{
			"id": id, "kind": kind, "conditions": map[string]any{"faction": "Horde"},
			"complete":  map[string]any{"quest": map[string]any{"id": 10, "state": state}},
			"dependsOn": dependencies,
		}
	}
	result := prepare(t, scenario{
		quests:      map[int]map[string]any{10: {}},
		sourceGoals: []map[string]any{sourceGoal("accept-10", "accept"), sourceGoal("objective-10", "objective")},
		extraGuides: []map[string]any{{
			"id": "leveling-second", "category": "Leveling Quest Guides",
			"conditions": map[string]any{"faction": "Horde"},
			"goals":      []any{sourceGoal("turnin-10", "turnin")},
		}},
	})
	turnin := -1
	for index, goal := range result.goals(t) {
		if goal.Kind == "turnin" {
			turnin = index
			break
		}
	}
	if turnin < 0 {
		t.Fatal("the prepared guide records no turn-in")
	}
	depends := result.goals(t)[turnin].Depends
	found := false
	for _, dependency := range depends {
		if dependency == "horde-leveling-source-objective-10" {
			found = true
		}
	}
	if !found {
		t.Fatalf("the turn-in depends on %v instead of the source objective", depends)
	}
}

func TestSourceReturnDependencyImportsItsPickupAndPrerequisites(t *testing.T) {
	group := map[string]any{"mode": "any", "quests": []any{30}}
	sourceGoal := func(quest int, kind string, dependencies []any, requirements []any) map[string]any {
		state := "activeOrCompleted"
		if kind == "turnin" {
			state = "completed"
		}
		return map[string]any{
			"id": kind + "-" + strconv.Itoa(quest), "kind": kind,
			"conditions":     map[string]any{"faction": "Horde"},
			"complete":       map[string]any{"quest": map[string]any{"id": quest, "state": state}},
			"dependsOn":      dependencies,
			"requiredQuests": requirements,
		}
	}
	source := []map[string]any{
		sourceGoal(30, "accept", nil, nil),
		sourceGoal(30, "turnin", nil, nil),
		sourceGoal(20, "accept", nil, []any{group}),
		sourceGoal(20, "turnin", nil, nil),
		sourceGoal(10, "accept", []any{"turnin-20"}, nil),
		sourceGoal(10, "turnin", nil, nil),
	}
	result := prepare(t, scenario{
		quests: map[int]map[string]any{
			10: {}, 20: {"preQuestSingle": []any{30}}, 30: {},
		},
		sourceGoals:   source,
		catalogQuests: []int{10},
	})
	pickups := map[int]bool{}
	for _, goal := range result.goals(t) {
		if goal.Kind == "accept" {
			pickups[goal.QuestID] = true
		}
	}
	for _, quest := range []int{10, 20, 30} {
		if !pickups[quest] {
			t.Fatalf("the prepared guide records no pickup for quest %d", quest)
		}
	}
	supporting := map[int]bool{}
	for _, quest := range auditSupporting(t, result.audit) {
		supporting[quest] = true
	}
	for _, quest := range []int{20, 30} {
		if !supporting[quest] {
			t.Fatalf("quest %d is not recorded as supporting", quest)
		}
	}
	quests := result.audit.Ordered("quests")
	for _, quest := range []int{20, 30} {
		if quests.Ordered(strconv.Itoa(quest)) == nil {
			t.Fatalf("the audit records no quest %d", quest)
		}
	}
}

func TestExtraSourcePrerequisitePrecedesItsCasualPickup(t *testing.T) {
	source := []map[string]any{}
	for _, kind := range []string{"accept", "objective", "turnin"} {
		state := "activeOrCompleted"
		switch kind {
		case "objective":
			state = "complete"
		case "turnin":
			state = "completed"
		}
		dependencies := []any{}
		if kind == "turnin" {
			dependencies = append(dependencies, "objective-20")
		}
		requirements := []any{}
		if kind == "accept" {
			requirements = append(requirements, map[string]any{"mode": "any", "quests": []any{10}})
		}
		source = append(source, map[string]any{
			"id": kind + "-20", "kind": kind, "conditions": map[string]any{"faction": "Horde"},
			"complete":       map[string]any{"quest": map[string]any{"id": 20, "state": state}},
			"dependsOn":      dependencies,
			"requiredQuests": requirements,
		})
	}
	result := prepare(t, scenario{
		quests:        map[int]map[string]any{10: {}, 20: {"preQuestSingle": []any{10}}},
		sourceGoals:   source,
		catalogQuests: []int{10, 20},
	})
	goals := result.goals(t)
	prerequisite := findGoal(goals, func(goal loremaster.Goal) bool { return goal.QuestID == 10 && goal.Kind == "turnin" })
	pickup := findGoal(goals, func(goal loremaster.Goal) bool { return goal.QuestID == 20 && goal.Kind == "accept" })
	if prerequisite < 0 || pickup < 0 {
		t.Fatalf("expected a prerequisite turn-in and a source pickup, got %d and %d", prerequisite, pickup)
	}
	if prerequisite >= pickup {
		t.Fatalf("the prerequisite turn-in at %d must precede the source pickup at %d", prerequisite, pickup)
	}
	identifiers := []string{}
	for _, goal := range goals {
		if goal.QuestID == 20 {
			identifiers = append(identifiers, goal.ID)
		}
	}
	expected := []string{
		"horde-leveling-source-accept-20",
		"horde-leveling-source-objective-20",
		"horde-leveling-source-turnin-20",
	}
	if strings.Join(identifiers, ",") != strings.Join(expected, ",") {
		t.Fatalf("the source actions are %v instead of %v", identifiers, expected)
	}
}

func TestRerunPreservesExistingSourceActionsStillInCasualChapter(t *testing.T) {
	source := []map[string]any{}
	existing := []map[string]any{}
	for _, kind := range []string{"accept", "objective", "turnin"} {
		state := "activeOrCompleted"
		switch kind {
		case "objective":
			state = "complete"
		case "turnin":
			state = "completed"
		}
		dependencies := []any{}
		if kind == "turnin" {
			dependencies = append(dependencies, "objective-10")
		}
		goal := map[string]any{
			"id": kind + "-10", "kind": kind, "conditions": map[string]any{"faction": "Horde"},
			"complete":  map[string]any{"quest": map[string]any{"id": 10, "state": state}},
			"dependsOn": dependencies,
		}
		source = append(source, goal)
		copied := map[string]any{}
		for key, value := range goal {
			copied[key] = value
		}
		copied["id"] = "horde-leveling-source-" + kind + "-10"
		copied["sourceGuide"] = "leveling-source"
		copied["sourceActionID"] = kind + "-10"
		existing = append(existing, copied)
	}
	result := prepare(t, scenario{
		quests:        map[int]map[string]any{10: {}},
		sourceGoals:   source,
		existingGoals: existing,
	})
	identifiers := map[string]bool{}
	for _, goal := range result.goals(t) {
		identifiers[goal.ID] = true
	}
	for _, expected := range []string{
		"horde-leveling-source-accept-10",
		"horde-leveling-source-objective-10",
		"horde-leveling-source-turnin-10",
	} {
		if !identifiers[expected] {
			t.Fatalf("the prepared guide dropped %q", expected)
		}
	}
}

func TestRepeatedSourceVisitDoesNotWaitForFutureObjectives(t *testing.T) {
	source := []map[string]any{}
	for _, visit := range []string{"first", "later"} {
		for _, kind := range []string{"accept", "objective", "turnin"} {
			state := "activeOrCompleted"
			switch kind {
			case "objective":
				state = "complete"
			case "turnin":
				state = "completed"
			}
			dependencies := []any{}
			if kind != "accept" {
				dependencies = append(dependencies, "accept-10-"+visit)
			}
			source = append(source, map[string]any{
				"id": kind + "-10-" + visit, "kind": kind, "conditions": map[string]any{"faction": "Horde"},
				"complete":  map[string]any{"quest": map[string]any{"id": 10, "state": state}},
				"dependsOn": dependencies,
			})
		}
	}
	result := prepare(t, scenario{quests: map[int]map[string]any{10: {}}, sourceGoals: source})
	returned := -1
	for index, goal := range result.goals(t) {
		if goal.ID == "horde-leveling-source-turnin-10-first" {
			returned = index
			break
		}
	}
	if returned < 0 {
		t.Fatal("the prepared guide records no first-visit turn-in")
	}
	depends := result.goals(t)[returned].Depends
	found := false
	for _, dependency := range depends {
		if dependency == "horde-leveling-source-objective-10-first" {
			found = true
		}
		if dependency == "horde-leveling-source-objective-10-later" {
			t.Fatalf("the first visit waits on %q", dependency)
		}
	}
	if !found {
		t.Fatalf("the first visit depends on %v instead of its own objective", depends)
	}
}

func TestExtractedVisitRetainsChapterEntryLevel(t *testing.T) {
	result := prepare(t, scenario{
		quests: map[int]map[string]any{10: {}},
		sourceGoals: []map[string]any{{
			"id": "accept-10", "kind": "accept", "conditions": map[string]any{"faction": "Horde"},
			"complete": map[string]any{"quest": map[string]any{"id": 10, "state": "activeOrCompleted"}},
		}},
		sourceCondition: map[string]any{"all": []any{
			map[string]any{"faction": "Horde"},
			map[string]any{"level": map[string]any{"min": 22}},
		}},
	})
	goals := result.goals(t)
	entry := -1
	for index, goal := range goals {
		if goal.ID == "visit-entry-leveling-source" {
			entry = index
			break
		}
	}
	if entry < 0 {
		t.Fatal("the prepared guide records no visit entry")
	}
	if !strings.Contains(goals[entry].Raw, "requiredLevel = 22") {
		t.Fatalf("the visit entry records no entry level:\n%s", goals[entry].Raw)
	}
	conditions, err := loremaster.GoalField(goals[entry].Raw, "conditions")
	if err != nil {
		t.Fatalf("read the visit entry conditions: %v", err)
	}
	if strings.Contains(conditions, "level") {
		t.Fatalf("the visit entry keeps its chapter level gate: %s", conditions)
	}
	accept := findGoal(goals, func(goal loremaster.Goal) bool { return goal.Kind == "accept" })
	if accept < 0 {
		t.Fatal("the prepared guide records no pickup")
	}
	if entry >= accept {
		t.Fatalf("the visit entry at %d must precede the first pickup at %d", entry, accept)
	}
}

func TestOrphanPrerequisiteExcursionsAreNotImported(t *testing.T) {
	result := prepare(t, scenario{
		quests: map[int]map[string]any{
			10: {},
			11: {"preQuestSingle": []any{10}, "wowhead": map[string]any{"mapper": map[string]any{}}},
		},
		catalogQuests: []int{11},
	})
	if result.text != "" {
		t.Fatalf("the prepared guide records an unsupported itinerary:\n%s", result.text)
	}
	if status := auditStatus(t, result.audit, 11); status != "unresolved" {
		t.Fatalf("quest 11 is %q instead of unresolved", status)
	}
	if status := auditStatus(t, result.audit, 10); status != "excluded" {
		t.Fatalf("quest 10 is %q instead of excluded", status)
	}
}

func TestFutureDuplicatePickupDependencyUsesObservedEarlierPickup(t *testing.T) {
	condition := map[string]any{"faction": "Horde"}
	first := map[string]any{
		"id": "accept-10-first", "kind": "accept", "conditions": condition,
		"complete": map[string]any{"quest": map[string]any{"id": 10, "state": "activeOrCompleted"}},
	}
	returned := map[string]any{
		"id": "turnin-10", "kind": "turnin", "conditions": condition,
		"complete":  map[string]any{"quest": map[string]any{"id": 10, "state": "completed"}},
		"dependsOn": []any{"accept-10-first", "accept-10-late"},
	}
	late := map[string]any{}
	for key, value := range first {
		late[key] = value
	}
	late["id"] = "accept-10-late"
	result := prepare(t, scenario{
		quests:      map[int]map[string]any{10: {}},
		sourceGoals: []map[string]any{first, returned, late},
	})
	goals := result.goals(t)
	turnin := findGoal(goals, func(goal loremaster.Goal) bool { return goal.Kind == "turnin" })
	if turnin < 0 {
		t.Fatal("the prepared guide records no turn-in")
	}
	depends := goals[turnin].Depends
	if len(depends) != 1 || depends[0] != "horde-leveling-source-accept-10-first" {
		t.Fatalf("the turn-in depends on %v instead of the observed earlier pickup", depends)
	}
	kinds := []string{}
	for _, goal := range goals {
		kinds = append(kinds, goal.Kind)
	}
	if strings.Join(kinds, ",") != "accept,turnin,accept" {
		t.Fatalf("the prepared guide records %v instead of the repeated pickups", kinds)
	}
}

func TestFutureDuplicateObjectiveDependencyUsesEarlierVisit(t *testing.T) {
	condition := map[string]any{"faction": "Horde"}
	source := []map[string]any{
		{
			"id": "accept-10-first", "kind": "accept", "conditions": condition,
			"complete": map[string]any{"quest": map[string]any{"id": 10, "state": "activeOrCompleted"}},
		},
		{
			"id": "objective-10-first", "kind": "objective", "conditions": condition,
			"complete": map[string]any{"quest": map[string]any{"id": 10, "state": "complete"}},
		},
		{
			"id": "turnin-10", "kind": "turnin", "conditions": condition,
			"complete":  map[string]any{"quest": map[string]any{"id": 10, "state": "completed"}},
			"dependsOn": []any{"objective-10-later"},
		},
		{
			"id": "accept-10-later", "kind": "accept", "conditions": condition,
			"complete": map[string]any{"quest": map[string]any{"id": 10, "state": "activeOrCompleted"}},
		},
		{
			"id": "objective-10-later", "kind": "objective", "conditions": condition,
			"complete": map[string]any{"quest": map[string]any{"id": 10, "state": "complete"}},
		},
	}
	result := prepare(t, scenario{quests: map[int]map[string]any{10: {}}, sourceGoals: source})
	goals := result.goals(t)
	turnin := findGoal(goals, func(goal loremaster.Goal) bool { return goal.Kind == "turnin" })
	if turnin < 0 {
		t.Fatal("the prepared guide records no turn-in")
	}
	depends := goals[turnin].Depends
	if len(depends) != 1 || depends[0] != "horde-leveling-source-objective-10-first" {
		t.Fatalf("the turn-in depends on %v instead of the earlier objective", depends)
	}
}

func TestFutureDistinctObjectiveDependencyIsNotRewritten(t *testing.T) {
	condition := map[string]any{"faction": "Horde"}
	source := []map[string]any{
		{
			"id": "accept-10-first", "kind": "accept", "conditions": condition,
			"complete": map[string]any{"quest": map[string]any{"id": 10, "state": "activeOrCompleted"}},
		},
		{
			"id": "objective-10-first", "kind": "objective", "conditions": condition,
			"complete": map[string]any{"quest": map[string]any{"id": 10, "state": "complete"}},
		},
		{
			"id": "turnin-10", "kind": "turnin", "conditions": condition,
			"complete":  map[string]any{"quest": map[string]any{"id": 10, "state": "completed"}},
			"dependsOn": []any{"objective-10-later"},
		},
		{
			"id": "accept-10-later", "kind": "accept", "conditions": condition,
			"complete": map[string]any{"quest": map[string]any{"id": 10, "state": "activeOrCompleted"}},
		},
		{
			"id": "objective-10-later", "kind": "objective", "conditions": condition,
			"complete": map[string]any{"quest": map[string]any{"id": 10, "state": "completed"}},
		},
	}
	err := prepareError(t, scenario{quests: map[int]map[string]any{10: {}}, sourceGoals: source})
	if !strings.Contains(err.Error(), "Prerequisite/spine cycle") {
		t.Fatalf("the preparation failed with %v instead of a cycle report", err)
	}
}

func TestFuturePickupDependencyKeepsAnUncoveredActorCycle(t *testing.T) {
	first := map[string]any{
		"id": "accept-10-first", "kind": "accept",
		"conditions": map[string]any{"faction": "Horde", "class": 8},
		"complete":   map[string]any{"quest": map[string]any{"id": 10, "state": "activeOrCompleted"}},
	}
	returned := map[string]any{
		"id": "turnin-10", "kind": "turnin", "conditions": map[string]any{"faction": "Horde"},
		"complete":  map[string]any{"quest": map[string]any{"id": 10, "state": "completed"}},
		"dependsOn": []any{"accept-10-late"},
	}
	late := map[string]any{
		"id": "accept-10-late", "kind": "accept", "conditions": map[string]any{"faction": "Horde"},
		"complete": map[string]any{"quest": map[string]any{"id": 10, "state": "activeOrCompleted"}},
	}
	err := prepareError(t, scenario{
		quests:      map[int]map[string]any{10: {}},
		sourceGoals: []map[string]any{first, returned, late},
	})
	if !strings.Contains(err.Error(), "Prerequisite/spine cycle") {
		t.Fatalf("the preparation failed with %v instead of a cycle report", err)
	}
}

func TestAnyPrerequisiteDoesNotBecomeAllCompletionDependencies(t *testing.T) {
	result := prepare(t, scenario{quests: map[int]map[string]any{
		10: {}, 11: {}, 12: {"preQuestSingle": []any{10, 11}},
	}})
	accept := findGoal(result.goals(t), func(goal loremaster.Goal) bool {
		return goal.QuestID == 12 && goal.Kind == "accept"
	})
	if accept < 0 {
		t.Fatal("the prepared guide records no pickup for quest 12")
	}
	goal := result.goals(t)[accept]
	required, err := loremaster.GoalField(goal.Raw, "requiredQuests")
	if err != nil {
		t.Fatalf("read the pickup requirements: %v", err)
	}
	if !strings.Contains(required, "mode = \"any\"") {
		t.Fatalf("the pickup records %s instead of an alternative requirement", required)
	}
	if len(goal.Depends) == 0 {
		t.Fatal("the pickup records no dependencies")
	}
	for _, dependency := range goal.Depends {
		if !strings.Contains(dependency, "level") {
			t.Fatalf("the pickup depends on %q instead of its level checkpoint", dependency)
		}
	}
}

func TestAllPrerequisiteGroupBecomesCompletionDependencies(t *testing.T) {
	result := prepare(t, scenario{quests: map[int]map[string]any{
		10: {}, 11: {}, 12: {"preQuestGroup": []any{10, 11}},
	}})
	goals := result.goals(t)
	accept := findGoal(goals, func(goal loremaster.Goal) bool {
		return goal.QuestID == 12 && goal.Kind == "accept"
	})
	if accept < 0 {
		t.Fatal("the prepared guide records no pickup for quest 12")
	}
	for _, parent := range []int{10, 11} {
		turnin := findGoal(goals, func(goal loremaster.Goal) bool {
			return goal.QuestID == parent && goal.Kind == "turnin"
		})
		if turnin < 0 {
			t.Fatalf("the prepared guide records no turn-in for quest %d", parent)
		}
		if !containsString(goals[accept].Depends, goals[turnin].ID) {
			t.Fatalf("the pickup depends on %v, want turn-in %q of quest %d", goals[accept].Depends, goals[turnin].ID, parent)
		}
	}
}

func TestCheckpointQuestIsReadAsInteger(t *testing.T) {
	for _, value := range []any{float64(44), 44, int64(44)} {
		quest, ok := checkpointQuestOf(map[string]any{"checkpointQuest": value})
		if !ok || quest != 44 {
			t.Fatalf("checkpointQuest %#v read as (%d, %v), want (44, true)", value, quest, ok)
		}
	}
	if _, ok := checkpointQuestOf(map[string]any{"checkpointQuest": "44"}); ok {
		t.Fatal("a string checkpoint id should not be read as a quest")
	}
	if _, ok := checkpointQuestOf(map[string]any{"checkpointQuest": 0}); ok {
		t.Fatal("a zero checkpoint id should not be read as a quest")
	}
}

func TestExcludedZonePrerequisiteBlocksCandidateWithoutImportingIt(t *testing.T) {
	result := prepare(t, scenario{quests: map[int]map[string]any{
		10: {"wowhead": map[string]any{"mapper": map[string]any{"objectives": map[string]any{
			"1": map[string]any{"zone": "Mount Hyjal", "levels": []any{[]any{
				map[string]any{"point": "start", "name": "Forbidden", "coord": []any{1, 2}},
			}}},
		}}}},
		12: {"preQuestSingle": []any{10}},
	}})
	if result.text != "" {
		t.Fatalf("the prepared guide records an unsupported itinerary:\n%s", result.text)
	}
	if status := auditStatus(t, result.audit, 12); status != "unresolved" {
		t.Fatalf("quest 12 is %q instead of unresolved", status)
	}
	if status := auditStatus(t, result.audit, 10); status != "unresolved" {
		t.Fatalf("quest 10 is %q instead of unresolved", status)
	}
}

func TestUnavailableConditionalPrerequisiteOnlyExcludesItsApplicableBranch(t *testing.T) {
	result := prepare(t, scenario{
		quests: map[int]map[string]any{
			10: {"wowhead": map[string]any{"mapper": map[string]any{"objectives": map[string]any{
				"1": map[string]any{"zone": "Mount Hyjal", "levels": []any{[]any{
					map[string]any{"point": "start", "name": "Forbidden", "coord": []any{1, 2}},
				}}},
			}}}},
			12: {},
		},
		registered: map[string][]map[string]any{
			"12": {{"mode": "all", "quests": []any{10}, "conditions": map[string]any{"class": 8}}},
		},
	})
	if status := auditStatus(t, result.audit, 12); status != "included" {
		t.Fatalf("quest 12 is %q instead of included", status)
	}
	accept := findGoal(result.goals(t), func(goal loremaster.Goal) bool {
		return goal.QuestID == 12 && goal.Kind == "accept"
	})
	if accept < 0 {
		t.Fatal("the prepared guide records no pickup for quest 12")
	}
	goal := result.goals(t)[accept]
	runner, err := exec.LookPath("luajit")
	if err != nil {
		t.Skip("Lua 5.1 is required")
	}
	source := fmt.Sprintf(`local n={}; assert(loadfile('GuideEngine.lua'))('FGM',n); assert(loadfile('OrderedRoutes.lua'))('FGM',n)
local goal = %s
local s={raceID=2,classID=1,faction='Horde',level=60,quests={},completedQuests={},questLogKnown=true,questCompletionKnown=true}
assert(not n.OrderedRoutes:ExcludedAction(goal,s),'Unrelated class remains eligible')
s.classID=8
assert(n.OrderedRoutes:ExcludedAction(goal,s),'Missing applicable predecessor excludes cold entry')
s.completedQuests[10]=true
assert(not n.OrderedRoutes:ExcludedAction(goal,s),'Observed history restores midway entry')
`, goal.Raw)
	command := exec.Command(runner, "-")
	command.Dir = repositoryRoot(t)
	command.Stdin = strings.NewReader(source)
	if output, err := command.CombinedOutput(); err != nil {
		t.Fatalf("the guide engine rejected the conditional prerequisite: %v\n%s", err, output)
	}
}

func TestMismatchedUpstreamRevisionIsRejected(t *testing.T) {
	err := prepareError(t, scenario{quests: map[int]map[string]any{}, revision: "different"})
	if !strings.Contains(err.Error(), "Expected upstream") {
		t.Fatalf("the preparation failed with %v instead of an upstream report", err)
	}
}
