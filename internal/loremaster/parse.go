package loremaster

import (
	"fmt"
	"os"
	"path/filepath"
	"regexp"
	"strconv"
	"strings"
	"sync"
)

var (
	goalMarker              = strings.Index
	goalIDPattern           = regexp.MustCompile(`\bid = "([^"\n]+)"`)
	classActionPattern      = regexp.MustCompile(`\bclassAction = "([^"\n]+)"`)
	kindPattern             = regexp.MustCompile(`\bkind = "([^"\n]+)"`)
	priorityPattern         = regexp.MustCompile(`\bpriority = (\d+(?:\.\d+)?)`)
	textPattern             = regexp.MustCompile(`\btext = "((?:\\.|[^"\\])*)"`)
	dependsPattern          = regexp.MustCompile(`dependsOn = \{([^}]*)\}`)
	quotedPattern           = regexp.MustCompile(`"([^"\n]*)"`)
	pointLabelPattern       = regexp.MustCompile(`Point\([^)]*?,\s*"((?:\\.|[^"\\])*)"`)
	questCompletionPattern  = regexp.MustCompile(`\b(?:quest|questObjective)\s*=\s*\{[^{}]*\bid\s*=\s*(\d+)`)
	legacyQuestPattern      = regexp.MustCompile(`^(?:QuestState|QuestObjective)\(\s*(\d+)`)
	conditionLevelPattern   = regexp.MustCompile(`\blevel\s*=\s*\{\s*min\s*=\s*(\d+)`)
	conditionFactionPattern = regexp.MustCompile(`\bfaction\s*=\s*"(Alliance|Horde)"`)
	classTemplatePattern    = regexp.MustCompile(`(?m)^    \["([^"\n]+)"\] = \{`)
)

func BraceEnd(text string, openAt int) (int, error) {
	if openAt < 0 || openAt >= len(text) || text[openAt] != '{' {
		return 0, fmt.Errorf("brace offset %d is not an opening brace", openAt)
	}
	depth := 0
	inString := false
	quote := byte(0)
	for i := openAt; i < len(text); i++ {
		ch := text[i]
		if inString {
			if ch == '\\' {
				i++
				continue
			}
			if ch == quote {
				inString = false
			}
			continue
		}
		if ch == '\'' || ch == '"' {
			inString = true
			quote = ch
			continue
		}
		if ch == '{' {
			depth++
		}
		if ch == '}' {
			depth--
			if depth == 0 {
				return i, nil
			}
		}
	}
	return 0, fmt.Errorf("unbalanced braces")
}

func GoalField(raw, key string) (string, error) {
	pattern := regexp.MustCompile(`\b` + regexp.QuoteMeta(key) + `\s*=\s*`)
	for i := 1; i < len(raw); {
		if strings.HasPrefix(raw[i:], "--") {
			end := strings.IndexByte(raw[i:], '\n')
			if end < 0 {
				return "", nil
			}
			i += end + 1
			continue
		}
		if raw[i] == '{' {
			end, err := BraceEnd(raw, i)
			if err != nil {
				return "", err
			}
			i = end + 1
			continue
		}
		if raw[i] == '\'' || raw[i] == '"' {
			quote := raw[i]
			i++
			for i < len(raw) {
				if raw[i] == '\\' {
					i += 2
					continue
				}
				if raw[i] == quote {
					i++
					break
				}
				i++
			}
			continue
		}
		if match := pattern.FindStringIndex(raw[i:]); match != nil && match[0] == 0 {
			value := raw[i+match[1]:]
			if strings.HasPrefix(value, "{") {
				end, err := BraceEnd(value, 0)
				if err != nil {
					return "", err
				}
				return value[:end+1], nil
			}
			if comma := strings.IndexByte(value, ','); comma >= 0 {
				return strings.TrimSpace(value[:comma]), nil
			}
			return strings.TrimSpace(strings.TrimSuffix(value, "}")), nil
		}
		i++
	}
	return "", nil
}

