package loremaster

import (
	"encoding/json"
	"fmt"
	"math"
	"regexp"
	"strconv"
	"strings"
)

const levelLineGap = 5

func object(value any) map[string]any { result, _ := value.(map[string]any); return result }
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
	case json.Number:
		n, err := strconv.Atoi(string(v))
		return n, err == nil
	default:
		return 0, false
	}
}

type jsonNumber string

func questieFields(record map[string]any) map[string]any {
	detail := object(record["detail"])
	questie := object(detail["questie"])
	if questie == nil {
		questie = object(record["questie"])
	}
	return object(questie["fields"])
}

func positive(value any) (int, bool) { n, ok := intValue(value); return n, ok && n > 0 }

func OfferLevel(record map[string]any) int {
	if record == nil {
		return 0
	}
	if n, ok := positive(questieFields(record)["requiredLevel"]); ok {
		return n
	}
	minimum, ok := intValue(record["minLevel"])
	listed := object(record["list"])
	if !ok {
		minimum, ok = intValue(listed["reqlevel"])
	}
	if !ok {
		minimum, ok = intValue(record["reqlevel"])
	}
	if ok && minimum > 0 {
		return minimum
	}
	return 0
}

func StepLevel(record map[string]any) int {
	if record == nil {
		return 0
	}
	fields := questieFields(record)
	listed := object(record["list"])
	if listed == nil {
		listed = record
	}
	minimum, ok := intValue(record["minLevel"])
	if !ok {
		minimum, ok = intValue(record["reqlevel"])
	}
	if !ok {
		minimum, ok = intValue(listed["reqlevel"])
	}
	reqclass, _ := intValue(listed["reqclass"])
	if reqclass == 0 {
		reqclass, _ = intValue(record["reqclass"])
	}
	questID, idOK := intValue(record["id"])
	if !idOK {
		questID, _ = intValue(listed["id"])
	}
	if questID == 99142 && ok && minimum > 0 {
		return minimum
	}
	classes, hasClasses := record["classes"].([]any)
	isClass := (hasClasses && len(classes) > 0) || reqclass != 0
	if fields != nil && !isClass {
		if n, yes := positive(fields["questLevel"]); yes {
			return n
		}
		if n, yes := positive(fields["requiredLevel"]); yes {
			minimum, ok = n, true
		}
	}
	if fields != nil && isClass {
		if n, yes := positive(fields["requiredLevel"]); yes {
			return n
		}
	}
	if ok && minimum > 0 {
		return minimum
	}
	return 0
}

var levelLine = regexp.MustCompile(`(?:\[li\])?Level:\s*([0-9]+)`)

func RecommendedLevel(summary, meta map[string]any, html string) int {
	for _, source := range []map[string]any{summary, meta} {
		if n, ok := positive(source["level"]); ok {
			return n
		}
		if value, ok := source["level"].(string); ok {
			if n, err := strconv.Atoi(value); err == nil && n > 0 {
				return n
			}
		}
	}
	if match := levelLine.FindStringSubmatch(html); match != nil {
		n, _ := strconv.Atoi(match[1])
		return n
	}
	for _, source := range []map[string]any{summary, meta} {
		if n, ok := positive(source["reqlevel"]); ok {
			return n
		}
	}
	return 1
}

type Goal struct {
	Raw         string   `json:"raw"`
	ID          string   `json:"id"`
	Kind        string   `json:"kind"`
	Priority    float64  `json:"priority"`
	QuestID     int      `json:"quest_id"`
	Text        string   `json:"text"`
	Labels      []string `json:"labels"`
	Depends     []string `json:"depends"`
	Origin      string   `json:"origin,omitempty"`
	Faction     string   `json:"faction,omitempty"`
	SourceFile  string   `json:"source_file,omitempty"`
	LevelMin    int      `json:"level_min,omitempty"`
	Classes     []int    `json:"classes,omitempty"`
	Races       []int    `json:"races,omitempty"`
	Skills      []int    `json:"skills,omitempty"`
	StepFaction string   `json:"step_faction,omitempty"`
}

func SetMinLevel(raw string, level int) string {
	if level <= 1 {
		return raw
	}
	levelCondition := regexp.MustCompile(`level = \{\s*min = [0-9]+\s*\}`)
	if levelCondition.MatchString(raw) {
		return levelCondition.ReplaceAllString(raw, fmt.Sprintf("level = { min = %d }", level))
	}
	allCondition := regexp.MustCompile(`conditions = \{\s*all = \{`)
	line := fmt.Sprintf("{ level = { min = %d } },", level)
	if allCondition.MatchString(raw) {
		return allCondition.ReplaceAllString(raw, "${0}\n                    "+line)
	}
	return strings.Replace(raw, "text = ", fmt.Sprintf("conditions = { level = { min = %d } },\n            text = ", level), 1)
}

