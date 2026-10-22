// Package zoneauthoring prepares one ordered zone itinerary and its evidence
// for review.
//
// This is an authoring tool, not an upstream guide importer. It preserves
// existing route actions, reads quest facts from original Forever observations,
// and records unsupported candidates rather than inventing missing mechanics.
package zoneauthoring

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"os"
	"os/exec"
	"path/filepath"
	"sort"
	"strconv"
	"strings"

	"github.com/TylerAkins/forever-guide-mate/internal/loremaster"
)

const (
	// UpstreamCommit is the pinned Zygor Guides Remaster revision used for
	// advisory ordering evidence.
	UpstreamCommit = "9087c457e20fb96e73e5b362dd6fc50324b75718"
	// UpstreamRepo is the advisory ordering source repository.
	UpstreamRepo = "https://github.com/ErebusAres/ZygorGuidesRemaster-3.3.5a_WOTLK"
)

var capitals = map[string]bool{
	"Stormwind City": true, "Ironforge": true, "Darnassus": true,
	"Orgrimmar": true, "Thunder Bluff": true, "Undercity": true,
}

var zoneAliases = map[string]string{
	"Barrens": "The Barrens", "Hinterlands": "The Hinterlands", "Blackmaw Hold": "Felwood",
	"Abyssal Sands": "Tanaris", "Field of Giants": "The Barrens", "Stonewrought Dam": "Loch Modan",
	"Thoradin's Wall": "Arathi Highlands", "Rut'theran Village": "Teldrassil",
	"Anvilmar": "Dun Morogh", "Kharanos": "Dun Morogh",
}

var unresolvedMechanics = map[int]string{
	1126: "Local observations identify the Encrusted Silithid Object drop but do not document how to trigger the hive from the tower; encounter instructions need verification.",
}

var excludedZones = map[string]bool{"Mount Hyjal": true, "Riverglades": true}

var outsideItineraryFlags = []string{"dungeon", "raid", "daily", "weekly", "monthly", "repeatable"}

var prerequisiteFlags = []string{"dungeon", "raid", "daily", "weekly", "monthly"}

// ZoneSpec describes one zone candidate from the zone inventory.
type ZoneSpec struct {
	Zone   string `json:"zone"`
	Slug   string `json:"slug"`
	MapID  int    `json:"mapID"`
	File   string `json:"file"`
	Status string `json:"status"`
}

// Snapshot is the exported guide and prerequisite state used for authoring.
type Snapshot struct {
	Guides        []map[string]any            `json:"guides"`
	Prerequisites map[string][]map[string]any `json:"prerequisites"`
}

// Band is a frozen Casual chapter level band.
type Band struct {
	Min int `json:"min"`
	Max int `json:"max"`
}

// Environment supplies the repository inputs the authoring flow reads.
type Environment struct {
	// Root is the repository root that holds the zone inventory, the guides,
	// and the frozen reference bands.
	Root string
	// Database is the wow-database checkout holding the compiled observations.
	Database string
	// Upstream is the clean Zygor Guides Remaster checkout.
	Upstream string
	// Snapshot is the exported guide and prerequisite state.
	Snapshot Snapshot
	// Bands holds the frozen Casual chapter level bands. When it is nil the
	// environment reads them from the repository.
	Bands map[string]Band
	// UpstreamRevision reports the upstream checkout revision.
	UpstreamRevision func() (string, error)
	// VerifyUpstream confirms the upstream guide checkout has no local edits.
	VerifyUpstream func() error
	// DatabaseRevision reports the database checkout revision.
	DatabaseRevision func() (string, error)
	// UpstreamActions reads the advisory ordering evidence for one faction.
	UpstreamActions func(faction, zone string) ([]loremaster.Action, map[string]string, error)
}

// LoadSnapshot decodes the guide and prerequisite export.
func LoadSnapshot(data []byte) (Snapshot, error) {
	// The Lua exporter writes an empty prerequisite table as an array.
	raw := struct {
		Guides        []map[string]any `json:"guides"`
		Prerequisites json.RawMessage  `json:"prerequisites"`
	}{}
	decoder := json.NewDecoder(strings.NewReader(string(data)))
	decoder.UseNumber()
	if err := decoder.Decode(&raw); err != nil {
		return Snapshot{}, err
	}
	snapshot := Snapshot{Guides: raw.Guides, Prerequisites: map[string][]map[string]any{}}
	if trimmed := strings.TrimSpace(string(raw.Prerequisites)); trimmed != "" && trimmed != "[]" && trimmed != "null" {
		if err := json.Unmarshal(raw.Prerequisites, &snapshot.Prerequisites); err != nil {
			return Snapshot{}, err
		}
	}
	return snapshot, nil
}

// Prepare builds one zone candidate. It returns the rendered guide text and
// the audit that records the dispositions behind it. An empty guide text means
// the zone has no supported itinerary yet.
func Prepare(spec ZoneSpec, env Environment) (string, *orderedMap, error) {
	s := &session{env: env, spec: spec, zone: spec.Zone}
	if err := s.run(); err != nil {
		return "", nil, err
	}
	return s.rendered, s.audit, nil
}

// session carries the mutable state of one zone preparation.
type session struct {
	env          Environment
	spec         ZoneSpec
	zone         string
	facts        map[int]map[string]any
	areaNames    map[int]string
	catalogs     map[int][]string
	candidates   map[int]bool
	bands        map[string]Band
	guides       []map[string]any
	current      map[string]any
	audit        *orderedMap
	raw          map[string]string
	currentGoals []map[string]any
	allGoals     map[string]map[string]any
	added        map[string]bool
	removed      map[string]bool
	sourcesUsed  []string
	placements   []any
	matches      *orderedMap
	guide        map[string]any
	rendered     string
}

// run prepares the zone candidate.
func (s *session) run() error {
	if s.env.UpstreamRevision != nil {
		revision, err := s.env.UpstreamRevision()
		if err != nil {
			return err
		}
		if revision != UpstreamCommit {
			return fmt.Errorf("Expected upstream %s, found %s", UpstreamCommit, revision)
		}
	}
	if s.env.VerifyUpstream != nil {
		if err := s.env.VerifyUpstream(); err != nil {
			return err
		}
	}
	bands := s.env.Bands
	if bands == nil {
		loaded, err := loadBands(s.env.Root)
		if err != nil {
			return err
		}
		bands = loaded
	}
	s.bands = bands

	facts, err := loremaster.LoadSourceFacts(s.env.Database)
	if err != nil {
		return err
	}
	s.facts = facts
	areaNames, catalogs, err := loadCatalogs(s.env.Database)
	if err != nil {
		return err
	}
	s.areaNames = areaNames
	s.catalogs = catalogs

	s.guides = s.env.Snapshot.Guides
	for _, guide := range s.guides {
		if guideID(guide) == "loremaster-"+s.spec.Slug {
			s.current = guide
			break
		}
	}

	s.audit = newOrderedMap()
	s.matches = newOrderedMap()
	s.added = map[string]bool{}
	s.removed = map[string]bool{}
	s.allGoals = map[string]map[string]any{}
	s.raw = map[string]string{}
	if err := s.buildAudit(); err != nil {
		return err
	}

	zoneSlug := s.spec.Slug
	if zoneSlug == "un-goro-crater" {
		zoneSlug = "ungoro-crater"
	}
	candidates := map[int]bool{}
	for quest, names := range s.catalogs {
		for _, name := range names {
			if name == zoneSlug {
				candidates[quest] = true
			}
		}
	}
	capitalSlugs := map[string]bool{}
	for city := range capitals {
		capitalSlugs[loremaster.Slug(city)] = true
	}
	for quest, fact := range s.facts {
		if ownership(fact, s.areaNames) != s.zone {
			continue
		}
		for _, name := range s.catalogs[quest] {
			if capitalSlugs[name] {
				candidates[quest] = true
				break
			}
		}
	}
	s.candidates = candidates

	s.currentGoals = []map[string]any{}
	if s.current != nil {
		s.currentGoals = deepCopyList(objectList(s.current["goals"]))
	}
	for _, goal := range s.currentGoals {
		s.allGoals[goalID(goal)] = goal
	}
	if s.current != nil {
		data, err := os.ReadFile(s.guidePath())
		if err != nil {
			return err
		}
		parsed, err := loremaster.ParseGoals(s.env.Root, string(data), "", "", "")
		if err != nil {
			return err
		}
		for _, goal := range parsed {
			s.raw[goal.ID] = goal.Raw
		}
	}

	for _, faction := range []string{"Alliance", "Horde"} {
		if err := s.prepareFaction(faction); err != nil {
			return err
		}
	}

	s.addVisitEntries()
	s.recordAuthoredQuests()
	s.filterPlacements()
	if len(s.currentGoals) == 0 {
		return nil
	}
	s.buildGuide()
	return s.render()
}

