package questdb

import (
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"runtime"
	"sort"
	"strconv"
	"strings"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
)

const ForeverPatch = 16001

type LevelPair struct {
	Step  int `json:"step"`
	Offer int `json:"offer"`
}

var exportFields = []string{"name", "questLevel", "requiredLevel", "preQuestGroup", "preQuestSingle", "exclusiveTo", "breadcrumbs", "breadcrumbForQuestId", "nextQuestInChain", "requiredClasses", "requiredRaces", "requiredSkill"}

func object(value any) map[string]any {
	if result, ok := value.(map[string]any); ok {
		return result
	}
	return nil
}
func ensureObject(parent map[string]any, key string) map[string]any {
	if value := object(parent[key]); value != nil {
		return value
	}
	value := map[string]any{}
	parent[key] = value
	return value
}
func number(value any) (int, bool) {
	switch v := value.(type) {
	case int:
		return v, true
	case int64:
		return int(v), true
	case float64:
		return int(v), v == float64(int(v))
	case json.Number:
		n, e := strconv.Atoi(string(v))
		return n, e == nil
	case string:
		n, e := strconv.Atoi(v)
		return n, e == nil
	default:
		return 0, false
	}
}
func readJSON(path string) (map[string]any, error) {
	data, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	var value map[string]any
	decoder := json.NewDecoder(strings.NewReader(string(data)))
	decoder.UseNumber()
	if err := decoder.Decode(&value); err != nil {
		return nil, err
	}
	return value, nil
}
func jsonFiles(path string, recursive bool) ([]string, error) {
	files := []string{}
	if recursive {
		err := filepath.WalkDir(path, func(file string, entry os.DirEntry, err error) error {
			if err != nil {
				return err
			}
			if !entry.IsDir() && filepath.Ext(file) == ".json" {
				files = append(files, file)
			}
			return nil
		})
		if os.IsNotExist(err) {
			return files, nil
		}
		if err != nil {
			return nil, err
		}
	} else {
		matches, err := filepath.Glob(filepath.Join(path, "*.json"))
		if err != nil {
			return nil, err
		}
		files = matches
	}
	sort.Strings(files)
	return files, nil
}

func listInts(value any) []any {
	if n, ok := number(value); ok && n > 0 {
		return []any{n}
	}
	items, ok := value.([]any)
	if !ok {
		return []any{}
	}
	result := []any{}
	for _, item := range items {
		if n, ok := number(item); ok && n > 0 {
			result = append(result, n)
		}
	}
	return result
}

func normalizeExport(quest map[string]any) (map[string]any, error) {
	questID, ok := number(quest["id"])
	if !ok {
		return nil, fmt.Errorf("export quest has invalid id %v", quest["id"])
	}
	var questLevel, requiredLevel any
	if value, exists := quest["questLevel"]; exists {
		if n, ok := number(value); ok {
			questLevel = n
		}
	}
	if value, exists := quest["requiredLevel"]; exists {
		if n, ok := number(value); ok {
			requiredLevel = n
		}
	}
	classes, ok := quest["requiredClasses"].([]any)
	if !ok {
		classes = []any{}
	} else {
		filtered := make([]any, 0, len(classes))
		for _, class := range classes {
			if _, ok := number(class); ok {
				filtered = append(filtered, class)
			}
		}
		classes = filtered
	}
	fields := map[string]any{}
	for _, key := range exportFields {
		if value, exists := quest[key]; exists && value != nil {
			fields[key] = value
		}
	}
	reqclass := 0
	if len(classes) > 0 {
		reqclass = 1
	}
	firstSeen := any(nil)
	if questID >= 90000 {
		firstSeen = ForeverPatch
	}
	return map[string]any{"id": questID, "list": map[string]any{"id": questID, "level": questLevel, "reqlevel": requiredLevel, "firstseenpatch": firstSeen, "name": stringValue(quest["name"]), "reqclass": reqclass}, "minLevel": requiredLevel, "classes": classes, "detail": map[string]any{"requirements": map[string]any{"allOf": listInts(quest["preQuestGroup"]), "anyOf": listInts(quest["preQuestSingle"]), "exclusiveTo": listInts(quest["exclusiveTo"]), "breadcrumbs": listInts(quest["breadcrumbs"]), "nextQuestInChain": quest["nextQuestInChain"]}, "questie": map[string]any{"fields": fields}}}, nil
}

func NormalizeExportQuest(quest map[string]any) (map[string]any, error) {
	return normalizeExport(quest)
}

func RecordLevels(record map[string]any) (step, offer int) {
	return loremaster.StepLevel(record), loremaster.OfferLevel(record)
}
func stringValue(value any) string {
	if v, ok := value.(string); ok {
		return v
	}
	return ""
}

