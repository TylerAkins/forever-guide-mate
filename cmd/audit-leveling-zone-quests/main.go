package main

import (
	"flag"
	"fmt"
	"io"
	"net/http"
	"os"
	"path/filepath"
	"regexp"
	"sort"
	"strconv"
	"time"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
	"github.com/TylerAkins/forever-guide-mate/internal/zoneaudit"
)

type chapter struct {
	file, url string
	levelMax  int
}

var chapters = []chapter{
	{"Guides/Leveling/durotar.lua", "https://www.wowhead.com/forever/quests/kalimdor/durotar", 12},
	{"Guides/Leveling/mulgore.lua", "https://www.wowhead.com/forever/quests/kalimdor/mulgore", 12},
	{"Guides/Leveling/tirisfal-glades.lua", "https://www.wowhead.com/forever/quests/eastern-kingdoms/tirisfal-glades", 12},
	{"Guides/Leveling/dun-morogh.lua", "https://www.wowhead.com/forever/quests/eastern-kingdoms/dun-morogh", 12},
	{"Guides/Leveling/elwynn-forest.lua", "https://www.wowhead.com/forever/quests/eastern-kingdoms/elwynn-forest", 12},
	{"Guides/Leveling/teldrassil.lua", "https://www.wowhead.com/forever/quests/kalimdor/teldrassil", 12},
	{"Guides/Leveling/zephras-isle.lua", "https://www.wowhead.com/forever/quests/kalimdor/zephras-isle", 14},
	{"Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua", "https://www.wowhead.com/forever/quests/kalimdor/the-barrens", 20},
	{"Guides/Leveling/horde-the-barrens.lua", "https://www.wowhead.com/forever/quests/kalimdor/the-barrens", 23},
	{"Guides/Leveling/horde-silverpine-forest.lua", "https://www.wowhead.com/forever/quests/eastern-kingdoms/silverpine-forest", 20},
	{"Guides/Leveling/alliance-westfall.lua", "https://www.wowhead.com/forever/quests/eastern-kingdoms/westfall", 17},
	{"Guides/Leveling/alliance-darkshore.lua", "https://www.wowhead.com/forever/quests/kalimdor/darkshore", 17},
	{"Guides/Leveling/alliance-darkshore-part-2.lua", "https://www.wowhead.com/forever/quests/kalimdor/darkshore", 21},
	{"Guides/Leveling/alliance-darkshore-part-2.lua", "https://www.wowhead.com/forever/quests/kalimdor/darkshore", 24},
	{"Guides/Leveling/alliance-loch-modan.lua", "https://www.wowhead.com/forever/quests/eastern-kingdoms/loch-modan", 18},
	{"Guides/Leveling/alliance-redridge-and-westfall.lua", "https://www.wowhead.com/forever/quests/eastern-kingdoms/redridge-mountains", 20},
	{"Guides/Leveling/alliance-duskwood-and-redridge-mountains.lua", "https://www.wowhead.com/forever/quests/eastern-kingdoms/redridge-mountains", 28},
	{"Guides/Leveling/alliance-ashenvale-and-stonetalon-mountains.lua", "https://www.wowhead.com/forever/quests/kalimdor/ashenvale", 22},
	{"Guides/Leveling/alliance-ashenvale-and-stonetalon-mountains.lua", "https://www.wowhead.com/forever/quests/kalimdor/ashenvale", 24},
	{"Guides/Leveling/horde-ashenvale.lua", "https://www.wowhead.com/forever/quests/kalimdor/ashenvale", 27},
	{"Guides/Leveling/horde-ashenvale-part-2.lua", "https://www.wowhead.com/forever/quests/kalimdor/ashenvale", 30},
	{"Guides/Leveling/horde-the-barrens.lua", "https://www.wowhead.com/forever/quests/kalimdor/the-barrens", 25},
	{"Guides/Leveling/horde-thousand-needles.lua", "https://www.wowhead.com/forever/quests/kalimdor/thousand-needles", 26},
	{"Guides/Leveling/horde-thousand-needles-part-2.lua", "https://www.wowhead.com/forever/quests/kalimdor/thousand-needles", 29},
	{"Guides/Leveling/alliance-wetlands.lua", "https://www.wowhead.com/forever/quests/eastern-kingdoms/wetlands", 27},
	{"Guides/Leveling/horde-hillsbrad-foothills.lua", "https://www.wowhead.com/forever/quests/eastern-kingdoms/hillsbrad-foothills", 30},
	{"Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua", "https://www.wowhead.com/forever/quests/kalimdor/stonetalon-mountains", 22},
	{"Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua", "https://www.wowhead.com/forever/quests/kalimdor/stonetalon-mountains", 23},
	{"Guides/Leveling/horde-stonetalon-mountains.lua", "https://www.wowhead.com/forever/quests/kalimdor/stonetalon-mountains", 25},
	{"Guides/Leveling/horde-stonetalon-mountains.lua", "https://www.wowhead.com/forever/quests/kalimdor/stonetalon-mountains", 27},
	{"Guides/Leveling/alliance-duskwood-and-redridge-mountains.lua", "https://www.wowhead.com/forever/quests/eastern-kingdoms/duskwood", 29},
}

