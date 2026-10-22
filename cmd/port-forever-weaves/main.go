package main

import (
	"flag"
	"fmt"
	"os"
	"path/filepath"

	"github.com/TylerAkins/forever-guide-mate/internal/weaveport"
)

func main() {
	flags := flag.NewFlagSet("port-forever-weaves", flag.ExitOnError)
	oldDir := flags.String("old-dir", "/tmp/fgm-old-leveling", "previous Guides/Leveling directory")
	root := flags.String("root", ".", "repository root")
	_ = flags.Parse(os.Args[1:])
	absoluteRoot, err := filepath.Abs(*root)
	if err != nil {
		fail(err)
	}
	totals := map[string]int{}
	for _, sourceName := range weaveport.OrderedOldNames() {
		sourcePath := filepath.Join(*oldDir, sourceName+".lua")
		source, err := os.ReadFile(sourcePath)
		if os.IsNotExist(err) {
			continue
		}
		if err != nil {
			fail(err)
		}
		blocks, err := weaveport.ExtractWovenBlocks(string(source))
		if err != nil {
			fail(fmt.Errorf("extract %s: %w", sourcePath, err))
		}
		targetRelative := filepath.Join("Guides", "Leveling", weaveport.TargetName(sourceName))
		targetPath := filepath.Join(absoluteRoot, targetRelative)
		target, err := os.ReadFile(targetPath)
		if os.IsNotExist(err) || len(blocks) == 0 {
			continue
		}
		if err != nil {
			fail(err)
		}
		updated, count, err := weaveport.AppendWoven(string(target), blocks)
		if err != nil {
			fail(fmt.Errorf("%s -> %s: %w", sourceName, targetRelative, err))
		}
		if count == 0 {
			continue
		}
		if err := os.WriteFile(targetPath, []byte(updated), 0o644); err != nil {
			fail(err)
		}
		name := filepath.ToSlash(targetRelative)
		totals[name] += count
		fmt.Printf("%s -> %s: +%d woven steps\n", sourceName, name, count)
	}
	chapters, steps := len(totals), 0
	for _, count := range totals {
		steps += count
	}
	fmt.Printf("ported into %d guides, %d steps\n", chapters, steps)
}

func fail(err error) { fmt.Fprintln(os.Stderr, err); os.Exit(1) }
