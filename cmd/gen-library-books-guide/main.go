package main

import (
	"flag"
	"fmt"
	"os"
	"path/filepath"

	"github.com/TylerAkins/forever-guide-mate/internal/librarybooks"
)

func main() {
	root := flag.String("root", ".", "repository root")
	_ = flag.CommandLine.Parse(os.Args[1:])
	absolute, err := filepath.Abs(*root)
	if err != nil {
		fail(err)
	}
	output, err := librarybooks.Generate()
	if err != nil {
		fail(err)
	}
	path := filepath.Join(absolute, "Guides", "Miscellaneous", "LibraryBooks.lua")
	if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
		fail(err)
	}
	if err := os.WriteFile(path, output, 0o644); err != nil {
		fail(err)
	}
	fmt.Printf("Wrote %s (40 books, 3 milestone tiers)\n", path)
}

func fail(err error) { fmt.Fprintln(os.Stderr, err); os.Exit(1) }
