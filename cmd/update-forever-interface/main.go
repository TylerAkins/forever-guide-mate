package main

import (
	"flag"
	"fmt"
	"os"
	"path/filepath"

	"github.com/TylerAkins/forever-guide-mate/internal/foreverupdate"
)

func run(args []string) error {
	flags := flag.NewFlagSet("update-forever-interface", flag.ContinueOnError)
	versionsFile := flags.String("versions-file", "", "saved Blizzard feed file")
	root := flags.String("root", ".", "repository root")
	date := flags.String("date", "", "release date in YYYY-MM-DD form")
	dry := flags.Bool("dry-run", false, "report without writing release files")
	if err := flags.Parse(args); err != nil {
		return err
	}
	var feed string
	var err error
	if *versionsFile != "" {
		data, e := os.ReadFile(*versionsFile)
		if e != nil {
			return e
		}
		feed = string(data)
	} else {
		feed, err = foreverupdate.FetchVersions(foreverupdate.VersionsURL)
		if err != nil {
			return err
		}
	}
	build, err := foreverupdate.ParseVersions(feed, "us")
	if err != nil {
		return err
	}
	absRoot, err := filepath.Abs(*root)
	if err != nil {
		return err
	}
	result, err := foreverupdate.PrepareUpdate(absRoot, build, *date, *dry)
	if err != nil {
		return err
	}
	if result.Changed {
		action := "Prepared"
		if *dry {
			action = "Would prepare"
		}
		fmt.Printf("%s v%s for game build %s (Interface %d)\n", action, result.AddonVersion, build.Version, build.Interface)
	} else {
		fmt.Printf("Interface %d is already supported; no update needed\n", build.Interface)
	}
	return nil
}

func main() {
	if err := run(os.Args[1:]); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
