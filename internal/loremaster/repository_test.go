package loremaster_test

import (
	"encoding/json"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"reflect"
	"regexp"
	"strconv"
	"strings"
	"testing"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
)

func repositoryRoot(t *testing.T) string {
	t.Helper()
	root, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	return root
}

func guideGoals(t *testing.T, root, relative string) []loremaster.Goal {
	t.Helper()
	path := filepath.Join(root, filepath.FromSlash(relative))
	text, err := os.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	faction := loremaster.GuideFaction(string(text))
	goals, err := loremaster.ParseGoals(root, string(text), "guide", relative, faction)
	if err != nil {
		t.Fatalf("parse %s: %v", relative, err)
	}
	return goals
}

func readJSON(t *testing.T, path string, value any) {
	t.Helper()
	data, err := os.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	if err := json.Unmarshal(data, value); err != nil {
		t.Fatal(err)
	}
}

func TestRepositoryQuestLevelsAndPickupMinimums(t *testing.T) {
	root := repositoryRoot(t)
	var levels map[string]struct {
		Step       int  `json:"step"`
		Offer      *int `json:"offer"`
		Unverified bool `json:"unverified"`
	}
	var conflicts map[string]map[string]int
	readJSON(t, filepath.Join(root, "tests/fixtures/quest_min_levels.json"), &levels)
	readJSON(t, filepath.Join(root, "tests/fixtures/quest_level_conflicts.json"), &conflicts)
	for quest, expected := range map[string]int{"837": 6, "784": 3, "97225": 9, "96821": 6, "99142": 5} {
		if levels[quest].Step != expected {
			t.Errorf("quest %s step level = %d, want %d", quest, levels[quest].Step, expected)
		}
	}
	watching := levels["95981"]
	if watching.Step != 20 || watching.Offer == nil || *watching.Offer != 10 {
		t.Errorf("Watching the Roads levels = %#v, want step 20 and offer 10", watching)
	}
	if len(conflicts) == 0 {
		t.Fatal("source conflicts fixture unexpectedly empty")
	}
	for quest, facts := range conflicts {
		if _, ok := levels[quest]; !ok {
			t.Errorf("conflicting quest %s has no level record", quest)
		}
		values := map[int]bool{}
		for _, value := range facts {
			values[value] = true
			if value <= 0 {
				t.Errorf("quest %s has nonpositive conflict value %d", quest, value)
			}
		}
		if len(values) < 2 {
			t.Errorf("quest %s conflict does not contain distinct values: %v", quest, facts)
		}
	}

	seen := map[int]bool{}
	unverified := map[int]bool{}
	minimumPattern := regexp.MustCompile(`level\s*=\s*\{\s*min\s*=\s*(\d+)\s*\}`)
	for _, folder := range []string{"Leveling", "Class", "Dungeons"} {
		paths, err := filepath.Glob(filepath.Join(root, "Guides", folder, "*.lua"))
		if err != nil {
			t.Fatal(err)
		}
		for _, path := range paths {
			relative, _ := filepath.Rel(root, path)
			for _, goal := range guideGoals(t, root, filepath.ToSlash(relative)) {
				if goal.QuestID <= 0 || !map[string]bool{"accept": true, "objective": true, "turnin": true, "gossip": true}[goal.Kind] {
					continue
				}
				seen[goal.QuestID] = true
				key := strconv.Itoa(goal.QuestID)
				record, ok := levels[key]
				if !ok {
					t.Errorf("%s %s quest %d has no source levels", relative, goal.ID, goal.QuestID)
					continue
				}
				if record.Unverified {
					unverified[goal.QuestID] = true
				}
				if goal.Kind != "accept" || conflicts[key] != nil || record.Offer == nil {
					continue
				}
				conditions, err := loremaster.GoalField(goal.Raw, "conditions")
				if err != nil {
					t.Errorf("%s %s conditions: %v", relative, goal.ID, err)
					continue
				}
				actual := 1
				for _, match := range minimumPattern.FindAllStringSubmatch(conditions, -1) {
					value, _ := strconv.Atoi(match[1])
					if value > actual {
						actual = value
					}
				}
				if actual < *record.Offer {
					t.Errorf("%s %s needs at least %d, found %d", relative, goal.ID, *record.Offer, actual)
				}
			}
		}
	}
	if len(seen) == 0 {
		t.Fatal("level audit parsed no guide quest actions")
	}
	if !sameIDs(unverified, map[int]bool{95737: true, 96774: true}) {
		t.Errorf("unverified quest ids = %v", unverified)
	}
}

