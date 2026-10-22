package main

import (
	"bufio"
	"encoding/json"
	"flag"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"strings"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
)

func main() {
	flags := flag.NewFlagSet("loremaster-parse", flag.ExitOnError)
	root := flags.String("root", ".", "repository root")
	origin := flags.String("origin", "", "goal origin")
	source := flags.String("source-file", "", "source filename")
	faction := flags.String("faction", "", "default faction")
	serve := flags.Bool("serve", false, "serve newline-delimited parser operations")
	_ = flags.Parse(os.Args[1:])
	if *serve {
		serveRequests()
		return
	}
	text, err := io.ReadAll(os.Stdin)
	if err != nil {
		fail(err)
	}
	absolute, err := filepath.Abs(*root)
	if err != nil {
		fail(err)
	}
	goals, err := loremaster.ParseGoals(absolute, string(text), *origin, *source, *faction)
	if err != nil {
		fail(err)
	}
	encoder := json.NewEncoder(os.Stdout)
	encoder.SetEscapeHTML(false)
	if err := encoder.Encode(goals); err != nil {
		fail(err)
	}
}

func serveRequests() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Buffer(make([]byte, 4096), 32*1024*1024)
	writer := bufio.NewWriter(os.Stdout)
	defer writer.Flush()
	for scanner.Scan() {
		var request struct {
			Operation string `json:"operation"`
			Root      string `json:"root"`
			Text      string `json:"text"`
			Origin    string `json:"origin"`
			Source    string `json:"source_file"`
			Faction   string `json:"faction"`
			Raw       string `json:"raw"`
			Key       string `json:"key"`
			Rendered  string `json:"rendered"`
			Value     string `json:"value"`
		}
		decoder := json.NewDecoder(strings.NewReader(scanner.Text()))
		response := map[string]any{}
		if err := decoder.Decode(&request); err != nil {
			response["error"] = err.Error()
		} else {
			switch request.Operation {
			case "parse":
				root := request.Root
				if root == "" {
					root = "."
				}
				absolute, err := filepath.Abs(root)
				if err == nil {
					var goals any
					goals, err = loremaster.ParseGoals(absolute, request.Text, request.Origin, request.Source, request.Faction)
					response["value"] = goals
				}
				if err != nil {
					response["error"] = err.Error()
				}
			case "field":
				value, err := loremaster.GoalField(request.Raw, request.Key)
				if err != nil {
					response["error"] = err.Error()
				} else {
					response["value"] = value
				}
			case "replace":
				value, err := loremaster.ReplaceGoals(request.Text, request.Rendered)
				if err != nil {
					response["error"] = err.Error()
				} else {
					response["value"] = value
				}
			case "slug":
				response["value"] = loremaster.Slug(request.Value)
			case "zone-map":
				response["value"] = loremaster.ZoneUIMap()
			default:
				response["error"] = "unknown parser operation " + request.Operation
			}
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