// guidePath reports the guide file the zone owns.
func (s *session) guidePath() string {
	return filepath.Join(s.env.Root, filepath.FromSlash(s.spec.File))
}

// buildAudit seeds the audit with the recorded evidence, the source
// precedence, and the upstream ordering contract.
func (s *session) buildAudit() error {
	auditPath := filepath.Join(s.env.Root, "docs", "loremaster", s.spec.Slug+".json")
	data, err := os.ReadFile(auditPath)
	switch {
	case err == nil:
		decoded, decodeErr := decodeOrdered(data)
		if decodeErr != nil {
			return decodeErr
		}
		loaded, ok := decoded.(*orderedMap)
		if !ok {
			return fmt.Errorf("audit %s is not a JSON object", auditPath)
		}
		s.audit = loaded
	case os.IsNotExist(err):
		s.audit.Set("guide", "loremaster-"+s.spec.Slug)
		s.audit.Set("title", s.zone)
		s.audit.Set("spine", "")
		s.audit.Set("additionalSpines", []any{})
		s.audit.Set("spineActions", []any{})
		s.audit.Set("placements", []any{})
		s.audit.Set("quests", newOrderedMap())
		s.audit.Set("supportingQuests", []any{})
		s.audit.Set("clientWalkthrough", "unverified")
	default:
		return err
	}
	s.audit.Set("sourcePriority", toAnyList(loremaster.SourcePriority()))

	manifestPath := filepath.Join(s.env.Database, "data", "forever", "compilation", "manifest.json")
	manifestData, err := os.ReadFile(manifestPath)
	if err != nil {
		return err
	}
	manifest, err := decodeOrdered(manifestData)
	if err != nil {
		return err
	}

	recordsPath := filepath.Join(s.env.Database, "data", "forever", "compilation", "records.jsonl.gz")
	records, err := os.ReadFile(recordsPath)
	if err != nil {
		return err
	}
	sum := sha256.Sum256(records)
	databaseCommit := ""
	if s.env.DatabaseRevision != nil {
		databaseCommit, err = s.env.DatabaseRevision()
		if err != nil {
			return err
		}
	}
	sources := newOrderedMap()
	sources.Set("databaseCommit", databaseCommit)
	sources.Set("compilation", manifest)
	sourceHashes := newOrderedMap()
	sourceHashes.Set("data/forever/compilation/records.jsonl.gz", hex.EncodeToString(sum[:]))
	sources.Set("sourceHashes", sourceHashes)
	s.audit.Set("sources", sources)
	s.audit.Set("coverageMode", "zone")
	s.audit.Set("orderingEligibility", newOrderedMap())
	upstream := newOrderedMap()
	upstream.Set("repository", UpstreamRepo)
	upstream.Set("commit", UpstreamCommit)
	upstream.Set("strict", false)
	upstream.Set("sourceHashes", newOrderedMap())
	s.audit.Set("upstream", upstream)
	return nil
}