func TestRepositoryRoutePlacements(t *testing.T) {
	root := repositoryRoot(t)
	var bands map[string]struct {
		Max int `json:"max"`
	}
	var levels map[string]struct {
		Step int `json:"step"`
	}
	readJSON(t, filepath.Join(root, "tests/fixtures/reference_bands.json"), &bands)
	readJSON(t, filepath.Join(root, "tests/fixtures/quest_min_levels.json"), &levels)
	reference, err := os.ReadFile(filepath.Join(root, "tests/fixtures/reference_itineraries.lua"))
	if err != nil {
		t.Fatal(err)
	}
	chapters := regexp.MustCompile(`(?s)\["([^"\n]+)"\] = \{(.*?)\n    \}`).FindAllStringSubmatch(string(reference), -1)
	if len(chapters) != 84 || len(bands) != len(chapters) {
		t.Fatalf("reference has %d chapters and %d level bands, want 84 each", len(chapters), len(bands))
	}
	sourceQuest := regexp.MustCompile(`\{"[^"\n]+",(\d+),`)
	for _, chapter := range chapters {
		name, actions := chapter[1], chapter[2]
		band, ok := bands[name]
		if !ok {
			t.Errorf("missing reference band for %s", name)
			continue
		}
		classic := map[int]bool{}
		for _, match := range sourceQuest.FindAllStringSubmatch(actions, -1) {
			id, _ := strconv.Atoi(match[1])
			classic[id] = true
		}
		filename := strings.TrimPrefix(name, "leveling-era-")
		for _, goal := range guideGoals(t, root, "Guides/Leveling/"+filename+".lua") {
			if goal.QuestID <= 0 || classic[goal.QuestID] || len(goal.Classes) > 0 || strings.Contains(goal.Raw, "classAction") || strings.Contains(goal.ID, "woven-class-") {
				continue
			}
			level, exists := levels[strconv.Itoa(goal.QuestID)]
			if exists && level.Step > band.Max {
				t.Errorf("%s action %s step level %d exceeds reference max %d", name, goal.ID, level.Step, band.Max)
			}
		}
	}

	early := guideGoals(t, root, "Guides/Leveling/horde-silverpine-forest.lua")
	later := guideGoals(t, root, "Guides/Leveling/horde-hillsbrad-foothills.lua")
	if questIDs(early)[95981] {
		t.Error("Watching the Roads remains in the early Silverpine visit")
	}
	start, end := goalIndex(later, "accept", 493), goalIndex(later, "accept", 494)
	actions := goalsForQuest(later, 95981)
	if start < 0 || end < 0 || len(actions) != 3 || actions[0].Kind != "accept" || actions[1].Kind != "objective" || actions[2].Kind != "turnin" {
		t.Fatalf("later Sepulcher action chain = %#v", actions)
	}
	for index, goal := range later {
		if goal.QuestID == 95981 && (index <= start || index >= end) {
			t.Errorf("Watching the Roads action %s is outside visits 493-494", goal.ID)
		}
	}
	removed := map[int]bool{421: true, 422: true, 423: true, 424: true, 99: true, 98298: true, 98299: true}
	for _, guide := range []string{"horde-silverpine-forest", "horde-hillsbrad-foothills"} {
		for id := range questIDs(guideGoals(t, root, "Guides/Leveling/"+guide+".lua")) {
			if removed[id] {
				t.Errorf("Arugal quest %d remains in %s", id, guide)
			}
		}
	}
	omitted := map[string][]int{
		"alliance-duskwood-and-redridge-mountains": {96138}, "horde-ashenvale": {97538},
		"horde-stonetalon-mountains": {97538}, "alliance-westfall": {92747, 98407}, "dun-morogh": {96391},
	}
	for guide, ids := range omitted {
		present := questIDs(guideGoals(t, root, "Guides/Leveling/"+guide+".lua"))
		for _, id := range ids {
			if present[id] {
				t.Errorf("quest %d unexpectedly present in %s", id, guide)
			}
		}
	}
	if !questIDs(guideGoals(t, root, "Guides/Leveling/alliance-redridge-and-westfall.lua"))[98407] {
		t.Error("quest 98407 missing from reviewed Redridge/Westfall route")
	}
}

