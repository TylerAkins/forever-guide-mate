package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"io"
	"os"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
)

func main() {
	flags := flag.NewFlagSet("loremaster-order", flag.ExitOnError)
	parse := flags.Bool("parse", false, "parse upstream action lines from stdin")
	faction := flags.String("faction", "", "action faction")
	source := flags.String("source", "", "upstream source filename")
	_ = flags.Parse(os.Args[1:])
	if *parse {
		text, err := io.ReadAll(os.Stdin)
		if err != nil {
			fail(err)
		}
		encode(loremaster.ParseUpstream(string(text), *faction, *source))
		return
	}
	var input struct {
		Spine        []string            `json:"spine"`
		Extras       []string            `json:"extras"`
		Upstream     []string            `json:"upstream"`
		Predecessors map[string][]string `json:"predecessors"`
	}
	if err := json.NewDecoder(os.Stdin).Decode(&input); err != nil {
		fail(err)
	}
	result, err := loremaster.Weave(input.Spine, input.Extras, input.Upstream, input.Predecessors)
	if err != nil {
		fail(err)
	}
	encode(result)
}

func encode(value any) {
	encoder := json.NewEncoder(os.Stdout)
	encoder.SetEscapeHTML(false)
	if err := encoder.Encode(value); err != nil {
		fail(err)
	}
}
func fail(err error) { fmt.Fprintln(os.Stderr, err); os.Exit(1) }