// prepareFaction selects the candidates for one faction, closes the
// prerequisite chain, and orders the resulting actions.
func (s *session) prepareFaction(faction string) error {
	sourceGuides := []map[string]any{}
	for _, guide := range s.guides {
		if guideCategory(guide) != "Leveling Quest Guides" {
			continue
		}
		if factionOf(guide["conditions"]) != faction {
			continue
		}
		sourceGuides = append(sourceGuides, guide)
	}
	sourceActions := []sourceAction{}
	sourceLookup := map[string]sourceAction{}
	byQuest := map[int][]sourceAction{}
	byID := map[string][]string{}
	for _, guide := range sourceGuides {
		for _, goal := range guideGoals(guide) {
			node := strings.ToLower(faction) + "-" + guideID(guide) + "-" + goalID(goal)
			action := sourceAction{node: node, guide: guide, goal: goal}
			sourceActions = append(sourceActions, action)
			sourceLookup[node] = action
			byID[goalID(goal)] = append(byID[goalID(goal)], node)
			if quest, ok := questIDOf(goal); ok {
				byQuest[quest] = append(byQuest[quest], action)
			}
		}
	}
	sourceOrder := map[string]int{}
	for index, action := range sourceActions {
		sourceOrder[action.node] = index
	}
	casualQuests := map[int]bool{}
	for _, action := range sourceActions {
		if text(action.goal["kind"]) != "accept" {
			continue
		}
		if quest, ok := questIDOf(action.goal); ok {
			casualQuests[quest] = true
		}
	}

	upstreamOrder, hashes, err := s.upstreamActions(faction)
	if err != nil {
		return err
	}
	upstreamHashes := ensureOrdered(ensureOrdered(s.audit, "upstream"), "sourceHashes")
	for _, name := range sortedStringKeys(hashes) {
		upstreamHashes.Set(name, hashes[name])
	}

	eligibility := ensureOrdered(s.audit, "orderingEligibility")
	for _, quest := range sortedQuests(s.candidates) {
		entry := ensureOrdered(eligibility, strconv.Itoa(quest))
		var foreverSpecific any
		advisory := false
		if fact, known := s.facts[quest]; known {
			foreverSpecific = fact["forever"]
			advisory = !truthy(fact["forever"])
		}
		entry.Set(faction, map[string]any{
			"inCasual":         casualQuests[quest],
			"foreverSpecific":  foreverSpecific,
			"upstreamAdvisory": !casualQuests[quest] && advisory,
		})
	}

	known := map[int]bool{}
	for _, goal := range s.currentGoals {
		if text(goal["kind"]) != "accept" {
			continue
		}
		owner := factionOf(goal["conditions"])
		if owner != "" && owner != faction {
			continue
		}
		if quest, ok := questIDOf(goal); ok {
			known[quest] = true
		}
	}

	quests := ensureOrdered(s.audit, "quests")
	wanted := map[int]bool{}
	for _, quest := range sortedQuests(s.candidates) {
		if reason, unresolved := unresolvedMechanics[quest]; unresolved {
			fact := s.facts[quest]
			entry := newOrderedMap()
			entry.Set("catalogs", toAnyList(s.catalogs[quest]))
			entry.Set("evidence", factField(fact, "evidence"))
			entry.Set("sourceRevisions", factField(fact, "sourceRevisions"))
			entry.Set("locations", factField(fact, "points"))
			entry.Set("supporting", false)
			entry.Set("status", "unresolved")
			entry.Set("reason", reason)
			quests.Set(strconv.Itoa(quest), entry)
			if known[quest] {
				obsolete := map[string]bool{}
				for _, goal := range s.currentGoals {
					id, ok := questIDOf(goal)
					if !ok || id != quest {
						continue
					}
					if text(goal["sourceGuide"]) != "" {
						continue
					}
					owner := factionOf(goal["conditions"])
					if owner != "" && owner != faction {
						continue
					}
					obsolete[goalID(goal)] = true
				}
				for node := range obsolete {
					s.removed[node] = true
				}
				s.currentGoals = filterGoals(s.currentGoals, func(goal map[string]any) bool {
					return !obsolete[goalID(goal)]
				})
			}
			continue
		}
		if known[quest] {
			continue
		}
		fact, ok := s.facts[quest]
		if !ok {
			continue
		}
		if factionName := text(fact["faction"]); factionName != "" && factionName != faction {
			continue
		}
		if existing := quests.Ordered(strconv.Itoa(quest)); existing != nil {
			status := text(existing.Value("status"))
			if (status == "excluded" || status == "other-zone" || status == "unresolved") && s.current != nil {
				continue
			}
		}
		entry := newOrderedMap()
		entry.Set("catalogs", toAnyList(s.catalogs[quest]))
		entry.Set("evidence", factField(fact, "evidence"))
		entry.Set("sourceRevisions", factField(fact, "sourceRevisions"))
		entry.Set("locations", factField(fact, "points"))
		entry.Set("supporting", false)
		quests.Set(strconv.Itoa(quest), entry)
		owner := ownership(fact, s.areaNames)
		switch {
		case owner != "" && owner != s.zone:
			entry.Set("status", "other-zone")
			entry.Set("reason", "Quest work belongs to "+owner+", not its pickup catalog.")
		case hasAnyFlag(fact, outsideItineraryFlags) || strings.Contains(strings.ToLower(text(fact["name"])), "unused"):
			entry.Set("status", "excluded")
			entry.Set("reason", "Dungeon, raid, event/repeatable, or unused work is outside this outdoor itinerary.")
		case len(textList(fact["unresolved"])) > 0 && !casualQuests[quest]:
			entry.Set("status", "unresolved")
			entry.Set("reason", strings.Join(textList(fact["unresolved"]), "; "))
		default:
			wanted[quest] = true
		}
	}

	roots := map[int]bool{}
	for quest := range wanted {
		roots[quest] = true
	}
	requirements := map[int][]map[string]any{}
	sourceRequirements := map[int]map[int]bool{}
	failures := map[int]string{}
	pending := sortedQuests(wanted)
	for len(pending) > 0 {
		quest := pending[len(pending)-1]
		pending = pending[:len(pending)-1]
		if _, done := requirements[quest]; done {
			continue
		}
		fact, ok := s.facts[quest]
		if !ok {
			failures[quest] = "Missing prerequisite observations"
			requirements[quest] = []map[string]any{}
			continue
		}
		owner := ownership(fact, s.areaNames)
		if excludedZones[owner] || pointsVisitExcludedZones(fact) {
			failures[quest] = "Required work visits an excluded zone"
		}
		if factionName := text(fact["faction"]); factionName != "" && factionName != faction {
			failures[quest] = "Prerequisite is unavailable to this faction"
		}
		if hasAnyFlag(fact, prerequisiteFlags) {
			failures[quest] = "Prerequisite requires dungeon, raid, or event work outside this itinerary"
		}
		groups := objectList(fact["requirements"])
		if casualQuests[quest] {
			groups = []map[string]any{}
			for _, action := range byQuest[quest] {
				if text(action.goal["kind"]) != "accept" {
					continue
				}
				for _, group := range objectList(action.goal["requiredQuests"]) {
					if !containsGroup(groups, group) {
						groups = append(groups, group)
					}
				}
			}
		}
		registered := s.env.Snapshot.Prerequisites[strconv.Itoa(quest)]
		if len(groups) == 0 && len(registered) > 0 {
			groups = []map[string]any{}
			for _, group := range registered {
				entry := map[string]any{"mode": group["mode"], "quests": group["quests"]}
				if conditions, exists := group["conditions"]; exists {
					entry["conditions"] = conditions
				} else {
					entry["conditions"] = map[string]any{}
				}
				groups = append(groups, entry)
			}
		}
		requirements[quest] = groups
		if casualQuests[quest] {
			sourceRequirements[quest] = dependencyQuests(quest, byQuest, byID, sourceOrder, sourceLookup)
		} else {
			sourceRequirements[quest] = map[int]bool{}
		}
		if !casualQuests[quest] {
			if _, err := loremaster.BuildAuthoringActions(fact, faction); err != nil {
				failures[quest] = err.Error()
			}
		}
		predecessors := map[int]bool{}
		for parent := range sourceRequirements[quest] {
			predecessors[parent] = true
		}
		for _, group := range groups {
			for _, parent := range groupQuests(group) {
				predecessors[parent] = true
			}
		}
		for _, parent := range sortedQuests(predecessors) {
			if wanted[parent] || known[parent] {
				continue
			}
			wanted[parent] = true
			pending = append(pending, parent)
			if quests.Ordered(strconv.Itoa(parent)) == nil {
				if fact, ok := s.facts[parent]; ok {
					entry := newOrderedMap()
					entry.Set("catalogs", toAnyList(s.catalogs[parent]))
					entry.Set("supporting", true)
					entry.Set("evidence", factField(fact, "evidence"))
					entry.Set("sourceRevisions", factField(fact, "sourceRevisions"))
					entry.Set("locations", factField(fact, "points"))
					quests.Set(strconv.Itoa(parent), entry)
				}
			}
			if !roots[parent] {
				if entry := quests.Ordered(strconv.Itoa(parent)); entry != nil {
					entry.Set("supporting", true)
				}
			}
		}
	}

	for {
		changed := false
		for _, quest := range sortedQuests(requirements) {
			if _, failed := failures[quest]; failed {
				continue
			}
			if anyFailed(sourceRequirements[quest], failures) {
				failures[quest] = "A required source handoff remains unresolved"
				changed = true
				continue
			}
			if groupFailure(requirements[quest], failures) {
				failures[quest] = "A required prerequisite remains unresolved"
				changed = true
			}
		}
		if !changed {
			break
		}
	}
	for _, quest := range sortedQuests(wanted) {
		reason, failed := failures[quest]
		if !failed {
			continue
		}
		entry := quests.Ordered(strconv.Itoa(quest))
		if entry == nil {
			entry = newOrderedMap()
			entry.Set("evidence", map[string]any{})
			entry.Set("catalogs", []any{})
			quests.Set(strconv.Itoa(quest), entry)
		}
		entry.Set("status", "unresolved")
		entry.Set("reason", reason)
		delete(wanted, quest)
	}

	needed := map[int]bool{}
	pending = []int{}
	for _, quest := range sortedQuests(roots) {
		if wanted[quest] {
			pending = append(pending, quest)
		}
	}
	for len(pending) > 0 {
		quest := pending[len(pending)-1]
		pending = pending[:len(pending)-1]
		if needed[quest] {
			continue
		}
		needed[quest] = true
		predecessors := map[int]bool{}
		for parent := range sourceRequirements[quest] {
			predecessors[parent] = true
		}
		for _, group := range requirements[quest] {
			for _, parent := range groupQuests(group) {
				predecessors[parent] = true
			}
		}
		for _, parent := range sortedQuests(predecessors) {
			if wanted[parent] && !needed[parent] {
				pending = append(pending, parent)
			}
		}
	}
	for _, quest := range sortedQuests(wanted) {
		if needed[quest] {
			continue
		}
		if entry := quests.Ordered(strconv.Itoa(quest)); entry != nil {
			entry.Set("status", "excluded")
			entry.Set("reason", "Prerequisite excursion only served a candidate whose complete itinerary remains unresolved.")
		}
	}
	for quest := range wanted {
		if !needed[quest] {
			delete(wanted, quest)
		}
	}

	selectedIDs := map[string]bool{}
	for _, action := range sourceActions {
		quest, ok := questIDOf(action.goal)
		if ok && wanted[quest] {
			selectedIDs[action.node] = true
		}
	}
	// Dependency notes belong with the selected source action even without a
	// quest identifier.
	for {
		changed := false
		for _, action := range sourceActions {
			if !selectedIDs[action.node] {
				continue
			}
			for _, dependency := range dependsList(action.goal) {
				for _, node := range byID[dependency] {
					if strings.HasPrefix(node, strings.ToLower(faction)+"-"+guideID(action.guide)+"-") && !selectedIDs[node] {
						selectedIDs[node] = true
						changed = true
					}
				}
			}
		}
		if !changed {
			break
		}
	}
	selected := []sourceAction{}
	for _, action := range sourceActions {
		if selectedIDs[action.node] {
			selected = append(selected, action)
		}
	}

	mapping := map[string]string{}
	for _, action := range selected {
		mapping[guideID(action.guide)+"\x00"+goalID(action.goal)] = action.node
	}
	factionSpine := []string{}
	originals := map[string]map[string]any{}
	for _, action := range selected {
		originals[action.node] = action.goal
	}
	for _, action := range selected {
		clone := deepCopyMap(action.goal)
		delete(clone, "questPrerequisites")
		clone["id"] = action.node
		clone["sourceGuide"] = guideID(action.guide)
		clone["sourceActionID"] = goalID(action.goal)
		dependencies := []string{}
		for _, dependency := range dependsList(action.goal) {
			target, mapped := mapping[guideID(action.guide)+"\x00"+dependency]
			if !mapped {
				earlier := []string{}
				for _, candidate := range selected {
					if goalID(candidate.goal) == dependency && sourceOrder[candidate.node] < sourceOrder[action.node] {
						earlier = append(earlier, candidate.node)
					}
				}
				if len(earlier) > 0 {
					target = earlier[len(earlier)-1]
				}
			}
			// A repeated quest can expose a later pickup or objective for the
			// same quest in a merged source chapter. Reuse the earlier visit.
			if target != "" && sourceOrder[target] > sourceOrder[action.node] {
				dependencyGoal := originals[target]
				dependencyKind := text(dependencyGoal["kind"])
				if dependencyKind == "accept" || dependencyKind == "objective" {
					quest, questOK := questIDOf(dependencyGoal)
					goalQuest, goalQuestOK := questIDOf(action.goal)
					if questOK && goalQuestOK && quest == goalQuest {
						earlierVisits := []string{}
						for _, visit := range selected {
							original := originals[visit.node]
							if sourceOrder[visit.node] >= sourceOrder[action.node] {
								continue
							}
							if text(original["kind"]) != dependencyKind {
								continue
							}
							otherQuest, ok := questIDOf(original)
							if !ok || otherQuest != goalQuest {
								continue
							}
							if !deepEqual(original["complete"], dependencyGoal["complete"]) {
								continue
							}
							if !deepEqual(original["conditions"], action.goal["conditions"]) {
								continue
							}
							if dependencyKind == "accept" {
								complete := object(dependencyGoal["complete"])
								if text(object(complete["quest"])["state"]) != "activeOrCompleted" {
									continue
								}
							}
							earlierVisits = append(earlierVisits, visit.node)
						}
						if len(earlierVisits) > 0 {
							best := earlierVisits[0]
							for _, node := range earlierVisits[1:] {
								if sourceOrder[node] > sourceOrder[best] {
									best = node
								}
							}
							target = best
						}
					}
				}
			}
			if target != "" && !containsString(dependencies, target) {
				dependencies = append(dependencies, target)
			}
		}
		clone["dependsOn"] = toAnyList(dependencies)
		s.allGoals[action.node] = clone
		s.added[action.node] = true
		factionSpine = append(factionSpine, action.node)
		if !containsString(s.sourcesUsed, guideID(action.guide)) {
			s.sourcesUsed = append(s.sourcesUsed, guideID(action.guide))
		}
	}

	extraIDs := []string{}
	for _, quest := range sortedQuests(wanted) {
		if casualQuests[quest] {
			continue
		}
		fact, ok := s.facts[quest]
		if !ok {
			continue
		}
		actions, err := loremaster.BuildAuthoringActions(fact, faction)
		if err != nil {
			return err
		}
		for _, goal := range actions {
			s.allGoals[goalID(goal)] = goal
			s.added[goalID(goal)] = true
			extraIDs = append(extraIDs, goalID(goal))
		}
	}

	existing := []string{}
	for _, goal := range s.currentGoals {
		owner := factionOf(goal["conditions"])
		if owner == "" || owner == faction {
			existing = append(existing, goalID(goal))
		}
	}
	for _, node := range existing {
		goal, ok := s.allGoals[node]
		if !ok {
			continue
		}
		quest, ok := integer(goal["checkpointQuest"])
		if !ok || !strings.Contains(node, "-extra-") {
			continue
		}
		fact, ok := s.facts[quest]
		if !ok {
			continue
		}
		level := integerOrZero(fact["offer"])
		goal["text"] = "Reach level " + strconv.Itoa(level) + " before this visit."
		goal["complete"] = map[string]any{"level": map[string]any{"min": level}}
		goal["requiredLevel"] = level
		delete(s.raw, node)
	}

	sourceIDs := map[string]bool{}
	for _, action := range sourceActions {
		sourceIDs[action.node] = true
	}
	guideIDs := map[string]bool{}
	for _, guide := range sourceGuides {
		guideIDs[guideID(guide)] = true
	}
	stale := map[string]bool{}
	for _, goal := range s.currentGoals {
		source := text(goal["sourceGuide"])
		if !guideIDs[source] {
			continue
		}
		owner := factionOf(goal["conditions"])
		if owner != "" && owner != faction {
			continue
		}
		node := strings.ToLower(faction) + "-" + source + "-" + text(goal["sourceActionID"])
		if !sourceIDs[node] {
			stale[goalID(goal)] = true
		}
	}
	for node := range stale {
		s.removed[node] = true
	}
	kept := []string{}
	for _, node := range existing {
		if !stale[node] {
			kept = append(kept, node)
		}
	}
	existing = kept

	movable := []string{}
	for _, node := range existing {
		goal, ok := s.allGoals[node]
		if !ok {
			continue
		}
		quest, ok := questIDOf(goal)
		if !ok {
			continue
		}
		fact, ok := s.facts[quest]
		if !ok {
			continue
		}
		if casualQuests[quest] {
			continue
		}
		if strings.Contains(node, "-extra-") || (!truthy(fact["forever"]) && fact["firstseenpatch"] != nil) {
			movable = append(movable, node)
		}
	}
	extraIDs = append(movable, extraIDs...)
	active := []string{}
	for _, node := range existing {
		if !containsString(movable, node) {
			active = append(active, node)
		}
	}

	originalPositions := map[string]int{}
	for index, action := range sourceActions {
		if _, seen := originalPositions[goalID(action.goal)]; !seen {
			originalPositions[goalID(action.goal)] = index
		}
	}
	sourcePosition := func(node string) (int, bool) {
		if index, ok := sourceOrder[node]; ok {
			return index, true
		}
		goal, ok := s.allGoals[node]
		if !ok {
			return 0, false
		}
		if source := text(goal["sourceGuide"]); source != "" {
			sourceNode := strings.ToLower(faction) + "-" + source + "-" + text(goal["sourceActionID"])
			index, ok := sourceOrder[sourceNode]
			return index, ok
		}
		index, ok := originalPositions[goalID(goal)]
		return index, ok
	}
	// Place newly copied Casual actions alongside matching original source IDs.
	for _, node := range factionSpine {
		position := -1
		for index, action := range sourceActions {
			if action.node == node {
				position = index
				break
			}
		}
		if position < 0 {
			continue
		}
		anchors := []string{}
		for _, candidate := range active {
			index, ok := sourcePosition(candidate)
			if ok && index <= position {
				anchors = append(anchors, candidate)
			}
		}
		index := 0
		if len(anchors) > 0 {
			anchor := anchors[len(anchors)-1]
			for position, candidate := range active {
				if candidate == anchor {
					index = position + 1
					break
				}
			}
		}
		active = insertString(active, index, node)
	}

	nodes := append(append([]string{}, active...), extraIDs...)
	turnins := map[int][]string{}
	turninOrder := []int{}
	accepts := map[int][]string{}
	for _, node := range nodes {
		goal, ok := s.allGoals[node]
		if !ok {
			continue
		}
		quest, ok := questIDOf(goal)
		if !ok {
			continue
		}
		switch text(goal["kind"]) {
		case "turnin":
			if _, seen := turnins[quest]; !seen {
				turninOrder = append(turninOrder, quest)
			}
			turnins[quest] = append(turnins[quest], node)
		case "accept":
			accepts[quest] = append(accepts[quest], node)
		}
	}
	positions := map[string]int{}
	for index, node := range nodes {
		positions[node] = index
	}
	for _, node := range nodes {
		goal, ok := s.allGoals[node]
		if !ok || text(goal["kind"]) != "turnin" {
			continue
		}
		quest, questOK := questIDOf(goal)
		work := []string{}
		for _, candidate := range nodes {
			other, ok := s.allGoals[candidate]
			if !ok || text(other["kind"]) != "objective" {
				continue
			}
			otherQuest, ok := questIDOf(other)
			if !ok || !questOK || otherQuest != quest {
				continue
			}
			if positions[candidate] < positions[node] {
				work = append(work, candidate)
			}
		}
		dependencies := dependsList(goal)
		goal["dependsOn"] = toAnyList(uniqueStrings(append(append([]string{}, dependencies...), work...)))
		delete(s.raw, node)
	}

	predecessors := map[string][]string{}
	for _, node := range nodes {
		goal, ok := s.allGoals[node]
		if !ok {
			continue
		}
		entries := []string{}
		for _, dependency := range dependsList(goal) {
			if containsString(nodes, dependency) {
				entries = append(entries, dependency)
			}
		}
		predecessors[node] = entries
	}
	for _, node := range nodes {
		goal, ok := s.allGoals[node]
		if !ok || !containsString(extraIDs, node) {
			continue
		}
		if text(goal["kind"]) != "accept" {
			continue
		}
		quest, _ := questIDOf(goal)
		groups := objectList(goal["requiredQuests"])
		if len(groups) == 0 {
			groups = requirements[quest]
		}
		for _, group := range groups {
			for _, parent := range groupQuests(group) {
				predecessors[node] = append(predecessors[node], turnins[parent]...)
			}
		}
		// Ordering every available alternative before this pickup does not
		// make every alternative a completion requirement.
		goal["requiredQuests"] = groupsAsAny(deepCopyList(groups))
		for _, group := range groups {
			if text(group["mode"]) == "all" && !truthy(group["conditions"]) {
				for _, parent := range groupQuests(group) {
					predecessors[node] = append(predecessors[node], turnins[parent]...)
					goal["dependsOn"] = toAnyList(uniqueStrings(append(dependsList(goal), turnins[parent]...)))
				}
			}
		}
	}
	breadcrumbQuests := map[int]bool{}
	for _, node := range extraIDs {
		if goal, ok := s.allGoals[node]; ok {
			if quest, ok := questIDOf(goal); ok {
				breadcrumbQuests[quest] = true
			}
		}
	}
	for _, quest := range sortedQuests(breadcrumbQuests) {
		fact, ok := s.facts[quest]
		if !ok {
			continue
		}
		target, ok := integer(fact["breadcrumbForQuestId"])
		if !ok || target == 0 {
			continue
		}
		for _, pickup := range accepts[target] {
			predecessors[pickup] = append(predecessors[pickup], turnins[quest]...)
		}
	}

	availabilityFacts := make(map[int]map[string]any, len(s.facts))
	for quest, fact := range s.facts {
		availabilityFacts[quest] = fact
	}
	for quest, groups := range requirements {
		if fact, ok := s.facts[quest]; ok {
			copied := deepCopyMap(fact)
			copied["requirements"] = groupsAsAny(groups)
			availabilityFacts[quest] = copied
		}
	}
	failureList := sortedQuests(failures)
	for _, node := range nodes {
		goal, ok := s.allGoals[node]
		if !ok {
			continue
		}
		if !s.added[node] && !containsString(extraIDs, node) {
			continue
		}
		quest, ok := questIDOf(goal)
		if !ok {
			continue
		}
		groups := objectList(goal["requiredQuests"])
		if len(groups) == 0 {
			groups = requirements[quest]
		}
		if len(groups) == 0 {
			continue
		}
		fact, ok := availabilityFacts[quest]
		if !ok {
			continue
		}
		copied := deepCopyMap(fact)
		copied["requirements"] = groupsAsAny(groups)
		availabilityFacts[quest] = copied
		possible := loremaster.PrerequisiteAvailability(quest, availabilityFacts, failureList, nil)
		gate := map[string]any{"not": map[string]any{"any": []any{
			map[string]any{"quest": map[string]any{"id": quest, "state": "activeOrCompleted"}},
			possible,
		}}}
		if existing, ok := goal["excludeWhen"]; ok && truthy(existing) {
			goal["excludeWhen"] = map[string]any{"any": []any{existing, gate}}
		} else {
			goal["excludeWhen"] = gate
		}
		delete(s.raw, node)
		missing := map[int]bool{}
		for _, group := range groups {
			for _, parent := range groupQuests(group) {
				if _, failed := failures[parent]; failed {
					missing[parent] = true
				}
			}
		}
		if len(missing) > 0 {
			goal["unresolvedPrerequisites"] = toAnyInts(sortedQuests(missing))
		}
	}

	rank := map[string]loremaster.Action{}
	for _, action := range upstreamOrder {
		key := strconv.Itoa(action.Quest) + "\x00" + action.Kind
		if _, seen := rank[key]; !seen {
			rank[key] = action
		}
	}
	type rankedAction struct {
		source string
		line   int
		node   string
	}
	ranked := []rankedAction{}
	for _, node := range nodes {
		goal, ok := s.allGoals[node]
		if !ok {
			continue
		}
		quest, ok := questIDOf(goal)
		if !ok {
			continue
		}
		if fact, known := s.facts[quest]; known && truthy(fact["forever"]) {
			continue
		}
		if casualQuests[quest] && containsString(extraIDs, node) {
			continue
		}
		kind := text(goal["kind"])
		if _, ok := checkpointQuestOf(goal); ok {
			kind = "accept"
		}
		match, found := rank[strconv.Itoa(quest)+"\x00"+kind]
		if !found {
			continue
		}
		ranked = append(ranked, rankedAction{source: match.Source, line: match.Line, node: node})
		if containsString(extraIDs, node) {
			s.matches.Set(node, match)
		}
	}
	sort.SliceStable(ranked, func(i, j int) bool {
		if ranked[i].source != ranked[j].source {
			return ranked[i].source < ranked[j].source
		}
		if ranked[i].line != ranked[j].line {
			return ranked[i].line < ranked[j].line
		}
		return ranked[i].node < ranked[j].node
	})
	preference := []string{}
	for _, entry := range ranked {
		preference = append(preference, entry.node)
	}

	// Offer minima do not identify the leveling visit. Use the frozen
	// Casual chapter bands to keep higher recommendations in later returns.
	prerequisitePickups := map[int][]string{}
	for _, node := range active {
		goal, ok := s.allGoals[node]
		if !ok || text(goal["kind"]) != "accept" {
			continue
		}
		quest, _ := questIDOf(goal)
		groups := objectList(goal["requiredQuests"])
		if len(groups) == 0 {
			groups = requirements[quest]
		}
		for _, group := range groups {
			for _, parent := range groupQuests(group) {
				prerequisitePickups[parent] = append(prerequisitePickups[parent], node)
			}
		}
		for _, parent := range turninOrder {
			for _, turnin := range turnins[parent] {
				if containsString(predecessors[node], turnin) {
					prerequisitePickups[parent] = append(prerequisitePickups[parent], node)
				}
			}
		}
	}
	for _, node := range extraIDs {
		goal, ok := s.allGoals[node]
		if !ok || text(goal["kind"]) != "accept" {
			continue
		}
		quest, ok := questIDOf(goal)
		if !ok {
			continue
		}
		fact, ok := s.facts[quest]
		if !ok {
			continue
		}
		level := integerOrZero(fact["level"])
		dependent := prerequisitePickups[quest]
		var anchor string
		if len(dependent) > 0 {
			first := dependent[0]
			for _, candidate := range dependent {
				if indexOfString(active, candidate) < indexOfString(active, first) {
					first = candidate
				}
			}
			pickupIndex := indexOfString(active, first)
			if pickupIndex > 0 {
				anchor = active[pickupIndex-1]
			}
			for _, pickup := range dependent {
				predecessors[pickup] = append(predecessors[pickup], turnins[quest]...)
			}
		} else {
			for _, candidate := range active {
				other, ok := s.allGoals[candidate]
				if !ok {
					continue
				}
				band, known := s.bands[text(other["sourceGuide"])]
				if known && band.Max >= level {
					anchor = candidate
					break
				}
			}
			if anchor == "" && len(active) > 0 {
				anchor = active[len(active)-1]
			}
		}
		if anchor != "" {
			predecessors[node] = append(predecessors[node], anchor)
			for _, candidate := range extraIDs {
				other, ok := s.allGoals[candidate]
				if !ok {
					continue
				}
				if checkpoint, ok := integer(other["checkpointQuest"]); ok && checkpoint == quest {
					predecessors[candidate] = append(predecessors[candidate], anchor)
					break
				}
			}
		}
	}
	order, err := loremaster.Weave(active, extraIDs, preference, predecessors)
	if err != nil {
		return err
	}
	for _, node := range append([]string{}, order...) {
		goal, ok := s.allGoals[node]
		if !ok {
			continue
		}
		quest, ok := checkpointQuestOf(goal)
		if !ok || !strings.Contains(node, "-extra-") || !strings.HasSuffix(node, "-level") {
			continue
		}
		pickup := ""
		for _, candidate := range order {
			other, ok := s.allGoals[candidate]
			if !ok || text(other["kind"]) != "accept" {
				continue
			}
			otherQuest, ok := questIDOf(other)
			if ok && otherQuest == quest {
				pickup = candidate
				break
			}
		}
		if pickup == "" {
			continue
		}
		order = removeString(order, node)
		order = insertString(order, indexOfString(order, pickup), node)
	}

	if s.current == nil {
		for _, node := range order {
			if goal, ok := s.allGoals[node]; ok {
				s.currentGoals = append(s.currentGoals, goal)
			}
		}
	} else {
		replaced := map[string]bool{}
		for _, node := range nodes {
			replaced[node] = true
		}
		for node := range s.removed {
			replaced[node] = true
		}
		first := len(s.currentGoals)
		for index, goal := range s.currentGoals {
			if replaced[goalID(goal)] {
				first = index
				break
			}
		}
		remaining := []map[string]any{}
		for _, goal := range s.currentGoals {
			if !replaced[goalID(goal)] {
				remaining = append(remaining, goal)
			}
		}
		cut := first
		if cut > len(remaining) {
			cut = len(remaining)
		}
		ordered := append([]map[string]any{}, remaining[:cut]...)
		for _, node := range order {
			if goal, ok := s.allGoals[node]; ok {
				ordered = append(ordered, goal)
			}
		}
		ordered = append(ordered, remaining[cut:]...)
		s.currentGoals = ordered
	}
	for _, quest := range sortedQuests(wanted) {
		entry := quests.Ordered(strconv.Itoa(quest))
		if entry == nil {
			entry = newOrderedMap()
			entry.Set("catalogs", toAnyList(s.catalogs[quest]))
			entry.Set("evidence", factField(s.facts[quest], "evidence"))
			quests.Set(strconv.Itoa(quest), entry)
		}
		if casualQuests[quest] {
			entry.Set("status", "spine")
			entry.Set("reason", "Preserved faction Casual actions.")
		} else {
			entry.Set("status", "included")
			entry.Set("reason", "Permanent outdoor quest woven using verified source requirements and advisory legacy order.")
		}
		if truthy(entry.Value("supporting")) {
			supporting := s.audit.List("supportingQuests")
			if !containsInt(supporting, quest) {
				s.audit.Set("supportingQuests", append(supporting, quest))
			}
		}
	}
	return nil
}

