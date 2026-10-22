package loremaster

import (
	"encoding/json"
	"fmt"
	"regexp"
	"strconv"
	"strings"
)

var authoringZoneMaps = map[string]int{
	"Dun Morogh": 1426, "Badlands": 1418, "Blasted Lands": 1419, "Swamp of Sorrows": 1435,
	"Duskwood": 1431, "Wetlands": 1437, "Elwynn Forest": 1429, "Durotar": 1411,
	"Dustwallow Marsh": 1445, "Azshara": 1447, "The Barrens": 1413, "Barrens": 1413,
	"Western Plaguelands": 1422, "Stranglethorn Vale": 1434, "Loch Modan": 1432,
	"Westfall": 1436, "Deadwind Pass": 1430, "Redridge Mountains": 1433,
	"Arathi Highlands": 1417, "Burning Steppes": 1428, "The Hinterlands": 1425,
	"Hinterlands": 1425, "Searing Gorge": 1427, "Tirisfal Glades": 1420,
	"Silverpine Forest": 1421, "Eastern Plaguelands": 1423, "Teldrassil": 1438,
	"Darkshore": 1439, "Mulgore": 1412, "Feralas": 1444, "Felwood": 1448,
	"Thousand Needles": 1441, "Desolace": 1443, "Stonetalon Mountains": 1442,
	"Tanaris": 1446, "Un'Goro Crater": 1449, "Moonglade": 1450, "Winterspring": 1452,
	"Silithus": 1451, "Stormwind City": 1453, "Ironforge": 1455, "Orgrimmar": 1454,
	"Thunder Bluff": 1456, "Darnassus": 1457, "Undercity": 1458,
	"Alterac Mountains": 1416, "Hillsbrad Foothills": 1424, "Ashenvale": 1440,
}

var authoringZoneAliases = map[string]string{
	"Barrens": "The Barrens", "Hinterlands": "The Hinterlands", "Blackmaw Hold": "Felwood",
	"Abyssal Sands": "Tanaris", "Field of Giants": "The Barrens", "Stonewrought Dam": "Loch Modan",
	"Thoradin's Wall": "Arathi Highlands", "Rut'theran Village": "Teldrassil", "Anvilmar": "Dun Morogh",
	"Kharanos": "Dun Morogh",
}

var returnPhrase = regexp.MustCompile(`(?i)(?:,?\s+(?:and\s+)?then\s+(?:return to|report(?: back)?(?: to)?|turn in)|\s+and\s+(?:return to|report(?: back)?(?: to)?|turn in))\b`)
var actionVerb = regexp.MustCompile(`(?i)\b(kill|slay|defeat|collect|gather)\b`)
var wordsPattern = regexp.MustCompile(`[a-z0-9]+`)

