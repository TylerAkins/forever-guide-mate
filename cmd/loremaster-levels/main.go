package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"os"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
)

func main() {
	flags := flag.NewFlagSet("loremaster-levels", flag.ExitOnError)
	operation := flags.String("op", "", "operation: record, recommended, or set-min")
	_ = flags.Parse(os.Args[1:])
	decoder := json.NewDecoder(os.Stdin)
	decoder.UseNumber()
	switch *operation {
	case "record":
		var record map[string]any
		if err := decoder.Decode(&record); err != nil {
			fail(err)
		}
		encode(map[string]int{"step": loremaster.StepLevel(record), "offer": loremaster.OfferLevel(record)})
	case "recommended":
		var input struct {
			Summary map[string]any `json:"summary"`
			Meta    map[string]any `json:"meta"`
			HTML    string         `json:"html"`
		}
		if err := decoder.Decode(&input); err != nil {
			fail(err)
		}
		encode(loremaster.RecommendedLevel(input.Summary, input.Meta, input.HTML))
	case "set-min":
		var input struct {
			Raw   string `json:"raw"`
			Level int    `json:"level"`
		}
		if err := decoder.Decode(&input); err != nil {
			fail(err)
		}
		encode(loremaster.SetMinLevel(input.Raw, input.Level))
	case "apply-gate":
		var input struct {
			Raw   string `json:"raw"`
			Level int    `json:"level"`
		}
		if err := decoder.Decode(&input); err != nil {
			fail(err)
		}
		encode(loremaster.ApplyLevelGate(input.Raw, input.Level))
	case "fit-priorities":
		var input struct {
			Goals []loremaster.Goal `json:"goals"`
			Moved []int             `json:"moved_ids"`
		}
		if err := decoder.Decode(&input); err != nil {
			fail(err)
		}
		moved := map[int]bool{}
		for _, id := range input.Moved {
			moved[id] = true
		}
		loremaster.FitPriorities(input.Goals, moved)
		encode(input.Goals)
	case "place-woven":
		var input struct {
			Goals   []loremaster.Goal `json:"goals"`
			Woven   []int             `json:"woven_ids"`
			Levels  map[int]int       `json:"levels"`
			Ceiling int               `json:"ceiling"`
		}
		if err := decoder.Decode(&input); err != nil {
			fail(err)
		}
		woven := map[int]bool{}
		for _, id := range input.Woven {
			woven[id] = true
		}
		encode(loremaster.PlaceWoven(input.Goals, woven, input.Levels, input.Ceiling))
	default:
		fail(fmt.Errorf("unknown operation %q", *operation))
	}
}

func encode(value any) {
	encoder := json.NewEncoder(os.Stdout)
	encoder.SetEscapeHTML(false)
	if err := encoder.Encode(value); err != nil {
		fail(err)
	}
}
func fail(err error) { fmt.Fprintln(os.Stderr, err); os.Exit(1) }