// addVisitEntries records the chapter entry level of every extracted visit.
func (s *session) addVisitEntries() {
	visits := []string{}
	for _, goal := range s.currentGoals {
		source := text(goal["sourceGuide"])
		if source == "" || containsString(visits, source) {
			continue
		}
		visits = append(visits, source)
	}
	for _, source := range visits {
		original := map[string]any{}
		for _, guide := range s.guides {
			if guideID(guide) == source {
				original = guide
				break
			}
		}
		condition := object(original["conditions"])
		if condition == nil {
			condition = map[string]any{}
		}
		levels := []int{1}
		if value, ok := integer(object(condition["level"])["min"]); ok {
			levels[0] = value
		}
		for _, part := range objectList(condition["all"]) {
			level := 1
			if value, ok := integer(object(part["level"])["min"]); ok {
				level = value
			}
			levels = append(levels, level)
		}
		level := levels[0]
		for _, value := range levels {
			if value > level {
				level = value
			}
		}
		node := "visit-entry-" + source
		prior := false
		for _, goal := range s.currentGoals {
			if goalID(goal) == node {
				prior = true
				break
			}
		}
		s.currentGoals = filterGoals(s.currentGoals, func(goal map[string]any) bool {
			return goalID(goal) != node
		})
		if level <= 1 {
			continue
		}
		actor := withoutLevel(condition)
		title := guideTitle(original)
		if title == "" {
			title = source
		}
		entry := map[string]any{
			"id":               node,
			"kind":             "note",
			"visitSourceGuide": source,
			"text":             "Reach level " + strconv.Itoa(level) + " before the " + title + " visit.",
			"conditions":       actor,
			"excludeWhen":      map[string]any{"not": actor},
			"complete":         map[string]any{"level": map[string]any{"min": level}},
			"requiredLevel":    level,
		}
		first := len(s.currentGoals)
		for index, goal := range s.currentGoals {
			if text(goal["sourceGuide"]) == source {
				first = index
				break
			}
		}
		s.currentGoals = insertGoal(s.currentGoals, first, entry)
		if !prior {
			s.added[node] = true
		}
	}
}

