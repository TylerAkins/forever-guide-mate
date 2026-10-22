package itineraryimport

import (
	"fmt"
	"math"
	"os"
	"path/filepath"
	"regexp"
	"sort"
	"strconv"
	"strings"
)

type ParsedGoal struct {
	Kind           string
	QuestID        int
	Name           string
	Text           string
	MapID          *int
	X              *float64
	Y              *float64
	NPC            string
	ObjectiveIndex *int
	Count          *int
	Classes        []int
	Races          []int
	Faction        string
	LevelMin       int
	Instant        bool
	SourceStep     int
}

type ParsedGuide struct {
	Title    string
	Faction  string
	LevelMin int
	Slug     string
	Starter  bool
	Goals    []ParsedGoal
}

var zoneUIMap = map[string]int{
	"Dun Morogh": 1426, "Badlands": 1418, "Blasted Lands": 1419, "Swamp of Sorrows": 1435,
	"Duskwood": 1431, "Wetlands": 1437, "Elwynn Forest": 1429, "Durotar": 1411,
	"Dustwallow Marsh": 1445, "Azshara": 1447, "The Barrens": 1413, "Barrens": 1413,
	"Western Plaguelands": 1422, "Stranglethorn Vale": 1434, "Loch Modan": 1432, "Westfall": 1436,
	"Redridge Mountains": 1433, "Arathi Highlands": 1417, "Burning Steppes": 1428,
	"The Hinterlands": 1425, "Hinterlands": 1425, "Searing Gorge": 1427, "Tirisfal Glades": 1420,
	"Silverpine Forest": 1421, "Eastern Plaguelands": 1423, "Teldrassil": 1438, "Darkshore": 1439,
	"Mulgore": 1412, "Feralas": 1444, "Felwood": 1448, "Thousand Needles": 1441,
	"Desolace": 1443, "Stonetalon Mountains": 1442, "Stonetalon Mountain": 1442, "Tanaris": 1446,
	"Un'Goro Crater": 1449, "Moonglade": 1450, "Winterspring": 1452, "Silithus": 1451,
	"Stormwind City": 1453, "Stormwind": 1453, "Ironforge": 1455, "Orgrimmar": 1454,
	"Thunder Bluff": 1456, "Darnassus": 1457, "Undercity": 1458, "Alterac Mountains": 1416,
	"Hillsbrad Foothills": 1424, "Ashenvale": 1440, "Northshire Valley": 1429,
	"Coldridge Valley": 1426, "Shadowglen": 1438, "Valley of Trials": 1411, "Red Cloud Mesa": 1412,
	"Deathknell": 1420, "Camp Narache": 1412, "Sen'jin Village": 1411, "Razor Hill": 1411,
	"Bloodhoof Village": 1412, "Brill": 1420, "The Sepulcher": 1421, "Crossroads": 1413, "Ratchet": 1413,
}

var raceIDs = map[string]int{"human": 1, "orc": 2, "dwarf": 3, "nightelf": 4, "night elf": 4, "scourge": 5, "undead": 5, "tauren": 6, "gnome": 7, "troll": 8}
var classIDs = map[string]int{"warrior": 1, "paladin": 2, "hunter": 3, "rogue": 4, "priest": 5, "shaman": 7, "mage": 8, "warlock": 9, "druid": 11}
var classIDList = []int{1, 2, 3, 4, 5, 7, 8, 9, 11}
var skipTitleParts = []string{"season of discovery", "ahn'qiraj", "cenarion", "scepter", "class quests", "startup guide", "hidden guides", "scourge invasion", "trial"}

