package main

import "testing"

import (
	"os"
	"os/exec"
	"path/filepath"
	"reflect"
	"strings"
)

func TestCheckResults(t *testing.T) {
	valid := `{"plan":{"result":"success","outputs":{"go":"true","lua":"false","journeys":"false","package":"true"}},"go":{"result":"success"},"lua":{"result":"skipped"},"journeys":{"result":"skipped"},"package":{"result":"success"}}`
	if err := checkResults(valid); err != nil {
		t.Fatalf("valid selected checks rejected: %v", err)
	}
	invalid := `{"plan":{"result":"success","outputs":{"go":"true","lua":"false","journeys":"false","package":"true"}},"go":{"result":"success"},"lua":{"result":"failure"},"journeys":{"result":"skipped"},"package":{"result":"success"}}`
	if err := checkResults(invalid); err == nil {
		t.Fatal("failed selected check was accepted")
	}
	missing := `{"plan":{"result":"success","outputs":{"go":"true"}}}`
	if err := checkResults(missing); err == nil {
		t.Fatal("missing check selections were accepted")
	}
}

func TestFlagsAfterPositionalPathsArePreserved(t *testing.T) {
	got := flagsBeforePaths([]string{"--paths", "README.md", "Guides/Leveling/mulgore.lua", "--output", "checks.out"})
	want := []string{"--paths", "README.md", "--output", "checks.out", "Guides/Leveling/mulgore.lua"}
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("flag order = %v, want %v", got, want)
	}
}

func TestChangedPathsIncludesBothSidesOfRename(t *testing.T) {
	root := t.TempDir()
	runGit := func(args ...string) string {
		t.Helper()
		cmd := exec.Command("git", args...)
		cmd.Dir = root
		if output, err := cmd.CombinedOutput(); err != nil {
			t.Fatalf("git %v: %v\n%s", args, err, output)
		} else {
			return string(output)
		}
		return ""
	}
	runGit("init", "-q")
	runGit("config", "user.name", "Fixture")
	runGit("config", "user.email", "fixture@example.invalid")
	old := filepath.Join(root, "old.txt")
	if err := os.WriteFile(old, []byte("before\n"), 0644); err != nil {
		t.Fatal(err)
	}
	runGit("add", "old.txt")
	runGit("commit", "-qm", "base")
	base := strings.TrimSpace(runGit("rev-parse", "HEAD"))
	if err := os.Rename(old, filepath.Join(root, "new.txt")); err != nil {
		t.Fatal(err)
	}
	runGit("add", "-A")
	runGit("commit", "-qm", "rename")
	head := strings.TrimSpace(runGit("rev-parse", "HEAD"))
	previous, err := os.Getwd()
	if err != nil {
		t.Fatal(err)
	}
	if err := os.Chdir(root); err != nil {
		t.Fatal(err)
	}
	t.Cleanup(func() {
		if err := os.Chdir(previous); err != nil {
			t.Errorf("restore working directory: %v", err)
		}
	})
	paths, err := changedPaths(base, head)
	if err != nil {
		t.Fatal(err)
	}
	if !reflect.DeepEqual(paths, []string{"new.txt", "old.txt"}) {
		t.Fatalf("changed paths = %v", paths)
	}
}