// recordAuthoredQuests reconciles the recorded dispositions with the quests
// that are actually authored for a faction.
func (s *session) recordAuthoredQuests() {
	quests := ensureOrdered(s.audit, "quests")
	authored := map[int]bool{}
	for _, goal := range s.currentGoals {
		if text(goal["kind"]) != "accept" {
			continue
		}
		if quest, ok := questIDOf(goal); ok {
			authored[quest] = true
		}
	}
	for _, quest := range sortedQuests(authored) {
		entry := quests.Ordered(strconv.Itoa(quest))
		if entry == nil {
			continue
		}
		status := text(entry.Value("status"))
		if status != "excluded" && status != "other-zone" && status != "unresolved" {
			continue
		}
		entry.Set("factionNotes", entry.Value("reason"))
		entry.Set("status", "included")
		entry.Set("reason", "Authored for an applicable faction; other faction limitations are recorded separately.")
	}
	previous := map[int]bool{}
	for _, value := range s.audit.List("supportingQuests") {
		if quest, ok := integer(value); ok {
			previous[quest] = true
		}
	}
	supporting := []any{}
	for _, quest := range sortedQuests(authored) {
		entry := quests.Ordered(strconv.Itoa(quest))
		if truthy(field(entry, "supporting")) || previous[quest] {
			supporting = append(supporting, quest)
		}
	}
	s.audit.Set("supportingQuests", supporting)
}