var (
	omitLine           = regexp.MustCompile(`(?i)^(trash\b|ding\b|train\b|trainer\b|vendor\b|sell\b|buy\b|fpath\b|home\b|bank\b|learn\b|money\b|collect\s+money|_destroy|_note|click here to continue|kill enemies|grind\b|description\b|hideif\b|label\b|stickystart\b|stickystop\b|defaultfor\b|hardcore\b|image=|next=|condition_|linked|modeldisplay|confirm\b|watch\b|gain\b|reach\b|follow\b|path\b|mapmarker\b)`)
	actionAccept       = regexp.MustCompile(`(?i)^accept\s+(.+?)##(\d+)\b`)
	actionTurnin       = regexp.MustCompile(`(?i)^turnin(?:any)?\s+(.+?)##(\d+)\b`)
	actionKill         = regexp.MustCompile(`(?i)^kill\s+(?:(\d+)\s+)?(.+?)##(\d+)\b`)
	actionCollect      = regexp.MustCompile(`(?i)^collect\s+(?:(\d+)\s+)?(.+?)##(\d+)\b`)
	actionClick        = regexp.MustCompile(`(?i)^click\s+(.+?)##(\d+)\b`)
	actionUse          = regexp.MustCompile(`(?i)^use\s+(.+?)##(\d+)\b`)
	actionTalk         = regexp.MustCompile(`(?im)^talk\s+(.+?)##\d+\b`)
	actionTurninAny    = regexp.MustCompile(`(?i)^turninany\s+(.+?)##(\d+)((?:,\d+)*)`)
	gotoPattern        = regexp.MustCompile(`(?i)\|goto\s+([^|]+?)\s+(\d+(?:\.\d+)?)\s*,\s*(\d+(?:\.\d+)?)`)
	onlyPattern        = regexp.MustCompile(`(?i)\|only if\s+(.+)$`)
	onlyLinePattern    = regexp.MustCompile(`(?i)^\|only if\s+(.+)$`)
	questMarker        = regexp.MustCompile(`(?i)\|q\s+(\d+)(?:/(\d+))?`)
	instantPattern     = regexp.MustCompile(`(?i)\|instant\b`)
	stepTitleLevel     = regexp.MustCompile(`\((\d+)\s*-\s*\d+\)`)
	stripTrailingParen = regexp.MustCompile(`\s*\([^)]*\)\s*$`)
	cleanSpaces        = regexp.MustCompile(`\s+`)
	stripNameTokens    = regexp.MustCompile(`\{[^}]+\}`)
	stripNamePlus      = regexp.MustCompile(`\+\s*$`)
)

