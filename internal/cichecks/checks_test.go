package cichecks

import (
	"reflect"
	"testing"
)

func TestSelectChecks(t *testing.T) {
	tests := []struct {
		name  string
		paths []string
		full  bool
		want  map[string]bool
	}{
		{"documentation", []string{"README.md", "docs/DEVELOPMENT.md"}, false, map[string]bool{"go": true, "lua": false, "journeys": false, "package": false}},
		{"packaging", []string{"cmd/compile-addon/main.go"}, false, map[string]bool{"go": true, "lua": false, "journeys": false, "package": true}},
		{"mixed changes", []string{"README.md", "Guides/Leveling/mulgore.lua"}, false, map[string]bool{"go": true, "lua": true, "journeys": true, "package": true}},
		{"unknown path is full", []string{"new/config"}, false, map[string]bool{"go": true, "lua": true, "journeys": true, "package": true}},
		{"empty is full", nil, false, map[string]bool{"go": true, "lua": true, "journeys": true, "package": true}},
		{"forced full", []string{"README.md"}, true, map[string]bool{"go": true, "lua": true, "journeys": true, "package": true}},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := SelectChecks(tt.paths, tt.full); !reflect.DeepEqual(got, tt.want) {
				t.Fatalf("SelectChecks() = %#v, want %#v", got, tt.want)
			}
		})
	}
}
