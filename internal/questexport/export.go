// Package questexport reads the QuestieDB export written by
// tools/questiedb/export_artifact.lua and resolves quests for one faction and
// class. The Lua adapter owns the baked store; this package only reads JSON.
package questexport

import (
	"bytes"
	"encoding/json"
	"fmt"
	"os"
	"reflect"
	"strconv"
)

// Datatypes are the entity types the export carries, in manifest order.
var Datatypes = []string{"Quest", "Npc", "Object", "Item"}

// Factions are the player factions the corrections distinguish.
var Factions = []string{"Horde", "Alliance"}

// Classes are the classic class tokens the corrections distinguish.
var Classes = []string{"DRUID", "HUNTER", "MAGE", "PALADIN", "PRIEST", "ROGUE", "SHAMAN", "WARLOCK", "WARRIOR"}

// Variants returns the 18 "<Faction>/<CLASS>" names the corrections define.
func Variants() []string {
	names := make([]string, 0, len(Factions)*len(Classes))
	for _, faction := range Factions {
		for _, class := range Classes {
			names = append(names, faction+"/"+class)
		}
	}
	return names
}

// Manifest describes the artifact build and how many records each variant overrides.
type Manifest struct {
	ArtifactVersion string                    `json:"artifactVersion"`
	BuildCommit     string                    `json:"buildCommit"`
	Counts          map[string]int            `json:"counts"`
	Variants        map[string]map[string]int `json:"variants"`
}

// Records maps a decimal entity ID to its canonical record.
type Records map[string]map[string]any

// Export is the whole compiled QuestieDB export.
type Export struct {
	Manifest Manifest                      `json:"manifest"`
	Base     map[string]Records            `json:"base"`
	Variants map[string]map[string]Records `json:"variants"`
	// Areas maps a decimal area ID to the UiMap ID that names its zone.
	Areas map[string]int `json:"areas"`
}

// Load reads and validates an export file.
func Load(path string) (*Export, error) {
	data, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	export, err := Parse(data)
	if err != nil {
		return nil, fmt.Errorf("%s: %w", path, err)
	}
	return export, nil
}

// Parse decodes and validates an export. Any mismatch between the manifest and
// the records is an error, so a truncated or hand-edited export cannot load.
func Parse(data []byte) (*Export, error) {
	decoder := json.NewDecoder(bytes.NewReader(data))
	decoder.DisallowUnknownFields()
	var export Export
	if err := decoder.Decode(&export); err != nil {
		return nil, err
	}
	if err := export.validate(); err != nil {
		return nil, err
	}
	return &export, nil
}

func (export *Export) validate() error {
	if export.Manifest.ArtifactVersion == "" || export.Manifest.BuildCommit == "" {
		return fmt.Errorf("manifest is missing the artifact version or build commit")
	}
	if len(export.Areas) == 0 {
		return fmt.Errorf("export has no area table")
	}
	for _, datatype := range Datatypes {
		records, ok := export.Base[datatype]
		if !ok {
			return fmt.Errorf("base is missing %s records", datatype)
		}
		want, ok := export.Manifest.Counts[datatype]
		if !ok || want != len(records) {
			return fmt.Errorf("manifest counts %d %s records, base has %d", want, datatype, len(records))
		}
	}
	for datatype := range export.Base {
		if !contains(Datatypes, datatype) {
			return fmt.Errorf("base has unknown datatype %q", datatype)
		}
	}
	for _, variant := range Variants() {
		if _, ok := export.Manifest.Variants[variant]; !ok {
			return fmt.Errorf("manifest is missing variant %s", variant)
		}
	}
	for variant, overrides := range export.Variants {
		counts, ok := export.Manifest.Variants[variant]
		if !ok {
			return fmt.Errorf("variant %s is not in the manifest", variant)
		}
		for datatype, records := range overrides {
			if !contains(Datatypes, datatype) {
				return fmt.Errorf("variant %s has unknown datatype %q", variant, datatype)
			}
			if counts[datatype] != len(records) {
				return fmt.Errorf("variant %s manifest counts %d %s overrides, found %d", variant, counts[datatype], datatype, len(records))
			}
			for id := range records {
				if _, ok := export.Base[datatype][id]; !ok {
					return fmt.Errorf("variant %s overrides %s %s, which has no base record", variant, datatype, id)
				}
			}
		}
	}
	return nil
}

// Quest returns the canonical record for one quest as seen by a variant. The
// empty variant is the base record. A variant's override replaces the base
// record entirely, as the corrections do.
func (export *Export) Quest(variant string, id int) (map[string]any, error) {
	key := strconv.Itoa(id)
	if variant != "" {
		overrides, ok := export.Variants[variant]
		if !ok && !contains(Variants(), variant) {
			return nil, fmt.Errorf("unknown variant %q", variant)
		}
		if record, ok := overrides["Quest"][key]; ok {
			return record, nil
		}
	}
	record, ok := export.Base["Quest"][key]
	if !ok {
		return nil, fmt.Errorf("quest %d is not in the QuestieDB export", id)
	}
	return record, nil
}

// AreaUIMap returns the UiMap ID for an area, and false when the area has none.
func (export *Export) AreaUIMap(area int) (int, bool) {
	uiMap, ok := export.Areas[strconv.Itoa(area)]
	return uiMap, ok
}

// FactionRecord returns the record one faction sees for one entity of a
// datatype (Quest, Npc, Object, or Item). The class variants of a faction share
// the faction's view; classSpecific reports that they disagree. A caller must
// then fail closed, because the authoring flow is not class-specific.
func (export *Export) FactionRecord(faction, datatype string, id int) (record map[string]any, classSpecific bool, err error) {
	key := strconv.Itoa(id)
	base, ok := export.Base[datatype][key]
	if !ok {
		return nil, false, fmt.Errorf("%s %d is not in the QuestieDB export", datatype, id)
	}
	for _, class := range Classes {
		view := base
		if override, ok := export.Variants[faction+"/"+class][datatype][key]; ok {
			view = override
		}
		if record == nil {
			record = view
		} else if !reflect.DeepEqual(record, view) {
			classSpecific = true
		}
	}
	return record, classSpecific, nil
}

func contains(values []string, want string) bool {
	for _, value := range values {
		if value == want {
			return true
		}
	}
	return false
}