var (
	soleLevelCondition = regexp.MustCompile(`\n[ \t]*conditions = \{ level = \{ min = [0-9]+ \} \},`)
	levelEntry         = regexp.MustCompile(`\n[ \t]*\{ level = \{ min = [0-9]+ \} \},`)
	emptyAllCondition  = regexp.MustCompile(`\n[ \t]*conditions = \{\s*all = \{\s*\},\s*\},`)
	namedThenLevel     = regexp.MustCompile(`(?m)\n([ \t]*)conditions = (HORDE|ALLIANCE|BOTH_FACTIONS),\n([ \t]*)conditions = \{ level = \{ min = ([0-9]+) \} \},`)
	namedOnlyCondition = regexp.MustCompile(`(?m)\n([ \t]*)conditions = (HORDE|ALLIANCE|BOTH_FACTIONS),`)
)

func ApplyLevelGate(raw string, level int) string {
	raw = namedThenLevel.ReplaceAllStringFunc(raw, func(match string) string {
		parts := namedThenLevel.FindStringSubmatch(match)
		if parts == nil || parts[1] != parts[3] {
			return match
		}
		return namedGate(parts[1], parts[2], parts[4])
	})
	if level <= 1 {
		return stripLevelGate(raw)
	}
	if regexp.MustCompile(`level = \{\s*min = [0-9]+\s*\}`).MatchString(raw) {
		return SetMinLevel(raw, level)
	}
	if namedOnlyCondition.MatchString(raw) {
		return namedOnlyCondition.ReplaceAllStringFunc(raw, func(match string) string {
			parts := namedOnlyCondition.FindStringSubmatch(match)
			return namedGate(parts[1], parts[2], strconv.Itoa(level))
		})
	}
	return SetMinLevel(raw, level)
}

func namedGate(indent, name, level string) string {
	return fmt.Sprintf("\n%sconditions = {\n%s    all = {\n%s        %s,\n%s        { level = { min = %s } },\n%s    },\n%s},", indent, indent, indent, name, indent, level, indent, indent)
}

func stripLevelGate(raw string) string {
	if !regexp.MustCompile(`level = \{\s*min = [0-9]+\s*\}`).MatchString(raw) {
		return raw
	}
	if match := soleLevelCondition.FindStringIndex(raw); match != nil {
		return raw[:match[0]] + raw[match[1]:]
	}
	if match := levelEntry.FindStringIndex(raw); match != nil {
		raw = raw[:match[0]] + raw[match[1]:]
	}
	if match := emptyAllCondition.FindStringIndex(raw); match != nil {
		raw = raw[:match[0]] + raw[match[1]:]
	}
	return raw
}

var priorityField = regexp.MustCompile(`\bpriority = \d+(?:\.\d+)?`)

func FitPriorities(goals []Goal, movedIDs map[int]bool) {
	index := 0
	for index < len(goals) {
		if !movedIDs[goals[index].QuestID] {
			index++
			continue
		}
		start := index
		for index < len(goals) && movedIDs[goals[index].QuestID] {
			index++
		}
		end := index
		previous := 0.0
		if start > 0 {
			previous = goals[start-1].Priority
		}
		need := float64(end - start)
		next := previous + need + 1
		if end < len(goals) {
			next = goals[end].Priority
		}
		if next-previous-1 < need {
			shift := tidyPriority(need - (next - previous - 1))
			for i := end; i < len(goals); i++ {
				goals[i].Priority = tidyPriority(goals[i].Priority + shift)
				goals[i].Raw = setPriority(goals[i].Raw, goals[i].Priority)
			}
			next = tidyPriority(next + shift)
		}
		_ = next
		for offset := 1; offset <= end-start; offset++ {
			priority := tidyPriority(previous + float64(offset))
			goal := &goals[start+offset-1]
			goal.Priority = priority
			goal.Raw = setPriority(goal.Raw, priority)
		}
	}
}

func tidyPriority(value float64) float64 { value = math.Round(value*10000) / 10000; return value }
func formatPriority(value float64) string {
	value = tidyPriority(value)
	if value == math.Trunc(value) {
		return strconv.FormatInt(int64(value), 10)
	}
	return strconv.FormatFloat(value, 'f', -1, 64)
}
func setPriority(raw string, priority float64) string {
	rendered := "priority = " + formatPriority(priority)
	if indices := priorityField.FindStringIndex(raw); indices != nil {
		return raw[:indices[0]] + rendered + raw[indices[1]:]
	}
	return strings.Replace(raw, "kind = ", rendered+",\n            kind = ", 1)
}

