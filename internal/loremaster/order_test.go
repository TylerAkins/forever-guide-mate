package loremaster

import (
	"reflect"
	"testing"
)

func TestWeave(t *testing.T) {
	tests := []struct {
		name                    string
		spine, extras, upstream []string
		predecessors            map[string][]string
		want                    []string
	}{
		{"upstream tie breaking", []string{"a", "b"}, []string{"x", "y"}, []string{"a", "x", "y", "b"}, nil, []string{"a", "x", "y", "b"}},
		{"verified edges win", []string{"a", "b"}, []string{"x"}, []string{"b", "x", "a"}, map[string][]string{"x": {"b"}}, []string{"a", "b", "x"}},
		{"unknown upstream actions remain", []string{"a", "b"}, []string{"x"}, nil, map[string][]string{"x": {"a"}, "b": {"x"}}, []string{"a", "x", "b"}},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got, err := Weave(tt.spine, tt.extras, tt.upstream, tt.predecessors)
			if err != nil || !reflect.DeepEqual(got, tt.want) {
				t.Fatalf("Weave() = %v, %v; want %v", got, err, tt.want)
			}
		})
	}
}

func TestWeaveRejectsDuplicateUnknownAndCycle(t *testing.T) {
	if _, err := Weave([]string{"a", "a"}, nil, nil, nil); err == nil {
		t.Fatal("duplicate identity accepted")
	}
	if _, err := Weave([]string{"a"}, nil, nil, map[string][]string{"a": {"missing"}}); err == nil {
		t.Fatal("unknown prerequisite accepted")
	}
	if _, err := Weave([]string{"a", "b"}, []string{"x"}, nil, map[string][]string{"x": {"b"}, "a": {"x"}}); err == nil {
		t.Fatal("cycle accepted")
	}
}

func TestParseUpstream(t *testing.T) {
	text := "ZygorGuidesViewer:RegisterGuide(\"Ding80\\\\Loremaster\\\\Darkshore\",[[\nstep\n..accept Test##123\n.kill 3 Enemy##456 |q 123/1\nstep\n..turnin Test##123\n]])"
	actions := ParseUpstream(text, "Alliance", "guide.lua")
	if len(actions) != 3 || actions[0].Kind != "accept" || actions[0].Quest != 123 || actions[1].Kind != "objective" || actions[1].Quest != 123 || actions[1].Index != 1 || actions[2].Kind != "turnin" || actions[0].Faction != "Alliance" || actions[0].Chapter == "" || actions[0].Source != "guide.lua" || actions[0].Line != 3 {
		t.Fatalf("unexpected actions: %#v", actions)
	}
}

func TestParseUpstreamIgnoresUnrecognizedLinesAndKeepsObjectiveIndex(t *testing.T) {
	text := "RegisterGuide(\"Zone\\\\Chapter\",[[\n.collect Item##44 |q 500/3\n.note Ignore##55\n.kill Enemy##45\n]])"
	actions := ParseUpstream(text, "Horde", "source.lua")
	if len(actions) != 1 || actions[0].Kind != "objective" || actions[0].Quest != 500 || actions[0].Index != 3 || actions[0].Faction != "Horde" || actions[0].Chapter != "Zone\\\\Chapter" || actions[0].Line != 2 {
		t.Fatalf("unexpected actions: %#v", actions)
	}
}
