package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"os"
	"path/filepath"

	"github.com/TylerAkins/forever-guide-mate/internal/questdb"
)

func main() {
	flags := flag.NewFlagSet("quest-database", flag.ExitOnError)
	database := flags.String("database", "../wow-database", "wow-database checkout")
	index := flags.String("index", "", "explicit raw quest index")
	normalize := flags.Bool("normalize-export", false, "normalize one export quest read from stdin")
	minLevels := flags.Bool("min-levels", false, "report computed pickup and offer levels")
	_ = flags.Parse(os.Args[1:])
	if *normalize {
		var quest map[string]any
		decoder := json.NewDecoder(os.Stdin)
		decoder.UseNumber()
		if err := decoder.Decode(&quest); err != nil {
			fail(err)
		}
		record, err := questdb.NormalizeExportQuest(quest)
		if err != nil {
			fail(err)
		}
		encode(record)
		return
	}
	root, err := filepath.Abs(*database)
	if err != nil {
		fail(err)
	}
	records, err := questdb.LoadQuestRecords(root, *index)
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
