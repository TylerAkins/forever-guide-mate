package main

import (
	"bufio"
	"encoding/json"
	"flag"
	"fmt"
	"os"
	"strconv"
	"strings"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
	"github.com/TylerAkins/forever-guide-mate/internal/questexport"
	"github.com/TylerAkins/forever-guide-mate/internal/questiepolicy"
)

func main() {
	flags := flag.NewFlagSet("loremaster-facts", flag.ExitOnError)
	questieExport := flags.String("questie-export", ".compiled/questiedb/export.json", "QuestieDB export from tools/questiedb/export_artifact.lua")
	questiePolicy := flags.String("questie-policy", ".compiled/questiedb/policy.json", "policy export from tools/questiedb/export_policy.lua")
	lua := flags.Bool("lua", false, "render the JSON value on stdin as a Lua table")
	availability := flags.Int("availability", 0, "build a possible prerequisite condition for a quest")
	buildActions := flags.Bool("build-actions", false, "build reviewed actions for one quest's source facts")
	serveActions := flags.Bool("serve-build-actions", false, "serve newline-delimited action requests")
	faction := flags.String("faction", "", "Alliance or Horde for the facts dump and --build-actions")
	_ = flags.Parse(os.Args[1:])
	if *serveActions {
		serveActionRequests()
		return
	}
	if *lua {
		var value any
		decoder := json.NewDecoder(os.Stdin)
		decoder.UseNumber()
		if err := decoder.Decode(&value); err != nil {
			fail(err)
		}
		rendered, err := loremaster.Lua(value, 0)
		if err != nil {
			fail(err)
		}
		fmt.Println(rendered)
		return
	}
	if *availability != 0 {
		var input struct {
			Facts    map[string]map[string]any `json:"facts"`
			Failures []int                     `json:"failures"`
			Visiting []int                     `json:"visiting"`
		}
		decoder := json.NewDecoder(os.Stdin)
		decoder.UseNumber()
		if err := decoder.Decode(&input); err != nil {
			fail(err)
		}
		facts := make(map[int]map[string]any, len(input.Facts))
		for key, fact := range input.Facts {
			id, err := strconv.Atoi(key)
			if err != nil {
				fail(fmt.Errorf("invalid quest id %q", key))
			}
			facts[id] = fact
		}
		encode(loremaster.PrerequisiteAvailability(*availability, facts, input.Failures, input.Visiting))
		return
	}
	if *buildActions {
		var facts map[string]any
		decoder := json.NewDecoder(os.Stdin)
		decoder.UseNumber()
		if err := decoder.Decode(&facts); err != nil {
			fail(err)
		}
		if *faction != "Alliance" && *faction != "Horde" {
			fail(fmt.Errorf("--faction must be Alliance or Horde"))
		}
		actions, err := loremaster.BuildAuthoringActions(facts, *faction)
		if err != nil {
			fail(err)
		}
		encode(actions)
		return
	}
	if *faction != "Alliance" && *faction != "Horde" {
		fail(fmt.Errorf("--faction must be Alliance or Horde"))
	}
	export, err := questexport.Load(*questieExport)
	if err != nil {
		fail(err)
	}
	policy, err := questiepolicy.Load(*questiePolicy)
	if err != nil {
		fail(err)
	}
	facts, err := loremaster.BuildQuestFacts(export, policy, *faction)
	if err != nil {
		fail(err)
	}
	encoder := json.NewEncoder(os.Stdout)
	encoder.SetIndent("", "  ")
	encoder.SetEscapeHTML(false)
	if err := encoder.Encode(facts); err != nil {
		fail(err)
	}
}

func serveActionRequests() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Buffer(make([]byte, 4096), 32*1024*1024)
	writer := bufio.NewWriter(os.Stdout)
	defer writer.Flush()
	for scanner.Scan() {
		var input struct {
			Facts   map[string]any `json:"facts"`
			Faction string         `json:"faction"`
		}
		decoder := json.NewDecoder(strings.NewReader(scanner.Text()))
		decoder.UseNumber()
		response := map[string]any{}
		if err := decoder.Decode(&input); err != nil {
			response["error"] = err.Error()
		} else if input.Faction != "Alliance" && input.Faction != "Horde" {
			response["error"] = "faction must be Alliance or Horde"
		} else if actions, err := loremaster.BuildAuthoringActions(input.Facts, input.Faction); err != nil {
			response["error"] = err.Error()
		} else {
			response["actions"] = actions
		}
		if err := json.NewEncoder(writer).Encode(response); err != nil {
			return
		}
		if err := writer.Flush(); err != nil {
			return
		}
	}
}

func fail(err error) { fmt.Fprintln(os.Stderr, err); os.Exit(1) }

func encode(value any) {
	encoder := json.NewEncoder(os.Stdout)
	encoder.SetEscapeHTML(false)
	if err := encoder.Encode(value); err != nil {
		fail(err)
	}
}