var intentionalOmissions = map[int]bool{
	787: true, 5843: true, 807: true, 810: true, 814: true, 820: true, 5722: true, 5723: true,
	774: true, 5844: true, 99196: true, 5842: true, 8734: true, 934: true,
	3369: true, 3370: true, 914: true, 1489: true, 1491: true,
}

var questCall = regexp.MustCompile(`Quest(?:State|Objective)\((\d+)`)

func main() {
	flags := flag.NewFlagSet("audit-leveling-zone-quests", flag.ExitOnError)
	root := flags.String("root", ".", "repository root")
	cache := flags.String("cache", filepath.Join(os.TempDir(), "wh-cache"), "Wowhead page cache")
	_ = flags.Parse(os.Args[1:])
	absoluteRoot, err := filepath.Abs(*root)
	if err != nil {
		fail(err)
	}
	dungeons, err := dungeonQuestIDs(absoluteRoot)
	if err != nil {
		fail(err)
	}
	excluded := make(map[int]bool, len(dungeons)+len(intentionalOmissions))
	for id := range dungeons {
		excluded[id] = true
	}
	for id := range intentionalOmissions {
		excluded[id] = true
	}
	missingByChapter := map[string][]string{}
	for _, item := range chapters {
		present, err := chapterQuestIDs(absoluteRoot, item.file)
		if err != nil {
			fail(err)
		}
		html, err := fetch(item.url, *cache)
		if err != nil {
			fail(err)
		}
		summaries, err := zoneaudit.ParseZoneQuestSummaries(html)
		if err != nil {
			fail(fmt.Errorf("%s: %w", item.url, err))
		}
		label := item.file + " [" + filepath.Base(item.url) + fmt.Sprintf(", max %d", item.levelMax) + "]"
		missingByChapter[label] = zoneaudit.MissingQuestNames(summaries, present, excluded, item.levelMax)
	}
	paths := make([]string, 0, len(missingByChapter))
	for path := range missingByChapter {
		paths = append(paths, path)
	}
	sort.Strings(paths)
	anyMissing := false
	for _, path := range paths {
		items := missingByChapter[path]
		if len(items) == 0 {
			continue
		}
		anyMissing = true
		fmt.Printf("\n%s:\n", path)
		for _, item := range items {
			fmt.Printf("  - %s\n", item)
		}
	}
	if !anyMissing {
		fmt.Println("No missing zone quests in configured level bands.")
	}
}

func chapterQuestIDs(root, relative string) (map[int]bool, error) {
	path := filepath.Join(root, relative)
	text, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	faction := loremaster.GuideFaction(string(text))
	goals, err := loremaster.ParseGoals(root, string(text), "guide", relative, faction)
	if err != nil {
		return nil, fmt.Errorf("parse %s: %w", relative, err)
	}
	ids := map[int]bool{}
	for _, goal := range goals {
		if goal.QuestID > 0 {
			ids[goal.QuestID] = true
		}
	}
	return ids, nil
}

func dungeonQuestIDs(root string) (map[int]bool, error) {
	files, err := filepath.Glob(filepath.Join(root, "Guides", "Dungeons", "*.lua"))
	if err != nil {
		return nil, err
	}
	ids := map[int]bool{}
	for _, path := range files {
		text, err := os.ReadFile(path)
		if err != nil {
			return nil, err
		}
		for _, match := range questCall.FindAllStringSubmatch(string(text), -1) {
			id, _ := strconv.Atoi(match[1])
			ids[id] = true
		}
	}
	return ids, nil
}

func fetch(url, cache string) (string, error) {
	if err := os.MkdirAll(cache, 0o755); err != nil {
		return "", err
	}
	name := regexp.MustCompile(`[^A-Za-z0-9._-]+`).ReplaceAllString(url, "_")
	if len(name) > 180 {
		name = name[:180]
	}
	path := filepath.Join(cache, name)
	if data, err := os.ReadFile(path); err == nil && len(data) > 0 {
		return string(data), nil
	}
	request, err := http.NewRequest(http.MethodGet, url, nil)
	if err != nil {
		return "", err
	}
	request.Header.Set("User-Agent", "ForeverGuideMate/loremaster")
	client := &http.Client{Timeout: 40 * time.Second}
	response, err := client.Do(request)
	if err != nil {
		return "", err
	}
	defer response.Body.Close()
	if response.StatusCode < 200 || response.StatusCode >= 300 {
		return "", fmt.Errorf("fetch %s: %s", url, response.Status)
	}
	data, err := io.ReadAll(response.Body)
	if err != nil {
		return "", err
	}
	if err := os.WriteFile(path, data, 0o644); err != nil {
		return "", err
	}
	return string(data), nil
}

func fail(err error) { fmt.Fprintln(os.Stderr, err); os.Exit(1) }
