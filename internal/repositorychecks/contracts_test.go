package repositorychecks

import (
	"bufio"
	"os"
	"path/filepath"
	"regexp"
	"runtime"
	"strconv"
	"strings"
	"testing"
)

func repoRoot(t *testing.T) string {
	t.Helper()
	_, source, _, ok := runtime.Caller(0)
	if !ok {
		t.Fatal("runtime caller unavailable")
	}
	return filepath.Clean(filepath.Join(filepath.Dir(source), "..", ".."))
}

func fileText(t *testing.T, root, relative string) string {
	t.Helper()
	data, err := os.ReadFile(filepath.Join(root, filepath.FromSlash(relative)))
	if err != nil {
		t.Fatal(err)
	}
	return string(data)
}

func requireContains(t *testing.T, text, expected string) {
	t.Helper()
	if !strings.Contains(text, expected) {
		t.Errorf("missing %q", expected)
	}
}

func TestTOCMetadataAndLoadOrder(t *testing.T) {
	root := repoRoot(t)
	for _, required := range []string{`.github/ISSUE_TEMPLATE/bug_report.yml`, `.github/ISSUE_TEMPLATE/config.yml`, `.gitignore`, `.pkgmeta`, `AGENTS.md`, `CHANGELOG.md`, `RELEASE_NOTES.md`, `LICENSE`, `README.md`, `VERSION`, `go.mod`, `docs/guide-authoring.md`, `docs/zone-loremaster-guides.md`} {
		if _, err := os.Stat(filepath.Join(root, filepath.FromSlash(required))); err != nil {
			t.Errorf("required project file %s: %v", required, err)
		}
	}
	toc := fileText(t, root, "ForeverGuideMate.toc")
	for _, expected := range []string{
		"## Interface: 16001", "## Title: Forever GuideMate", "## Category: Quests",
		"## X-Category: Quests", "## X-Website: https://github.com/TylerAkins/forever-guide-mate",
		"## X-Source: https://github.com/TylerAkins/forever-guide-mate",
		"## X-Issues: https://github.com/TylerAkins/forever-guide-mate/issues",
		"## SavedVariables: ForeverGuideMateDB", "## SavedVariablesPerCharacter: ForeverGuideMateCharDB",
		"## OptionalDeps: TomTom",
	} {
		requireContains(t, toc, expected)
	}
	if strings.Contains(toc, "## RequiredDeps: TomTom") {
		t.Error("TomTom must remain optional")
	}
	paths := []string{}
	scanner := bufio.NewScanner(strings.NewReader(toc))
	for scanner.Scan() {
		line := strings.TrimSpace(scanner.Text())
		if line == "" || strings.HasPrefix(line, "##") {
			continue
		}
		paths = append(paths, line)
		if _, err := os.Stat(filepath.Join(root, filepath.FromSlash(line))); err != nil {
			t.Errorf("TOC path %s: %v", line, err)
		}
	}
	index := func(name string) int {
		for i, path := range paths {
			if path == name {
				return i
			}
		}
		return -1
	}
	if index("Core.lua") < 0 || index("GuideEngine.lua") < 0 || index("SkipLineage.lua") < 0 || !(index("Core.lua") < index("GuideEngine.lua") && index("GuideEngine.lua") < index("SkipLineage.lua")) {
		t.Fatalf("invalid TOC load order for Core, GuideEngine, SkipLineage")
	}
	if index("Guides/Leveling/horde-silverpine-forest.lua") >= 0 && index("Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua") >= 0 && index("Guides/Leveling/horde-silverpine-forest.lua") >= index("Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua") {
		t.Error("Horde Silverpine must precede the Barrens route")
	}
}

