package itineraryimport

import (
	"math"
	"os"
	"path/filepath"
	"reflect"
	"strings"
	"testing"
)

func TestParseStepIgnoresContextTagsWithoutQuestObjectiveIndex(t *testing.T) {
	for _, action := range []string{"kill Mottled Boar##3098", "collect Feather##4739", "use Sapta##6635", "click Altar##123"} {
		for _, suffix := range []string{" |q 4641\nClick to Continue |confirm", "\n|q 4641/1"} {
			got, err := ParseStep(action+suffix, "Horde", 1)
			if err != nil {
				t.Fatal(err)
			}
			if len(got) != 0 {
				t.Errorf("ParseStep(%q) = %#v, want no objectives", action+suffix, got)
			}
		}
	}
}

func TestParseStepKeepsExplicitCountsAndLineScopedBranches(t *testing.T) {
	parsed, err := ParseStep("talk Marshal McBride##197\naccept Simple Letter##3100 |only if Human Warrior\naccept Consecrated Letter##3101 |only if Human Paladin", "Alliance", 1)
	if err != nil {
		t.Fatal(err)
	}
	want := []struct {
		quest   int
		classes []int
		races   []int
	}{{3100, []int{1}, []int{1}}, {3101, []int{2}, []int{1}}}
	if len(parsed) != len(want) {
		t.Fatalf("parsed %d actions, want %d: %#v", len(parsed), len(want), parsed)
	}
	for i, goal := range parsed {
		if goal.QuestID != want[i].quest || !reflect.DeepEqual(goal.Classes, want[i].classes) || !reflect.DeepEqual(goal.Races, want[i].races) {
			t.Errorf("action %d = %#v, want %#v", i, goal, want[i])
		}
	}
	collected, err := ParseStep("collect 2 Feather##4739 |q 747/1", "Horde", 1)
	if err != nil {
		t.Fatal(err)
	}
	if len(collected) != 1 || collected[0].ObjectiveIndex == nil || *collected[0].ObjectiveIndex != 1 || collected[0].Count == nil || *collected[0].Count != 2 {
		t.Fatalf("explicit collection count = %#v", collected)
	}
	classes, _ := ParseOnly("not Warlock", "Horde")
	for _, class := range classes {
		if class == 9 {
			t.Fatal("negative class restriction retained Warlock")
		}
	}
}

func TestParseStepActionWaypointOverridesPreviousTravelPin(t *testing.T) {
	parsed, err := ParseStep("Leave the tunnel |goto Tanaris 69.63,42.37\ntalk J.D. Collie##9117\nturnin Aquementas##4005 |goto Un'Goro Crater/0 41.92,2.70", "Alliance", 58)
	if err != nil {
		t.Fatal(err)
	}
	if len(parsed) != 1 || parsed[0].MapID == nil || *parsed[0].MapID != 1449 || parsed[0].X == nil || parsed[0].Y == nil || math.Abs(*parsed[0].X-.4192) > 1e-9 || math.Abs(*parsed[0].Y-.027) > 1e-9 {
		t.Fatalf("action waypoint = %#v", parsed)
	}
}

func TestWriteGuidesRefusesToOverwriteOrderedGuide(t *testing.T) {
	out := t.TempDir()
	path := filepath.Join(out, "mulgore.lua")
	if err := os.WriteFile(path, []byte("routeMode = \"ordered\"\n"), 0o644); err != nil {
		t.Fatal(err)
	}
	guide := ParsedGuide{Title: "Mulgore", Faction: "Horde", LevelMin: 1, Slug: "mulgore", Starter: true}
	if _, err := WriteGuides([]ParsedGuide{guide}, out, false); err == nil || err.Error() != path+": ordered itineraries require an explicit reviewed conversion; legacy import is disabled" {
		t.Fatalf("WriteGuides() error = %v", err)
	}
	content, err := os.ReadFile(path)
	if err != nil {
		t.Fatal(err)
	}
	if string(content) != "routeMode = \"ordered\"\n" {
		t.Fatal("ordered itinerary changed after refused import")
	}
}

func TestExtractGuidesParsesStarterActionsAndSkipsOtherTitles(t *testing.T) {
	path := filepath.Join(t.TempDir(), "classic.lua")
	content := `ns:RegisterGuide("Leveling Guides\Orc and Troll Starter (1-12)", { }, [[
step
talk Kaltunk##101
accept Your Place In The World##4641 |goto Durotar 42.6,68.4
step
kill 6 Mottled Boar##3098 |q 4641/1
]])
ns:RegisterGuide("Hidden Guides\Skip Me (1-12)", { }, [[
step
accept Ignore##999
]])`
	if err := os.WriteFile(path, []byte(content), 0o644); err != nil {
		t.Fatal(err)
	}
	guides, err := ExtractGuides(path, "Horde")
	if err != nil {
		t.Fatal(err)
	}
	if len(guides) != 1 || !guides[0].Starter || guides[0].Slug != "durotar" || guides[0].LevelMin != 1 || len(guides[0].Goals) != 2 {
		t.Fatalf("ExtractGuides() = %#v", guides)
	}
	if guide := guides[0]; guide.Goals[0].QuestID != 4641 || guide.Goals[0].MapID == nil || *guide.Goals[0].MapID != 1411 || guide.Goals[1].Count == nil || *guide.Goals[1].Count != 6 {
		t.Fatalf("parsed guide actions = %#v", guide.Goals)
	}
}

func TestEmitGuidePreservesOrderedQuestAndRouteContracts(t *testing.T) {
	mapID, x, y, objectiveIndex, count := 1411, .426, .684, 1, 6
	guide := ParsedGuide{Title: "Durotar Starter (1-12)", Faction: "Horde", LevelMin: 1, Slug: "durotar", Starter: true, Goals: []ParsedGoal{
		{Kind: "accept", QuestID: 4641, Name: "Your Place In The World", Text: "Accept Your Place In The World from Kaltunk.", MapID: &mapID, X: &x, Y: &y, NPC: "Kaltunk", Faction: "Horde", LevelMin: 1},
		{Kind: "objective", QuestID: 4641, Name: "Mottled Boar", Text: "Kill 6 Mottled Boar.", ObjectiveIndex: &objectiveIndex, Count: &count, Faction: "Horde", LevelMin: 1},
		{Kind: "turnin", QuestID: 4641, Name: "Your Place In The World", Text: "Turn in Your Place In The World to Kaltunk.", NPC: "Kaltunk", Faction: "Horde", LevelMin: 1},
	}}
	got := EmitGuide(guide, false)
	for _, expected := range []string{
		`id = "leveling-era-durotar"`, `routeMode = "ordered"`, `kind = "accept"`,
		`complete = QuestState(4641, "activeOrCompleted")`, `kind = "objective"`,
		`complete = QuestObjective(4641, 1, "Mottled Boar")`, `dependsOn = { "accept-4641-your-place-in-the-world" }`,
		`Point(1411, 0.4260, 0.6840, "Kaltunk"`,
	} {
		if !strings.Contains(got, expected) {
			t.Errorf("EmitGuide() missing %q\n%s", expected, got)
		}
	}
}