func BuildAuthoringActions(facts map[string]any, faction string) ([]map[string]any, error) {
	if unresolved := stringList(facts["unresolved"]); len(unresolved) > 0 {
		return nil, fmt.Errorf("%s", strings.Join(unresolved, "; "))
	}
	if facts["item"] != nil {
		return nil, fmt.Errorf("item starter requires reviewed drop-source and optional-item gating")
	}
	points := objectList(facts["points"])
	var start, end map[string]any
	work := []map[string]any{}
	for _, point := range points {
		route := authoringPointRoute(point)
		switch sourceString(point["point"]) {
		case "start":
			if start == nil && route != nil {
				start = point
			}
		case "end":
			if end == nil && route != nil {
				end = point
			}
		default:
			work = append(work, point)
		}
	}
	if start == nil || end == nil {
		return nil, fmt.Errorf("missing supported pickup or return navigation")
	}
	instructions := stringList(facts["objectivesText"])
	materials := map[string]bool{}
	for _, point := range work {
		if item := sourceString(point["item"]); item != "" {
			materials[item] = true
		}
	}
	items := anyList(facts["objectiveItems"])
	labels := anyList(facts["objectiveLabels"])
	counts := anyList(facts["objectiveCounts"])
	if len(items) > len(materials) {
		return nil, fmt.Errorf("required collection materials lack complete acquisition sources and visits")
	}
	itemSources := map[int]authoringItemSource{}
	for i, item := range items {
		id, ok := intValue(item)
		if !ok || i >= len(labels) || i >= len(counts) {
			continue
		}
		label, count := sourceString(labels[i]), positiveValue(counts[i])
		if label == "" || count == 0 {
			continue
		}
		matches := []map[string]any{}
		for _, point := range work {
			if sourceString(point["item"]) == label && authoringPointRoute(point) != nil {
				matches = append(matches, point)
			}
		}
		if len(matches) > 0 {
			itemSources[id] = authoringItemSource{label: label, count: count, points: matches}
		}
	}
	if len(items) > 1 && len(itemSources) != len(items) {
		return nil, fmt.Errorf("separate collection objectives lack complete item labels or source-backed visits")
	}
	if len(items) > 1 {
		itemLabels := map[string]bool{}
		for _, item := range items {
			id, _ := intValue(item)
			itemLabels[itemSources[id].label] = true
		}
		for _, point := range work {
			if truthy(facts["otherObjectives"]) || sourceString(point["point"]) != "sourcerequirement" || !itemLabels[sourceString(point["item"])] {
				return nil, fmt.Errorf("Mixed collection and non-item objectives need a reviewed combined itinerary")
			}
		}
	}
	allWords := authoringWords(strings.Join(instructions, " "))
	if len(materials) > 1 {
		for item := range materials {
			if !strings.Contains(allWords, authoringWords(item)) {
				return nil, fmt.Errorf("unexplained intermediate material requires reviewed mechanics and visits")
			}
		}
	}
	if len(work) > 0 && len(instructions) == 0 {
		return nil, fmt.Errorf("missing objective how-to text")
	}
	if len(instructions) > 0 && len(work) == 0 && !regexp.MustCompile(`(?i)\b(speak|talk|report)\b`).MatchString(strings.Join(instructions, " ")) {
		return nil, fmt.Errorf("objective materials are named but acquisition sources and visits need review")
	}
	if len(work) == 0 && len(instructions) == 0 && intValueOrZero(start["id"]) == intValueOrZero(end["id"]) {
		return nil, fmt.Errorf("missing objective or instant-turn-in evidence")
	}

	questID := intValueOrZero(facts["id"])
	name := sourceString(facts["name"])
	prefix := strings.ToLower(faction) + "-extra-" + strconv.Itoa(questID)
	conditions := []any{map[string]any{"faction": faction}, map[string]any{"level": map[string]any{"min": intValueOrZero(facts["offer"])}}}
	for _, key := range []string{"races", "classes"} {
		values := anyList(facts[key])
		if len(values) > 0 {
			conditionKey := "race"
			if key == "classes" {
				conditionKey = "class"
			}
			conditions = append(conditions, map[string]any{conditionKey: values})
		}
	}
	exclusions := []any{}
	if skill := anyList(facts["skill"]); len(skill) >= 2 {
		conditions = append(conditions, map[string]any{"profession": map[string]any{"skillLineID": skill[0], "minRank": skill[1]}})
		exclusions = append(exclusions, map[string]any{"not": map[string]any{"profession": map[string]any{"skillLineID": skill[0], "minRank": skill[1]}}})
	}
	for _, id := range anyList(facts["exclusiveTo"]) {
		if positiveValue(id) > 0 {
			exclusions = append(exclusions, map[string]any{"quest": map[string]any{"id": id, "state": "activeOrCompleted"}})
		}
	}
	makeAction := func(kind, text string, route any, complete map[string]any) map[string]any {
		routes := []any{}
		if route != nil {
			routes = append(routes, route)
		}
		goal := map[string]any{
			"id": prefix + "-" + kind, "kind": kind, "text": text,
			"conditions": map[string]any{"all": conditions}, "route": routes,
			"complete": complete, "requiredQuests": anyList(facts["requirements"]), "useClientText": false,
		}
		if len(exclusions) > 0 {
			goal["excludeWhen"] = map[string]any{"any": exclusions}
		}
		if id := positiveValue(facts["breadcrumbForQuestId"]); id > 0 {
			goal["alternativeQuests"] = []any{id}
		}
		return goal
	}

	checkpointID := prefix + "-level"
	checkpointConditions := []any{}
	for _, condition := range conditions {
		if _, isLevel := object(condition)["level"]; !isLevel {
			checkpointConditions = append(checkpointConditions, condition)
		}
	}
	checkpoint := map[string]any{
		"id": checkpointID, "kind": "note", "checkpointQuest": questID,
		"text":          fmt.Sprintf("Reach level %d before this visit.", intValueOrZero(facts["offer"])),
		"conditions":    map[string]any{"all": checkpointConditions},
		"complete":      map[string]any{"level": map[string]any{"min": intValueOrZero(facts["offer"])}},
		"requiredLevel": intValueOrZero(facts["offer"]),
	}
	if len(exclusions) > 0 {
		checkpoint["excludeWhen"] = map[string]any{"any": exclusions}
	}
	if id := positiveValue(facts["breadcrumbForQuestId"]); id > 0 {
		checkpoint["alternativeQuests"] = []any{id}
	}
	accept := makeAction("accept", fmt.Sprintf("Accept %s from %s.", name, sourceString(start["name"])), authoringPointRoute(start), map[string]any{"quest": map[string]any{"id": questID, "state": "activeOrCompleted"}})
	accept["dependsOn"] = []any{checkpointID}
	goals := []map[string]any{checkpoint, accept}
	objectives := []map[string]any{}
	if len(work) > 0 || len(instructions) > 0 {
		text := strings.Join(instructions, " ")
		if match := returnPhrase.FindStringIndex(text); match != nil {
			text = strings.TrimRight(text[:match[0]], " ,.;")
		}
		text += "."
		if len(items) > 1 {
			for index, item := range items {
				itemID, _ := intValue(item)
				entry := itemSources[itemID]
				point := entry.points[0]
				for _, candidate := range entry.points {
					if intValueOrZero(candidate["type"]) == 1 {
						point = candidate
						break
					}
				}
				instruction := ""
				switch intValueOrZero(point["type"]) {
				case 2:
					instruction = fmt.Sprintf("Collect %s from the marked object.", entry.label)
				case 1:
					if !authoringHostile(point, faction) {
						return nil, fmt.Errorf("collection provider is not verified as hostile")
					}
					instruction = fmt.Sprintf("Defeat %s and loot %s.", sourceString(point["name"]), entry.label)
				default:
					return nil, fmt.Errorf("collection provider has no supported NPC or object interaction")
				}
				goal := makeAction("objective", instruction, authoringPointRoute(point), map[string]any{"questObjective": map[string]any{"id": questID, "index": index + 1, "text": entry.label, "count": entry.count}})
				goal["id"] = fmt.Sprintf("%s-objective-%d", prefix, index+1)
				goal["dependsOn"] = []any{accept["id"]}
				if truthy(facts["elite"]) {
					goal["text"] = instruction + " This is an elite. Bring a group."
				}
				objectives = append(objectives, goal)
			}
		} else {
			var label string
			var source map[string]any
			for _, item := range items {
				itemID, _ := intValue(item)
				if entry, ok := itemSources[itemID]; ok {
					label = entry.label
					for _, candidate := range entry.points {
						if intValueOrZero(candidate["type"]) == 2 {
							source = candidate
							break
						}
					}
					break
				}
			}
			var route any
			if source != nil {
				text = fmt.Sprintf("Collect %s from the marked object.", label)
				route = authoringPointRoute(source)
			} else {
				for _, point := range work {
					if route = authoringPointRoute(point); route != nil {
						break
					}
				}
				hostile := []map[string]any{}
				for _, point := range work {
					if intValueOrZero(point["type"]) == 1 && authoringHostile(point, faction) {
						hostile = append(hostile, point)
					}
				}
				if len(hostile) > 0 && !actionVerb.MatchString(text) {
					point := hostile[0]
					text = fmt.Sprintf("Defeat %s", sourceString(point["name"]))
					if item := sourceString(point["item"]); item != "" {
						text += " and loot the " + item + "."
					} else {
						text += " until the quest log marks the objective complete."
					}
					text += " " + strings.TrimSpace(strings.Join(instructions, " "))
				}
			}
			if truthy(facts["elite"]) {
				text += " This is an elite. Bring a group."
			}
			goal := makeAction("objective", text, route, map[string]any{"quest": map[string]any{"id": questID, "state": "complete"}})
			goal["dependsOn"] = []any{accept["id"]}
			if route == nil {
				goal["useClientPin"] = true
				goal["text"] = sourceString(goal["text"]) + " Follow the quest log for the destination."
			}
			objectives = append(objectives, goal)
		}
	}
	goals = append(goals, objectives...)
	turnin := makeAction("turnin", fmt.Sprintf("Turn in %s to %s.", name, sourceString(end["name"])), authoringPointRoute(end), map[string]any{"quest": map[string]any{"id": questID, "state": "completed"}})
	dependencies := []any{}
	for _, objective := range objectives {
		dependencies = append(dependencies, objective["id"])
	}
	if len(dependencies) == 0 {
		dependencies = append(dependencies, accept["id"])
	}
	turnin["dependsOn"] = dependencies
	goals = append(goals, turnin)
	return goals, nil
}