func PlaceWoven(goals []Goal, wovenIDs map[int]bool, levels map[int]int, ceiling int) []Goal {
	for i := range goals {
		if wovenIDs[goals[i].QuestID] && levels[goals[i].QuestID] > 0 {
			goals[i].Raw = SetMinLevel(goals[i].Raw, levels[goals[i].QuestID])
		}
	}
	early := []int{}
	seen := map[int]bool{}
	for index, goal := range goals {
		questID := goal.QuestID
		if questID == 0 || !wovenIDs[questID] || seen[questID] || levels[questID] <= 0 {
			continue
		}
		seen[questID] = true
		steps := goalsForQuest(goals, questID)
		if len(steps) > 0 && len(steps[0].Depends) > 0 {
			continue
		}
		recommended := levels[questID]
		if ceiling <= 0 || recommended <= ceiling {
			continue
		}
		carried := 0
		readyAt := len(goals)
		for pos, step := range goals {
			if step.QuestID != 0 && step.QuestID != questID && levels[step.QuestID] > 0 {
				carried = levels[step.QuestID]
				if ceiling > 0 && carried > ceiling {
					carried = ceiling
				}
			}
			if carried > 0 && carried >= recommended {
				readyAt = pos
				break
			}
		}
		if index < readyAt {
			early = append(early, questID)
		}
	}
	moved := map[int]bool{}
	for _, questID := range early {
		steps := goalsForQuest(goals, questID)
		first := goalIndex(goals, questID)
		remaining := make([]Goal, 0, len(goals)-len(steps))
		for _, goal := range goals {
			if goal.QuestID != questID {
				remaining = append(remaining, goal)
			}
		}
		placed := InsertQuest(remaining, steps, levels, ceiling)
		newAt := goalIndex(placed, questID)
		if newAt <= first {
			continue
		}
		goals = placed
		moved[questID] = true
	}
	if len(moved) > 0 {
		FitPriorities(goals, moved)
	}
	return goals
}

func goalsForQuest(goals []Goal, questID int) []Goal {
	result := []Goal{}
	for _, goal := range goals {
		if goal.QuestID == questID {
			result = append(result, goal)
		}
	}
	return result
}
func goalIndex(goals []Goal, questID int) int {
	for index, goal := range goals {
		if goal.QuestID == questID {
			return index
		}
	}
	return len(goals)
}

func normalizedName(value string) string {
	value = strings.ToLower(strings.ReplaceAll(value, `\'`, "'"))
	value = regexp.MustCompile(`[^a-z0-9]+`).ReplaceAllString(value, " ")
	return strings.Join(strings.Fields(value), " ")
}

func giverName(goal Goal) string {
	match := regexp.MustCompile(`\b(?:from|to) ([A-Z][^.]*)`).FindStringSubmatch(goal.Text)
	if match != nil {
		name := strings.SplitN(match[1], " in ", 2)[0]
		name = strings.SplitN(name, " if ", 2)[0]
		return normalizedName(name)
	}
	if len(goal.Labels) > 0 {
		return normalizedName(goal.Labels[0])
	}
	return ""
}

func routeLevels(goals []Goal, levels map[int]int, ceiling int) []int {
	carried := 0
	result := make([]int, len(goals))
	for i, goal := range goals {
		if level := levels[goal.QuestID]; goal.QuestID != 0 && level > 0 {
			carried = level
			if ceiling > 0 && carried > ceiling {
				carried = ceiling
			}
		}
		result[i] = carried
	}
	return result
}

func InsertQuest(output, steps []Goal, levels map[int]int, ceiling int) []Goal {
	if len(steps) == 0 {
		return output
	}
	for _, dep := range steps[0].Depends {
		for pos, goal := range output {
			if goal.ID == dep {
				result := append([]Goal{}, output[:pos+1]...)
				result = append(result, steps...)
				return append(result, output[pos+1:]...)
			}
		}
	}
	recommended := levels[steps[0].QuestID]
	giver := giverName(steps[0])
	route := routeLevels(output, levels, ceiling)
	placeAt := func(pos int) []Goal {
		if steps[0].Kind == "accept" {
			for pos+1 < len(output) && output[pos+1].Kind == "accept" {
				pos++
			}
		}
		result := append([]Goal{}, output[:pos+1]...)
		result = append(result, steps...)
		return append(result, output[pos+1:]...)
	}
	if giver != "" {
		anchor := -1
		for pos, goal := range output {
			if !strings.Contains(normalizedName(goal.Text), giver) {
				continue
			}
			if recommended > 0 && (route[pos] == 0 || route[pos] < recommended) {
				continue
			}
			anchor = pos
			if goal.Kind == "accept" {
				break
			}
		}
		if anchor >= 0 {
			return placeAt(anchor)
		}
	}
	if recommended > 0 {
		for index, visit := range route {
			if visit > 0 && visit >= recommended {
				result := append([]Goal{}, output[:index]...)
				result = append(result, steps...)
				return append(result, output[index:]...)
			}
		}
	}
	return append(output, steps...)
}
