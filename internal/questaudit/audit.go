package questaudit

import (
	"fmt"
	"math"
	"regexp"
	"sort"
	"strconv"
	"strings"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
)

var (
	classicRaces   = intSetOf(1, 2, 3, 4, 5, 6, 7, 8)
	classicClasses = intSetOf(1, 2, 3, 4, 5, 7, 8, 9, 11)
	hordeRaces     = intSetOf(2, 5, 6, 8)
	allianceRaces  = intSetOf(1, 3, 4, 7)
)

type Requirement struct {
	Mode   string `json:"mode"`
	Quests []int  `json:"quests"`
}
type Catalog struct {
	QuestID         int
	Forever         bool
	Name            string
	Requirement     *Requirement
	Exclusive       []int
	Breadcrumbs     []int
	NextQuest       int
	RequiredClasses []int
	RequiredRaces   []int
	RequiredSkills  []int
	StepLevel       int
	RecordFound     bool
}
type Finding struct {
	Category string `json:"category"`
	QuestID  int    `json:"quest_id"`
	Forever  bool   `json:"forever"`
	Message  string `json:"message"`
}

func intSetOf(values ...int) map[int]bool {
	result := map[int]bool{}
	for _, value := range values {
		result[value] = true
	}
	return result
}
func obj(value any) map[string]any { result, _ := value.(map[string]any); return result }
func intValue(value any) (int, bool) {
	switch v := value.(type) {
	case int:
		return v, true
	case int64:
		return int(v), true
	case float64:
		return int(v), v == float64(int(v))
	case jsonNumber:
		n, err := strconv.Atoi(string(v))
		return n, err == nil
	case fmt.Stringer:
		n, err := strconv.Atoi(v.String())
		return n, err == nil
	}
	return 0, false
}

type jsonNumber string

func values(value any) []any { result, _ := value.([]any); return result }
func positive(value any) int {
	n, ok := intValue(value)
	if ok && n > 0 {
		return n
	}
	return 0
}
func intList(value any) []int {
	result := []int{}
	if n, ok := intValue(value); ok {
		if n > 0 {
			return []int{n}
		}
		return result
	}
	for _, raw := range values(value) {
		if n, ok := intValue(raw); ok && n > 0 {
			result = append(result, n)
		}
	}
	return result
}
func uniqueSorted(values []int) []int {
	seen := map[int]bool{}
	result := []int{}
	for _, value := range values {
		if !seen[value] {
			seen[value] = true
			result = append(result, value)
		}
	}
	sort.Ints(result)
	return result
}
func fieldsFromRecord(record map[string]any) map[string]any {
	detail := obj(record["detail"])
	questie := obj(detail["questie"])
	if questie == nil {
		questie = obj(record["questie"])
	}
	return obj(questie["fields"])
}

func RequirementFromRecord(record map[string]any) *Requirement {
	if record == nil {
		return nil
	}
	detail := obj(record["detail"])
	requirements := obj(detail["requirements"])
	fields := fieldsFromRecord(record)
	all := intList(requirements["allOf"])
	if len(all) == 0 {
		all = intList(fields["preQuestGroup"])
	}
	if len(all) == 0 {
		all = intList(record["preQuestGroup"])
	}
	any := intList(requirements["anyOf"])
	if len(any) == 0 {
		any = intList(fields["preQuestSingle"])
	}
	if len(any) == 0 {
		any = intList(record["preQuestSingle"])
	}
	if len(all) > 0 && len(any) > 0 {
		return &Requirement{"mixed", uniqueSorted(append(all, any...))}
	}
	if len(all) > 0 {
		return &Requirement{"all", uniqueSorted(all)}
	}
	if len(any) > 0 {
		return &Requirement{"any", uniqueSorted(any)}
	}
	return nil
}

func idList(value any, allowed map[int]bool) []int {
	if list, ok := value.([]any); ok {
		result := []int{}
		for _, raw := range list {
			if n, ok := intValue(raw); ok && allowed[n] {
				result = append(result, n)
			}
		}
		return uniqueSorted(result)
	}
	mask, ok := intValue(value)
	if !ok || mask <= 0 {
		return []int{}
	}
	result := []int{}
	for id := range allowed {
		if mask&(1<<(id-1)) != 0 {
			result = append(result, id)
		}
	}
	sort.Ints(result)
	return result
}