func Slugify(title string) string {
	name := title
	if index := strings.LastIndex(name, `\`); index >= 0 {
		name = name[index+1:]
	}
	name = strings.TrimSpace(stripTrailingParen.ReplaceAllString(name, ""))
	name = strings.ToLower(strings.ReplaceAll(strings.ReplaceAll(name, "&", "and"), "'", ""))
	name = regexp.MustCompile(`[^a-z0-9]+`).ReplaceAllString(name, "-")
	return strings.Trim(name, "-")
}

func LevelFromTitle(title string) int {
	if match := stepTitleLevel.FindStringSubmatch(title); match != nil {
		level, _ := strconv.Atoi(match[1])
		return level
	}
	return 1
}

func IsStarter(title string) bool { return strings.Contains(strings.ToLower(title), "starter") }

func SkipTitle(title string) bool {
	lower := strings.ToLower(title)
	for _, part := range skipTitleParts {
		if strings.Contains(lower, part) {
			return true
		}
	}
	return false
}

func ZoneMapID(zone string) *int {
	zone = strings.TrimSpace(zone)
	if slash := regexp.MustCompile(`/\d+$`).FindStringIndex(zone); slash != nil {
		zone = strings.TrimSpace(zone[:slash[0]])
	}
	for name, id := range zoneUIMap {
		if strings.EqualFold(zone, name) {
			value := id
			return &value
		}
	}
	return nil
}

func ParseOnly(expression, faction string) ([]int, []int) {
	negativeClass := regexp.MustCompile(`(?i)^\s*not\s+(\w+)\s*$`).FindStringSubmatch(expression)
	if negativeClass != nil {
		if excluded, ok := classIDs[strings.ToLower(negativeClass[1])]; ok {
			classes := []int{}
			for _, id := range classIDList {
				if id != excluded {
					classes = append(classes, id)
				}
			}
			return classes, []int{}
		}
	}
	classes, races := []int{}, []int{}
	tokens := regexp.MustCompile(`(?i)\s+or\s+|,|/|\s+and\s+`).Split(expression, -1)
	for _, raw := range tokens {
		token := strings.ToLower(strings.TrimSpace(raw))
		token = strings.TrimSpace(regexp.MustCompile(`[^a-z ]`).ReplaceAllString(token, ""))
		for race, id := range raceIDs {
			if strings.HasPrefix(token, race+" ") {
				races = append(races, id)
			}
		}
		if token == "" || token == "not" || token == "completedq" || token == "haveq" || token == "rep" || token == "trained" {
			continue
		}
		if id, ok := classIDs[token]; ok {
			classes = append(classes, id)
		} else if id, ok := raceIDs[token]; ok {
			races = append(races, id)
		} else if token == "skyborne" {
			if faction == "Alliance" {
				races = append(races, 95)
			} else {
				races = append(races, 96)
			}
		} else {
			for class, id := range classIDs {
				if strings.HasSuffix(token, class) {
					classes = append(classes, id)
					break
				}
			}
		}
	}
	return uniqueInts(classes), uniqueInts(races)
}

func ParseGoto(text string) (*int, *float64, *float64) {
	match := gotoPattern.FindStringSubmatch(text)
	if match == nil {
		return nil, nil, nil
	}
	mapID := ZoneMapID(match[1])
	x, errX := strconv.ParseFloat(match[2], 64)
	y, errY := strconv.ParseFloat(match[3], 64)
	if errX != nil || errY != nil {
		return nil, nil, nil
	}
	x /= 100
	y /= 100
	return mapID, &x, &y
}

func CleanName(name string) string {
	name = stripNameTokens.ReplaceAllString(name, "")
	name = strings.TrimSpace(stripNamePlus.ReplaceAllString(name, ""))
	return cleanSpaces.ReplaceAllString(name, " ")
}

func ShouldOmitStep(body string) bool {
	lines := []string{}
	for _, raw := range strings.Split(body, "\n") {
		line := strings.TrimSpace(raw)
		if line != "" && !strings.HasPrefix(strings.ToLower(line), "label ") {
			lines = append(lines, line)
		}
	}
	if len(lines) == 0 {
		return true
	}
	joined := strings.Join(lines, "\n")
	if regexp.MustCompile(`(?i)hearthstone|set your hearth|bind your hearth`).MatchString(joined) || regexp.MustCompile(`(?im)^ding\b`).MatchString(joined) || (strings.Contains(strings.ToLower(joined), "kill enemies") && strings.Contains(strings.ToLower(joined), "ding")) {
		return true
	}
	actions := []string{}
	for _, line := range lines {
		if strings.HasPrefix(line, "|") || strings.HasPrefix(line, "_") {
			continue
		}
		actions = append(actions, line)
	}
	if len(actions) == 0 {
		return true
	}
	if omitLine.MatchString(actions[0]) && !regexp.MustCompile(`(?im)^(accept|turnin)\b`).MatchString(joined) {
		return true
	}
	if regexp.MustCompile(`(?i)click here to continue\s*\|confirm`).MatchString(joined) && !regexp.MustCompile(`(?im)^(accept|turnin|kill|collect)\b`).MatchString(joined) {
		return true
	}
	return false
}

func ParseStep(body, faction string, levelMin int) ([]ParsedGoal, error) {
	if ShouldOmitStep(body) {
		return []ParsedGoal{}, nil
	}
	stepMap, stepX, stepY := ParseGoto(body)
	classes, races := []int{}, []int{}
	for _, line := range strings.Split(body, "\n") {
		match := onlyLinePattern.FindStringSubmatch(strings.TrimSpace(line))
		if match != nil {
			c, r := ParseOnly(match[1], faction)
			classes = append(classes, c...)
			races = append(races, r...)
		}
	}
	classes, races = uniqueInts(classes), uniqueInts(races)
	stepClasses, stepRaces := classes, races
	npc := ""
	if match := actionTalk.FindStringSubmatch(body); match != nil {
		npc = CleanName(match[1])
	}
	goals := []ParsedGoal{}
	for _, raw := range strings.Split(body, "\n") {
		line := strings.TrimSpace(raw)
		if line == "" || strings.HasPrefix(line, "|") || strings.HasPrefix(line, "_") || strings.HasPrefix(line, "tip") {
			continue
		}
		lineClasses, lineRaces := stepClasses, stepRaces
		mapID, x, y := ParseGoto(line)
		if mapID == nil {
			mapID, x, y = stepMap, stepX, stepY
		}
		if restriction := onlyPattern.FindStringSubmatch(line); restriction != nil {
			localClasses, localRaces := ParseOnly(restriction[1], faction)
			lineClasses = intersectOrFallback(stepClasses, localClasses)
			lineRaces = intersectOrFallback(stepRaces, localRaces)
		}
		if match := actionAccept.FindStringSubmatch(line); match != nil {
			id, _ := strconv.Atoi(match[2])
			name := CleanName(match[1])
			instant := instantPattern.MatchString(line) || instantPattern.MatchString(body)
			text := "Accept " + name + "."
			if instant {
				text = "Accept " + name + " (instant)."
			} else if npc != "" {
				text = "Accept " + name + " from " + npc + "."
			}
			goals = append(goals, ParsedGoal{Kind: "accept", QuestID: id, Name: name, Text: text, MapID: mapID, X: x, Y: y, NPC: npc, Classes: lineClasses, Races: lineRaces, Faction: faction, LevelMin: levelMin, Instant: instant})
			continue
		}
		if match := actionTurninAny.FindStringSubmatch(line); match != nil {
			ids := []string{match[2]}
			if match[3] != "" {
				for _, id := range strings.Split(strings.TrimPrefix(match[3], ","), ",") {
					if id != "" {
						ids = append(ids, id)
					}
				}
			}
			for _, value := range ids {
				id, _ := strconv.Atoi(value)
				name := CleanName(match[1])
				text := "Turn in " + name + "."
				if npc != "" {
					text = "Turn in " + name + " to " + npc + "."
				}
				goals = append(goals, ParsedGoal{Kind: "turnin", QuestID: id, Name: name, Text: text, MapID: mapID, X: x, Y: y, NPC: npc, Classes: lineClasses, Races: lineRaces, Faction: faction, LevelMin: levelMin})
			}
			continue
		}
		if match := actionTurnin.FindStringSubmatch(line); match != nil {
			id, _ := strconv.Atoi(match[2])
			name := CleanName(match[1])
			text := "Turn in " + name + "."
			if npc != "" {
				text = "Turn in " + name + " to " + npc + "."
			}
			goals = append(goals, ParsedGoal{Kind: "turnin", QuestID: id, Name: name, Text: text, MapID: mapID, X: x, Y: y, NPC: npc, Classes: lineClasses, Races: lineRaces, Faction: faction, LevelMin: levelMin})
			continue
		}
		if match := actionKill.FindStringSubmatch(line); match != nil {
			if goal, ok := objectiveGoal(line, match, "Kill", faction, levelMin, lineClasses, lineRaces, mapID, x, y, true); ok {
				goal.Name = CleanName(match[2])
				if match[1] != "" {
					count, _ := strconv.Atoi(match[1])
					goal.Count = &count
					goal.Text = fmt.Sprintf("Kill %d %s.", count, goal.Name)
				} else {
					goal.Text = "Kill " + goal.Name + "."
				}
				goals = append(goals, goal)
			}
			continue
		}
		if match := actionCollect.FindStringSubmatch(line); match != nil {
			if goal, ok := objectiveGoal(line, match, "Collect", faction, levelMin, lineClasses, lineRaces, mapID, x, y, true); ok {
				goal.Name = CleanName(match[2])
				count := 1
				if match[1] != "" {
					count, _ = strconv.Atoi(match[1])
				}
				goal.Count = &count
				goal.Text = fmt.Sprintf("Collect %d %s.", count, goal.Name)
				goals = append(goals, goal)
			}
			continue
		}
		if match := actionUse.FindStringSubmatch(line); match != nil {
			if goal, ok := objectiveGoal(line, match, "Use", faction, levelMin, lineClasses, lineRaces, mapID, x, y, false); ok {
				goal.Name = CleanName(match[1])
				goal.Text = "Use " + goal.Name + "."
				goals = append(goals, goal)
			}
			continue
		}
		if match := actionClick.FindStringSubmatch(line); match != nil {
			if goal, ok := objectiveGoal(line, match, "Click", faction, levelMin, lineClasses, lineRaces, mapID, x, y, false); ok {
				goal.Name = CleanName(match[1])
				goal.Text = "Click " + goal.Name + "."
				goals = append(goals, goal)
			}
		}
	}
	return goals, nil
}

func ExtractGuides(path, faction string) ([]ParsedGuide, error) {
	data, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	text := string(data)
	register := regexp.MustCompile(`(?s)\w+:RegisterGuide\("([^"]+)",\s*\{(.*?)\},\s*\[\[(.*?)\]\]`)
	guides := []ParsedGuide{}
	for _, match := range register.FindAllStringSubmatch(text, -1) {
		title := match[1]
		if SkipTitle(title) || !strings.HasPrefix(title, `Leveling Guides\`) {
			continue
		}
		body := match[3]
		level := LevelFromTitle(title)
		starter := IsStarter(title)
		slug := Slugify(title)
		lower := strings.ToLower(title)
		switch {
		case strings.Contains(lower, "orc") && strings.Contains(lower, "troll"):
			slug = "durotar"
		case strings.Contains(lower, "tauren starter"):
			slug = "mulgore"
		case strings.Contains(lower, "undead starter"):
			slug = "tirisfal-glades"
		case strings.Contains(lower, "human starter"):
			slug = "elwynn-forest"
		case strings.Contains(lower, "dwarf") && strings.Contains(lower, "gnome"):
			slug = "dun-morogh"
		case strings.Contains(lower, "night elf starter") || strings.Contains(lower, "nightelf starter"):
			slug = "teldrassil"
		}
		steps := regexp.MustCompile(`(?m)^step\s*$`).Split(body, -1)
		goals := []ParsedGoal{}
		for sourceStep, stepBody := range steps[1:] {
			parsed, err := ParseStep(stepBody, faction, level)
			if err != nil {
				return nil, fmt.Errorf("%s step %d: %w", title, sourceStep+1, err)
			}
			for i := range parsed {
				parsed[i].SourceStep = sourceStep + 1
			}
			goals = append(goals, parsed...)
		}
		goals = dedupeGoals(goals)
		guideTitle := title
		if separator := strings.LastIndex(guideTitle, `\`); separator >= 0 {
			guideTitle = guideTitle[separator+1:]
		}
		guides = append(guides, ParsedGuide{Title: guideTitle, Faction: faction, LevelMin: level, Slug: slug, Starter: starter, Goals: goals})
	}
	return guides, nil
}

func dedupeGoals(goals []ParsedGoal) []ParsedGoal {
	type key struct {
		kind, classes, races string
		quest, objective     int
		mapID                int
		x, y                 float64
	}
	seen := map[key]bool{}
	result := []ParsedGoal{}
	for _, goal := range goals {
		mapID := 0
		if goal.MapID != nil {
			mapID = *goal.MapID
		}
		objective := 0
		if goal.ObjectiveIndex != nil {
			objective = *goal.ObjectiveIndex
		}
		x, y := 0.0, 0.0
		if goal.X != nil {
			x = math.Round(*goal.X*1000) / 1000
		}
		if goal.Y != nil {
			y = math.Round(*goal.Y*1000) / 1000
		}
		k := key{goal.Kind, fmt.Sprint(goal.Classes), fmt.Sprint(goal.Races), goal.QuestID, objective, mapID, x, y}
		if seen[k] {
			continue
		}
		seen[k] = true
		result = append(result, goal)
	}
	return result
}

func GoalID(goal ParsedGoal, used map[string]bool) string {
	base := fmt.Sprintf("%s-%d", goal.Kind, goal.QuestID)
	if goal.Kind == "objective" && goal.ObjectiveIndex != nil && *goal.ObjectiveIndex > 0 {
		base = fmt.Sprintf("objective-%d-%d", goal.QuestID, *goal.ObjectiveIndex)
	}
	name := strings.ToLower(goal.Name)
	name = regexp.MustCompile(`[^a-z0-9]+`).ReplaceAllString(name, "-")
	name = strings.Trim(name, "-")
	if len(name) > 40 {
		name = name[:40]
	}
	if name != "" {
		base += "-" + name
	}
	candidate := base
	for suffix := 2; used[candidate]; suffix++ {
		candidate = fmt.Sprintf("%s-%d", base, suffix)
	}
	used[candidate] = true
	return candidate
}

func OffMapText(label string) string {
	clean := strings.TrimRight(label, ".")
	returnPrefix := regexp.MustCompile(`(?i)^return(?:ing)? to\s+(.+)$`).FindStringSubmatch(clean)
	if returnPrefix != nil {
		return "Travel to " + returnPrefix[1] + "."
	}
	return "Travel to " + clean + "."
}

func EmitGuide(guide ParsedGuide, era bool) string {
	guideID := "leveling-era-" + guide.Slug
	if !guide.Starter {
		guideID = "leveling-era-" + strings.ToLower(guide.Faction) + "-" + guide.Slug
	}
	display := strings.TrimSpace(stripTrailingParen.ReplaceAllString(guide.Title, ""))
	if era && !strings.HasSuffix(display, "(Era)") {
		display += " (Era)"
	}
	maps := map[string]int{}
	for _, goal := range guide.Goals {
		if goal.MapID == nil {
			continue
		}
		if name := mapNameForID(*goal.MapID); name != "" {
			key := regexp.MustCompile(`[^A-Z0-9]+`).ReplaceAllString(strings.ToUpper(name), "_")
			key = strings.Trim(key, "_")
			maps[key] = *goal.MapID
		}
	}
	used := map[string]bool{}
	goalsLua := []string{}
	acceptByQuest := map[int]string{}
	objectivesByQuest := map[int][]string{}
	for _, goal := range guide.Goals {
		id := GoalID(goal, used)
		depends := []string{}
		if goal.QuestID != 0 && (goal.Kind == "objective" || goal.Kind == "gossip" || goal.Kind == "confirm" || goal.Kind == "turnin") {
			if accept := acceptByQuest[goal.QuestID]; accept != "" {
				depends = append(depends, accept)
			}
			if goal.Kind == "turnin" {
				for _, objective := range objectivesByQuest[goal.QuestID] {
					if !containsString(depends, objective) {
						depends = append(depends, objective)
					}
				}
			}
		}
		if goal.QuestID != 0 && goal.Kind == "accept" {
			acceptByQuest[goal.QuestID] = id
		} else if goal.QuestID != 0 && (goal.Kind == "objective" || goal.Kind == "gossip") {
			objectivesByQuest[goal.QuestID] = append(objectivesByQuest[goal.QuestID], id)
		}
		complete := ""
		if goal.Kind == "accept" {
			state := "activeOrCompleted"
			if goal.Instant {
				state = "completed"
			}
			complete = fmt.Sprintf("QuestState(%d, %q)", goal.QuestID, state)
		} else if goal.Kind == "turnin" {
			complete = fmt.Sprintf("QuestState(%d, %q)", goal.QuestID, "completed")
		} else {
			index := 1
			if goal.ObjectiveIndex != nil {
				index = *goal.ObjectiveIndex
			}
			complete = fmt.Sprintf("QuestObjective(%d, %d, %s)", goal.QuestID, index, luaQuote(goal.Name))
		}
		route := "nil"
		if goal.MapID != nil && goal.X != nil && goal.Y != nil {
			label := strings.TrimRight(goal.NPC, ".")
			if label == "" {
				label = strings.TrimRight(goal.Name, ".")
			}
			travel := OffMapText(label)
			route = fmt.Sprintf("{\n                Point(%d, %.4f, %.4f, %s,\n                    %s),\n            }", *goal.MapID, *goal.X, *goal.Y, luaQuote(label), luaQuote(travel))
		}
		condition := EmitConditions(goal, guide.Faction, guide.LevelMin)
		dependsField := ""
		if len(depends) > 0 {
			quoted := make([]string, len(depends))
			for i, dependency := range depends {
				quoted[i] = strconv.Quote(dependency)
			}
			dependsField = "\n            dependsOn = { " + strings.Join(quoted, ", ") + " },"
		}
		goalsLua = append(goalsLua, fmt.Sprintf("        {\n            id = %s,\n            kind = %s,\n            conditions = %s,\n            text = %s,\n            complete = %s,%s\n            route = %s,\n        },", luaQuote(id), luaQuote(goal.Kind), condition, luaQuote(goal.Text), complete, dependsField, route))
	}
	mapKeys := make([]string, 0, len(maps))
	for key := range maps {
		mapKeys = append(mapKeys, key)
	}
	sort.Slice(mapKeys, func(i, j int) bool {
		if maps[mapKeys[i]] != maps[mapKeys[j]] {
			return maps[mapKeys[i]] < maps[mapKeys[j]]
		}
		return mapKeys[i] < mapKeys[j]
	})
	mapLines := []string{}
	for _, key := range mapKeys {
		mapLines = append(mapLines, fmt.Sprintf("    %s = %d,", key, maps[key]))
	}
	var out strings.Builder
	out.WriteString("local _, ns = ...\n\n")
	out.WriteString(fmt.Sprintf("-- Forever Casual spine: %s\n", guide.Title))
	out.WriteString("-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.\n-- Forever weaves are applied in a separate pass.\n-- Coordinates not yet validated in Forever.\n\n")
	out.WriteString("local function QuestState(questID, state)\n    return { quest = { id = questID, state = state } }\nend\n\n")
	out.WriteString("local function QuestObjective(questID, index, text)\n    return { questObjective = { id = questID, index = index, text = text } }\nend\n\n")
	out.WriteString("local function Point(mapID, x, y, label, offMapText)\n    return {\n        mapID = mapID,\n        x = x,\n        y = y,\n        label = label,\n        offMapText = offMapText,\n    }\nend\n\n")
	if len(mapLines) > 0 {
		out.WriteString("local MAP = {\n" + strings.Join(mapLines, "\n") + "\n}\n\n")
	}
	out.WriteString("ns:RegisterGuide({\n")
	out.WriteString(fmt.Sprintf("    id = %s,\n    title = %s,\n", luaQuote(guideID), luaQuote(display)))
	out.WriteString("    category = \"Leveling Quest Guides\",\n    revision = 1,\n    routeMode = \"ordered\",\n    casualSpine = true,\n    conditions = {\n        all = {\n")
	out.WriteString(fmt.Sprintf("            { faction = %q },\n            { level = { min = %d } },\n", guide.Faction, guide.LevelMin))
	out.WriteString("        },\n    },\n    goals = {\n")
	out.WriteString(strings.Join(goalsLua, "\n"))
	out.WriteString("\n    },\n})\n")
	return out.String()
}

func EmitConditions(goal ParsedGoal, guideFaction string, guideLevel int) string {
	parts := []string{fmt.Sprintf("{ level = { min = %d } }", valueOr(goal.LevelMin, guideLevel))}
	faction := goal.Faction
	if faction == "" {
		faction = guideFaction
	}
	if faction != "" {
		parts = append(parts, fmt.Sprintf("{ faction = %q }", faction))
	}
	if len(goal.Classes) == 1 {
		parts = append(parts, fmt.Sprintf("{ class = %d }", goal.Classes[0]))
	} else if len(goal.Classes) > 1 {
		choices := []string{}
		for _, id := range goal.Classes {
			choices = append(choices, fmt.Sprintf("{ class = %d }", id))
		}
		parts = append(parts, "{ any = { "+strings.Join(choices, ", ")+" } }")
	}
	if len(goal.Races) == 1 {
		parts = append(parts, fmt.Sprintf("{ race = %d }", goal.Races[0]))
	} else if len(goal.Races) > 1 {
		choices := []string{}
		for _, id := range goal.Races {
			choices = append(choices, fmt.Sprintf("{ race = %d }", id))
		}
		parts = append(parts, "{ any = { "+strings.Join(choices, ", ")+" } }")
	}
	if len(parts) == 1 {
		return parts[0]
	}
	return "{ all = {\n                " + strings.Join(parts, ",\n                ") + ",\n            } }"
}

func valueOr(value, fallback int) int {
	if value > 0 {
		return value
	}
	return fallback
}

func mapNameForID(id int) string {
	canonical := map[int]string{
		1426: "Dun Morogh", 1418: "Badlands", 1419: "Blasted Lands", 1435: "Swamp of Sorrows",
		1431: "Duskwood", 1437: "Wetlands", 1429: "Elwynn Forest", 1411: "Durotar",
		1445: "Dustwallow Marsh", 1447: "Azshara", 1413: "The Barrens", 1422: "Western Plaguelands",
		1434: "Stranglethorn Vale", 1432: "Loch Modan", 1436: "Westfall", 1430: "Deadwind Pass",
		1433: "Redridge Mountains", 1417: "Arathi Highlands", 1428: "Burning Steppes", 1425: "The Hinterlands",
		1427: "Searing Gorge", 1420: "Tirisfal Glades", 1421: "Silverpine Forest", 1423: "Eastern Plaguelands",
		1438: "Teldrassil", 1439: "Darkshore", 1412: "Mulgore", 1444: "Feralas", 1448: "Felwood",
		1441: "Thousand Needles", 1443: "Desolace", 1442: "Stonetalon Mountains", 1446: "Tanaris",
		1449: "Un'Goro Crater", 1450: "Moonglade", 1452: "Winterspring", 1451: "Silithus",
		1453: "Stormwind City", 1455: "Ironforge", 1454: "Orgrimmar", 1456: "Thunder Bluff",
		1457: "Darnassus", 1458: "Undercity", 1416: "Alterac Mountains", 1424: "Hillsbrad Foothills", 1440: "Ashenvale",
	}
	return canonical[id]
}

func luaString(value string) string {
	return strings.ReplaceAll(strings.ReplaceAll(value, `\`, `\\`), `"`, `\"`)
}

func luaQuote(value string) string { return `"` + luaString(value) + `"` }

func containsString(values []string, value string) bool {
	for _, candidate := range values {
		if candidate == value {
			return true
		}
	}
	return false
}

func objectiveGoal(line string, actionMatch []string, _ string, faction string, levelMin int, classes, races []int, mapID *int, x, y *float64, includeCount bool) (ParsedGoal, bool) {
	marker := questMarker.FindStringSubmatch(line)
	if marker == nil || marker[2] == "" {
		return ParsedGoal{}, false
	}
	questID, _ := strconv.Atoi(marker[1])
	index, _ := strconv.Atoi(marker[2])
	var count *int
	if includeCount && actionMatch[1] != "" {
		value, _ := strconv.Atoi(actionMatch[1])
		count = &value
	}
	return ParsedGoal{Kind: "objective", QuestID: questID, MapID: mapID, X: x, Y: y, ObjectiveIndex: &index, Count: count, Classes: classes, Races: races, Faction: faction, LevelMin: levelMin}, true
}

func uniqueInts(values []int) []int {
	seen := map[int]bool{}
	result := []int{}
	for _, value := range values {
		if !seen[value] {
			seen[value] = true
			result = append(result, value)
		}
	}
	sort.Ints(result)
	return result
}

func intersectOrFallback(base, local []int) []int {
	if len(base) == 0 || len(local) == 0 {
		if len(local) > 0 {
			return local
		}
		return base
	}
	allowed := map[int]bool{}
	for _, id := range local {
		allowed[id] = true
	}
	result := []int{}
	for _, id := range base {
		if allowed[id] {
			result = append(result, id)
		}
	}
	return result
}

func WriteGuides(guides []ParsedGuide, outLeveling string, dryRun bool) ([]string, error) {
	written := []string{}
	slugCounts := map[string]int{}
	for _, guide := range guides {
		key := guide.Faction + "\x00" + guide.Slug
		slugCounts[key]++
		if slugCounts[key] > 1 {
			guide.Slug = fmt.Sprintf("%s-part-%d", guide.Slug, slugCounts[key])
		}
		filename := guide.Faction
		if guide.Starter {
			filename = guide.Slug
		} else {
			filename = strings.ToLower(guide.Faction) + "-" + guide.Slug
		}
		path := filepath.Join(outLeveling, filename+".lua")
		written = append(written, path)
		if dryRun {
			continue
		}
		if existing, err := os.ReadFile(path); err == nil && strings.Contains(string(existing), `routeMode = "ordered"`) {
			return nil, fmt.Errorf("%s: ordered itineraries require an explicit reviewed conversion; legacy import is disabled", path)
		} else if err != nil && !os.IsNotExist(err) {
			return nil, err
		}
		if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
			return nil, err
		}
		if err := os.WriteFile(path, []byte(EmitGuide(guide, false)), 0o644); err != nil {
			return nil, err
		}
	}
	return written, nil
}