func LoadQuestRecords(databaseRoot, indexPath string) (map[int]map[string]any, error) {
	index := indexPath
	if index == "" {
		index = filepath.Join(databaseRoot, "data", "forever", "raw", "quest_index.json")
	}
	compiled, err := jsonFiles(filepath.Join(databaseRoot, "data", "forever", "compiled"), true)
	if err != nil {
		return nil, err
	}
	exports, err := jsonFiles(filepath.Join(databaseRoot, "export", "forever", "quests"), false)
	if err != nil {
		return nil, err
	}
	if _, err := os.Stat(index); os.IsNotExist(err) && indexPath == "" && len(compiled) == 0 && len(exports) == 0 {
		return nil, fmt.Errorf("no Forever quest sources in %s", databaseRoot)
	}
	records := map[int]map[string]any{}
	if _, err := os.Stat(index); err == nil || indexPath != "" {
		data, err := readJSON(index)
		if err != nil {
			return nil, err
		}
		for key, value := range data {
			questID, err := strconv.Atoi(key)
			if err == nil && object(value) != nil {
				records[questID] = object(value)
			}
		}
	} else if !os.IsNotExist(err) {
		return nil, err
	}
	for _, path := range compiled {
		bundle, err := readJSON(path)
		if err != nil {
			return nil, err
		}
		quests := object(bundle["quests"])
		for key, value := range quests {
			questID, err := strconv.Atoi(key)
			if err != nil {
				continue
			}
			quest := object(value)
			if quest == nil {
				continue
			}
			record := records[questID]
			if record == nil {
				record = map[string]any{"id": questID}
				records[questID] = record
			}
			for name, v := range object(quest["index"]) {
				if v != nil && record[name] == nil {
					record[name] = v
				}
			}
			detail := ensureObject(record, "detail")
			for name, v := range object(quest["detail"]) {
				ensureObject(detail, name)
				detail[name] = v
			}
		}
	}
	for _, path := range exports {
		bundle, err := readJSON(path)
		if err != nil {
			return nil, err
		}
		for _, value := range object(bundle["quests"]) {
			quest := object(value)
			if quest == nil {
				continue
			}
			normalized, err := normalizeExport(quest)
			if err != nil {
				return nil, err
			}
			questID, _ := number(normalized["id"])
			record := records[questID]
			if record == nil {
				record = map[string]any{"id": questID}
				records[questID] = record
			}
			normalizedList := object(normalized["list"])
			listed := ensureObject(record, "list")
			if _, exists := listed["firstseenpatch"]; questID >= 90000 && !exists {
				listed["firstseenpatch"] = ForeverPatch
			}
			if name := stringValue(quest["name"]); name != "" {
				listed["name"] = name
			}
			if _, exists := quest["requiredClasses"]; exists {
				record["classes"] = normalized["classes"]
				listed["reqclass"] = normalizedList["reqclass"]
			}
			detail := ensureObject(record, "detail")
			questie := ensureObject(detail, "questie")
			fields := ensureObject(questie, "fields")
			requirements := ensureObject(detail, "requirements")
			normalizedDetail := object(normalized["detail"])
			normalizedRequirements := object(normalizedDetail["requirements"])
			normalizedQuestie := object(normalizedDetail["questie"])
			exportFieldsMap := object(normalizedQuestie["fields"])
			_, group := quest["preQuestGroup"]
			_, single := quest["preQuestSingle"]
			if group || single {
				delete(fields, "preQuestGroup")
				delete(fields, "preQuestSingle")
				for _, key := range []string{"allOf", "anyOf"} {
					requirements[key] = normalizedRequirements[key]
				}
			}
			for name, v := range exportFieldsMap {
				if name == "questLevel" || name == "requiredLevel" {
					n, ok := number(v)
					if !ok || n <= 0 {
						continue
					}
				}
				fields[name] = v
			}
			for source, target := range map[string]string{"exclusiveTo": "exclusiveTo", "breadcrumbs": "breadcrumbs", "nextQuestInChain": "nextQuestInChain"} {
				if _, exists := quest[source]; exists {
					requirements[target] = normalizedRequirements[target]
				}
			}
		}
	}
	return records, nil
}

func LoadMinLevels(indexPath, databaseRoot string) (map[int]LevelPair, error) {
	if databaseRoot == "" {
		if indexPath != "" {
			databaseRoot = filepath.Dir(indexPath)
		} else {
			_, file, _, _ := runtime.Caller(0)
			databaseRoot = filepath.Join(filepath.Dir(file), "..", "..", "..", "wow-database")
		}
	}
	records, err := LoadQuestRecords(databaseRoot, indexPath)
	if err != nil {
		return nil, err
	}
	levels := map[int]LevelPair{}
	for questID, record := range records {
		step := loremaster.StepLevel(record)
		offer := loremaster.OfferLevel(record)
		if step > 0 {
			if offer == 0 {
				offer = step
			}
			levels[questID] = LevelPair{step, offer}
		} else if offer > 0 {
			levels[questID] = LevelPair{offer, offer}
		}
	}
	return levels, nil
}
