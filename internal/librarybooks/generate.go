package librarybooks

import (
	_ "embed"
	"encoding/json"
	"fmt"
	"strings"
)

//go:embed data.json
var rawData []byte

type dataFile struct {
	Header            string              `json:"header"`
	Books             [][]json.RawMessage `json:"books"`
	MilestoneSequence []string            `json:"milestone_sequence"`
	ExtraSequence     []string            `json:"extra_sequence"`
	Milestones        [][]json.RawMessage `json:"milestones"`
}

type pin struct {
	mapKey, label, off string
	x, y               float64
	hasOff             bool
}

type book struct {
	id, text  string
	pins      []pin
	questID   int
	hasQuest  bool
	condition string
}

type milestone struct {
	count                                int
	questID                              int
	title, acceptID, turninID, condition string
	hasCondition                         bool
}

func Generate() ([]byte, error) {
	var source dataFile
	decoder := json.NewDecoder(strings.NewReader(string(rawData)))
	decoder.UseNumber()
	if err := decoder.Decode(&source); err != nil {
		return nil, fmt.Errorf("decode library book source: %w", err)
	}
	books := map[string]book{}
	for _, raw := range source.Books {
		entry, err := decodeBook(raw)
		if err != nil {
			return nil, err
		}
		books[entry.id] = entry
	}
	milestones := []milestone{}
	for _, raw := range source.Milestones {
		entry, err := decodeMilestone(raw)
		if err != nil {
			return nil, err
		}
		milestones = append(milestones, entry)
	}
	goals := []string{}
	priority, previous, milestoneIndex := 10, "", 0
	for index, id := range source.MilestoneSequence {
		entry, ok := books[id]
		if !ok {
			return nil, fmt.Errorf("unknown library book %q", id)
		}
		goals = append(goals, bookGoal(entry, priority, previous))
		previous = id
		priority += 10
		for milestoneIndex < len(milestones) && milestones[milestoneIndex].count == index+1 {
			m := milestones[milestoneIndex]
			goals = append(goals, milestoneBlock(previous, m, priority))
			previous = m.turninID
			priority += 20
			milestoneIndex++
		}
	}
	for _, id := range source.ExtraSequence {
		entry, ok := books[id]
		if !ok {
			return nil, fmt.Errorf("unknown library book %q", id)
		}
		goals = append(goals, bookGoal(entry, priority, previous))
		previous = id
		priority += 10
	}
	body := source.Header + fmt.Sprintf(`ns:RegisterGuide({
    id = "misc-library-books",
    title = "Library Books",
    category = "Miscellaneous Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 1 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
%s
    },
})
`, strings.Join(goals, "\n"))
	return []byte(body), nil
}

func decodeBook(raw []json.RawMessage) (book, error) {
	if len(raw) != 5 {
		return book{}, fmt.Errorf("invalid library book row length %d", len(raw))
	}
	var entry book
	if err := json.Unmarshal(raw[0], &entry.id); err != nil {
		return book{}, err
	}
	if err := json.Unmarshal(raw[1], &entry.text); err != nil {
		return book{}, err
	}
	var rawPins [][]json.RawMessage
	if err := json.Unmarshal(raw[2], &rawPins); err != nil {
		return book{}, err
	}
	for _, rawPin := range rawPins {
		if len(rawPin) != 5 {
			return book{}, fmt.Errorf("invalid pin for book %s", entry.id)
		}
		var item pin
		for i, target := range []any{&item.mapKey, &item.x, &item.y, &item.label, &item.off} {
			if err := json.Unmarshal(rawPin[i], target); err != nil {
				if i == 4 && string(rawPin[i]) == "null" {
					continue
				}
				return book{}, err
			}
		}
		item.hasOff = string(rawPin[4]) != "null"
		entry.pins = append(entry.pins, item)
	}
	if string(raw[3]) != "null" {
		if err := json.Unmarshal(raw[3], &entry.questID); err != nil {
			return book{}, err
		}
		entry.hasQuest = true
	}
	if string(raw[4]) != "null" {
		if err := json.Unmarshal(raw[4], &entry.condition); err != nil {
			return book{}, err
		}
	}
	return entry, nil
}

