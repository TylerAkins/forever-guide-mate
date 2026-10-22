package zoneauthoring

import (
	"bytes"
	"encoding/json"
	"fmt"
)

// decodeOrdered parses JSON into ordered maps so rewritten audits keep the
// key order of the evidence they replace.
func decodeOrdered(data []byte) (any, error) {
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.UseNumber()
	return decodeOrderedValue(decoder)
}

func decodeOrderedValue(decoder *json.Decoder) (any, error) {
	token, err := decoder.Token()
	if err != nil {
		return nil, err
	}
	switch typed := token.(type) {
	case json.Delim:
		switch typed {
		case '{':
			result := newOrderedMap()
			for decoder.More() {
				keyToken, err := decoder.Token()
				if err != nil {
					return nil, err
				}
				key, ok := keyToken.(string)
				if !ok {
					return nil, fmt.Errorf("unexpected object key %v", keyToken)
				}
				value, err := decodeOrderedValue(decoder)
				if err != nil {
					return nil, err
				}
				result.Set(key, value)
			}
			if _, err := decoder.Token(); err != nil {
				return nil, err
			}
			return result, nil
		case '[':
			result := []any{}
			for decoder.More() {
				value, err := decodeOrderedValue(decoder)
				if err != nil {
					return nil, err
				}
				result = append(result, value)
			}
			if _, err := decoder.Token(); err != nil {
				return nil, err
			}
			return result, nil
		}
		return nil, fmt.Errorf("unexpected delimiter %v", typed)
	default:
		return token, nil
	}
}

// field reads a key from an ordered or plain map value.
func field(value any, key string) any {
	switch typed := value.(type) {
	case *orderedMap:
		return typed.Value(key)
	case map[string]any:
		return typed[key]
	}
	return nil
}

// fieldMap reads a nested map from an ordered or plain map value.
func fieldMap(value any, key string) map[string]any {
	switch typed := value.(type) {
	case *orderedMap:
		return typed.Map(key)
	case map[string]any:
		result, _ := typed[key].(map[string]any)
		return result
	}
	return nil
}

// fieldOrdered reads a nested ordered map from an ordered or plain map value.
func fieldOrdered(value any, key string) *orderedMap {
	switch typed := value.(type) {
	case *orderedMap:
		return typed.Ordered(key)
	case map[string]any:
		ordered, _ := typed[key].(*orderedMap)
		return ordered
	}
	return nil
}

// fieldList reads a nested list from an ordered or plain map value.
func fieldList(value any, key string) []any {
	switch typed := value.(type) {
	case *orderedMap:
		return typed.List(key)
	case map[string]any:
		list, _ := typed[key].([]any)
		return list
	}
	return nil
}

// ensureOrdered returns the nested ordered map for a key, creating it when it
// is missing.
func ensureOrdered(parent *orderedMap, key string) *orderedMap {
	if existing := parent.Ordered(key); existing != nil {
		return existing
	}
	created := newOrderedMap()
	parent.Set(key, created)
	return created
}
