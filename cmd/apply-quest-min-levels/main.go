package main

import (
	"flag"
	"fmt"
	"os"
	"path/filepath"
	"regexp"
	"sort"
	"strings"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
	"github.com/TylerAkins/forever-guide-mate/internal/questdb"
)

var guideRoots = []string{"Guides/Leveling", "Guides/Loremaster", "Guides/Dungeons", "Guides/Class"}
var orderedRoute = regexp.MustCompile(`\brouteMode\s*=\s*("ordered"|'ordered')`)

type guideFile struct {
	path  string
	text  string
	goals []loremaster.Goal
}

func main() {
	flags := flag.NewFlagSet("apply-quest-min-levels", flag.ExitOnError)
	database := flags.String("database", "../wow-database", "wow-database checkout")
	index := flags.String("index", "", "explicit raw quest index")
	root := flags.String("root", ".", "repository root")
	write := flags.Bool("write", false, "write changes to legacy guides; ordered guides are always rejected")
	_ = flags.Parse(os.Args[1:])

	absoluteRoot, err := filepath.Abs(*root)
	if err != nil {
		fail(err)
	}
	absoluteDatabase, err := filepath.Abs(*database)
	if err != nil {
		fail(err)
	}
	levels, err := questdb.LoadMinLevels(*index, absoluteDatabase)
	if err != nil {
		fail(err)
	}
	used, missing, updated, err := applyGuides(absoluteRoot, levels, *write)
	if err != nil {
		fail(err)
	}
	for _, path := range updated {
		fmt.Printf("%s %s\n", map[bool]string{true: "Wrote", false: "Would update"}[*write], path)
	}
	fmt.Printf("Checked %d quests. Test expectations were not modified.\n", len(used))
	for _, line := range missing {
		fmt.Printf("Review: %s\n", line)
	}
}

func applyGuides(root string, levels map[int]questdb.LevelPair, write bool) (map[int]int, []string, []string, error) {
	files := []guideFile{}
	for _, relative := range guideRoots {
		directory := filepath.Join(root, relative)
		entries, err := os.ReadDir(directory)
		if os.IsNotExist(err) {
			continue
		}
		if err != nil {
			return nil, nil, nil, err
		}
		for _, entry := range entries {
			if entry.IsDir() || filepath.Ext(entry.Name()) != ".lua" {
				continue
			}
			path := filepath.Join(directory, entry.Name())
			text, err := os.ReadFile(path)
			if err != nil {
				return nil, nil, nil, err
			}
			files = append(files, guideFile{path: path, text: string(text)})
		}
	}
	sort.Slice(files, func(i, j int) bool { return files[i].path < files[j].path })

	ordered := []string{}
	for _, file := range files {
		if write && orderedRoute.MatchString(file.text) {
			relative, _ := filepath.Rel(root, file.path)
			ordered = append(ordered, filepath.ToSlash(relative))
		}
	}
	if len(ordered) > 0 {
		return nil, nil, nil, fmt.Errorf("cannot bulk-stamp ordered guides; edit their itinerary explicitly: %s", strings.Join(ordered, ", "))
	}

	used := map[int]int{}
	missing := []string{}
	updated := []string{}
	for i := range files {
		file := &files[i]
		relative, _ := filepath.Rel(root, file.path)
		faction := loremaster.GuideFaction(file.text)
		goals, err := loremaster.ParseGoals(root, file.text, "guide", filepath.ToSlash(relative), faction)
		if err != nil {
			return nil, nil, nil, fmt.Errorf("parse %s: %w", relative, err)
		}
		changed := false
		for j := range goals {
			goal := &goals[j]
			if goal.QuestID == 0 {
				continue
			}
			pair, exists := levels[goal.QuestID]
			level := pair.Step
			if strings.HasPrefix(filepath.ToSlash(relative), "Guides/Dungeons/") {
				level = pair.Offer
			}
			if !exists || level <= 0 {
				missing = append(missing, fmt.Sprintf("%s %s quest %d", filepath.ToSlash(relative), goal.ID, goal.QuestID))
				continue
			}
			if previous, exists := used[goal.QuestID]; exists && previous != level {
				missing = append(missing, fmt.Sprintf("%s %s quest %d level %d disagrees with %d", filepath.ToSlash(relative), goal.ID, goal.QuestID, level, previous))
			}
			used[goal.QuestID] = level
			updatedRaw := loremaster.ApplyLevelGate(goal.Raw, level)
			if updatedRaw != goal.Raw {
				goal.Raw = updatedRaw
				changed = true
			}
		}
		if !changed {
			continue
		}
		updated = append(updated, filepath.ToSlash(relative))
		if write {
			rendered := make([]string, len(goals))
			for j := range goals {
				rendered[j] = goals[j].Raw
			}
			output, err := loremaster.ReplaceGoals(file.text, strings.Join(rendered, ",\n        "))
			if err != nil {
				return nil, nil, nil, fmt.Errorf("replace goals in %s: %w", relative, err)
			}
			if err := os.WriteFile(file.path, []byte(output), 0o644); err != nil {
				return nil, nil, nil, err
			}
		}
	}
	sort.Strings(missing)
	return used, missing, updated, nil
}

func fail(err error) { fmt.Fprintln(os.Stderr, err); os.Exit(1) }