func ParseGoals(root, text, origin, sourceFile, faction string) ([]Goal, error) {
	marker := goalMarker(text, "goals = {")
	if marker < 0 {
		return []Goal{}, nil
	}
	open := strings.IndexByte(text[marker:], '{') + marker
	end, err := BraceEnd(text, open)
	if err != nil {
		return nil, err
	}
	constants := mapConstants(text)
	templates, err := classActionTemplates(filepath.Join(root, "ClassChains.lua"))
	if err != nil {
		return nil, err
	}
	blocks, err := splitGoalTables(text[open+1 : end])
	if err != nil {
		return nil, err
	}
	goals := make([]Goal, 0, len(blocks))
	for _, raw := range blocks {
		idMatch := goalIDPattern.FindStringSubmatch(raw)
		reference := classActionPattern.FindStringSubmatch(raw)
		template := ""
		if reference != nil {
			var ok bool
			template, ok = templates[reference[1]]
			if !ok {
				return nil, fmt.Errorf("unknown class action %q", reference[1])
			}
		}
		kindMatch := kindPattern.FindStringSubmatch(raw)
		if kindMatch == nil {
			kindMatch = kindPattern.FindStringSubmatch(template)
		}
		kind := "travel"
		if kindMatch != nil {
			kind = kindMatch[1]
		}
		priority := 0.0
		if match := priorityPattern.FindStringSubmatch(raw); match != nil {
			priority, _ = strconv.ParseFloat(match[1], 64)
		}
		complete, err := GoalField(raw, "complete")
		if err != nil {
			return nil, err
		}
		if complete == "" {
			complete, err = GoalField(template, "complete")
			if err != nil {
				return nil, err
			}
		}
		questID := 0
		if match := legacyQuestPattern.FindStringSubmatch(complete); match != nil {
			questID, _ = strconv.Atoi(match[1])
		} else if strings.HasPrefix(complete, "{") {
			if match := questCompletionPattern.FindStringSubmatch(complete); match != nil {
				questID, _ = strconv.Atoi(match[1])
			}
		}
		textMatch := textPattern.FindStringSubmatch(raw)
		if textMatch == nil {
			textMatch = textPattern.FindStringSubmatch(template)
		}
		stepText := ""
		if textMatch != nil {
			stepText = textMatch[1]
		}
		labels := pointLabelPattern.FindAllStringSubmatch(raw, -1)
		labelValues := []string{}
		for _, match := range labels {
			labelValues = append(labelValues, match[1])
		}
		if len(labelValues) == 0 {
			all := quotedPattern.FindAllStringSubmatch(raw, -1)
			if len(all) > 0 {
				labelValues = []string{all[0][1]}
			}
		}
		depends := []string{}
		if match := dependsPattern.FindStringSubmatch(raw); match != nil {
			for _, entry := range quotedPattern.FindAllStringSubmatch(match[1], -1) {
				depends = append(depends, entry[1])
			}
		}
		conditionRaw, err := GoalField(raw, "conditions")
		if err != nil {
			return nil, err
		}
		if conditionRaw == "" {
			conditionRaw = template
		}
		levelMin, classes, races, skills, stepFaction := extractConditions(conditionRaw, constants)
		goalID := fmt.Sprintf("step-%d", len(goals))
		if idMatch != nil {
			goalID = idMatch[1]
		}
		goals = append(goals, Goal{Raw: raw, ID: goalID, Kind: kind, Priority: priority, QuestID: questID, Text: stepText, Labels: labelValues, Depends: depends, Origin: origin, Faction: faction, SourceFile: sourceFile, LevelMin: levelMin, Classes: classes, Races: races, Skills: skills, StepFaction: stepFaction})
	}
	return goals, nil
}

func ReplaceGoals(text, rendered string) (string, error) {
	marker := strings.Index(text, "goals = {")
	if marker < 0 {
		return text, fmt.Errorf("guide has no goals table")
	}
	open := strings.IndexByte(text[marker:], '{') + marker
	end, err := BraceEnd(text, open)
	if err != nil {
		return text, err
	}
	return text[:open+1] + "\n        " + rendered + ",\n    " + text[end:], nil
}

func GuideFaction(text string) string {
	header := text
	if marker := strings.Index(text, "goals = {"); marker >= 0 {
		header = text[:marker]
	}
	match := regexp.MustCompile(`faction = "(Alliance|Horde)"`).FindStringSubmatch(header)
	if match != nil {
		return match[1]
	}
	return ""
}