type authoringItemSource struct {
	label  string
	count  int
	points []map[string]any
}

func authoringPointRoute(point map[string]any) map[string]any {
	zone := sourceString(point["zone"])
	if alias := authoringZoneAliases[zone]; alias != "" {
		zone = alias
	}
	mapID := authoringZoneMaps[zone]
	if mapID == 0 {
		return nil
	}
	coord := anyList(point["coord"])
	if len(coord) < 2 {
		return nil
	}
	x, xOK := number(coord[0])
	y, yOK := number(coord[1])
	if !xOK || !yOK || x < 0 || x > 100 || y < 0 || y > 100 {
		return nil
	}
	name := sourceString(point["name"])
	if name == "" {
		name = zone
	}
	return map[string]any{"mapID": mapID, "x": x / 100, "y": y / 100, "label": name, "offMapText": fmt.Sprintf("Travel to %s in %s.", name, zone)}
}

func authoringHostile(point map[string]any, faction string) bool {
	if faction == "Alliance" {
		return intValueOrZero(point["reactalliance"]) == -1
	}
	return intValueOrZero(point["reacthorde"]) == -1
}

func objectList(value any) []map[string]any {
	result := []map[string]any{}
	for _, item := range anyList(value) {
		if entry := object(item); entry != nil {
			result = append(result, entry)
		}
	}
	return result
}

func anyList(value any) []any {
	result, _ := value.([]any)
	return result
}

func stringList(value any) []string {
	result := []string{}
	for _, item := range anyList(value) {
		if text, ok := item.(string); ok {
			result = append(result, text)
		}
	}
	return result
}

func number(value any) (float64, bool) {
	switch n := value.(type) {
	case int:
		return float64(n), true
	case int64:
		return float64(n), true
	case float64:
		return n, true
	case json.Number:
		result, err := n.Float64()
		return result, err == nil
	default:
		return 0, false
	}
}

func positiveValue(value any) int {
	n, ok := intValue(value)
	if ok && n > 0 {
		return n
	}
	return 0
}

func intValueOrZero(value any) int {
	n, _ := intValue(value)
	return n
}

func authoringWords(value string) string {
	words := wordsPattern.FindAllString(strings.ToLower(value), -1)
	for i := range words {
		words[i] = strings.TrimSuffix(words[i], "s")
	}
	return strings.Join(words, " ")
}
