package zoneauthoring

import (
	"encoding/json"
	"reflect"
	"strconv"
)

// object returns a map value or nil when the value is not a map.
func object(value any) map[string]any {
	result, _ := value.(map[string]any)
	return result
}

// list returns a slice value or nil when the value is not a slice.
func list(value any) []any {
	result, _ := value.([]any)
	return result
}

// objectList returns the map entries of a slice value.
func objectList(value any) []map[string]any {
	result := []map[string]any{}
	for _, item := range list(value) {
		if entry := object(item); entry != nil {
			result = append(result, entry)
		}
	}
	return result
}

// text returns a string value or an empty string.
func text(value any) string {
	result, _ := value.(string)
	return result
}

// integer converts a JSON number to an int.
func integer(value any) (int, bool) {
	switch typed := value.(type) {
	case int:
		return typed, true
	case int64:
		return int(typed), true
	case float64:
		return int(typed), typed == float64(int(typed))
	case json.Number:
		parsed, err := strconv.Atoi(string(typed))
		return parsed, err == nil
	}
	return 0, false
}

// integerOrZero converts a JSON number to an int, reporting zero when the
// value is missing or not numeric.
func integerOrZero(value any) int {
	parsed, _ := integer(value)
	return parsed
}

// number converts a JSON number to a float64.
func number(value any) (float64, bool) {
	switch typed := value.(type) {
	case int:
		return float64(typed), true
	case int64:
		return float64(typed), true
	case float64:
		return typed, true
	case json.Number:
		parsed, err := typed.Float64()
		return parsed, err == nil
	}
	return 0, false
}

// truthy mirrors the Python truth rules the authoring flow relies on.
func truthy(value any) bool {
	if value == nil {
		return false
	}
	switch typed := value.(type) {
	case bool:
		return typed
	case string:
		return typed != ""
	case int:
		return typed != 0
	case int64:
		return typed != 0
	case float64:
		return typed != 0
	case json.Number:
		parsed, err := typed.Float64()
		return err == nil && parsed != 0
	case []any:
		return len(typed) > 0
	case map[string]any:
		return len(typed) > 0
	case *orderedMap:
		return typed.Len() > 0
	}
	return true
}

// deepCopy clones nested maps and slices so authored goals never alias the
// exported snapshot.
func deepCopy(value any) any {
	switch typed := value.(type) {
	case map[string]any:
		result := make(map[string]any, len(typed))
		for key, item := range typed {
			result[key] = deepCopy(item)
		}
		return result
	case []any:
		result := make([]any, len(typed))
		for index, item := range typed {
			result[index] = deepCopy(item)
		}
		return result
	default:
		return value
	}
}

// deepCopyMap clones a goal map.
func deepCopyMap(value map[string]any) map[string]any {
	copied, _ := deepCopy(value).(map[string]any)
	return copied
}

// deepCopyList clones a list of goal maps.
func deepCopyList(value []map[string]any) []map[string]any {
	result := make([]map[string]any, 0, len(value))
	for _, item := range value {
		result = append(result, deepCopyMap(item))
	}
	return result
}

// deepEqual compares two exported values the way the authoring flow compares
// goal completions and conditions.
func deepEqual(left, right any) bool {
	if left == nil || right == nil {
		return left == nil && right == nil
	}
	if numberLeft, ok := number(left); ok {
		numberRight, ok := number(right)
		return ok && numberLeft == numberRight
	}
	switch typed := left.(type) {
	case string:
		other, ok := right.(string)
		return ok && typed == other
	case bool:
		other, ok := right.(bool)
		return ok && typed == other
	case []any:
		other, ok := right.([]any)
		if !ok || len(typed) != len(other) {
			return false
		}
		for index := range typed {
			if !deepEqual(typed[index], other[index]) {
				return false
			}
		}
		return true
	case map[string]any:
		other, ok := right.(map[string]any)
		if !ok || len(typed) != len(other) {
			return false
		}
		for key, value := range typed {
			otherValue, exists := other[key]
			if !exists || !deepEqual(value, otherValue) {
				return false
			}
		}
		return true
	case *orderedMap:
		other, ok := right.(*orderedMap)
		if !ok || typed.Len() != other.Len() {
			return false
		}
		for _, key := range typed.Keys() {
			otherValue, exists := other.Get(key)
			if !exists || !deepEqual(typed.Value(key), otherValue) {
				return false
			}
		}
		return true
	}
	return reflect.DeepEqual(left, right)
}
