package questexport

import (
	"os"
	"path/filepath"
	"reflect"
	"sort"
	"strconv"
	"testing"
)

// The corrections fixture is a slice of the real QuestieDB export. It holds the
// quests whose corrections the export must carry: quest 78124 differs by
// faction, and quests 8315, 8978, 8998, and 9015 differ by class.
const correctionsFixture = "testdata/corrections.json"

func loadCorrections(t *testing.T) *Export {
	t.Helper()
	export, err := Load(correctionsFixture)
	if err != nil {
		t.Fatal(err)
	}
	return export
}

func TestEveryBaseQuestResolvesForEveryVariant(t *testing.T) {
	export := loadCorrections(t)
	for _, variant := range Variants() {
		for key := range export.Base["Quest"] {
			id, err := strconv.Atoi(key)
			if err != nil {
				t.Fatalf("invalid quest ID %q", key)
			}
			record, err := export.Quest(variant, id)
			if err != nil {
				t.Fatalf("quest %d is missing from variant %s: %v", id, variant, err)
			}
			if len(record) == 0 {
				t.Fatalf("quest %d is empty in variant %s", id, variant)
			}
		}
	}
}

func TestFactionCorrectionChangesTheRecord(t *testing.T) {
	export := loadCorrections(t)
	horde, err := export.Quest("Horde/WARRIOR", 78124)
	if err != nil {
		t.Fatal(err)
	}
	alliance, err := export.Quest("Alliance/WARRIOR", 78124)
	if err != nil {
		t.Fatal(err)
	}
	if !sameJSON(horde["startedBy"], [][]int{{211022}, {409496}}) {
		t.Fatalf("Horde startedBy = %v", horde["startedBy"])
	}
	if !sameJSON(alliance["startedBy"], [][]int{{211033}, {409496}}) {
		t.Fatalf("Alliance startedBy = %v", alliance["startedBy"])
	}
	if sameJSON(horde, alliance) {
		t.Fatal("the two factions must see different records")
	}
}

func TestClassCorrectionIsReportedAsClassSpecific(t *testing.T) {
	export := loadCorrections(t)
	for _, id := range []int{8315, 8978, 8998, 9015} {
		_, classSpecific, err := export.FactionRecord("Horde", "Quest", id)
		if err != nil {
			t.Fatal(err)
		}
		if !classSpecific {
			t.Fatalf("quest %d differs by class and must be reported as class specific", id)
		}
	}
	_, classSpecific, err := export.FactionRecord("Horde", "Quest", 78124)
	if err != nil {
		t.Fatal(err)
	}
	if classSpecific {
		t.Fatal("quest 78124 differs by faction, not by class")
	}
}

func TestVariantOverrideKeepsEveryBaseField(t *testing.T) {
	export := loadCorrections(t)
	for variant, overrides := range export.Variants {
		for datatype, records := range overrides {
			for id, record := range records {
				base, ok := export.Base[datatype][id]
				if !ok {
					t.Fatalf("variant %s overrides %s %s, which has no base record", variant, datatype, id)
				}
				for field := range base {
					if _, ok := record[field]; !ok {
						t.Fatalf("variant %s %s %s is missing the base field %s", variant, datatype, id, field)
					}
				}
			}
		}
	}
}

func TestManifestListsEveryVariant(t *testing.T) {
	export := loadCorrections(t)
	names := make([]string, 0, len(export.Manifest.Variants))
	for name := range export.Manifest.Variants {
		names = append(names, name)
	}
	sort.Strings(names)
	want := Variants()
	sort.Strings(want)
	if !reflect.DeepEqual(names, want) {
		t.Fatalf("manifest variants = %v, want %v", names, want)
	}
}

func TestGeneratedExportContainsEveryArtifactQuestAndCorrection(t *testing.T) {
	path := filepath.Join("..", "..", ".compiled", "questiedb", "export.json")
	if _, err := os.Stat(path); os.IsNotExist(err) {
		t.Skip("generated QuestieDB export is not present")
	} else if err != nil {
		t.Fatal(err)
	}

	export, err := Load(path)
	if err != nil {
		t.Fatal(err)
	}
	if export.Manifest.ArtifactVersion != "1.0.6-dev.f844007" || export.Manifest.BuildCommit != "f844007b329b72f18cf2bda3d87540012294732a" {
		t.Fatalf("unexpected QuestieDB artifact: version=%q commit=%q", export.Manifest.ArtifactVersion, export.Manifest.BuildCommit)
	}
	if got := len(export.Base["Quest"]); got != 5232 {
		t.Fatalf("QuestieDB quest count = %d, want 5232", got)
	}
	for _, variant := range Variants() {
		for key := range export.Base["Quest"] {
			id, err := strconv.Atoi(key)
			if err != nil {
				t.Fatalf("invalid quest ID %q", key)
			}
			if _, err := export.Quest(variant, id); err != nil {
				t.Fatalf("quest %d is missing from variant %s: %v", id, variant, err)
			}
		}
	}

	fixture := loadCorrections(t)
	for variant, datatypes := range fixture.Variants {
		for key, want := range datatypes["Quest"] {
			id, err := strconv.Atoi(key)
			if err != nil {
				t.Fatalf("invalid correction fixture quest ID %q", key)
			}
			got, err := export.Quest(variant, id)
			if err != nil {
				t.Fatal(err)
			}
			if !reflect.DeepEqual(got, want) {
				t.Errorf("quest %d correction for %s differs from the reviewed fixture", id, variant)
			}
		}
	}
}
