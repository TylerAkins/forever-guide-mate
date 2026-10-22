package loremaster

import (
	"fmt"
	"regexp"
	"sort"
	"strings"
)

type Action struct {
	Quest   int    `json:"quest"`
	Kind    string `json:"kind"`
	Index   int    `json:"index"`
	Faction string `json:"faction"`
	Chapter string `json:"chapter"`
	Source  string `json:"source"`
	Line    int    `json:"line"`
}

func Weave(spine, extras, upstream []string, predecessors map[string][]string) ([]string, error) {
	nodes := append(append([]string{}, spine...), extras...)
	index := make(map[string]int, len(nodes))
	for i, node := range nodes {
		if _, exists := index[node]; exists {
			return nil, fmt.Errorf("duplicate action identity")
		}
		index[node] = i
	}
	rank := make(map[string]int, len(upstream))
	for i, node := range upstream {
		rank[node] = i
	}
	edges := make(map[string]map[string]bool, len(nodes))
	incoming := make(map[string]int, len(nodes))
	for _, node := range nodes {
		edges[node] = make(map[string]bool)
	}
	pairs := make([][2]string, 0, len(spine)+len(predecessors))
	for i := 1; i < len(spine); i++ {
		pairs = append(pairs, [2]string{spine[i-1], spine[i]})
	}
	for node, beforeList := range predecessors {
		for _, before := range beforeList {
			pairs = append(pairs, [2]string{before, node})
		}
	}
	for _, pair := range pairs {
		before, after := pair[0], pair[1]
		if _, ok := index[before]; !ok {
			return nil, fmt.Errorf("Unknown prerequisite action: %s -> %s", before, after)
		}
		if _, ok := index[after]; !ok {
			return nil, fmt.Errorf("unknown prerequisite action: %s -> %s", before, after)
		}
		if !edges[before][after] {
			edges[before][after] = true
			incoming[after]++
		}
	}
	less := func(a, b string) bool {
		ra, okA := rank[a]
		if !okA {
			ra = len(upstream) + index[a]
		}
		rb, okB := rank[b]
		if !okB {
			rb = len(upstream) + index[b]
		}
		if ra != rb {
			return ra < rb
		}
		if index[a] != index[b] {
			return index[a] < index[b]
		}
		return a < b
	}
	ready := []string{}
	for _, node := range nodes {
		if incoming[node] == 0 {
			ready = append(ready, node)
		}
	}
	result := make([]string, 0, len(nodes))
	for len(ready) > 0 {
		sort.Slice(ready, func(i, j int) bool { return less(ready[i], ready[j]) })
		node := ready[0]
		ready = ready[1:]
		result = append(result, node)
		afterNodes := make([]string, 0, len(edges[node]))
		for after := range edges[node] {
			afterNodes = append(afterNodes, after)
		}
		sort.Strings(afterNodes)
		for _, after := range afterNodes {
			incoming[after]--
			if incoming[after] == 0 {
				ready = append(ready, after)
			}
		}
	}
	if len(result) != len(nodes) {
		blocked := []string{}
		for _, node := range nodes {
			if incoming[node] > 0 {
				blocked = append(blocked, node)
			}
		}
		if len(blocked) > 12 {
			blocked = blocked[:12]
		}
		return nil, fmt.Errorf("Prerequisite/spine cycle: %s", strings.Join(blocked, ", "))
	}
	return result, nil
}

var (
	guidePattern         = regexp.MustCompile(`RegisterGuide\("([^"\n]+)"`)
	actionPattern        = regexp.MustCompile(`\b(accept|turnin)\s+[^\n]*?##([0-9]+)`)
	objectivePattern     = regexp.MustCompile(`\|q\s+([0-9]+)/([0-9]+)`)
	objectiveKindPattern = regexp.MustCompile(`\.(?:kill|get|collect|goal|use|from)\b`)
)

func ParseUpstream(text, faction, source string) []Action {
	result := []Action{}
	chapter := ""
	for lineNumber, line := range regexp.MustCompile(`\r?\n`).Split(text, -1) {
		if match := guidePattern.FindStringSubmatch(line); match != nil {
			chapter = match[1]
		}
		action := actionPattern.FindStringSubmatch(line)
		objective := objectivePattern.FindStringSubmatch(line)
		var kind string
		var quest, index int
		if action != nil {
			kind = action[1]
			fmt.Sscanf(action[2], "%d", &quest)
		} else if objective != nil && objectiveKindPattern.MatchString(line) {
			kind = "objective"
			fmt.Sscanf(objective[1], "%d", &quest)
			fmt.Sscanf(objective[2], "%d", &index)
		} else {
			continue
		}
		result = append(result, Action{quest, kind, index, faction, chapter, source, lineNumber + 1})
	}
	return result
}
