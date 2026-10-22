package zoneauthoring

import (
	"bytes"
	"encoding/json"
)

// Audit is the recorded evidence for one prepared zone. It keeps the
// insertion order of its keys so generated audits stay readable and
// diffable across runs.
type Audit = orderedMap

// orderedMap keeps the insertion order of its keys so generated audits stay
// readable and diffable across runs.
type orderedMap struct {
	keys   []string
	values map[string]any
}

func newOrderedMap() *orderedMap {
	return &orderedMap{values: map[string]any{}}
}

func (m *orderedMap) Len() int {
	if m == nil {
		return 0
	}
	return len(m.keys)
}

func (m *orderedMap) Keys() []string {
	if m == nil {
		return nil
	}
	return append([]string{}, m.keys...)
}

func (m *orderedMap) Get(key string) (any, bool) {
	if m == nil {
		return nil, false
	}
	value, ok := m.values[key]
	return value, ok
}

func (m *orderedMap) Value(key string) any {
	if m == nil {
		return nil
	}
	return m.values[key]
}

func (m *orderedMap) Map(key string) map[string]any {
	if m == nil {
		return nil
	}
	value, _ := m.values[key].(map[string]any)
	return value
}

func (m *orderedMap) Ordered(key string) *orderedMap {
	if m == nil {
		return nil
	}
	value, _ := m.values[key].(*orderedMap)
	return value
}

func (m *orderedMap) List(key string) []any {
	if m == nil {
		return nil
	}
	value, _ := m.values[key].([]any)
	return value
}

func (m *orderedMap) Set(key string, value any) {
	if _, exists := m.values[key]; !exists {
		m.keys = append(m.keys, key)
	}
	m.values[key] = value
}

func (m *orderedMap) Delete(key string) {
	if _, exists := m.values[key]; !exists {
		return
	}
	delete(m.values, key)
	for index, name := range m.keys {
		if name == key {
			m.keys = append(m.keys[:index], m.keys[index+1:]...)
			break
		}
	}
}

// MarshalJSON writes the keys in insertion order.
func (m *orderedMap) MarshalJSON() ([]byte, error) {
	var buffer bytes.Buffer
	buffer.WriteByte('{')
	for index, key := range m.keys {
		if index > 0 {
			buffer.WriteByte(',')
		}
		name, err := json.Marshal(key)
		if err != nil {
			return nil, err
		}
		buffer.Write(name)
		buffer.WriteByte(':')
		value, err := json.Marshal(m.values[key])
		if err != nil {
			return nil, err
		}
		buffer.Write(value)
	}
	buffer.WriteByte('}')
	return buffer.Bytes(), nil
}
