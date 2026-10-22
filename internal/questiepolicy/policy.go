// Package questiepolicy reads Questie's holiday membership and quest tag
// corrections for Forever from the JSON written by
// tools/questiedb/export_policy.lua.
package questiepolicy

import (
	"bytes"
	"encoding/json"
	"fmt"
	"os"
	"sort"
	"strconv"
)

// instanceTagIDs are the Questie quest tags that mark instanced content:
// Dungeon, Raid, Heroic, Raid (10), Raid (25) and Scenario.
var instanceTagIDs = map[int]bool{81: true, 62: true, 85: true, 88: true, 89: true, 98: true}

// IsInstanceTag reports whether a Questie quest tag describes instanced content.
func IsInstanceTag(tagID int) bool {
	return instanceTagIDs[tagID]
}

// Holiday is one holiday quest entry from Questie's event quest lists.
type Holiday struct {
	QuestID int    `json:"questId"`
	Event   string `json:"event"`
	Hidden  bool   `json:"hidden"`
}

// QuestTag is a Questie tag correction applied over the API's tag for a quest.
type QuestTag struct {
	TagID int    `json:"tagId"`
	Name  string `json:"name"`
}

// Policy is the Questie holiday and tag policy evaluated for Forever.
type Policy struct {
	holidays       map[int]Holiday
	holidayEntries map[int]Holiday
	tags           map[int]QuestTag
	hidden         int
}

type export struct {
	Holidays  []Holiday           `json:"holidays"`
	QuestTags map[string]QuestTag `json:"questTags"`
}

// Load reads a policy export from path.
func Load(path string) (*Policy, error) {
	data, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	policy, err := Parse(data)
	if err != nil {
		return nil, fmt.Errorf("%s: %w", path, err)
	}
	return policy, nil
}

// Parse decodes a policy export. Unknown fields, unusable IDs and a quest
// listed under two different visible holidays are errors, not defaults.
func Parse(data []byte) (*Policy, error) {
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	var raw export
	if err := decoder.Decode(&raw); err != nil {
		return nil, err
	}
	policy := &Policy{
		holidays:       map[int]Holiday{},
		holidayEntries: map[int]Holiday{},
		tags:           map[int]QuestTag{},
	}
	for _, entry := range raw.Holidays {
		if entry.QuestID <= 0 {
			return nil, fmt.Errorf("holiday %q has no quest ID", entry.Event)
		}
		if entry.Event == "" {
			return nil, fmt.Errorf("holiday quest %d has no event", entry.QuestID)
		}
		if previous, exists := policy.holidayEntries[entry.QuestID]; exists && previous.Event != entry.Event {
			return nil, fmt.Errorf("holiday quest %d appears under %q and %q", entry.QuestID, previous.Event, entry.Event)
		}
		if previous, exists := policy.holidayEntries[entry.QuestID]; !exists || (previous.Hidden && !entry.Hidden) {
			policy.holidayEntries[entry.QuestID] = entry
		}
		if entry.Hidden {
			policy.hidden++
		} else {
			policy.holidays[entry.QuestID] = entry
		}
	}
	keys := make([]string, 0, len(raw.QuestTags))
	for key := range raw.QuestTags {
		keys = append(keys, key)
	}
	sort.Strings(keys)
	for _, key := range keys {
		questID, err := strconv.Atoi(key)
		if err != nil || questID <= 0 {
			return nil, fmt.Errorf("quest tag key %q is not a quest ID", key)
		}
		tag := raw.QuestTags[key]
		if tag.TagID <= 0 {
			return nil, fmt.Errorf("quest %d tag has no tag ID", questID)
		}
		policy.tags[questID] = tag
	}
	return policy, nil
}

// Holiday reports the visible holiday a quest belongs to. Entries Questie hides
// during the event are not membership.
func (policy *Policy) Holiday(questID int) (Holiday, bool) {
	entry, ok := policy.holidays[questID]
	return entry, ok
}

// HolidayEntry reports a visible or hidden holiday entry for a quest.
func (policy *Policy) HolidayEntry(questID int) (Holiday, bool) {
	entry, ok := policy.holidayEntries[questID]
	return entry, ok
}

// HiddenHolidayEntries counts holiday entries Questie hides during the event.
func (policy *Policy) HiddenHolidayEntries() int {
	return policy.hidden
}

// QuestTag reports Questie's tag correction for a quest, if one applies.
func (policy *Policy) QuestTag(questID int) (QuestTag, bool) {
	tag, ok := policy.tags[questID]
	return tag, ok
}

// InstanceQuest reports whether Questie's tag correction marks a quest as
// instanced. Quests without a correction are not reported here: their tag comes
// from the game API, which the export does not capture.
func (policy *Policy) InstanceQuest(questID int) bool {
	tag, ok := policy.tags[questID]
	return ok && IsInstanceTag(tag.TagID)
}