// filterPlacements drops the recorded placements that no longer name a
// surviving action.
func (s *session) filterPlacements() {
	validActions := map[string]bool{}
	for _, goal := range s.currentGoals {
		validActions[goalID(goal)] = true
	}
	placements := []any{}
	for _, visit := range s.audit.List("placements") {
		if !validActions[text(field(visit, "anchor"))] {
			continue
		}
		covered := true
		for _, action := range fieldList(visit, "actions") {
			if !validActions[text(action)] {
				covered = false
				break
			}
		}
		if covered {
			placements = append(placements, visit)
		}
	}
	s.audit.Set("placements", placements)
}

// buildGuide records the guide identity and the audit sections that depend on
// the authored actions.
func (s *session) buildGuide() {
	guide := map[string]any{}
	for key, value := range s.current {
		if key != "goals" {
			guide[key] = value
		}
	}
	guide["id"] = s.audit.Value("guide")
	guide["title"] = s.zone
	guide["category"] = "Loremaster Guides"
	guide["revision"] = guideRevision(s.current) + 1
	guide["routeMode"] = "ordered"
	guide["loremasterExpanded"] = true
	s.guide = guide
	for _, goal := range s.currentGoals {
		delete(goal, "questPrerequisites")
	}
	ensureOrdered(s.audit, "sources").Set("upstreamCommit", UpstreamCommit)
	ensureOrdered(s.audit, "upstream").Set("matches", s.matches)

	spineActions := []any{}
	previous := map[string]bool{}
	for _, action := range s.audit.List("spineActions") {
		previous[text(action)] = true
	}
	for _, goal := range s.currentGoals {
		if previous[goalID(goal)] || text(goal["sourceActionID"]) != "" {
			spineActions = append(spineActions, goalID(goal))
		}
	}
	s.audit.Set("spineActions", spineActions)

	additional := []string{}
	for _, spine := range s.audit.List("additionalSpines") {
		additional = append(additional, text(spine))
	}
	additional = append(additional, s.sourcesUsed...)
	s.audit.Set("additionalSpines", toAnyList(uniqueStrings(additional)))
	if text(s.audit.Value("spine")) == "" && len(s.sourcesUsed) > 0 {
		s.audit.Set("spine", s.sourcesUsed[0])
	}
	for _, goal := range s.currentGoals {
		if !s.added[goalID(goal)] {
			continue
		}
		index := goalIndex(s.currentGoals, goalID(goal))
		if index < 0 {
			continue
		}
		anchor := 0
		if index > 0 {
			anchor = index - 1
		}
		s.placements = append(s.placements, map[string]any{
			"anchor":  goalID(s.currentGoals[anchor]),
			"actions": []any{goalID(goal)},
			"reason":  "Preserved Casual source order or constrained advisory insertion; Forever observations govern quest facts.",
		})
	}
	s.audit.Set("placements", append(s.audit.List("placements"), s.placements...))
}