func TestProjectPackagingAndReleaseNotes(t *testing.T) {
	root := repoRoot(t)
	version := strings.TrimSpace(fileText(t, root, "VERSION"))
	if !regexp.MustCompile(`^\d+\.\d+\.\d+$`).MatchString(version) {
		t.Fatalf("invalid version %q", version)
	}
	packageMeta := fileText(t, root, ".pkgmeta")
	for _, expected := range []string{"package-as: ForeverGuideMate", "manual-changelog:", "filename: RELEASE_NOTES.md", "  - tests", "  - tools", "  - .github", "  - docs"} {
		requireContains(t, packageMeta, expected)
	}
	notes := fileText(t, root, "RELEASE_NOTES.md")
	if !strings.Contains(notes, "## "+version+" ") || strings.Count(notes, "## ") != 1 {
		t.Errorf("release notes do not contain exactly the current %s heading", version)
	}
	readme := strings.ToLower(fileText(t, root, "README.md"))
	for _, expected := range []string{"open-source", "world of warcraft: forever", "github release", "curseforge"} {
		if !strings.Contains(readme, expected) {
			t.Errorf("README missing %q", expected)
		}
	}
	if !strings.Contains(strings.ToLower(fileText(t, root, "docs/DEVELOPMENT.md")), "local-development guide addon") {
		t.Error("development guide does not describe the local-development addon")
	}
}

func TestReleaseAndCIWorkflowContracts(t *testing.T) {
	root := repoRoot(t)
	workflow := fileText(t, root, ".github/workflows/ci.yml")
	if !strings.Contains(workflow, "GUIDE_CONTENT_CHANGED=false") {
		t.Error("CI does not retain the shipping-content change selector")
	}
	compare := strings.SplitN(workflow, "git diff --quiet", 2)
	if len(compare) != 2 {
		t.Fatal("CI release path check is missing")
	}
	shipping := strings.SplitN(compare[1], ";", 2)[0]
	for _, docsOnly := range []string{"README.md", "docs/", "RELEASE_NOTES.md", "CHANGELOG.md"} {
		if strings.Contains(strings.ReplaceAll(shipping, `"`, ""), docsOnly) {
			t.Errorf("docs-only path %s enters the shipped-content version gate", docsOnly)
		}
	}
	for _, expected := range []string{"luajit -joff tests/lua/run.lua", "luajit -joff tests/lua/ui.lua", "luajit -joff tests/lua/lint.lua", "cmd/guide-release validate-notes", "BigWigsMods/packager"} {
		requireContains(t, workflow, expected)
	}
	release := fileText(t, root, ".github/workflows/release.yml")
	for _, expected := range []string{"BigWigsMods/packager@v2", "cmd/guide-release validate"} {
		requireContains(t, release, expected)
	}
	update := fileText(t, root, ".github/workflows/update-forever-interface.yml")
	for _, expected := range []string{`cron: "0 12 * * 3"`, "cmd/update-forever-interface", `go-version: "1.27.3"`} {
		requireContains(t, update, expected)
	}
}