func decodeMilestone(raw []json.RawMessage) (milestone, error) {
	if len(raw) != 6 {
		return milestone{}, fmt.Errorf("invalid milestone row length %d", len(raw))
	}
	var result milestone
	for i, target := range []any{&result.count, &result.questID, &result.title, &result.acceptID, &result.turninID, &result.condition} {
		if err := json.Unmarshal(raw[i], target); err != nil {
			if i == 5 && string(raw[i]) == "null" {
				continue
			}
			return milestone{}, err
		}
	}
	result.hasCondition = string(raw[5]) != "null"
	return result, nil
}

func bookGoal(entry book, priority int, dependency string) string {
	lines := []string{"        {", fmt.Sprintf("            id = %q,", entry.id), `            kind = "note",`, fmt.Sprintf("            priority = %d,", priority)}
	if entry.condition != "" {
		lines = append(lines, "            conditions = "+entry.condition+",")
	}
	lines = append(lines, fmt.Sprintf("            text = %q,", entry.text))
	if dependency != "" {
		lines = append(lines, fmt.Sprintf("            dependsOn = { %q },", dependency))
	}
	if entry.hasQuest {
		lines = append(lines, questComplete(entry.questID))
	}
	lines = append(lines, "            route = {")
	for _, route := range entry.pins {
		lines = append(lines, formatPin(route))
	}
	lines = append(lines, "            },", "        },")
	return strings.Join(lines, "\n")
}

func formatPin(route pin) string {
	x, y := route.x/100, route.y/100
	if route.hasOff {
		return fmt.Sprintf("                Point(MAP.%s, %.4f, %.4f, %q,\n                    %q),", route.mapKey, x, y, route.label, route.off)
	}
	return fmt.Sprintf("                Point(MAP.%s, %.4f, %.4f, %q),", route.mapKey, x, y, route.label)
}

func questComplete(id int) string {
	return fmt.Sprintf("            complete = QuestState(%d, %q),", id, "completed")
}

func milestoneBlock(afterID string, entry milestone, priority int) string {
	condition := ""
	if entry.hasCondition {
		condition = "            conditions = " + entry.condition + ",\n"
	}
	accept := fmt.Sprintf(`        {
            id = %q,
            kind = "accept",
            priority = %d,
%s            text = %q,
            dependsOn = { %q },
            complete = QuestState(%d, %q),
            route = {
                Point(MAP.STORMWIND, 0.4900, 0.8630, "Garion Wendell",
                    "Travel to Garion Wendell in Stormwind City."),
                Point(MAP.UNDERCITY, 0.7400, 0.3250, "Owen Thadd",
                    "Travel to Owen Thadd in Undercity."),
            },
        },`, entry.acceptID, priority, condition, fmt.Sprintf("Accept %s from your faction librarian after enough book turn-ins.", entry.title), afterID, entry.questID, "activeOrCompleted")
	turnin := fmt.Sprintf(`        {
            id = %q,
            kind = "turnin",
            priority = %d,
%s            text = %q,
            dependsOn = { %q },
            complete = QuestState(%d, %q),
            useClientPin = true,
            route = {
                Point(MAP.STORMWIND, 0.3780, 0.8020, "Garion Wendell",
                    "Travel to Garion Wendell in Stormwind City."),
                Point(MAP.UNDERCITY, 0.7360, 0.3250, "Owen Thadd",
                    "Travel to Owen Thadd in Undercity."),
            },
        },`, entry.turninID, priority+1, condition, fmt.Sprintf("Turn in %s to Garion Wendell or Owen Thadd and choose your reward.", entry.title), entry.acceptID, entry.questID, "completed")
	return accept + "\n" + turnin
}
