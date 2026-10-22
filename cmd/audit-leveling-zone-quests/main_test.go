package main

import (
	"net/http"
	"net/http/httptest"
	"os"
	"path/filepath"
	"testing"
)

func TestFetchCachesAndUsesExpectedUserAgent(t *testing.T) {
	requests := 0
	server := httptest.NewServer(http.HandlerFunc(func(writer http.ResponseWriter, request *http.Request) {
		requests++
		if request.UserAgent() != "ForeverGuideMate/loremaster" {
			t.Errorf("User-Agent = %q", request.UserAgent())
		}
		_, _ = writer.Write([]byte("page"))
	}))
	cache := t.TempDir()
	got, err := fetch(server.URL, cache)
	if err != nil || got != "page" {
		t.Fatalf("fetch() = %q, %v", got, err)
	}
	server.Close()
	got, err = fetch(server.URL, cache)
	if err != nil || got != "page" || requests != 1 {
		t.Fatalf("cached fetch() = %q, %v, requests=%d", got, err, requests)
	}
}

func TestChapterQuestIDsReadGuideCompletions(t *testing.T) {
	root := t.TempDir()
	if err := os.WriteFile(filepath.Join(root, "ClassChains.lua"), []byte("return {}\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	guidePath := filepath.Join(root, "zone.lua")
	guide := `ns:RegisterGuide({ goals = {
  { id = "accept", kind = "accept", complete = QuestState(123, "activeOrCompleted") },
  { id = "step", kind = "objective", complete = { questObjective = { id = 456, index = 1 } } },
} })`
	if err := os.WriteFile(guidePath, []byte(guide), 0o644); err != nil {
		t.Fatal(err)
	}
	ids, err := chapterQuestIDs(root, "zone.lua")
	if err != nil {
		t.Fatal(err)
	}
	if !ids[123] || !ids[456] || len(ids) != 2 {
		t.Fatalf("chapterQuestIDs() = %v", ids)
	}
}

func TestConfiguredChaptersHaveLocalGuides(t *testing.T) {
	root, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	if len(chapters) != 31 {
		t.Fatalf("configured chapter count = %d, want 31", len(chapters))
	}
	for _, item := range chapters {
		if _, err := os.Stat(filepath.Join(root, item.file)); err != nil {
			t.Errorf("configured chapter %s: %v", item.file, err)
		}
	}
}