func TestRuntimeDoesNotAutomateGameplay(t *testing.T) {
	root := repoRoot(t)
	core := fileText(t, root, "Core.lua")
	engine := fileText(t, root, "GuideEngine.lua")
	requireContains(t, core, "local ADDON_NAME, ns = ...")
	requireContains(t, core, "ForeverGuideMate = ns")
	requireContains(t, engine, "function ns:RegisterGuide(guide)")
	ragefire := fileText(t, root, "Guides/Dungeons/RagefireChasm.lua")
	requireContains(t, ragefire, `id = "dungeons-ragefire-chasm-horde"`)
	requireContains(t, ragefire, `category = "Dungeon Quest Guides"`)
	allowedDialog := fileText(t, root, "QuestDialog.lua")
	if !strings.Contains(allowedDialog, "autoQuest") || !strings.Contains(allowedDialog, "AcceptQuest") || !strings.Contains(allowedDialog, "CompleteQuest") || !strings.Contains(allowedDialog, "GetQuestReward") {
		t.Fatal("QuestDialog is missing the documented manual quest dialog support")
	}
	forbidden := []string{"AcceptQuest", "CompleteQuest", "GetQuestReward", "SelectGossipOption", "ConfirmAcceptQuest", "SLASH_", "Probe"}
	paths := []string{"Core.lua", "PlayerState.lua", "Travel.lua", "Taxi.lua", "GuideEngine.lua", "QuestAudit.lua", "Navigation.lua", "TomTomWaypoints.lua", "MapPins.lua", "MapPins.xml", "MinimapButton.lua", "UITheme.lua", "UI.lua"}
	for _, path := range paths {
		text := fileText(t, root, path)
		for _, token := range forbidden {
			if strings.Contains(strings.ToLower(text), strings.ToLower(token)) {
				t.Errorf("runtime file %s contains prohibited gameplay automation token %q", path, token)
			}
		}
	}
	err := filepath.WalkDir(filepath.Join(root, "Guides"), func(path string, entry os.DirEntry, err error) error {
		if err != nil {
			return err
		}
		if entry.IsDir() || filepath.Ext(path) != ".lua" {
			return nil
		}
		data, err := os.ReadFile(path)
		if err != nil {
			return err
		}
		for _, token := range forbidden {
			if strings.Contains(strings.ToLower(string(data)), strings.ToLower(token)) {
				t.Errorf("guide %s contains prohibited automation token %q", path, token)
			}
		}
		return nil
	})
	if err != nil {
		t.Fatal(err)
	}
}

func TestGuideContentContracts(t *testing.T) {
	root := repoRoot(t)
	checks := []struct {
		file string
		ids  []int
		all  []string
		none []string
	}{
		{"Guides/Dungeons/RagefireChasm.lua", []int{5722, 5723, 5724, 5725, 5726, 5727, 5728, 5729, 5730, 5761}, []string{`{ faction = "Horde" }`, "level = { min = 9 }", "BARRENS = 1413", "THUNDER_BLUFF = 1456"}, nil},
		{"Guides/Dungeons/WailingCaverns.lua", []int{914, 959, 962, 1486, 1487, 1489, 1490, 1491, 3366, 6981}, []string{`id = "dungeons-wailing-caverns"`, `category = "Dungeon Quest Guides"`, "level = { min = 15 }", `{ faction = "Horde" }`, `{ faction = "Alliance" }`, "BOTH_FACTIONS"}, []string{`QuestState(999,`, `QuestState(1500,`}},
		{"Guides/Dungeons/RuinsOfLordaeron.lua", []int{92401, 92415, 92421, 92422, 95161, 95189, 95195, 95204, 95216, 95250, 97288, 97289, 97290, 97291, 97292}, []string{`id = "dungeons-ruins-of-lordaeron"`, "level = { min = 16 }", `{ faction = "Horde" }`, `{ faction = "Alliance" }`}, nil},
		{"Guides/Dungeons/Deadmines.lua", []int{166, 167, 168, 214, 2040}, []string{`id = "dungeons-the-deadmines"`, `category = "Dungeon Quest Guides"`, "level = { min = 15 }", `{ faction = "Alliance" }`, "DEADMINES = 36"}, []string{`{ faction = "Horde" }`}},
		{"Guides/Dungeons/HallOfThanes.lua", []int{96391, 96393, 96394, 96395, 96403, 98423}, []string{`id = "dungeons-hall-of-thanes"`, `category = "Dungeon Quest Guides"`, "level = { min = 10 }", `{ faction = "Alliance" }`, "IRONFORGE = 1455"}, nil},
		{"Guides/Dungeons/ExcavationSiteWetlands.lua", []int{469, 98815, 95772, 95795, 95737, 95647, 95809, 95646, 95810, 98824, 95697, 95663, 95682, 95664, 98823}, []string{`id = "dungeons-excavation-site-wetlands"`, `category = "Dungeon Quest Guides"`, "level = { min = 24 }", `{ faction = "Alliance" }`, `{ faction = "Horde" }`}, nil},
		{"Guides/Dungeons/CityOfDalaranAttunement.lua", []int{544, 93680, 545, 92434, 96984}, []string{`id = "dungeons-city-of-dalaran-attunement"`, `category = "Dungeon Quest Guides"`, "level = { min = 30 }", `{ faction = "Horde" }`, "accept-96984-heart-of-disruption"}, []string{"accept-556-", "accept-557-", `{ faction = "Alliance" }`}},
	}
	for _, check := range checks {
		guide := fileText(t, root, check.file)
		for _, id := range check.ids {
			if !strings.Contains(guide, strconv.Itoa(id)) {
				t.Errorf("%s missing quest id %d", check.file, id)
			}
		}
		for _, part := range check.all {
			if !strings.Contains(guide, part) {
				t.Errorf("%s missing %q", check.file, part)
			}
		}
		for _, part := range check.none {
			if strings.Contains(guide, part) {
				t.Errorf("%s unexpectedly contains %q", check.file, part)
			}
		}
	}
	ui := fileText(t, root, "UI.lua")
	if !strings.Contains(ui, `category:match("^(.-) Quest Guides$")`) || !strings.Contains(ui, `category == "Miscellaneous Guides"`) {
		t.Error("UI category list does not include the new guide categories")
	}
	library := fileText(t, root, "Guides/Miscellaneous/LibraryBooks.lua")
	for _, part := range []string{`id = "misc-library-books"`, `category = "Miscellaneous Guides"`, "QuestState(78150,", "QuestState(79536,", "QuestState(82208,", `dependsOn = { "book-baxtan-destructive-magics" }`, `dependsOn = { "book-conjurers-codex" }`, `dependsOn = { "book-scourge-misunderstood" }`} {
		if !strings.Contains(library, part) {
			t.Errorf("library books guide missing %q", part)
		}
	}
	if strings.Count(library, `kind = "note"`) < 35 {
		t.Errorf("library guide contains %d book notes, want at least 35", strings.Count(library, `kind = "note"`))
	}
}

