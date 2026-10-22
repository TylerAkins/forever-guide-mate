package loremaster

import (
	"regexp"
	"strings"
)

var zoneUIMaps = map[string]any{
	"Dun Morogh": 1426, "Badlands": 1418, "Blasted Lands": 1419, "Swamp of Sorrows": 1435,
	"Duskwood": 1431, "Wetlands": 1437, "Elwynn Forest": 1429, "Durotar": 1411,
	"Dustwallow Marsh": 1445, "Azshara": 1447, "The Barrens": 1413, "Barrens": 1413,
	"Western Plaguelands": 1422, "Stranglethorn Vale": 1434, "Loch Modan": 1432, "Westfall": 1436,
	"Deadwind Pass": 1430, "Redridge Mountains": 1433, "Arathi Highlands": 1417,
	"Burning Steppes": 1428, "The Hinterlands": 1425, "Hinterlands": 1425,
	"Searing Gorge": 1427, "Tirisfal Glades": 1420, "Silverpine Forest": 1421,
	"Eastern Plaguelands": 1423, "Teldrassil": 1438, "Darkshore": 1439, "Mulgore": 1412,
	"Feralas": 1444, "Felwood": 1448, "Thousand Needles": 1441, "Desolace": 1443,
	"Stonetalon Mountains": 1442, "Tanaris": 1446, "Un'Goro Crater": 1449, "Moonglade": 1450,
	"Winterspring": 1452, "Silithus": 1451, "Stormwind City": 1453, "Ironforge": 1455,
	"Orgrimmar": 1454, "Thunder Bluff": 1456, "Darnassus": 1457, "Undercity": 1458,
	"Alterac Mountains": 1416, "Hillsbrad Foothills": 1424, "Ashenvale": 1440,
	"Wailing Caverns": nil, "Ragefire Chasm": nil, "The Deadmines": nil, "Deadmines": nil,
	"Shadowfang Keep": nil, "Blackfathom Deeps": nil, "Gnomeregan": nil, "The Stockade": nil,
	"Razorfen Kraul": nil, "Razorfen Downs": nil, "Scarlet Monastery": nil, "Uldaman": nil,
	"Zul'Farrak": nil, "Maraudon": nil, "Sunken Temple": nil, "Blackrock Depths": nil,
	"Blackrock Mountain": nil, "Hall of Thanes": nil, "Ruins of Lordaeron": nil,
}

var slugSeparator = regexp.MustCompile(`[^a-z0-9]+`)

func ZoneUIMap() map[string]any {
	result := make(map[string]any, len(zoneUIMaps))
	for name, value := range zoneUIMaps {
		result[name] = value
	}
	return result
}

func Slug(value string) string {
	value = strings.ToLower(strings.ReplaceAll(strings.ReplaceAll(value, "&", "and"), "'", ""))
	return strings.Trim(slugSeparator.ReplaceAllString(value, "-"), "-")
}
