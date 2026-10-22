package main

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/TylerAkins/forever-guide-mate/internal/questdb"
)

const stampingGuide = `local _, ns = ...
ns:RegisterGuide({
    goals = {
        {
            id = "combat",
            kind = "objective",
            text = "Fight",
            conditions = { all = { { level = { min = 10 } } } },
            complete = { quest = { id = 95981, state = "complete" } },
        },
    },
})
`

func setupStampingRoot(t *testing.T) string {
	t.Helper()
	root := t.TempDir()
	if err := os.WriteFile(filepath.Join(root, "ClassChains.lua"), []byte("return {}\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	path := filepath.Join(root, "Guides", "Leveling")
	if err := os.MkdirAll(path, 0o755); err != nil {
		t.Fatal(err)
	}
	return root
}

func TestApplyGuidesPreviewLeavesFileUnchanged(t *testing.T) {
	root := setupStampingRoot(t)
	path := filepath.Join(root, "Guides", "Leveling", "legacy.lua")
	if err := os.WriteFile(path, []byte(stampingGuide), 0o644); err != nil {
		t.Fatal(err)
	}
	used, missing, updated, err := applyGuides(root, map[int]questdb.LevelPair{95981: {Step: 20, Offer: 10}}, false)
	if err != nil {
		t.Fatal(err)
	}
	if used[95981] != 20 || len(missing) != 0 || len(updated) != 1 {
		t.Fatalf("applyGuides() = used %v, missing %v, updated %v", used, missing, updated)
	}
	content, err := os.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	if string(content) != stampingGuide {
		t.Fatal("preview changed guide contents")
	}
}

func TestApplyGuidesWritePreservesUnrelatedText(t *testing.T) {
	root := setupStampingRoot(t)
	path := filepath.Join(root, "Guides", "Leveling", "legacy.lua")
	original := "-- Keep this instruction.\n" + stampingGuide
	if err := os.WriteFile(path, []byte(original), 0o644); err != nil {
		t.Fatal(err)
	}
	_, _, _, err := applyGuides(root, map[int]questdb.LevelPair{95981: {Step: 20, Offer: 10}}, true)
	if err != nil {
		t.Fatal(err)
	}
	content, err := os.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	if !strings.HasPrefix(string(content), "-- Keep this instruction.\n") || !strings.Contains(string(content), "min = 20") {
		t.Fatalf("write did not preserve/update content: %s", content)
	}
}

func TestApplyGuidesRejectsAllOrderedFilesBeforeWriting(t *testing.T) {
	root := setupStampingRoot(t)
	legacyPath := filepath.Join(root, "Guides", "Leveling", "legacy.lua")
	orderedPath := filepath.Join(root, "Guides", "Leveling", "ordered.lua")
	ordered := strings.Replace(stampingGuide, "goals =", `routeMode = "ordered", goals =`, 1)
	for path, content := range map[string]string{legacyPath: stampingGuide, orderedPath: ordered} {
		if err := os.WriteFile(path, []byte(content), 0o644); err != nil {
			t.Fatal(err)
		}
	}
	_, _, _, err := applyGuides(root, map[int]questdb.LevelPair{95981: {Step: 20, Offer: 10}}, true)
	if err == nil || !strings.Contains(err.Error(), "ordered") {
		t.Fatalf("applyGuides() error = %v, want ordered-guide refusal", err)
	}
	content, err := os.ReadFile(legacyPath)
	if err != nil {
		t.Fatal(err)
	}
	if string(content) != stampingGuide {
		t.Fatal("legacy guide changed before ordered guide refusal")
	}
}

func TestApplyGuidesUsesOfferLevelForDungeonGuides(t *testing.T) {
	root := setupStampingRoot(t)
	path := filepath.Join(root, "Guides", "Dungeons")
	if err := os.MkdirAll(path, 0o755); err != nil {
		t.Fatal(err)
	}
	file := filepath.Join(path, "dungeon.lua")
	if err := os.WriteFile(file, []byte(stampingGuide), 0o644); err != nil {
		t.Fatal(err)
	}
	used, _, _, err := applyGuides(root, map[int]questdb.LevelPair{95981: {Step: 20, Offer: 10}}, true)
	if err != nil {
		t.Fatal(err)
	}
	content, err := os.ReadFile(file)
	if err != nil {
		t.Fatal(err)
	}
	if used[95981] != 10 || !strings.Contains(string(content), "min = 10") {
		t.Fatalf("dungeon offer level not used: used=%v content=%s", used, content)
	}
}
