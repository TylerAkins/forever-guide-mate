package weaveport

import (
	"strings"
	"testing"
)

func TestExtractWovenBlocksIncludesConnectedClassicActions(t *testing.T) {
	text := `ns:RegisterGuide({ goals = {
        { id = "accept-parent", kind = "accept", complete = QuestState(90001, "activeOrCompleted") },
        { id = "turnin-parent", kind = "turnin", complete = QuestState(90001, "completed") },
        { id = "accept-forever", kind = "accept", complete = QuestState(90001, "activeOrCompleted") },
        { id = "travel", kind = "travel", complete = { map = 1411 } },
    },
})`
	blocks, err := ExtractWovenBlocks(text)
	if err != nil {
		t.Fatal(err)
	}
	if len(blocks) != 3 {
		t.Fatalf("ExtractWovenBlocks() returned %d blocks: %#v", len(blocks), blocks)
	}
	if blocks[0].ID != "accept-parent" || blocks[1].ID != "turnin-parent" || blocks[2].ID != "accept-forever" {
		t.Fatalf("woven chain order = %#v", blocks)
	}
}

func TestAppendWovenRewritesIdentifiersDependenciesAndMapConstants(t *testing.T) {
	target := `local _, ns = ...
local MAP = { DUROTAR = 1411 }
-- Forever weaves are applied in a separate pass.
ns:RegisterGuide({
    id = "casual-durotar",
    goals = {
        { id = "native", kind = "accept", priority = 10 },
    },
})`
	blocks := []GoalBlock{
		{ID: "accept-extra", Raw: `        { id = "accept-extra", kind = "accept", priority = 80, text = "Accept extra.", complete = QuestState(90001, "activeOrCompleted"), route = { Point(MAP.DUROTAR, .4, .5, "Giver") } },`},
		{ID: "objective-extra", Raw: `        {
            id = "objective-extra",
            kind = "objective",
            priority = 90,
            dependsOn = { "accept-extra", "missing" },
            complete = QuestObjective(90001, 1, "Target"),
        },`},
	}
	got, count, err := AppendWoven(target, blocks)
	if err != nil {
		t.Fatal(err)
	}
	if count != 2 {
		t.Fatalf("AppendWoven count = %d, want 2", count)
	}
	for _, want := range []string{
		`id = "woven-accept-extra"`, `id = "woven-objective-extra"`, `priority = 20`,
		`Point(1411, .4, .5`, `dependsOn = { "woven-accept-extra" }`,
		"Forever weaves ported from prior Leveling chapters (quest id >= 90000).",
	} {
		if !strings.Contains(got, want) {
			t.Errorf("AppendWoven() missing %q\n%s", want, got)
		}
	}
}

func TestAppendWovenSkipsUnsupportedAndExistingSteps(t *testing.T) {
	target := `ns:RegisterGuide({
    goals = {
        { id = "native", kind = "accept", priority = 10 },
        { id = "woven-existing", kind = "accept", priority = 20, complete = QuestState(90001, "activeOrCompleted") },
    },
})`
	blocks := []GoalBlock{
		{ID: "existing", Raw: `{ id = "existing", kind = "accept", complete = QuestState(90001, "activeOrCompleted") },`},
		{ID: "skill", Raw: `{ id = "skill", kind = "objective", complete = QuestState(90001, "activeOrCompleted"), conditions = SKILL.HERBALISM },`},
	}
	got, count, err := AppendWoven(target, blocks)
	if err != nil {
		t.Fatal(err)
	}
	if count != 0 || strings.Contains(got, "woven-skill") {
		t.Fatalf("unsupported/existing blocks were added: count=%d text=%s", count, got)
	}
}

func TestAppendWovenRefusesOrderedItineraries(t *testing.T) {
	target := `routeMode = "ordered"
ns:RegisterGuide({ goals = {} })`
	if _, _, err := AppendWoven(target, []GoalBlock{{ID: "new", Raw: `{ id = "new", complete = QuestState(90001, "activeOrCompleted") },`}}); err == nil {
		t.Fatal("AppendWoven() error = nil, want ordered-itinerary refusal")
	}
}
