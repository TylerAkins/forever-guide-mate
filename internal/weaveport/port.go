package weaveport

import (
	"fmt"
	"regexp"
	"strconv"
	"strings"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
)

type GoalBlock struct {
	ID  string
	Raw string
}

var (
	questCall   = regexp.MustCompile(`(?:QuestState|QuestObjective)\((\d+)`)
	goalID      = regexp.MustCompile(`id\s*=\s*"([^"]+)"`)
	allIDs      = regexp.MustCompile(`id\s*=\s*"([^"]+)"`)
	priority    = regexp.MustCompile(`priority\s*=\s*(\d+)`)
	priorityAny = regexp.MustCompile(`priority\s*=\s*[\d.]+`)
	depends     = regexp.MustCompile(`\n\s*dependsOn\s*=\s*\{([^}]*)\},`)
	quoted      = regexp.MustCompile(`"([^"\n]*)"`)
	mapToken    = regexp.MustCompile(`\bMAP\.([A-Z0-9_]+)\b`)
	unknownMap  = regexp.MustCompile(`\bMAP\.[A-Z0-9_]+\b`)
	ordered     = regexp.MustCompile(`routeMode\s*=\s*"ordered"`)
)

var mapNameToID = map[string]int{
	"DUROTAR": 1411, "MULGORE": 1412, "BARRENS": 1413, "THE_BARRENS": 1413,
	"TIRISFAL": 1420, "TIRISFAL_GLADES": 1420, "SILVERPINE": 1421, "SILVERPINE_FOREST": 1421,
	"STONETALON": 1442, "STONETALON_MOUNTAINS": 1442, "ASHENVALE": 1440,
	"HILLSBRAD": 1424, "HILLSBRAD_FOOTHILLS": 1424, "WESTFALL": 1436, "DARKSHORE": 1439,
	"LOCH_MODAN": 1432, "REDRIDGE": 1433, "REDRIDGE_MOUNTAINS": 1433, "WETLANDS": 1437,
	"DUSKWOOD": 1431, "ELWYNN": 1429, "ELWYNN_FOREST": 1429, "DUN_MOROGH": 1426,
	"TELDRASSIL": 1438, "ORGRIMMAR": 1454, "THUNDER_BLUFF": 1456, "UNDERCITY": 1458,
	"STORMWIND": 1453, "STORMWIND_CITY": 1453, "IRONFORGE": 1455, "DARNASSUS": 1457,
	"THOUSAND_NEEDLES": 1441,
}

func ForeverQuestIDs(block string) map[int]bool {
	ids := map[int]bool{}
	for _, match := range questCall.FindAllStringSubmatch(block, -1) {
		id, _ := strconv.Atoi(match[1])
		if id >= 90000 {
			ids[id] = true
		}
	}
	return ids
}

func ExtractGoalBlocks(text string) ([]GoalBlock, error) {
	marker := strings.Index(text, "goals = {")
	if marker < 0 {
		return []GoalBlock{}, nil
	}
	open := strings.IndexByte(text[marker:], '{') + marker
	end, err := loremaster.BraceEnd(text, open)
	if err != nil {
		return nil, err
	}
	body := text[open+1 : end]
	blocks := []GoalBlock{}
	for i := 0; i < len(body); {
		for i < len(body) && (body[i] == ' ' || body[i] == '\t' || body[i] == '\r' || body[i] == '\n' || body[i] == ',') {
			i++
		}
		if i >= len(body) || body[i] == '}' {
			break
		}
		if body[i] != '{' {
			i++
			continue
		}
		close, err := loremaster.BraceEnd(body, i)
		if err != nil {
			return nil, err
		}
		block := strings.TrimRight(body[i:close+1], " \t\r\n")
		if !strings.HasSuffix(block, ",") {
			block += ","
		}
		if match := goalID.FindStringSubmatch(block); match != nil {
			blocks = append(blocks, GoalBlock{ID: match[1], Raw: block})
		}
		i = close + 1
	}
	return blocks, nil
}

