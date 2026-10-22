package main

import (
	"fmt"
	"os"
	"path/filepath"

	"github.com/TylerAkins/forever-guide-mate/internal/addontools"
)

func main() {
	root, err := os.Getwd()
	if err == nil {
		root, err = filepath.Abs(root)
	}
	if err == nil {
		err = addontools.RunCompile(root, os.Args[1:], os.Stdout)
	}
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
