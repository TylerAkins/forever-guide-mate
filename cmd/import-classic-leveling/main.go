package main

import (
	"flag"
	"fmt"
	"os"
	"path/filepath"

	"github.com/TylerAkins/forever-guide-mate/internal/itineraryimport"
)

func main() {
	home, err := os.UserHomeDir()
	if err != nil {
		fail(err)
	}
	flags := flag.NewFlagSet("import-classic-leveling", flag.ExitOnError)
	classicDir := flags.String("classic-dir", filepath.Join(home, "Downloads/classic-leveling-dump/Guides-Classic/Leveling"), "classic guide dump directory")
	root := flags.String("root", ".", "repository root")
	faction := flags.String("faction", "both", "Horde, Alliance, or both")
	dryRun := flags.Bool("dry-run", false, "list guides without writing")
	limit := flags.Int("limit", 0, "maximum guides per faction")
	_ = flags.Parse(os.Args[1:])
	if *faction != "Horde" && *faction != "Alliance" && *faction != "both" {
		fail(fmt.Errorf("--faction must be Horde, Alliance, or both"))
	}
	if *limit < 0 {
		fail(fmt.Errorf("--limit cannot be negative"))
	}
	absoluteRoot, err := filepath.Abs(*root)
	if err != nil {
		fail(err)
	}
	classicRoot, err := filepath.Abs(*classicDir)
	if err != nil {
		fail(err)
	}
	pairs := []struct{ faction, file string }{}
	if *faction == "Horde" || *faction == "both" {
		pairs = append(pairs, struct{ faction, file string }{"Horde", "LevelingHordeCLASSIC.lua"})
	}
	if *faction == "Alliance" || *faction == "both" {
		pairs = append(pairs, struct{ faction, file string }{"Alliance", "LevelingAllianceCLASSIC.lua"})
	}
	guides := []itineraryimport.ParsedGuide{}
	for _, pair := range pairs {
		path := filepath.Join(classicRoot, pair.file)
		parsed, err := itineraryimport.ExtractGuides(path, pair.faction)
		if err != nil {
			fmt.Fprintf(os.Stderr, "missing or invalid %s: %v\n", path, err)
			os.Exit(1)
		}
		if *limit > 0 && len(parsed) > *limit {
			parsed = parsed[:*limit]
		}
		fmt.Printf("%s: %d guides from %s\n", pair.faction, len(parsed), pair.file)
		guides = append(guides, parsed...)
	}
	out := filepath.Join(absoluteRoot, "Guides", "Leveling")
	paths, err := itineraryimport.WriteGuides(guides, out, *dryRun)
	if err != nil {
		fail(err)
	}
	for i, path := range paths {
		if *dryRun {
			fmt.Printf("DRY %s goals=%d starter=%t\n", path, len(guides[i].Goals), guides[i].Starter)
		} else {
			fmt.Printf("Wrote %s (%d goals)\n", path, len(guides[i].Goals))
		}
	}
}

func fail(err error) { fmt.Fprintln(os.Stderr, err); os.Exit(1) }
