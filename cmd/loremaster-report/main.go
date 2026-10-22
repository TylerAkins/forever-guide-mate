package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"os"
	"path/filepath"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
)

func main() {
	flags := flag.NewFlagSet("loremaster-report", flag.ExitOnError)
	root := flags.String("root", ".", "repository root")
	lua := flags.String("lua", "luajit", "LuaJIT executable")
	_ = flags.Parse(os.Args[1:])
	absRoot, err := filepath.Abs(*root)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
	report, err := loremaster.BuildReport(absRoot, *lua)
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
	encoder := json.NewEncoder(os.Stdout)
	encoder.SetIndent("", "  ")
	encoder.SetEscapeHTML(false)
	if err := encoder.Encode(report); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
