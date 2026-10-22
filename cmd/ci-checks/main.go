package main

import (
	"encoding/json"
	"errors"
	"flag"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"strings"

	"github.com/TylerAkins/forever-guide-mate/internal/cichecks"
)

func changedPaths(base, head string) ([]string, error) {
	merge, err := exec.Command("git", "merge-base", base, head).Output()
	if err != nil {
		return nil, err
	}
	out, err := exec.Command("git", "diff", "--name-only", "--no-renames", "-z", strings.TrimSpace(string(merge)), head, "--").Output()
	if err != nil {
		return nil, err
	}
	var paths []string
	for _, path := range strings.Split(string(out), "\x00") {
		if path != "" {
			paths = append(paths, filepath.ToSlash(path))
		}
	}
	return paths, nil
}

func checkResults(raw string) error {
	var needs map[string]struct {
		Result  string            `json:"result"`
		Outputs map[string]string `json:"outputs"`
	}
	if err := json.Unmarshal([]byte(raw), &needs); err != nil {
		return err
	}
	if needs["plan"].Result != "success" {
		return errors.New("CI selection or release validation did not succeed")
	}
	selected := needs["plan"].Outputs
	for _, name := range cichecks.CheckNames() {
		flag := selected[name]
		if flag != "true" && flag != "false" {
			return fmt.Errorf("missing or invalid selection for %s: %q", name, flag)
		}
		result := needs[name].Result
		if flag == "true" && result != "success" || flag == "false" && result != "success" && result != "skipped" {
			return fmt.Errorf("%s: unexpected result %q", name, result)
		}
	}
	return nil
}

func flagsBeforePaths(args []string) []string {
	flags, paths := []string{}, []string{}
	for i := 0; i < len(args); i++ {
		arg := args[i]
		if strings.HasPrefix(arg, "--") {
			switch arg {
			case "--full", "--check-results":
				flags = append(flags, arg)
			case "--paths", "--base", "--head", "--output":
				flags = append(flags, arg)
				if i+1 < len(args) {
					i++
					flags = append(flags, args[i])
				}
			default:
				flags = append(flags, arg)
			}
		} else {
			paths = append(paths, arg)
		}
	}
	return append(flags, paths...)
}

func run() error {
	full := flag.Bool("full", false, "select all checks")
	pathsFlag := flag.String("paths", "", "comma-separated changed paths")
	base := flag.String("base", "", "base git revision")
	head := flag.String("head", "HEAD", "head git revision")
	output := flag.String("output", "", "append workflow outputs to file")
	results := flag.Bool("check-results", false, "validate NEEDS_JSON")
	if err := flag.CommandLine.Parse(flagsBeforePaths(os.Args[1:])); err != nil {
		return err
	}
	if *results {
		if err := checkResults(os.Getenv("NEEDS_JSON")); err != nil {
			return err
		}
		fmt.Println("All selected CI checks and release validation passed.")
		return nil
	}
	if *base != "" && *pathsFlag != "" {
		return errors.New("choose --base or --paths, not both")
	}
	paths := []string{}
	if *base != "" && !*full {
		if len(flag.Args()) != 0 {
			return errors.New("choose --base or --paths, not both")
		}
		var err error
		paths, err = changedPaths(*base, *head)
		if err != nil {
			return err
		}
	} else if *pathsFlag != "" {
		paths = strings.Split(*pathsFlag, ",")
		paths = append(paths, flag.Args()...)
	} else if len(flag.Args()) != 0 {
		return errors.New("paths must follow --paths")
	}
	selected := cichecks.SelectChecks(paths, *full)
	encoded, err := json.MarshalIndent(map[string]any{"paths": paths, "checks": selected}, "", "  ")
	if err != nil {
		return err
	}
	fmt.Println(string(encoded))
	var outputs strings.Builder
	for _, name := range cichecks.CheckNames() {
		fmt.Fprintf(&outputs, "%s=%t\n", name, selected[name])
	}
	if *output != "" {
		file, err := os.OpenFile(*output, os.O_APPEND|os.O_WRONLY|os.O_CREATE, 0644)
		if err != nil {
			return err
		}
		defer file.Close()
		if _, err := file.WriteString(outputs.String()); err != nil {
			return err
		}
	}
	if summary := os.Getenv("GITHUB_STEP_SUMMARY"); summary != "" {
		file, err := os.OpenFile(summary, os.O_APPEND|os.O_WRONLY|os.O_CREATE, 0644)
		if err != nil {
			return err
		}
		defer file.Close()
		fmt.Fprintln(file, "## Selected CI checks")
		fmt.Fprintln(file)
		for _, name := range cichecks.CheckNames() {
			state := "skip"
			if selected[name] {
				state = "run"
			}
			fmt.Fprintf(file, "- %s: %s\n", name, state)
		}
		fmt.Fprintln(file, "\nRelease notes and applicable release intent are always validated.")
	}
	return nil
}

func main() {
	if err := run(); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