func ExtractWovenBlocks(text string) ([]GoalBlock, error) {
	blocks, err := ExtractGoalBlocks(text)
	if err != nil {
		return nil, err
	}
	forever := map[int]bool{}
	for _, block := range blocks {
		for id := range ForeverQuestIDs(block.Raw) {
			forever[id] = true
		}
	}
	if len(forever) == 0 {
		return []GoalBlock{}, nil
	}
	result := []GoalBlock{}
	for _, block := range blocks {
		include := false
		for _, match := range questCall.FindAllStringSubmatch(block.Raw, -1) {
			id, _ := strconv.Atoi(match[1])
			if forever[id] {
				include = true
				break
			}
		}
		if include {
			block.Raw = "        " + strings.TrimLeft(block.Raw, " \t\r\n")
			result = append(result, block)
		}
	}
	return result, nil
}

func WovenGoalID(oldID string) string {
	value := regexp.MustCompile(`[^a-z0-9-]+`).ReplaceAllString(strings.ToLower(oldID), "-")
	return "woven-" + strings.Trim(value, "-")
}

func NextPriority(text string) int {
	maximum := 0
	for _, match := range priority.FindAllStringSubmatch(text, -1) {
		value, _ := strconv.Atoi(match[1])
		if value > maximum {
			maximum = value
		}
	}
	return maximum + 10
}

func RewriteDepends(block string, available map[string]bool) string {
	return depends.ReplaceAllStringFunc(block, func(match string) string {
		groups := depends.FindStringSubmatch(match)
		kept := []string{}
		for _, entry := range quoted.FindAllStringSubmatch(groups[1], -1) {
			old := entry[1]
			woven := WovenGoalID(old)
			if available[woven] {
				kept = append(kept, woven)
			} else if available[old] {
				kept = append(kept, old)
			} else if strings.Contains(groups[1], `id = "`+woven+`"`) {
				kept = append(kept, woven)
			}
		}
		if len(kept) == 0 {
			return ""
		}
		quotedValues := make([]string, len(kept))
		for i, value := range kept {
			quotedValues[i] = strconv.Quote(value)
		}
		return "\n            dependsOn = { " + strings.Join(quotedValues, ", ") + " },"
	})
}

func RewriteBlock(block, newID string, nextPriority int, available map[string]bool) (string, bool) {
	if regexp.MustCompile(`\bSKILL\b|\bPROFESSION\b|\bSpell\b`).MatchString(block) {
		return "", false
	}
	block = replaceFirst(block, goalID, `id = "`+newID+`"`)
	block = replaceFirst(block, priorityAny, fmt.Sprintf("priority = %d", nextPriority))
	availableForGoal := make(map[string]bool, len(available)+1)
	for id := range available {
		availableForGoal[id] = true
	}
	availableForGoal[newID] = true
	block = RewriteDepends(block, availableForGoal)
	block = mapToken.ReplaceAllStringFunc(block, func(token string) string {
		match := mapToken.FindStringSubmatch(token)
		if id, ok := mapNameToID[match[1]]; ok {
			return strconv.Itoa(id)
		}
		return token
	})
	if unknownMap.MatchString(block) {
		return "", false
	}
	return block, true
}

func AppendWoven(text string, blocks []GoalBlock) (string, int, error) {
	if len(blocks) == 0 {
		return text, 0, nil
	}
	if ordered.MatchString(text) {
		return text, 0, fmt.Errorf("authored itinerary requires an explicit insertion point; append weaving is retired")
	}
	available := map[string]bool{}
	for _, match := range allIDs.FindAllStringSubmatch(text, -1) {
		available[match[1]] = true
	}
	for _, block := range blocks {
		available[WovenGoalID(block.ID)] = true
	}
	next := NextPriority(text)
	added := []string{}
	for _, block := range blocks {
		ids := questCall.FindAllStringSubmatch(block.Raw, -1)
		if len(ids) == 0 {
			continue
		}
		newID := WovenGoalID(block.ID)
		if strings.Contains(text, `id = "`+newID+`"`) {
			continue
		}
		rewritten, ok := RewriteBlock(block.Raw, newID, next, available)
		if !ok {
			continue
		}
		added = append(added, rewritten)
		next += 10
	}
	if len(added) == 0 {
		return text, 0, nil
	}
	index := strings.LastIndex(text, "\n    },\n})")
	if index < 0 {
		return text, 0, fmt.Errorf("cannot find goals close")
	}
	before := strings.TrimRight(text[:index], " \t\r\n")
	if !strings.HasSuffix(before, ",") {
		before += ","
	}
	text = before + "\n" + strings.Join(added, "\n") + text[index:]
	if !strings.Contains(text, "Forever weaves ported") {
		text = strings.Replace(text, "-- Forever weaves are applied in a separate pass.\n", "-- Forever weaves ported from prior Leveling chapters (quest id >= 90000).\n", 1)
	}
	if ordered.MatchString(text) {
		return text, 0, fmt.Errorf("authored itinerary requires an explicit insertion point; append weaving is retired")
	}
	return text, len(added), nil
}

