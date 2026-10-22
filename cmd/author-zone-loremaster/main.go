// Command author-zone-loremaster prepares one ordered zone itinerary and its
// evidence for review.
//
// It is an authoring tool, not an upstream guide importer. It preserves
// existing route actions, reads quest facts from original Forever
// observations, and records unsupported candidates rather than inventing
// missing mechanics. Review its output and run the repository checks before
// committing each zone.
package main

import (
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"

	"github.com/TylerAkins/forever-guide-mate/internal/zoneauthoring"
)

// inventory is the zone candidate list read from the repository.
type inventory struct {
	Zones []zoneauthoring.ZoneSpec `json:"zones"`
}

func run(args []string) error {
	flags := flag.NewFlagSet("author-zone-loremaster", flag.ContinueOnError)
	root := flags.String("root", ".", "repository root")
	database := flags.String("database", "", "wow-database checkout (default ../wow-database)")
	upstream := flags.String("upstream", "", "clean Zygor Guides Remaster checkout at the pinned revision")
	lua := flags.String("lua", "luajit", "Lua interpreter used to export the guide snapshot")
	write := flags.Bool("write", false, "write the one zone candidate for review")
	rest, err := parseInterleaved(flags, args)
	if err != nil {
		return err
	}
	if len(rest) == 0 {
		return errors.New("expected a zone slug")
	}
	if len(rest) > 1 {
		return fmt.Errorf("expected one zone slug, found %d", len(rest))
	}
	if *upstream == "" {
		return errors.New("--upstream is required")
	}
	if *database == "" {
		*database = filepath.Join(*root, "..", "wow-database")
	}

	spec, err := loadSpec(*root, rest[0])
	if err != nil {
		return err
	}
	snapshot, err := loadSnapshot(*root, *lua)
	if err != nil {
		return err
	}

	env := zoneauthoring.Environment{
		Root:     *root,
		Database: *database,
		Upstream: *upstream,
		Snapshot: snapshot,
		UpstreamRevision: func() (string, error) {
			return zoneauthoring.UpstreamRevision(*upstream)
		},
		VerifyUpstream: func() error {
			return zoneauthoring.VerifyUpstreamClean(*upstream)
		},
		DatabaseRevision: func() (string, error) {
			return zoneauthoring.DatabaseRevision(*database)
		},
	}
	text, audit, err := zoneauthoring.Prepare(spec, env)
	if err != nil {
		return err
	}

	fmt.Println(spec.Zone, statusCounts(audit))
	if !*write {
		return nil
	}
	if text != "" {
		guidePath := filepath.Join(*root, filepath.FromSlash(spec.File))
		if err := os.MkdirAll(filepath.Dir(guidePath), 0o755); err != nil {
			return err
		}
		if err := os.WriteFile(guidePath, []byte(text), 0o644); err != nil {
			return err
		}
	}
	auditPath := filepath.Join(*root, "docs", "loremaster", spec.Slug+".json")
	if err := os.MkdirAll(filepath.Dir(auditPath), 0o755); err != nil {
		return err
	}
	return writeAudit(auditPath, audit)
}

// parseInterleaved accepts flags before and after positional arguments, as
// the command documents them, and returns the positional arguments.
func parseInterleaved(flags *flag.FlagSet, args []string) ([]string, error) {
	positional := []string{}
	for {
		if err := flags.Parse(args); err != nil {
			return nil, err
		}
		if flags.NArg() == 0 {
			return positional, nil
		}
		positional = append(positional, flags.Arg(0))
		args = flags.Args()[1:]
	}
}

// loadSpec finds the zone candidate in the repository inventory.
func loadSpec(root, slug string) (zoneauthoring.ZoneSpec, error) {
	data, err := os.ReadFile(filepath.Join(root, "docs", "loremaster-zones.json"))
	if err != nil {
		return zoneauthoring.ZoneSpec{}, err
	}
	list := inventory{}
	if err := json.Unmarshal(data, &list); err != nil {
		return zoneauthoring.ZoneSpec{}, err
	}
	for _, zone := range list.Zones {
		if zone.Slug == slug {
			return zone, nil
		}
	}
	return zoneauthoring.ZoneSpec{}, fmt.Errorf("zone %q is not in the zone inventory", slug)
}

// loadSnapshot exports the registered guide and prerequisite state.
func loadSnapshot(root, lua string) (zoneauthoring.Snapshot, error) {
	command := exec.Command(lua, "tools/export_loremaster.lua")
	command.Dir = root
	output, err := command.Output()
	if err != nil {
		return zoneauthoring.Snapshot{}, err
	}
	return zoneauthoring.LoadSnapshot(output)
}

// statusCounts summarizes the recorded quest dispositions.
func statusCounts(audit *zoneauthoring.Audit) map[string]int {
	counts := map[string]int{}
	quests := audit.Ordered("quests")
	if quests == nil {
		return counts
	}
	for _, key := range quests.Keys() {
		entry := quests.Ordered(key)
		if entry == nil {
			continue
		}
		status, _ := entry.Value("status").(string)
		counts[status]++
	}
	return counts
}

// writeAudit records the zone evidence as indented JSON.
func writeAudit(path string, audit *zoneauthoring.Audit) error {
	file, err := os.Create(path)
	if err != nil {
		return err
	}
	defer file.Close()
	encoder := json.NewEncoder(file)
	encoder.SetEscapeHTML(false)
	encoder.SetIndent("", "  ")
	if err := encoder.Encode(audit); err != nil {
		return err
	}
	return file.Close()
}

func main() {
	if err := run(os.Args[1:]); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
