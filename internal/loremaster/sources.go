package loremaster

import (
	"encoding/json"
	"fmt"
	"regexp"
	"sort"
	"strconv"
	"strings"
)

// sourceList returns a list value, or nil for any other value.
func sourceList(value any) []any {
	if result, ok := value.([]any); ok {
		return result
	}
	return nil
}
func sourceInt(value any) (int, bool) { return intValue(value) }
func sourceString(value any) string   { text, _ := value.(string); return text }

func sortedKeys(values map[string]any) []string {
	keys := make([]string, 0, len(values))
	for key := range values {
		keys = append(keys, key)
	}
	sort.Strings(keys)
	return keys
}

func truthy(value any) bool {
	if value == nil || value == false {
		return false
	}
	switch collection := value.(type) {
	case []any:
		return len(collection) > 0
	case map[string]any:
		return len(collection) > 0
	}
	if n, ok := sourceInt(value); ok && n == 0 {
		return false
	}
	if s, ok := value.(string); ok && s == "" {
		return false
	}
	return true
}
func PrerequisiteAvailability(questID int, facts map[int]map[string]any, failures, visiting []int) map[string]any {
	return prerequisiteAvailability(questID, facts, intSet(failures), intSet(visiting))
}

func prerequisiteAvailability(questID int, facts map[int]map[string]any, failures, visiting map[int]bool) map[string]any {
	completed := map[string]any{"quest": map[string]any{"id": questID, "state": "completed"}}
	if failures[questID] || facts[questID] == nil || visiting[questID] {
		return completed
	}
	fact := facts[questID]
	history := map[string]any{"quest": map[string]any{"id": questID, "state": "activeOrCompleted"}}
	own := []any{}
	if item := object(fact["item"]); item != nil {
		name := sourceString(item["name"])
		if name == "" {
			return history
		}
		own = append(own, map[string]any{"item": map[string]any{"name": name, "minCount": 1}})
	}
	if faction := fact["faction"]; truthy(faction) {
		own = append(own, map[string]any{"faction": faction})
	}
	if races := fact["races"]; truthy(races) {
		own = append(own, map[string]any{"race": races})
	}
	if classes := fact["classes"]; truthy(classes) {
		own = append(own, map[string]any{"class": classes})
	}
	if skill := sourceList(fact["skill"]); len(skill) >= 2 {
		skillLine, _ := sourceInt(skill[0])
		rank, _ := sourceInt(skill[1])
		own = append(own, map[string]any{"profession": map[string]any{"skillLineID": skillLine, "minRank": rank}})
	}
	nextVisiting := make(map[int]bool, len(visiting)+1)
	for id := range visiting {
		nextVisiting[id] = true
	}
	nextVisiting[questID] = true
	for _, raw := range sourceList(fact["requirements"]) {
		group := object(raw)
		mode := sourceString(group["mode"])
		options := []any{}
		for _, parent := range sourceList(group["quests"]) {
			id, ok := sourceInt(parent)
			if ok {
				options = append(options, prerequisiteAvailability(id, facts, failures, nextVisiting))
			}
		}
		available := map[string]any{mode: options}
		if condition := group["conditions"]; truthy(condition) {
			available = map[string]any{"any": []any{map[string]any{"not": condition}, available}}
		}
		own = append(own, available)
	}
	return map[string]any{"any": []any{history, map[string]any{"all": own}}}
}

func intSet(values []int) map[int]bool {
	result := map[int]bool{}
	for _, value := range values {
		result[value] = true
	}
	return result
}

var luaIdentifier = regexp.MustCompile(`^[A-Za-z_][A-Za-z0-9_]*$`)
var luaKeywords = map[string]bool{"and": true, "break": true, "do": true, "else": true, "elseif": true, "end": true, "false": true, "for": true, "function": true, "if": true, "in": true, "local": true, "nil": true, "not": true, "or": true, "repeat": true, "return": true, "then": true, "true": true, "until": true, "while": true}

func Lua(value any, depth int) (string, error) {
	switch typed := value.(type) {
	case nil:
		return "nil", nil
	case bool:
		if typed {
			return "true", nil
		}
		return "false", nil
	case json.Number:
		return string(typed), nil
	case int:
		return strconv.Itoa(typed), nil
	case int64:
		return strconv.FormatInt(typed, 10), nil
	case float64:
		return strconv.FormatFloat(typed, 'f', -1, 64), nil
	case string:
		return strconv.Quote(typed), nil
	case []any:
		if len(typed) == 0 {
			return "{}", nil
		}
		fields := make([]string, 0, len(typed))
		for _, item := range typed {
			field, err := Lua(item, depth+1)
			if err != nil {
				return "", err
			}
			fields = append(fields, field)
		}
		return renderLuaTable(fields, depth), nil
	case map[string]any:
		if len(typed) == 0 {
			return "{}", nil
		}
		keys := sortedKeys(typed)
		fields := make([]string, 0, len(keys))
		for _, key := range keys {
			renderedKey := key
			if !luaIdentifier.MatchString(key) || luaKeywords[key] {
				literal, err := Lua(key, depth+1)
				if err != nil {
					return "", err
				}
				renderedKey = "[" + literal + "]"
			}
			value, err := Lua(typed[key], depth+1)
			if err != nil {
				return "", err
			}
			fields = append(fields, renderedKey+" = "+value)
		}
		return renderLuaTable(fields, depth), nil
	default:
		return "", fmt.Errorf("unsupported Lua value %T", value)
	}
}

func renderLuaTable(fields []string, depth int) string {
	length := 0
	singleLine := true
	for _, field := range fields {
		length += len(field)
		if strings.Contains(field, "\n") {
			singleLine = false
		}
	}
	if singleLine && length < 110 {
		return "{ " + strings.Join(fields, ", ") + " }"
	}
	indent := strings.Repeat("    ", depth+1)
	return "{\n" + indent + strings.Join(fields, ",\n"+indent) + ",\n" + strings.Repeat("    ", depth) + "}"
}