func splitGoalTables(body string) ([]string, error) {
	blocks := []string{}
	for i := 0; i < len(body); {
		start := strings.IndexByte(body[i:], '{')
		if start < 0 {
			break
		}
		start += i
		end, err := BraceEnd(body, start)
		if err != nil {
			return nil, err
		}
		blocks = append(blocks, body[start:end+1])
		i = end + 1
	}
	return blocks, nil
}
func classActionTemplates(path string) (map[string]string, error) {
	classTemplateCache.Lock()
	if cached, ok := classTemplateCache.values[path]; ok {
		classTemplateCache.Unlock()
		return cached.values, cached.err
	}
	classTemplateCache.Unlock()
	text, err := os.ReadFile(path)
	if err != nil {
		classTemplateCache.Lock()
		classTemplateCache.values[path] = cachedClassTemplates{err: err}
		classTemplateCache.Unlock()
		return nil, err
	}
	templates := map[string]string{}
	for _, match := range classTemplatePattern.FindAllStringSubmatchIndex(string(text), -1) {
		key := string(text[match[2]:match[3]])
		start := strings.IndexByte(string(text[match[0]:match[1]]), '{') + match[0]
		end, err := BraceEnd(string(text), start)
		if err != nil {
			return nil, err
		}
		templates[key] = string(text[start : end+1])
	}
	classTemplateCache.Lock()
	classTemplateCache.values[path] = cachedClassTemplates{values: templates}
	classTemplateCache.Unlock()
	return templates, nil
}

type cachedClassTemplates struct {
	values map[string]string
	err    error
}

var classTemplateCache = struct {
	sync.Mutex
	values map[string]cachedClassTemplates
}{values: map[string]cachedClassTemplates{}}

func mapConstants(text string) map[string]int {
	header := text
	if at := strings.Index(text, "ns:RegisterGuide"); at >= 0 {
		header = text[:at]
	}
	constants := map[string]int{}
	for _, match := range regexp.MustCompile(`\b([A-Z0-9_]+) = (\d+)`).FindAllStringSubmatch(header, -1) {
		value, _ := strconv.Atoi(match[2])
		constants[match[1]] = value
	}
	return constants
}
func extractConditions(raw string, constants map[string]int) (int, []int, []int, []int, string) {
	level := 0
	if match := conditionLevelPattern.FindStringSubmatch(raw); match != nil {
		level, _ = strconv.Atoi(match[1])
	}
	faction := ""
	if match := conditionFactionPattern.FindStringSubmatch(raw); match != nil {
		faction = match[1]
	}
	classes := conditionIDs(raw, "class")
	races := conditionIDs(raw, "race")
	skills := append(conditionIDs(raw, "skill"), conditionIDs(raw, "profession")...)
	for _, match := range regexp.MustCompile(`\bSKILL\.([A-Z0-9_]+)`).FindAllStringSubmatch(raw, -1) {
		if id, ok := constants[match[1]]; ok && !containsInt(skills, id) {
			skills = append(skills, id)
		}
	}
	return level, classes, races, skills, faction
}
func conditionIDs(raw, key string) []int {
	found := []int{}
	for _, match := range regexp.MustCompile(`\b`+regexp.QuoteMeta(key)+`\s*=\s*\{([^}]*)\}`).FindAllStringSubmatch(raw, -1) {
		for _, digits := range regexp.MustCompile(`\d+`).FindAllString(match[1], -1) {
			n, _ := strconv.Atoi(digits)
			found = append(found, n)
		}
	}
	for _, match := range regexp.MustCompile(`\b`+regexp.QuoteMeta(key)+`\s*=\s*(\d+)`).FindAllStringSubmatch(raw, -1) {
		n, _ := strconv.Atoi(match[1])
		found = append(found, n)
	}
	result := []int{}
	for _, n := range found {
		if !containsInt(result, n) {
			result = append(result, n)
		}
	}
	return result
}
func containsInt(values []int, target int) bool {
	for _, value := range values {
		if value == target {
			return true
		}
	}
	return false
}
