package zoneauthoring

import (
	"regexp"
	"sort"
	"strconv"
)

// goalID reports the identifier of a goal.
func goalID(goal map[string]any) string { return text(goal["id"]) }

// guideID reports the identifier of a guide.
func guideID(guide map[string]any) string { return text(guide["id"]) }

// guideTitle reports the title of a guide.
func guideTitle(guide map[string]any) string { return text(guide["title"]) }

// guideCategory reports the category of a guide.
func guideCategory(guide map[string]any) string { return text(guide["category"]) }

// guideGoals reports the goals of a guide.
func guideGoals(guide map[string]any) []map[string]any { return objectList(guide["goals"]) }

// guideRevision reports the revision of a guide, or zero when it has none.
func guideRevision(guide map[string]any) int {
	if guide == nil {
		return 0
	}
	return integerOrZero(guide["revision"])
}

// aliasedZone resolves a zone alias to the zone the itinerary uses.
func aliasedZone(name string) string {
	if alias, known := zoneAliases[name]; known {
		return alias
	}
	return name
}

// factField reads an observed quest field, falling back to an empty
// collection when the observation does not carry it.
func factField(fact map[string]any, key string) any {
	if value, exists := fact[key]; exists && value != nil {
		return value
	}
	if key == "points" {
		return []any{}
	}
	return map[string]any{}
}

// sortedQuests returns the quest identifiers in ascending order.
func sortedQuests[T any](values map[int]T) []int {
	result := make([]int, 0, len(values))
	for value := range values {
		result = append(result, value)
	}
	sort.Ints(result)
	return result
}

// sortedStringKeys returns the map keys in ascending order.
func sortedStringKeys(values map[string]string) []string {
	result := make([]string, 0, len(values))
	for key := range values {
		result = append(result, key)
	}
	sort.Strings(result)
	return result
}

// toAnyList widens a string list for JSON encoding.
func toAnyList(values []string) []any {
	result := make([]any, 0, len(values))
	for _, value := range values {
		result = append(result, value)
	}
	return result
}

// toAnyInts widens a quest identifier list for JSON encoding.
func toAnyInts(values []int) []any {
	result := make([]any, 0, len(values))
	for _, value := range values {
		result = append(result, value)
	}
	return result
}

// replaceFirst swaps the first match of a pattern and leaves the rest alone.
func replaceFirst(text string, pattern string, replacement string) string {
	location := regexp.MustCompile(pattern).FindStringIndex(text)
	if location == nil {
		return text
	}
	return text[:location[0]] + replacement + text[location[1]:]
}

// textList reads the strings of a list value.
func textList(value any) []string {
	result := []string{}
	for _, item := range list(value) {
		if text, ok := item.(string); ok {
			result = append(result, text)
		}
	}
	return result
}

// uniqueStrings removes repeated entries while keeping the first occurrence.
func uniqueStrings(values []string) []string {
	result := []string{}
	seen := map[string]bool{}
	for _, value := range values {
		if seen[value] {
			continue
		}
		seen[value] = true
		result = append(result, value)
	}
	return result
}

// containsString reports whether a list holds an entry.
func containsString(values []string, target string) bool {
	return indexOfString(values, target) >= 0
}

// indexOfString reports the position of an entry, or negative when absent.
func indexOfString(values []string, target string) int {
	for index, value := range values {
		if value == target {
			return index
		}
	}
	return -1
}

// insertString places an entry at a position in a list.
func insertString(values []string, index int, value string) []string {
	if index < 0 {
		index = 0
	}
	if index > len(values) {
		index = len(values)
	}
	result := make([]string, 0, len(values)+1)
	result = append(result, values[:index]...)
	result = append(result, value)
	result = append(result, values[index:]...)
	return result
}

// removeString drops the first matching entry from a list.
func removeString(values []string, target string) []string {
	index := indexOfString(values, target)
	if index < 0 {
		return values
	}
	result := make([]string, 0, len(values)-1)
	result = append(result, values[:index]...)
	result = append(result, values[index+1:]...)
	return result
}