func TestLoremasterInventoriesMatchAuthoredGuides(t *testing.T) {
	root := repositoryRoot(t)
	guidePaths, err := filepath.Glob(filepath.Join(root, "Guides", "Loremaster", "*.lua"))
	if err != nil {
		t.Fatal(err)
	}
	guides := map[string][]loremaster.Goal{}
	for _, path := range guidePaths {
		text, err := os.ReadFile(path)
		if err != nil {
			t.Fatal(err)
		}
		goals, err := loremaster.ParseGoals(root, string(text), "guide", filepath.Base(path), loremaster.GuideFaction(string(text)))
		if err != nil {
			t.Fatalf("parse %s: %v", path, err)
		}
		guideID := regexp.MustCompile(`id\s*=\s*"([^"]+)"`).FindStringSubmatch(string(text))
		if guideID != nil {
			guides[guideID[1]] = goals
		}
	}
	audits, err := filepath.Glob(filepath.Join(root, "docs", "loremaster", "*.json"))
	if err != nil || len(audits) == 0 {
		t.Fatalf("Loremaster inventories: paths=%v err=%v", audits, err)
	}
	wantPriority := []any{"wowhead", "questiedb", "allthethings", "foreverclient"}
	statuses := map[string]bool{"spine": true, "included": true, "excluded": true, "other-zone": true, "unresolved": true}
	for _, path := range audits {
		var audit map[string]any
		readJSON(t, path, &audit)
		if !reflect.DeepEqual(audit["sourcePriority"], wantPriority) {
			t.Errorf("%s source priority = %v", filepath.Base(path), audit["sourcePriority"])
		}
		sources := testObject(audit["sources"])
		compilation := testObject(sources["compilation"])
		if len(testObject(sources["sourceHashes"])) == 0 || compilation["compilationFormatVersion"] != float64(2) {
			t.Errorf("%s missing source hashes or compilation format v2", filepath.Base(path))
		}
		guideID := testString(audit["guide"])
		goals, exists := guides[guideID]
		if !exists {
			t.Errorf("%s references missing guide %s", filepath.Base(path), guideID)
			continue
		}
		byID, indices, questKinds, pickupIDs := map[string]bool{}, map[string]int{}, map[int]map[string]bool{}, map[int]bool{}
		for index, goal := range goals {
			byID[goal.ID] = true
			indices[goal.ID] = index
			if goal.QuestID > 0 {
				if questKinds[goal.QuestID] == nil {
					questKinds[goal.QuestID] = map[string]bool{}
				}
				questKinds[goal.QuestID][goal.Kind] = true
				if goal.Kind == "accept" {
					pickupIDs[goal.QuestID] = true
				}
			}
		}
		upstream := testObject(audit["upstream"])
		if upstream != nil {
			for _, raw := range testList(audit["supportingQuests"]) {
				id := testInt(raw)
				if !pickupIDs[id] {
					t.Errorf("%s supporting quest %d has no authored pickup", filepath.Base(path), id)
				}
			}
		}
		spineActions := testStrings(audit["spineActions"])
		for _, action := range spineActions {
			if !byID[action] {
				t.Errorf("%s spine references missing action %s", filepath.Base(path), action)
			}
		}
		for i := 1; i < len(spineActions); i++ {
			if indices[spineActions[i-1]] > indices[spineActions[i]] {
				t.Errorf("%s spine actions are out of guide order", filepath.Base(path))
				break
			}
		}
		for _, raw := range testList(audit["placements"]) {
			visit := testObject(raw)
			if !byID[testString(visit["anchor"])] || strings.TrimSpace(testString(visit["reason"])) == "" {
				t.Errorf("%s has an invalid placement anchor or reason: %#v", filepath.Base(path), visit)
			}
			for _, action := range testList(visit["actions"]) {
				if !byID[testString(action)] {
					t.Errorf("%s placement references missing action %v", filepath.Base(path), action)
				}
			}
		}
		for quest, raw := range testObject(audit["quests"]) {
			entry := testObject(raw)
			status := testString(entry["status"])
			id, err := strconv.Atoi(quest)
			if err != nil || !statuses[status] || strings.TrimSpace(testString(entry["reason"])) == "" {
				t.Errorf("%s quest %s has invalid disposition: %#v", filepath.Base(path), quest, entry)
				continue
			}
			kinds := questKinds[id]
			if status == "included" && (!kinds["accept"] || !kinds["turnin"] || len(testObject(entry["evidence"])) == 0) {
				t.Errorf("%s included quest %s lacks actions or evidence", filepath.Base(path), quest)
			}
			if (status == "excluded" || status == "other-zone" || status == "unresolved") && len(kinds) > 0 {
				t.Errorf("%s %s quest %s has authored actions", filepath.Base(path), status, quest)
			}
		}
	}
}

