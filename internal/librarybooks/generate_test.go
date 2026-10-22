package librarybooks

import (
	"bytes"
	"os"
	"path/filepath"
	"testing"
)

func TestGenerateMatchesCheckedInGuide(t *testing.T) {
	got, err := Generate()
	if err != nil {
		t.Fatal(err)
	}
	root, err := filepath.Abs(filepath.Join("..", ".."))
	if err != nil {
		t.Fatal(err)
	}
	want, err := os.ReadFile(filepath.Join(root, "Guides", "Miscellaneous", "LibraryBooks.lua"))
	if err != nil {
		t.Fatal(err)
	}
	if !bytes.Equal(got, want) {
		for i := 0; i < len(got) && i < len(want); i++ {
			if got[i] != want[i] {
				t.Fatalf("generated guide differs at byte %d: got %q, want %q", i, got[i:i+1], want[i:i+1])
			}
		}
		t.Fatalf("generated length %d differs from tracked length %d", len(got), len(want))
	}
}