// containsInt reports whether a JSON list holds a quest identifier.
func containsInt(values []any, target int) bool {
	for _, value := range values {
		if number, ok := integer(value); ok && number == target {
			return true
		}
	}
	return false
}

// goalIndex reports the position of a goal identifier.
func goalIndex(goals []map[string]any, id string) int {
	for index, goal := range goals {
		if goalID(goal) == id {
			return index
		}
	}
	return -1
}

// filterGoals keeps the goals a predicate accepts.
func filterGoals(goals []map[string]any, keep func(map[string]any) bool) []map[string]any {
	result := []map[string]any{}
	for _, goal := range goals {
		if keep(goal) {
			result = append(result, goal)
		}
	}
	return result
}

// insertGoal places a goal at a position in a list.
func insertGoal(goals []map[string]any, index int, goal map[string]any) []map[string]any {
	if index < 0 {
		index = 0
	}
	if index > len(goals) {
		index = len(goals)
	}
	result := make([]map[string]any, 0, len(goals)+1)
	result = append(result, goals[:index]...)
	result = append(result, goal)
	result = append(result, goals[index:]...)
	return result
}

// integerText parses a decimal quest identifier.
func integerText(value string) (int, bool) {
	parsed, err := strconv.Atoi(value)
	return parsed, err == nil
}

// hasAnyFlag reports whether the observed quest carries one of the flags.
func hasAnyFlag(fact map[string]any, flags []string) bool {
	values := object(fact["flags"])
	for _, flag := range flags {
		if truthy(values[flag]) {
			return true
		}
	}
	return false
}

// pointsVisitExcludedZones reports whether the quest work visits an excluded
// zone.
func pointsVisitExcludedZones(fact map[string]any) bool {
	for _, point := range objectList(fact["points"]) {
		if excludedZones[text(point["zone"])] {
			return true
		}
	}
	return false
}

// containsGroup reports whether a prerequisite list already holds a group.
func containsGroup(groups []map[string]any, group map[string]any) bool {
	for _, candidate := range groups {
		if deepEqual(candidate, group) {
			return true
		}
	}
	return false
}

// groupQuests reads the quest identifiers of a prerequisite group.
func groupQuests(group map[string]any) []int {
	result := []int{}
	for _, item := range list(group["quests"]) {
		if quest, ok := integer(item); ok {
			result = append(result, quest)
		}
	}
	return result
}

// groupsAsAny widens prerequisite groups for JSON encoding.
func groupsAsAny(groups []map[string]any) []any {
	result := make([]any, 0, len(groups))
	for _, group := range groups {
		result = append(result, group)
	}
	return result
}

// goalsAsAny widens a goal list for JSON and Lua encoding.
func goalsAsAny(goals []map[string]any) []any {
	result := make([]any, 0, len(goals))
	for _, goal := range goals {
		result = append(result, goal)
	}
	return result
}

// anyFailed reports whether one of the parents failed.
func anyFailed(parents map[int]bool, failures map[int]string) bool {
	for parent := range parents {
		if _, failed := failures[parent]; failed {
			return true
		}
	}
	return false
}

// groupFailure reports whether an unconditional prerequisite group can no
// longer be satisfied.
func groupFailure(groups []map[string]any, failures map[int]string) bool {
	for _, group := range groups {
		if truthy(group["conditions"]) {
			continue
		}
		quests := groupQuests(group)
		switch text(group["mode"]) {
		case "all":
			for _, quest := range quests {
				if _, failed := failures[quest]; failed {
					return true
				}
			}
		case "any":
			unresolved := true
			for _, quest := range quests {
				if _, failed := failures[quest]; !failed {
					unresolved = false
					break
				}
			}
			if unresolved {
				return true
			}
		}
	}
	return false
}

// checkpointQuestOf reports the quest a checkpoint note belongs to.
func checkpointQuestOf(goal map[string]any) (int, bool) {
	quest, ok := integer(goal["checkpointQuest"])
	return quest, ok && quest != 0
}

// dependsList reads the action dependencies of a goal.
func dependsList(goal map[string]any) []string {
	result := []string{}
	for _, item := range list(goal["dependsOn"]) {
		if value, ok := item.(string); ok {
			result = append(result, value)
		}
	}
	return result
}