func CatalogQuest(questID int, record map[string]any) Catalog {
	fields := fieldsFromRecord(record)
	detail := map[string]any{}
	listed := map[string]any{}
	if record != nil {
		detail = obj(record["detail"])
		listed = obj(record["list"])
		if fields == nil {
			fields = record
		}
	}
	if detail == nil {
		detail = map[string]any{}
	}
	if listed == nil {
		listed = map[string]any{}
	}
	requirements := obj(detail["requirements"])
	exclusive := intList(requirements["exclusiveTo"])
	if len(exclusive) == 0 {
		exclusive = intList(fields["exclusiveTo"])
	}
	if len(exclusive) == 0 {
		exclusive = intList(recordValue(record, "exclusiveTo"))
	}
	breadcrumbs := intList(requirements["breadcrumbs"])
	if len(breadcrumbs) == 0 {
		breadcrumbs = intList(fields["breadcrumbs"])
	}
	if len(breadcrumbs) == 0 {
		breadcrumbs = intList(recordValue(record, "breadcrumbs"))
	}
	breadcrumbFor := positive(fields["breadcrumbForQuestId"])
	if breadcrumbFor == 0 {
		breadcrumbFor = positive(recordValue(record, "breadcrumbForQuestId"))
	}
	if breadcrumbFor > 0 && !contains(breadcrumbs, breadcrumbFor) {
		breadcrumbs = append(breadcrumbs, breadcrumbFor)
	}
	next := positive(requirements["nextQuestInChain"])
	if next == 0 {
		next = positive(fields["nextQuestInChain"])
	}
	if next == 0 {
		next = positive(recordValue(record, "nextQuestInChain"))
	}
	skill := fields["requiredSkill"]
	if skill == nil {
		skill = recordValue(record, "requiredSkill")
	}
	skills := []int{}
	if list := values(skill); len(list) > 0 {
		if id := positive(list[0]); id > 0 {
			skills = []int{id}
		}
	} else if id := positive(skill); id > 0 {
		skills = []int{id}
	}
	forever := false
	name, _ := listed["name"].(string)
	if name == "" {
		name, _ = fields["name"].(string)
	}
	if name == "" {
		name, _ = recordValue(record, "name").(string)
	}
	step := 0
	if record != nil {
		step = loremaster.StepLevel(record)
	}
	return Catalog{questID, forever, name, RequirementFromRecord(record), uniqueSorted(exclusive), uniqueSorted(breadcrumbs), next, idList(fields["requiredClasses"], classicClasses), idList(fields["requiredRaces"], classicRaces), skills, step, record != nil}
}
func recordValue(record map[string]any, key string) any {
	if record == nil {
		return nil
	}
	return record[key]
}
func contains(values []int, target int) bool {
	for _, value := range values {
		if value == target {
			return true
		}
	}
	return false
}

var prerequisitePattern = regexp.MustCompile(`ns:RegisterQuestPrerequisite\(\{(.*?)\}\)`)

func ParseRegisteredPrerequisites(text string) map[int]Requirement {
	result := map[int]Requirement{}
	questPattern := regexp.MustCompile(`\bquest\s*=\s*(\d+)`)
	modePattern := regexp.MustCompile(`\bmode\s*=\s*"(all|any)"`)
	questsPattern := regexp.MustCompile(`\bquests\s*=\s*\{([^}]*)\}`)
	numbers := regexp.MustCompile(`\d+`)
	for _, match := range prerequisitePattern.FindAllStringSubmatch(text, -1) {
		quest := questPattern.FindStringSubmatch(match[1])
		mode := modePattern.FindStringSubmatch(match[1])
		quests := questsPattern.FindStringSubmatch(match[1])
		if quest == nil || mode == nil || quests == nil {
			continue
		}
		id, _ := strconv.Atoi(quest[1])
		ids := []int{}
		for _, n := range numbers.FindAllString(quests[1], -1) {
			value, _ := strconv.Atoi(n)
			ids = append(ids, value)
		}
		result[id] = Requirement{mode[1], ids}
	}
	return result
}

func sameFilePrerequisiteIDs(goals []loremaster.Goal, questID int) map[int]bool {
	byID := map[string]loremaster.Goal{}
	for _, goal := range goals {
		byID[goal.ID] = goal
	}
	found := map[int]bool{}
	for _, goal := range goals {
		if goal.QuestID != questID || (goal.Kind != "accept" && goal.Kind != "gossip") {
			continue
		}
		for _, dependency := range goal.Depends {
			other, ok := byID[dependency]
			if ok && other.Kind == "turnin" && other.QuestID != 0 {
				found[other.QuestID] = true
			}
		}
	}
	return found
}