func TestExpandedLoremasterReturnsFollowSuitableSpineVisits(t *testing.T) {
	root := repositoryRoot(t)
	var bands map[string]struct {
		Max int `json:"max"`
	}
	readJSON(t, filepath.Join(root, "tests/fixtures/reference_bands.json"), &bands)
	paths, err := filepath.Glob(filepath.Join(root, "Guides", "Loremaster", "*.lua"))
	if err != nil {
		t.Fatal(err)
	}
	for _, path := range paths {
		text, err := os.ReadFile(path)
		if err != nil {
			t.Fatal(err)
		}
		if !strings.Contains(string(text), "loremasterExpanded = true") {
			continue
		}
		goals, err := loremaster.ParseGoals(root, string(text), "guide", filepath.Base(path), loremaster.GuideFaction(string(text)))
		if err != nil {
			t.Fatal(err)
		}
		if err := checkExpandedReturnOrder(goals, bands); err != nil {
			t.Errorf("%s: %v", filepath.Base(path), err)
		}
	}
	// Moving a level checkpoint before its matching source visit must fail the audit.
	text, err := os.ReadFile(filepath.Join(root, "Guides", "Loremaster", "Badlands.lua"))
	if err != nil {
		t.Fatal(err)
	}
	goals, err := loremaster.ParseGoals(root, string(text), "guide", "Badlands.lua", "")
	if err != nil {
		t.Fatal(err)
	}
	checkpoint := -1
	for i, goal := range goals {
		if goal.ID == "alliance-extra-706-level" {
			checkpoint = i
			break
		}
	}
	if checkpoint < 0 {
		t.Fatal("expected Badlands checkpoint not found")
	}
	mutated := append([]loremaster.Goal(nil), goals...)
	goal := mutated[checkpoint]
	mutated = append(mutated[:checkpoint], mutated[checkpoint+1:]...)
	mutated = append([]loremaster.Goal{goal}, mutated...)
	if err := checkExpandedReturnOrder(mutated, bands); err == nil {
		t.Fatal("moved checkpoint before its suitable visit but audit passed")
	}
}