func replaceFirst(text string, pattern *regexp.Regexp, replacement string) string {
	location := pattern.FindStringIndex(text)
	if location == nil {
		return text
	}
	return text[:location[0]] + replacement + text[location[1]:]
}

func OrderedOldNames() []string {
	return append([]string(nil), oldOrder...)
}

func TargetName(oldName string) string { return oldToNew[oldName] }

var oldToNew = map[string]string{
	"durotar": "durotar.lua", "mulgore": "mulgore.lua", "tirisfal-glades": "tirisfal-glades.lua",
	"elwynn-forest": "elwynn-forest.lua", "dun-morogh": "dun-morogh.lua", "teldrassil": "teldrassil.lua",
	"the-barrens-part-1": "horde-the-barrens-and-stonetalon-mountain.lua", "the-barrens-part-2": "horde-the-barrens.lua",
	"the-barrens-part-3": "horde-the-barrens.lua", "silverpine-forest": "horde-silverpine-forest.lua",
	"stonetalon-mountains-part-1": "horde-the-barrens-and-stonetalon-mountain.lua", "stonetalon-mountains-part-2": "horde-the-barrens-and-stonetalon-mountain.lua",
	"stonetalon-mountains-part-3": "horde-stonetalon-mountains.lua", "stonetalon-mountains-part-4": "horde-stonetalon-mountains.lua",
	"thousand-needles-part-1": "horde-thousand-needles.lua", "thousand-needles-part-2": "horde-thousand-needles-part-2.lua",
	"ashenvale-part-1": "alliance-ashenvale-and-stonetalon-mountains.lua", "ashenvale-part-2": "alliance-ashenvale-and-stonetalon-mountains.lua",
	"ashenvale-part-3": "horde-ashenvale.lua", "ashenvale-part-4": "horde-ashenvale-part-2.lua",
	"hillsbrad-foothills": "horde-hillsbrad-foothills.lua", "westfall": "alliance-westfall.lua",
	"darkshore-part-1": "alliance-darkshore.lua", "darkshore-part-2": "alliance-darkshore-part-2.lua",
	"darkshore-part-3": "alliance-darkshore-part-2.lua", "loch-modan": "alliance-loch-modan.lua",
	"redridge-mountains-part-1": "alliance-redridge-and-westfall.lua", "redridge-mountains-part-2": "alliance-duskwood-and-redridge-mountains.lua",
	"wetlands": "alliance-wetlands.lua", "duskwood": "alliance-duskwood-and-redridge-mountains.lua",
}

var oldOrder = []string{
	"durotar", "mulgore", "tirisfal-glades", "elwynn-forest", "dun-morogh", "teldrassil",
	"the-barrens-part-1", "the-barrens-part-2", "the-barrens-part-3", "silverpine-forest",
	"stonetalon-mountains-part-1", "stonetalon-mountains-part-2", "stonetalon-mountains-part-3", "stonetalon-mountains-part-4",
	"thousand-needles-part-1", "thousand-needles-part-2", "ashenvale-part-1", "ashenvale-part-2", "ashenvale-part-3", "ashenvale-part-4",
	"hillsbrad-foothills", "westfall", "darkshore-part-1", "darkshore-part-2", "darkshore-part-3", "loch-modan",
	"redridge-mountains-part-1", "redridge-mountains-part-2", "wetlands", "duskwood",
}
