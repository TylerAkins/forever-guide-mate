package questiepolicy

import (
	"strings"
	"testing"
)

func TestLoadFixtureMembershipAndTags(t *testing.T) {
	policy, err := Load("testdata/policy.json")
	if err != nil {
		t.Fatal(err)
	}
	if holiday, ok := policy.Holiday(6961); !ok || holiday.Event != "Winter Veil" {
		t.Fatalf("quest 6961 holiday = %+v, %v; want Winter Veil", holiday, ok)
	}
	if _, ok := policy.Holiday(6983); ok {
		t.Fatal("hidden holiday entry must not count as membership")
	}
	if holiday, ok := policy.HolidayEntry(6983); !ok || holiday.Event != "Winter Veil" || !holiday.Hidden {
		t.Fatalf("hidden holiday policy = %+v, %v; want hidden Winter Veil entry", holiday, ok)
	}
	if got := policy.HiddenHolidayEntries(); got != 1 {
		t.Fatalf("hidden holiday entries = %d, want 1", got)
	}
	if tag, ok := policy.QuestTag(236); !ok || tag.TagID != 41 || tag.Name != "PvP" {
		t.Fatalf("quest 236 tag = %+v, %v; want PvP tag 41", tag, ok)
	}
}

func TestInstanceQuestUsesInstanceTagsOnly(t *testing.T) {
	policy, err := Load("testdata/policy.json")
	if err != nil {
		t.Fatal(err)
	}
	tests := []struct {
		questID int
		want    bool
	}{
		{17, true},   // Dungeon tag
		{166, true},  // Dungeon tag
		{7021, true}, // Scenario tag
		{236, false}, // PvP tag is not instanced content
		{256, false}, // Elite tag is not instanced content
		{999, false}, // no correction: the API tag is not in the export
	}
	for _, tt := range tests {
		if got := policy.InstanceQuest(tt.questID); got != tt.want {
			t.Errorf("InstanceQuest(%d) = %v, want %v", tt.questID, got, tt.want)
		}
	}
}

func TestIsInstanceTagMatchesQuestieInstanceTags(t *testing.T) {
	for _, tagID := range []int{62, 81, 85, 88, 89, 98} {
		if !IsInstanceTag(tagID) {
			t.Errorf("tag %d should be instanced", tagID)
		}
	}
	for _, tagID := range []int{1, 41, 82, 83} {
		if IsInstanceTag(tagID) {
			t.Errorf("tag %d should not be instanced", tagID)
		}
	}
}

func TestParseRejectsInvalidExports(t *testing.T) {
	tests := []struct {
		name string
		json string
		want string
	}{
		{"unknown field", `{"holidays":[],"questTags":{},"extra":1}`, "unknown field"},
		{"holiday without quest", `{"holidays":[{"event":"Winter Veil","questId":0}],"questTags":{}}`, "no quest ID"},
		{"holiday without event", `{"holidays":[{"event":"","questId":5}],"questTags":{}}`, "no event"},
		{"conflicting visible events", `{"holidays":[{"event":"A","questId":5},{"event":"B","questId":5}],"questTags":{}}`, "appears under"},
		{"tag key not a quest", `{"holidays":[],"questTags":{"abc":{"tagId":81,"name":"Dungeon"}}}`, "not a quest ID"},
		{"tag without ID", `{"holidays":[],"questTags":{"5":{"tagId":0,"name":"Group"}}}`, "no tag ID"},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			_, err := Parse([]byte(tt.json))
			if err == nil {
				t.Fatal("expected an error")
			}
			if !strings.Contains(err.Error(), tt.want) {
				t.Fatalf("error = %v, want it to mention %q", err, tt.want)
			}
		})
	}
}

func TestParseAllowsSameEventForRepeatedVisibleEntry(t *testing.T) {
	policy, err := Parse([]byte(`{"holidays":[{"event":"A","questId":5},{"event":"A","questId":5}],"questTags":{}}`))
	if err != nil {
		t.Fatal(err)
	}
	if holiday, ok := policy.Holiday(5); !ok || holiday.Event != "A" {
		t.Fatalf("holiday = %+v, %v", holiday, ok)
	}
}
