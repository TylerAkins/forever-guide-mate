package zoneaudit

import (
	"reflect"
	"testing"
)

func TestParseZoneQuestSummaries(t *testing.T) {
	html := `prefix new Listview({template: 'quest', data:[{"id":123,"name":"A quest"},{"id":456,"name":"Another"}]}) suffix`
	got, err := ParseZoneQuestSummaries(html)
	if err != nil {
		t.Fatal(err)
	}
	if len(got) != 2 || got[0]["name"] != "A quest" || got[1]["name"] != "Another" {
		t.Fatalf("ParseZoneQuestSummaries() = %#v", got)
	}
}

func TestParseZoneQuestSummariesRejectsMissingList(t *testing.T) {
	if _, err := ParseZoneQuestSummaries("no quest list"); err == nil {
		t.Fatal("ParseZoneQuestSummaries() error = nil, want missing-list error")
	}
}

func TestMissingQuestNamesAppliesZoneAuditFilters(t *testing.T) {
	summaries := []map[string]any{
		{"id": float64(1), "name": "present", "level": float64(5)},
		{"id": float64(2), "name": "excluded", "level": float64(5)},
		{"id": float64(3), "name": "classic", "level": float64(5)},
		{"id": float64(4), "name": "unused quest", "level": float64(5)},
		{"id": float64(5), "name": "too high", "level": float64(30)},
		{"id": float64(6), "name": "candidate", "level": float64(12)},
		{"id": float64(6), "name": "duplicate", "level": float64(12)},
	}
	got := MissingQuestNames(summaries, map[int]bool{1: true}, map[int]bool{2: true}, 10)
	want := []string{"candidate (6, level 12)", "classic (3, level 5)"}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("MissingQuestNames() = %#v, want %#v", got, want)
	}
}