func CompareQuest(questID int, record map[string]any, goals []loremaster.Goal, registered map[int]Requirement) []Finding {
	catalog := CatalogQuest(questID, record)
	findings := []Finding{}
	add := func(category, message string) {
		findings = append(findings, Finding{category, questID, catalog.Forever, message})
	}
	if !catalog.RecordFound {
		add("missing-record", "quest id is not in the compiled bundles")
		return findings
	}
	expected := catalog.Requirement
	authored, hasAuthored := registered[questID]
	linked := sameFilePrerequisiteIDs(goals, questID)
	if expected != nil && expected.Mode == "mixed" {
		add("prerequisite-mode", fmt.Sprintf("has both allOf and anyOf (%v); register them separately", expected.Quests))
	} else if expected != nil {
		covered := intSetOf(authored.Quests...)
		if !hasAuthored {
			covered = map[int]bool{}
		}
		for id := range linked {
			covered[id] = true
		}
		missing := []int{}
		for _, id := range expected.Quests {
			if !covered[id] {
				missing = append(missing, id)
			}
		}
		if len(missing) > 0 {
			coveredList := sortedSet(covered)
			coveredText := fmt.Sprint(coveredList)
			if len(coveredList) == 0 {
				coveredText = "none"
			}
			add("missing-prerequisite", fmt.Sprintf("needs %s of %v; covered %v", expected.Mode, missing, coveredText))
		}
		if hasAuthored && authored.Mode != expected.Mode {
			add("prerequisite-mode", fmt.Sprintf("registered mode %s but the database says %s", authored.Mode, expected.Mode))
		}
		if hasAuthored {
			extra := []int{}
			for _, id := range authored.Quests {
				if !contains(expected.Quests, id) {
					extra = append(extra, id)
				}
			}
			if len(extra) > 0 {
				add("extra-prerequisite", fmt.Sprintf("registered %v but the database requirement is %v", extra, expected.Quests))
			}
		}
	} else if hasAuthored {
		add("extra-prerequisite", fmt.Sprintf("registered %v but the database lists no prerequisite", authored.Quests))
	}
	if catalog.NextQuest > 0 {
		findings = append(findings, orderFindings(catalog, goals)...)
	}
	findings = append(findings, conditionFindings(catalog, goals)...)
	if len(catalog.Exclusive) > 0 {
		present := map[int]bool{}
		for _, goal := range goals {
			if goal.QuestID != 0 {
				present[goal.QuestID] = true
			}
		}
		both := []int{}
		for _, id := range catalog.Exclusive {
			if present[id] {
				both = append(both, id)
			}
		}
		if len(both) > 0 {
			add("exclusive", fmt.Sprintf("exclusive with %v; leave both on the route only when the header says so", both))
		}
	}
	if len(catalog.Breadcrumbs) > 0 {
		add("breadcrumb", fmt.Sprintf("breadcrumb link %v", catalog.Breadcrumbs))
	}
	return findings
}
func sortedSet(values map[int]bool) []int {
	result := []int{}
	for id := range values {
		result = append(result, id)
	}
	sort.Ints(result)
	return result
}

func orderFindings(catalog Catalog, goals []loremaster.Goal) []Finding {
	byFile := map[string][]loremaster.Goal{}
	for _, goal := range goals {
		if goal.QuestID == catalog.QuestID || goal.QuestID == catalog.NextQuest {
			byFile[goal.SourceFile] = append(byFile[goal.SourceFile], goal)
		}
	}
	result := []Finding{}
	for source, steps := range byFile {
		parentAt := math.Inf(-1)
		childAt := math.Inf(1)
		for _, step := range steps {
			if step.QuestID == catalog.QuestID && step.Kind == "turnin" && step.Priority > parentAt {
				parentAt = step.Priority
			}
			if step.QuestID == catalog.NextQuest && step.Kind == "accept" && step.Priority < childAt {
				childAt = step.Priority
			}
		}
		if !math.IsInf(parentAt, -1) && !math.IsInf(childAt, 1) && childAt < parentAt {
			result = append(result, Finding{"order", catalog.QuestID, catalog.Forever, fmt.Sprintf("%s: accept of %d is before the turn-in of %d", source, catalog.NextQuest, catalog.QuestID)})
		}
	}
	return result
}

