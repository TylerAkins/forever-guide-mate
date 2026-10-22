package zoneaudit

import (
	"encoding/json"
	"fmt"
	"regexp"
	"sort"
	"strings"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
)

var zoneQuestList = regexp.MustCompile(`new Listview\(\{template: 'quest'.*?data:(\[.*?\])\}\)`)

func ParseZoneQuestSummaries(html string) ([]map[string]any, error) {
	match := zoneQuestList.FindStringSubmatch(html)
	if match == nil {
		return nil, fmt.Errorf("no quest list")
	}
	var summaries []map[string]any
	if err := json.Unmarshal([]byte(match[1]), &summaries); err != nil {
		return nil, fmt.Errorf("decode quest list: %w", err)
	}
	return summaries, nil
}

// MissingQuestNames lists the zone quests the chapter does not cover. The
// source records no first-seen patch, so the scan covers every quest in the
// zone list instead of only the ones new to Forever.
func MissingQuestNames(summaries []map[string]any, present, excluded map[int]bool, levelMax int) []string {
	seen := map[int]bool{}
	missing := []string{}
	for _, summary := range summaries {
		id := integer(summary["id"])
		if id <= 0 || seen[id] {
			continue
		}
		seen[id] = true
		if present[id] || excluded[id] {
			continue
		}
		name, _ := summary["name"].(string)
		if name == "" {
			name = fmt.Sprintf("Quest %d", id)
		}
		trimmed := strings.TrimSpace(name)
		if strings.Contains(strings.ToLower(name), "unused") || trimmed == "Welcome!" || trimmed == "<UNUSED>" {
			continue
		}
		level := loremaster.RecommendedLevel(summary, nil, "")
		if level > levelMax+2 {
			continue
		}
		missing = append(missing, fmt.Sprintf("%s (%d, level %d)", name, id, level))
	}
	sort.Strings(missing)
	return missing
}

func integer(value any) int {
	switch number := value.(type) {
	case int:
		return number
	case int64:
		return int(number)
	case float64:
		return int(number)
	case json.Number:
		var result int
		_, _ = fmt.Sscan(string(number), &result)
		return result
	default:
		return 0
	}
}