func TestLoremasterSourceEvidenceForReviewedZones(t *testing.T) {
	root := repositoryRoot(t)
	var dunMorogh map[string]any
	readJSON(t, filepath.Join(root, "docs/loremaster/dun-morogh.json"), &dunMorogh)
	quests := testObject(dunMorogh["quests"])
	quest := testObject(quests["95041"])
	wowhead := testObject(testObject(quest["evidence"])["wowhead"])
	if !reflect.DeepEqual(wowhead["prerequisiteReferences"], []any{float64(412)}) || quest["status"] != "included" {
		t.Fatalf("Dun Morogh prerequisite evidence/status = %#v / %v", wowhead, quest["status"])
	}
	for _, id := range []string{"466", "467"} {
		if testObject(quests[id])["status"] != "other-zone" {
			t.Errorf("Dun Morogh quest %s status = %v", id, testObject(quests[id])["status"])
		}
	}
	if testObject(quests["98423"])["status"] != "excluded" {
		t.Errorf("quest 98423 status = %v", testObject(quests["98423"])["status"])
	}
	foundIronforge := false
	for _, raw := range quests {
		entry := testObject(raw)
		if entry["status"] == "other-zone" && reflect.DeepEqual(entry["catalogs"], []any{"ironforge"}) {
			foundIronforge = true
		}
	}
	if !foundIronforge {
		t.Error("Dun Morogh inventory lacks an Ironforge catalog other-zone disposition")
	}

	var elwynn map[string]any
	readJSON(t, filepath.Join(root, "docs/loremaster/elwynn-forest.json"), &elwynn)
	malin := testObject(testObject(elwynn["quests"])["690"])
	if malin["status"] != "other-zone" {
		t.Fatalf("Malin's Request status = %v", malin["status"])
	}
	questie := testObject(testObject(malin["evidence"])["questiedb"])
	texts := testList(questie["objectivesText"])
	if len(texts) == 0 || !strings.Contains(testString(texts[0]), "Arathi Highlands") {
		t.Errorf("Malin's Request objective evidence = %#v", texts)
	}
	locations := testObject(malin["locations"])
	foundStart := false
	for _, raw := range testList(locations["start"]) {
		if testObject(raw)["areaID"] == float64(1519) {
			foundStart = true
		}
	}
	if !foundStart {
		t.Error("Malin's Request evidence omits its Stormwind pickup")
	}
}

func TestLoremasterLuaChecksRejectMutatedActions(t *testing.T) {
	root := repositoryRoot(t)
	tests := []struct {
		name, file, marker, mutation, message string
	}{
		{"faction inversion", "tests/lua/loremaster_zones.lua", "local serialize =", `local goals=ns.guides['loremaster-arathi-highlands'].goals
local objective,target
for i,g in ipairs(goals) do if g.id=='horde-extra-652-objective' then objective=table.remove(goals,i);break end end
assert(objective)
for i,g in ipairs(goals) do if g.id=='horde-extra-652-turnin' then target=i end end
table.insert(goals,target+1,objective)
`, "completes objectives before returning: horde-extra-652-objective"},
		{"repeat visit after return", "tests/lua/loremaster_zones.lua", "local guideData =", `local goals=ns.guides['loremaster-dustwallow-marsh'].goals
local objective,target
for i,g in ipairs(goals) do if g.kind=='objective' and ns.Engine:GetGoalQuestID(g)==1324 then objective=table.remove(goals,i);break end end
assert(objective)
objective.sourceGuide=nil
objective.id='alliance-extra-1324-objective'
for i,g in ipairs(goals) do if g.kind=='turnin' and ns.Engine:GetGoalQuestID(g)==1324 then target=i;break end end
table.insert(goals,target+1,objective)
`, "starts a new pickup after the prior return: alliance-extra-1324-objective"},
		{"repeat visit dependency", "tests/lua/lint.lua", "for _, guideID in ipairs(ns.guideOrder) do", `for _,goal in ipairs(ns.guides['loremaster-dustwallow-marsh'].goals) do
 if goal.kind=='turnin' and ns.Engine:GetGoalQuestID(goal)==1324 then
  local dependencies={}
  for _,dependency in ipairs(goal.dependsOn or {}) do
   if not dependency:find('objective-1324-1-private-hendel',1,true) then dependencies[#dependencies+1]=dependency end
  end
  goal.dependsOn=dependencies
  break
 end
end
`, "must dependOn objective alliance-leveling-era-alliance-dustwallow-marsh-and-thousand-needles-objective-1324-1-private-hendel"},
	}
	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			path := filepath.Join(root, test.file)
			source, err := os.ReadFile(path)
			if err != nil {
				t.Fatal(err)
			}
			if !strings.Contains(string(source), test.marker) {
				t.Fatalf("test mutation marker %q missing from %s", test.marker, test.file)
			}
			mutated := strings.Replace(string(source), test.marker, test.mutation+test.marker, 1)
			command := exec.Command("luajit", "-")
			command.Dir = root
			command.Stdin = strings.NewReader(mutated)
			output, err := command.CombinedOutput()
			if err == nil || !strings.Contains(string(output), test.message) {
				t.Fatalf("mutated Lua test output = %s, err=%v; want %q", output, err, test.message)
			}
		})
	}
}