func conditionFindings(catalog Catalog, goals []loremaster.Goal) []Finding {
	steps := []loremaster.Goal{}
	for _, goal := range goals {
		if goal.QuestID == catalog.QuestID {
			steps = append(steps, goal)
		}
	}
	if len(steps) == 0 {
		return nil
	}
	result := []Finding{}
	add := func(category, message string) {
		result = append(result, Finding{category, catalog.QuestID, catalog.Forever, message})
	}
	if catalog.StepLevel > 1 {
		present := false
		stamped := []int{}
		for _, goal := range steps {
			if goal.LevelMin > 0 {
				stamped = append(stamped, goal.LevelMin)
			}
			if goal.LevelMin == catalog.StepLevel {
				present = true
			}
		}
		if !present {
			sort.Ints(stamped)
			add("level", fmt.Sprintf("step level %d is not on the steps (have %v)", catalog.StepLevel, stamped))
		}
	}
	if len(catalog.RequiredClasses) > 0 && !sameIntSet(catalog.RequiredClasses, classicClasses) {
		present := map[int]bool{}
		for _, goal := range steps {
			for _, id := range goal.Classes {
				present[id] = true
			}
		}
		missing := []int{}
		for _, id := range catalog.RequiredClasses {
			if !present[id] {
				missing = append(missing, id)
			}
		}
		if len(missing) > 0 && !sameIntSet(sortedSet(present), intMap(catalog.RequiredClasses)) {
			add("class", fmt.Sprintf("classes %v are not on every matching step (have %v)", catalog.RequiredClasses, sortedSet(present)))
		}
	}
	if len(catalog.RequiredRaces) > 0 && !sameIntSet(catalog.RequiredRaces, classicRaces) {
		required := intMap(catalog.RequiredRaces)
		present := map[int]bool{}
		allCovered := true
		for _, goal := range steps {
			for _, id := range goal.Races {
				present[id] = true
			}
			covered := subset(required, intMap(goal.Races)) || (sameMapSet(required, hordeRaces) && goal.StepFaction == "Horde") || (sameMapSet(required, allianceRaces) && goal.StepFaction == "Alliance")
			if !covered {
				allCovered = false
			}
		}
		if !allCovered {
			add("race", fmt.Sprintf("races %v are not on the steps (have %v)", catalog.RequiredRaces, sortedSet(present)))
		}
	}
	if len(catalog.RequiredSkills) > 0 {
		present := map[int]bool{}
		for _, goal := range steps {
			for _, id := range goal.Skills {
				present[id] = true
			}
		}
		missing := []int{}
		for _, id := range catalog.RequiredSkills {
			if !present[id] {
				missing = append(missing, id)
			}
		}
		if len(missing) > 0 {
			add("skill", fmt.Sprintf("skill %v is not on the steps", missing))
		}
	}
	return result
}

func intMap(values []int) map[int]bool { return intSetOf(values...) }
func subset(required, actual map[int]bool) bool {
	for id := range required {
		if !actual[id] {
			return false
		}
	}
	return true
}
func sameMapSet(a, b map[int]bool) bool {
	if len(a) != len(b) {
		return false
	}
	for value := range a {
		if !b[value] {
			return false
		}
	}
	return true
}
func sameIntSet(values []int, expected map[int]bool) bool {
	if len(values) != len(expected) {
		return false
	}
	for _, id := range values {
		if !expected[id] {
			return false
		}
	}
	return true
}

func Audit(goals []loremaster.Goal, records map[int]map[string]any, registered map[int]Requirement) []Finding {
	questIDs := map[int]bool{}
	for _, goal := range goals {
		if goal.QuestID != 0 {
			questIDs[goal.QuestID] = true
		}
	}
	ids := sortedSet(questIDs)
	findings := []Finding{}
	for _, id := range ids {
		findings = append(findings, CompareQuest(id, records[id], goals, registered)...)
	}
	sort.Slice(findings, func(i, j int) bool {
		if findings[i].Forever != findings[j].Forever {
			return findings[i].Forever
		}
		if findings[i].Category != findings[j].Category {
			return findings[i].Category < findings[j].Category
		}
		return findings[i].QuestID < findings[j].QuestID
	})
	return findings
}

func FormatReport(findings []Finding) string {
	counts := map[string]int{}
	for _, finding := range findings {
		counts[finding.Category]++
	}
	categories := make([]string, 0, len(counts))
	for category := range counts {
		categories = append(categories, category)
	}
	sort.Strings(categories)
	lines := []string{fmt.Sprintf("%d findings", len(findings))}
	for _, category := range categories {
		lines = append(lines, fmt.Sprintf("  %s: %d", category, counts[category]))
	}
	lines = append(lines, "")
	for _, finding := range findings {
		tag := "classic"
		if finding.Forever {
			tag = "forever"
		}
		lines = append(lines, fmt.Sprintf("%s %s %d: %s", tag, finding.Category, finding.QuestID, finding.Message))
	}
	return strings.Join(lines, "\n") + "\n"
}