func TestStarterGuideContract(t *testing.T) {
	root := repoRoot(t)
	guide := fileText(t, root, "Guides/Leveling/zephras-isle.lua")
	for _, id := range []string{"92460", "92472", "92579", "92701", "92640", "94490", "94946", "95349"} {
		if !strings.Contains(guide, id) {
			t.Errorf("Zephras starter missing quest %s", id)
		}
	}
	for _, part := range []string{`id = "leveling-zephras-isle"`, `category = "Leveling Quest Guides"`, "level = { min = 1 }", "mapID = 2521", `{ faction = "Horde" }`, `{ faction = "Alliance" }`} {
		if !strings.Contains(guide, part) {
			t.Errorf("Zephras starter missing %q", part)
		}
	}
	start := strings.Index(guide, "Secrets of Undeath (78197)")
	if strings.Contains(guide, "97963") || (start >= 0 && strings.Contains(guide[start+len("Secrets of Undeath (78197)"):], "78197")) {
		t.Error("Zephras guide contains a reviewed omission")
	}
}

func TestLibraryBookUIAndGameplayContracts(t *testing.T) {
	root := repoRoot(t)
	ui := fileText(t, root, "UI.lua")
	if !strings.Contains(ui, `category == "Miscellaneous Guides"`) {
		t.Error("UI does not show miscellaneous guides")
	}
	core := fileText(t, root, "Core.lua")
	for _, expected := range []string{"schemaVersion = 4", "hideInCombat = false", "showMinimapButton = true", "guideScale = 1", `point = "LEFT", relativePoint = "LEFT", x = 0, y = 0`, `point = "TOP", relativePoint = "TOP", x = 0, y = -90`} {
		if !strings.Contains(core+ui, expected) {
			t.Errorf("runtime UX source missing %q", expected)
		}
	}
	for _, expected := range []string{"function UI:OpenTracker()", "function UI:CloseTracker()", "function UI:OpenGuideBrowser()", "function UI:ToggleGuideBrowser()", "function UI:ToggleGuideTracker()", "function UI:OpenSettings()", "function UI:CloseSettingsIfOpen()", "if UI.PlayerInCombat() then return end", "SetClampedToScreen(true)", "TomTomWaypoints"} {
		if !strings.Contains(ui, expected) {
			t.Errorf("UI missing behavior %q", expected)
		}
	}
	if strings.Contains(ui, "CreateLine") || strings.Contains(ui, "NavigationArrow") {
		t.Error("UI contains a retired line or arrow widget")
	}
	navigation := fileText(t, root, "Navigation.lua")
	if !strings.Contains(navigation, "GetMapRectOnMap") {
		t.Error("navigation does not use map-space coordinates")
	}
	mapPins := fileText(t, root, "MapPins.lua")
	if !strings.Contains(mapPins, `"Waypoint-MapPin-Tracked"`) || !strings.Contains(mapPins, "MapCanvasDataProviderMixin") || strings.Contains(mapPins, "AcquirePin") {
		t.Error("map pin provider contract changed")
	}
	if !strings.Contains(fileText(t, root, "TomTomWaypoints.lua"), "AddWaypoint") || !strings.Contains(fileText(t, root, "ForeverGuideMate.toc"), "## AddonCompartmentFunc: ForeverGuideMate_OnAddonCompartmentClick") {
		t.Error("waypoint or addon-compartment contract missing")
	}
}