func checkExpandedReturnOrder(goals []loremaster.Goal, bands map[string]struct {
	Max int `json:"max"`
}) error {
	type visit struct {
		position, max int
		faction       string
	}
	visits := []visit{}
	sourcePattern := regexp.MustCompile(`sourceGuide\s*=\s*"([^"]+)"`)
	factionPattern := regexp.MustCompile(`faction\s*=\s*"(Alliance|Horde)"`)
	levelPattern := regexp.MustCompile(`requiredLevel\s*=\s*(\d+)`)
	for i, goal := range goals {
		if match := sourcePattern.FindStringSubmatch(goal.Raw); match != nil {
			if band, ok := bands[match[1]]; ok {
				faction := ""
				if condition := factionPattern.FindStringSubmatch(goal.Raw); condition != nil {
					faction = condition[1]
				}
				visits = append(visits, visit{i, band.Max, faction})
			}
		}
	}
	for i, goal := range goals {
		if !strings.Contains(goal.ID, "-extra-") || !strings.HasSuffix(goal.ID, "-level") {
			continue
		}
		match := levelPattern.FindStringSubmatch(goal.Raw)
		if match == nil {
			continue
		}
		level, _ := strconv.Atoi(match[1])
		faction := ""
		if condition := factionPattern.FindStringSubmatch(goal.Raw); condition != nil {
			faction = condition[1]
		}
		eligible := []visit{}
		for _, candidate := range visits {
			if faction == "" || candidate.faction == "" || candidate.faction == faction {
				eligible = append(eligible, candidate)
			}
		}
		suitable := []visit{}
		for _, candidate := range eligible {
			if candidate.max >= level {
				suitable = append(suitable, candidate)
			}
		}
		if len(suitable) > 0 {
			before := false
			for _, candidate := range suitable {
				before = before || candidate.position < i
			}
			if !before {
				return fmt.Errorf("%s precedes its suitable source visit", goal.ID)
			}
		} else if len(eligible) > 0 {
			latest := -1
			for _, candidate := range eligible {
				if candidate.position > latest {
					latest = candidate.position
				}
			}
			if i <= latest {
				return fmt.Errorf("%s needs a later return after the spine", goal.ID)
			}
		}
	}
	return nil
}

func sameIDs(a, b map[int]bool) bool {
	if len(a) != len(b) {
		return false
	}
	for id := range a {
		if !b[id] {
			return false
		}
	}
	return true
}

func questIDs(goals []loremaster.Goal) map[int]bool {
	result := map[int]bool{}
	for _, goal := range goals {
		if goal.QuestID > 0 {
			result[goal.QuestID] = true
		}
	}
	return result
}

func goalsForQuest(goals []loremaster.Goal, quest int) []loremaster.Goal {
	result := []loremaster.Goal{}
	for _, goal := range goals {
		if goal.QuestID == quest {
			result = append(result, goal)
		}
	}
	return result
}

func goalIndex(goals []loremaster.Goal, kind string, quest int) int {
	for i, goal := range goals {
		if goal.Kind == kind && goal.QuestID == quest {
			return i
		}
	}
	return -1
}

func testObject(value any) map[string]any {
	result, _ := value.(map[string]any)
	return result
}

func testList(value any) []any {
	result, _ := value.([]any)
	return result
}

func testString(value any) string {
	result, _ := value.(string)
	return result
}

func testStrings(value any) []string {
	result := []string{}
	for _, item := range testList(value) {
		if text, ok := item.(string); ok {
			result = append(result, text)
		}
	}
	return result
}

func testInt(value any) int {
	switch number := value.(type) {
	case int:
		return number
	case float64:
		return int(number)
	case json.Number:
		result, _ := strconv.Atoi(string(number))
		return result
	default:
		return 0
	}
}