// render writes the guide file for the prepared zone.
func (s *session) render() error {
	if s.current == nil {
		s.guide["goals"] = goalsAsAny(s.currentGoals)
		luaGuide, err := loremaster.Lua(s.guide, 0)
		if err != nil {
			return err
		}
		s.rendered = "local _, ns = ...\n\n-- Source decisions: docs/loremaster/" + s.spec.Slug + ".json.\n" +
			"-- Coordinates require a Forever client walkthrough.\nns:RegisterGuide(" + luaGuide + ")\n"
		return nil
	}
	data, err := os.ReadFile(s.guidePath())
	if err != nil {
		return err
	}
	text := string(data)
	if !strings.Contains(text, "loremasterExpanded") {
		text = strings.Replace(text, `routeMode = "ordered",`, "routeMode = \"ordered\",\n    loremasterExpanded = true,", 1)
	}
	text = replaceFirst(text, `revision = \d+`, "revision = "+strconv.Itoa(integerOrZero(s.guide["revision"])))
	parts := []string{}
	for _, goal := range s.currentGoals {
		if raw, known := s.raw[goalID(goal)]; known {
			parts = append(parts, raw)
			continue
		}
		luaGoal, err := loremaster.Lua(goal, 2)
		if err != nil {
			return err
		}
		parts = append(parts, luaGoal)
	}
	updated, err := loremaster.ReplaceGoals(text, strings.Join(parts, ",\n        "))
	if err != nil {
		return err
	}
	s.rendered = updated
	return nil
}

// upstreamActions reads the advisory ordering evidence for one faction.
func (s *session) upstreamActions(faction string) ([]loremaster.Action, map[string]string, error) {
	if s.env.UpstreamActions != nil {
		return s.env.UpstreamActions(faction, s.zone)
	}
	return ReadUpstreamActions(s.env.Upstream, faction, s.zone)
}

// ReadUpstreamActions reads the pinned upstream guides and returns the
// advisory ordering actions with their source hashes.
func ReadUpstreamActions(upstream, faction, zone string) ([]loremaster.Action, map[string]string, error) {
	base := filepath.Join(upstream, "ZygorGuidesViewerRM", "Guides")
	sources := []string{}
	if faction == "Alliance" {
		sources = append(sources,
			filepath.Join(base, "Achievements", "A-Loremaster-EasternKingdoms.lua"),
			filepath.Join(base, "Achievements", "A-Loremaster-Kalimdor.lua"))
	}
	sources = append(sources, filepath.Join(base, "Leveling", "ZygorGuides"+faction+".lua"))
	actions := []loremaster.Action{}
	hashes := map[string]string{}
	for _, path := range sources {
		relative, err := filepath.Rel(upstream, path)
		if err != nil {
			return nil, nil, err
		}
		name := filepath.ToSlash(relative)
		data, err := os.ReadFile(path)
		if err != nil {
			return nil, nil, err
		}
		sum := sha256.Sum256(data)
		hashes[name] = hex.EncodeToString(sum[:])
		parsed := loremaster.ParseUpstream(string(data), faction, name)
		if strings.Contains(filepath.Base(path), "A-Loremaster") {
			filtered := []loremaster.Action{}
			for _, action := range parsed {
				if strings.Contains(strings.ToLower(action.Chapter), strings.ToLower(zone)) {
					filtered = append(filtered, action)
				}
			}
			parsed = filtered
		}
		actions = append(actions, parsed...)
	}
	return actions, hashes, nil
}

