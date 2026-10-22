package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"os"

	"github.com/TylerAkins/forever-guide-mate/internal/questdb"
	"github.com/TylerAkins/forever-guide-mate/internal/questexport"
)

func main() {
	flags := flag.NewFlagSet("quest-database", flag.ExitOnError)
	questieExport := flags.String("questie-export", ".compiled/questiedb/export.json", "QuestieDB export from tools/questiedb/export_artifact.lua")
	minLevels := flags.Bool("min-levels", false, "report computed pickup and offer levels")
	_ = flags.Parse(os.Args[1:])
	export, err := questexport.Load(*questieExport)
	if err != nil {
		fail(err)
	}
	records, err := questdb.LoadQuestRecords(export)
	if err != nil {
		fail(err)
	}
	if *minLevels {
		levels := make(map[int]questdb.LevelPair, len(records))
		for id, record := range records {
			step, offer := questdb.RecordLevels(record)
			if step > 0 {
				if offer == 0 {
					offer = step
				}
				levels[id] = questdb.LevelPair{Step: step, Offer: offer}
			} else if offer > 0 {
				levels[id] = questdb.LevelPair{Step: offer, Offer: offer}
			}
		}
		encode(levels)
		return
	}
	encode(records)
}

func encode(value any) {
	encoder := json.NewEncoder(os.Stdout)
	encoder.SetEscapeHTML(false)
	if err := encoder.Encode(value); err != nil {
		fail(err)
	}
}
func fail(err error) { fmt.Fprintln(os.Stderr, err); os.Exit(1) }