func TestCasualSpineFactionAndForeverWeaves(t *testing.T) {
	root := repoRoot(t)
	horde := []string{"durotar.lua", "mulgore.lua", "tirisfal-glades.lua", "horde-silverpine-forest.lua", "horde-the-barrens-and-stonetalon-mountain.lua", "horde-ashenvale.lua", "horde-thousand-needles.lua", "horde-hillsbrad-foothills-part-2.lua", "horde-silithus.lua"}
	alliance := []string{"dun-morogh.lua", "elwynn-forest.lua", "teldrassil.lua", "alliance-westfall.lua", "alliance-darkshore.lua", "alliance-loch-modan.lua", "alliance-duskwood-and-stranglethorn-vale.lua", "alliance-silithus.lua"}
	toc := fileText(t, root, "ForeverGuideMate.toc")
	for _, entry := range []struct {
		files          []string
		faction, other string
	}{{horde, "Horde", "Alliance"}, {alliance, "Alliance", "Horde"}} {
		for _, name := range entry.files {
			path := "Guides/Leveling/" + name
			guide := fileText(t, root, path)
			requireContains(t, toc, path)
			requireContains(t, guide, "casualSpine = true")
			requireContains(t, guide, `{ faction = "`+entry.faction+`" }`)
			if strings.Contains(guide, `{ faction = "`+entry.other+`" }`) {
				t.Errorf("%s unexpectedly has %s faction steps", path, entry.other)
			}
		}
	}
	silverpine := fileText(t, root, "Guides/Leveling/horde-silverpine-forest.lua")
	requireContains(t, silverpine, "{ race = 5 }")
	if strings.Index(toc, "Guides/Leveling/horde-silverpine-forest.lua") > strings.Index(toc, "Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua") {
		t.Error("Horde route registration order changed")
	}
	darkshore := fileText(t, root, "Guides/Leveling/alliance-darkshore-part-2.lua")
	dunMorogh := fileText(t, root, "Guides/Leveling/dun-morogh.lua")
	barrens := fileText(t, root, "Guides/Leveling/horde-the-barrens-and-stonetalon-mountain.lua")
	if !strings.Contains(darkshore, "98461") && !strings.Contains(fileText(t, root, "Guides/Leveling/alliance-wetlands.lua"), "98461") {
		t.Error("Forever Unrequited Love weave missing")
	}
	if !strings.Contains(dunMorogh, "97277") && !strings.Contains(dunMorogh, "woven-") {
		t.Error("Dun Morogh Forever weave missing")
	}
	if !strings.Contains(barrens, "woven-") && !strings.Contains(barrens, "QuestState(9") && !strings.Contains(barrens, "QuestObjective(9") {
		t.Error("Barrens Forever weave missing")
	}
}
