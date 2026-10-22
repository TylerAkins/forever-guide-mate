package main

import (
	"flag"
	"fmt"
	"os"
	"path/filepath"

	"github.com/TylerAkins/forever-guide-mate/internal/release"
)

func run(args []string) error {
	if len(args) == 0 {
		return fmt.Errorf("expected validate, validate-notes, or validate-tag")
	}
	switch args[0] {
	case "validate":
		flags := flag.NewFlagSet("validate", flag.ContinueOnError)
		previous := flags.String("previous-version", "", "previous stable version")
		current := flags.String("current-version", "", "current stable version")
		changed := flags.Bool("release-content-changed", false, "release content changed")
		root := flags.String("root", ".", "repository root")
		if err := flags.Parse(args[1:]); err != nil {
			return err
		}
		tag, err := release.PlanAutomatedRelease(*previous, *current, *changed)
		if err != nil {
			return err
		}
		if tag != "" {
			notes, err := os.ReadFile(filepath.Join(*root, "RELEASE_NOTES.md"))
			if err != nil {
				return err
			}
			if err := release.ValidateNotes(string(notes), *current); err != nil {
				return err
			}
			fmt.Println(tag)
		}
	case "validate-notes":
		flags := flag.NewFlagSet("validate-notes", flag.ContinueOnError)
		version := flags.String("version", "", "release version")
		root := flags.String("root", ".", "repository root")
		if err := flags.Parse(args[1:]); err != nil {
			return err
		}
		notes, err := os.ReadFile(filepath.Join(*root, "RELEASE_NOTES.md"))
		if err != nil {
			return err
		}
		return release.ValidateNotes(string(notes), *version)
	case "validate-tag":
		flags := flag.NewFlagSet("validate-tag", flag.ContinueOnError)
		existing := flags.String("existing-sha", "", "existing tag commit SHA")
		target := flags.String("target-sha", "", "target commit SHA")
		if err := flags.Parse(args[1:]); err != nil {
			return err
		}
		result, err := release.PlanTag(*existing, *target)
		if err != nil {
			return err
		}
		fmt.Println(result)
	default:
		return fmt.Errorf("unknown command %q", args[0])
	}
	return nil
}

func main() {
	if err := run(os.Args[1:]); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
