package loremaster

import (
	"bufio"
	"encoding/json"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"sort"
	"strconv"
	"strings"
)

type questSets struct{ Before, After map[int]bool }
type auditFile struct {
	Guide        string       `json:"guide"`
	CoverageMode string       `json:"coverageMode"`
	Supporting   []int        `json:"supportingQuests"`
	Unresolved   []int        `json:"unresolvedOwnershipQuests"`
	Quests       questEntries `json:"quests"`
}

type questAuditEntry struct {
	ID       string
	Status   string
	Catalogs []any
}
type questEntries []questAuditEntry

func (entries *questEntries) UnmarshalJSON(data []byte) error {
	decoder := json.NewDecoder(strings.NewReader(string(data)))
	if _, err := decoder.Token(); err != nil {
		return err
	}
	result := questEntries{}
	for decoder.More() {
		keyToken, err := decoder.Token()
		if err != nil {
			return err
		}
		key, ok := keyToken.(string)
		if !ok {
			return fmt.Errorf("quest audit key is not a string")
		}
		var value struct {
			Status   string `json:"status"`
			Catalogs []any  `json:"catalogs"`
		}
		if err := decoder.Decode(&value); err != nil {
			return err
		}
		result = append(result, questAuditEntry{key, value.Status, value.Catalogs})
	}
	if _, err := decoder.Token(); err != nil {
		return err
	}
	*entries = result
	return nil
}

func parseQuestSet(value string) (map[int]bool, error) {
	result := map[int]bool{}
	for _, part := range strings.Split(value, ",") {
		if part == "" {
			continue
		}
		n, err := strconv.Atoi(part)
		if err != nil {
			return nil, err
		}
		result[n] = true
	}
	return result, nil
}
func containsAll(set map[int]bool, values []int) {
	for _, n := range values {
		set[n] = true
	}
}
func intersection(a, b map[int]bool) map[int]bool {
	result := map[int]bool{}
	for n := range a {
		if b[n] {
			result[n] = true
		}
	}
	return result
}
func numberList(set map[int]bool) []int {
	result := make([]int, 0, len(set))
	for n := range set {
		result = append(result, n)
	}
	sort.Ints(result)
	return result
}
func trueCatalogs(value []any) bool { return len(value) > 0 }

func BuildReport(root, lua string) (map[string]any, error) {
	command := exec.Command(lua, "-joff", "tools/loremaster_report.lua")
	command.Dir = root
	output, err := command.Output()
	if err != nil {
		return nil, fmt.Errorf("run Loremaster action inventory with %s: %w", lua, err)
	}
	sets := map[string]map[string]questSets{}
	scanner := bufio.NewScanner(strings.NewReader(string(output)))
	scanner.Buffer(make([]byte, 4096), 4*1024*1024)
	for scanner.Scan() {
		parts := strings.Split(scanner.Text(), "\t")
		if len(parts) != 5 {
			return nil, fmt.Errorf("malformed Loremaster report row: %q", scanner.Text())
		}
		if sets[parts[0]] == nil {
			sets[parts[0]] = map[string]questSets{}
		}
		entry, ok := sets[parts[0]][parts[2]]
		if !ok {
			entry = questSets{map[int]bool{}, map[int]bool{}}
		}
		before, err := parseQuestSet(parts[3])
		if err != nil {
			return nil, err
		}
		after, err := parseQuestSet(parts[4])
		if err != nil {
			return nil, err
		}
		for n := range before {
			entry.Before[n] = true
		}
		for n := range after {
			entry.After[n] = true
		}
		sets[parts[0]][parts[2]] = entry
	}
	if err := scanner.Err(); err != nil {
		return nil, err
	}
	paths, err := filepath.Glob(filepath.Join(root, "docs", "loremaster", "*.json"))
	if err != nil {
		return nil, err
	}
	sort.Strings(paths)
	zones := map[string]any{}
	for _, path := range paths {
		data, err := os.ReadFile(path)
		if err != nil {
			return nil, err
		}
		var audit auditFile
		if err := json.Unmarshal(data, &audit); err != nil {
			return nil, err
		}
		if audit.Guide == "" && len(audit.Quests) == 0 {
			continue
		}
		profiles, ok := sets[audit.Guide]
		if !ok {
			return nil, fmt.Errorf("report missing guide %q", audit.Guide)
		}
		catalogProfile, ok := profiles["catalog"]
		if !ok {
			return nil, fmt.Errorf("report missing catalog for %q", audit.Guide)
		}
		delete(profiles, "catalog")
		source, target := catalogProfile.Before, catalogProfile.After
		catalog := map[int]bool{}
		for _, entry := range audit.Quests {
			n, err := strconv.Atoi(entry.ID)
			if err != nil {
				return nil, err
			}
			if trueCatalogs(entry.Catalogs) {
				catalog[n] = true
			}
		}
		stem := strings.TrimSuffix(filepath.Base(path), ".json")
		expanded := map[string]bool{"westfall": true, "loch-modan": true, "darkshore": true, "silverpine-forest": true, "the-barrens": true}[stem]
		if expanded || audit.CoverageMode == "zone" {
			relevant := map[int]bool{}
			for n := range catalog {
				relevant[n] = true
			}
			containsAll(relevant, audit.Supporting)
			source = intersection(sets["__all__"]["catalog"].Before, relevant)
			for name, profile := range profiles {
				all, ok := sets["__all__"][name]
				if ok {
					profile.Before = intersection(all.Before, relevant)
					profiles[name] = profile
				}
			}
		}
		dispositions := map[string][]int{}
		for _, entry := range audit.Quests {
			n, err := strconv.Atoi(entry.ID)
			if err != nil {
				return nil, err
			}
			dispositions[entry.Status] = append(dispositions[entry.Status], n)
		}
		if audit.Unresolved == nil {
			audit.Unresolved = []int{}
		}
		profileReport := map[string]any{}
		for name, profile := range profiles {
			profileReport[name] = map[string]any{"leveling": len(profile.Before), "loremaster": len(profile.After), "added": numberList(diff(profile.After, profile.Before)), "omitted": numberList(diff(profile.Before, profile.After)), "levelingQuests": numberList(profile.Before), "loremasterQuests": numberList(profile.After)}
		}
		zones[stem] = map[string]any{"leveling": len(source), "levelingCatalog": len(intersection(source, catalog)), "levelingOverlap": len(intersection(source, target)), "loremaster": len(target), "added": numberList(diff(target, source)), "supporting": audit.Supporting, "unresolvedOwnership": audit.Unresolved, "dispositions": dispositions, "profiles": profileReport, "clientWalkthrough": "unverified"}
	}
	return zones, nil
}

func diff(a, b map[int]bool) map[int]bool {
	result := map[int]bool{}
	for n := range a {
		if !b[n] {
			result[n] = true
		}
	}
	return result
}