// UpstreamRevision reports the pinned checkout revision.
func UpstreamRevision(upstream string) (string, error) {
	output, err := exec.Command("git", "-C", upstream, "rev-parse", "HEAD").Output()
	if err != nil {
		return "", err
	}
	return strings.TrimSpace(string(output)), nil
}

// VerifyUpstreamClean confirms the upstream guides have no local edits.
func VerifyUpstreamClean(upstream string) error {
	return exec.Command("git", "-C", upstream, "diff", "--exit-code", "HEAD", "--", "ZygorGuidesViewerRM/Guides").Run()
}

// DatabaseRevision reports the pinned wow-database checkout revision.
func DatabaseRevision(database string) (string, error) {
	output, err := exec.Command("git", "-C", database, "rev-parse", "HEAD").Output()
	if err != nil {
		return "", err
	}
	return strings.TrimSpace(string(output)), nil
}

// sourceAction is one copied Casual action.
type sourceAction struct {
	node  string
	guide map[string]any
	goal  map[string]any
}

// dependencyQuests collects the quest hand-offs a Casual action depends on.
func dependencyQuests(quest int, byQuest map[int][]sourceAction, byID map[string][]string, sourceOrder map[string]int, lookup map[string]sourceAction) map[int]bool {
	found := map[int]bool{}
	seen := map[string]bool{}
	pending := []string{}
	for _, action := range byQuest[quest] {
		pending = append(pending, action.node)
	}
	for len(pending) > 0 {
		node := pending[len(pending)-1]
		pending = pending[:len(pending)-1]
		if seen[node] {
			continue
		}
		seen[node] = true
		action, known := lookup[node]
		if !known {
			continue
		}
		for _, dependency := range dependsList(action.goal) {
			options := byID[dependency]
			local := []string{}
			earlier := []string{}
			for _, candidate := range options {
				other, ok := lookup[candidate]
				if !ok {
					continue
				}
				if guideID(other.guide) == guideID(action.guide) {
					local = append(local, candidate)
				}
				if sourceOrder[candidate] < sourceOrder[node] {
					earlier = append(earlier, candidate)
				}
			}
			target := ""
			if len(local) > 0 {
				target = local[0]
			} else if len(earlier) > 0 {
				target = earlier[len(earlier)-1]
			}
			if target == "" {
				continue
			}
			predecessor, ok := questIDOf(lookup[target].goal)
			if ok && predecessor != quest {
				found[predecessor] = true
				continue
			}
			pending = append(pending, target)
		}
	}
	return found
}

// ownership resolves the zone that a quest belongs to. Objective locations
// establish ownership before a capital pickup does.
func ownership(facts map[string]any, areaNames map[int]string) string {
	points := objectList(facts["points"])
	work := []string{}
	for _, point := range points {
		switch text(point["point"]) {
		case "start", "end":
			continue
		}
		work = append(work, aliasedZone(text(point["zone"])))
	}
	zoneMaps := loremaster.ZoneUIMap()
	counts := map[string]int{}
	order := []string{}
	for _, name := range work {
		if _, known := zoneMaps[name]; !known || capitals[name] {
			continue
		}
		if _, seen := counts[name]; !seen {
			order = append(order, name)
		}
		counts[name]++
	}
	if len(order) > 0 {
		best := order[0]
		for _, name := range order {
			if counts[name] > counts[best] {
				best = name
			}
		}
		return best
	}
	for _, key := range []string{"zoneId", "questieZone"} {
		value, exists := facts[key]
		if !exists {
			continue
		}
		id, ok := integer(value)
		if !ok {
			continue
		}
		name, known := areaNames[id]
		if known && !capitals[name] {
			return name
		}
	}
	for _, point := range points {
		if text(point["point"]) != "end" {
			continue
		}
		name := aliasedZone(text(point["zone"]))
		if _, known := zoneMaps[name]; known && !capitals[name] {
			return name
		}
	}
	return ""
}

// factionOf reports the faction a condition applies to.
func factionOf(condition any) string {
	entry, ok := condition.(map[string]any)
	if !ok {
		return ""
	}
	if faction := text(entry["faction"]); faction != "" {
		return faction
	}
	for _, part := range list(entry["all"]) {
		if result := factionOf(part); result != "" {
			return result
		}
	}
	return ""
}

// questIDOf reports the quest a goal belongs to.
func questIDOf(goal map[string]any) (int, bool) {
	complete := object(goal["complete"])
	for _, key := range []string{"checkpointQuest", "referenceQuest"} {
		if value, exists := goal[key]; exists && truthy(value) {
			if id, ok := integer(value); ok {
				return id, true
			}
		}
	}
	for _, key := range []string{"quest", "questObjective"} {
		entry := object(complete[key])
		if value, exists := entry["id"]; exists && truthy(value) {
			if id, ok := integer(value); ok {
				return id, true
			}
		}
	}
	return 0, false
}

// withoutLevel removes the level gate from a visit condition.
func withoutLevel(condition any) any {
	entry, ok := condition.(map[string]any)
	if !ok {
		return condition
	}
	result := map[string]any{}
	for key, value := range entry {
		if key == "level" {
			continue
		}
		if key == "all" || key == "any" {
			parts := []any{}
			for _, part := range list(value) {
				if nested, ok := part.(map[string]any); ok && len(nested) == 1 {
					if _, isLevel := nested["level"]; isLevel {
						continue
					}
				}
				parts = append(parts, withoutLevel(part))
			}
			result[key] = parts
			continue
		}
		result[key] = withoutLevel(value)
	}
	return result
}

// loadCatalogs reads the compiled zone catalogs and the zone names they map to.
func loadCatalogs(database string) (map[int]string, map[int][]string, error) {
	areaNames := map[int]string{}
	catalogs := map[int][]string{}
	bundles := filepath.Join(database, "data", "forever", "compiled", "zones")
	entries, err := os.ReadDir(bundles)
	if err != nil {
		if os.IsNotExist(err) {
			return areaNames, catalogs, nil
		}
		return nil, nil, err
	}
	names := []string{}
	for name := range loremaster.ZoneUIMap() {
		names = append(names, name)
	}
	sort.Strings(names)
	for _, entry := range entries {
		if entry.IsDir() || !strings.HasSuffix(entry.Name(), ".json") {
			continue
		}
		data, err := os.ReadFile(filepath.Join(bundles, entry.Name()))
		if err != nil {
			return nil, nil, err
		}
		bundle := map[string]any{}
		if err := json.Unmarshal(data, &bundle); err != nil {
			return nil, nil, err
		}
		stem := strings.TrimSuffix(entry.Name(), ".json")
		area, hasArea := integer(object(bundle["zone"])["zoneId"])
		name := ""
		for _, candidate := range names {
			if loremaster.Slug(candidate) == stem {
				name = candidate
				break
			}
		}
		if name != "" && hasArea {
			areaNames[area] = name
		}
		for quest := range object(bundle["quests"]) {
			id, ok := integerText(quest)
			if !ok {
				continue
			}
			catalogs[id] = append(catalogs[id], stem)
		}
	}
	return areaNames, catalogs, nil
}

// loadBands reads the frozen Casual chapter level bands.
func loadBands(root string) (map[string]Band, error) {
	bands := map[string]Band{}
	data, err := os.ReadFile(filepath.Join(root, "tests", "fixtures", "reference_bands.json"))
	if err != nil {
		if os.IsNotExist(err) {
			return bands, nil
		}
		return nil, err
	}
	if err := json.Unmarshal(data, &bands); err != nil {
		return nil, err
	}
	return bands, nil
}
