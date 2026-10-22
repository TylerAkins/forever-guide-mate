package main

import (
	"flag"
	"fmt"
	"os"
	"path/filepath"
	"sort"
	"strings"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
	"github.com/TylerAkins/forever-guide-mate/internal/questaudit"
	"github.com/TylerAkins/forever-guide-mate/internal/questdb"
	"github.com/TylerAkins/forever-guide-mate/internal/questexport"
)

var guideRoots = []string{"Guides/Leveling", "Guides/Loremaster", "Guides/Class", "Guides/Dungeons"}
var dependencyCategories = map[string]bool{"missing-prerequisite": true, "extra-prerequisite": true, "prerequisite-mode": true, "missing-record": true}

func main() {
	flags := flag.NewFlagSet("audit-quest-paths", flag.ExitOnError)
	questieExport := flags.String("questie-export", "", "QuestieDB export (default .compiled/questiedb/export.json under --root)")
	depsOnly := flags.Bool("deps-only", false, "only report prerequisite and missing-record findings")
	root := flags.String("root", ".", "repository root")
	_ = flags.Parse(os.Args[1:])
	absolute, err := filepath.Abs(*root)
	if err != nil {
		fail(err)
	}
	if *questieExport == "" {
		*questieExport = filepath.Join(absolute, ".compiled", "questiedb", "export.json")
	}
	export, err := questexport.Load(*questieExport)
	if err != nil {
		fail(err)
	}
	records, err := questdb.LoadQuestRecords(export)
	if err != nil {
		fail(err)
	}
	goals, err := loadGoals(absolute)
	if err != nil {
		fail(err)
	}
	fmt.Printf("parsed %d guide steps\n", len(goals))
	registeredFile, err := os.ReadFile(filepath.Join(absolute, "QuestPrerequisites.lua"))
	if err != nil {
		fail(err)
	}
	registered := questaudit.ParseRegisteredPrerequisites(string(registeredFile))
	findings := questaudit.Audit(goals, records, registered)
	if *depsOnly {
		filtered := findings[:0]
		for _, finding := range findings {
			if dependencyCategories[finding.Category] {
				filtered = append(filtered, finding)
			}
		}
		findings = filtered
	}
	fmt.Print(questaudit.FormatReport(findings))
}

func loadGoals(root string) ([]loremaster.Goal, error) {
	goals := []loremaster.Goal{}
	for _, relative := range guideRoots {
		directory := filepath.Join(root, relative)
		entries, err := os.ReadDir(directory)
		if err != nil {
			return nil, err
		}
		names := []string{}
		for _, entry := range entries {
			if !entry.IsDir() && strings.HasSuffix(entry.Name(), ".lua") {
				names = append(names, entry.Name())
			}
		}
		sort.Strings(names)
		for _, name := range names {
			path := filepath.Join(directory, name)
			text, err := os.ReadFile(path)
			if err != nil {
				return nil, err
			}
			faction := loremaster.GuideFaction(string(text))
			rel, err := filepath.Rel(root, path)
			if err != nil {
				return nil, err
			}
			parsed, err := loremaster.ParseGoals(root, string(text), "guide", filepath.ToSlash(rel), faction)
			if err != nil {
				return nil, fmt.Errorf("parse %s: %w", rel, err)
			}
			for i := range parsed {
				if parsed[i].StepFaction == "" {
					parsed[i].StepFaction = faction
				}
			}
			goals = append(goals, parsed...)
		}
	}
	return goals, nil
}

func fail(err error) { fmt.Fprintln(os.Stderr, err); os.Exit(1) }
