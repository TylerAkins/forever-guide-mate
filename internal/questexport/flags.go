package questexport

import (
	"github.com/TylerAkins/forever-guide-mate/internal/questiepolicy"
)

// Questie tag IDs that the Loremaster flags read from the policy.
const (
	tagDungeon  = 81
	tagHeroic   = 85
	tagScenario = 98
	tagRaid     = 62
	tagRaid10   = 88
	tagRaid25   = 89
	tagPvP      = 41
)

// Quest flag bits, from Questie's questFlags and specialFlags (see meta/questMeta.lua).
const (
	questFlagSharable     = 8
	specialFlagRepeatable = 1
)

// QuestFlags derives the Loremaster flag map for one quest record.
//
// repeatable and sharable come from the record's specialFlags and questFlags.
// dungeon, raid, and pvp come from Questie's tag corrections, so a quest with
// no correction is false here even when the game tags it. daily, weekly, and
// monthly are always false: the artifact carries no such flags (decision I).
func QuestFlags(record map[string]any, questID int, policy *questiepolicy.Policy) map[string]bool {
	questFlags := intField(record, "questFlags")
	specialFlags := intField(record, "specialFlags")
	flags := map[string]bool{
		"daily":      false,
		"weekly":     false,
		"monthly":    false,
		"holiday":    false,
		"repeatable": specialFlags&specialFlagRepeatable != 0,
		"sharable":   questFlags&questFlagSharable != 0,
		"dungeon":    false,
		"raid":       false,
		"pvp":        false,
	}
	if _, ok := policy.HolidayEntry(questID); ok {
		flags["holiday"] = true
	}
	if tag, ok := policy.QuestTag(questID); ok {
		switch tag.TagID {
		case tagDungeon, tagHeroic, tagScenario:
			flags["dungeon"] = true
		case tagRaid, tagRaid10, tagRaid25:
			flags["raid"] = true
		case tagPvP:
			flags["pvp"] = true
		}
	}
	return flags
}

func intField(record map[string]any, name string) int {
	value, _ := record[name].(float64)
	return int(value)
}
