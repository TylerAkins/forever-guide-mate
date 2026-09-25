local _, ns = ...

-- Horde Era leveling route for the Badlands, levels 40-41.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    BADLANDS = 1418,
    UNDERCITY = 1458,
    ARATHI = 1417,
    WETLANDS = 1437,
    LOCH_MODAN = 1432,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index)
    return { questObjective = { id = questID, index = index } }
end

local function Point(mapID, x, y, label, offMapText)
    return {
        mapID = mapID,
        x = x,
        y = y,
        label = label,
        offMapText = offMapText,
    }
end

ns:RegisterGuide({
    id = "leveling-era-40-41-badlands",
    title = "40-41 Badlands (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 40 } },
        },
    },
    goals = {
        {
            id = "objective-710-frost-oil",
            kind = "objective",
            priority = 20,
            text = "Buy Frost Oil from Auctioneer Naxxremis.",
            dependsOn = { "accept-710-study-of-the-elements-rock" },
            complete = QuestState(710, "complete"),
            route = {
                Point(MAP.UNDERCITY, 0.6400, 0.3600, "Auctioneer Naxxremis",
                    "Travel to Auctioneer Naxxremis."),
            },
        },
        {
            id = "objective-710-gyrochronatom",
            kind = "objective",
            priority = 30,
            text = "Buy Gyrochronatom from Auctioneer Naxxremis.",
            dependsOn = { "accept-710-study-of-the-elements-rock" },
            complete = QuestState(710, "complete"),
            route = {
                Point(MAP.UNDERCITY, 0.6400, 0.3600, "Auctioneer Naxxremis",
                    "Travel to Auctioneer Naxxremis."),
            },
        },
        {
            id = "objective-710-healing-potion",
            kind = "objective",
            priority = 40,
            text = "Buy Healing Potion from Auctioneer Naxxremis.",
            dependsOn = { "accept-710-study-of-the-elements-rock" },
            complete = QuestState(710, "complete"),
            route = {
                Point(MAP.UNDERCITY, 0.6400, 0.3600, "Auctioneer Naxxremis",
                    "Travel to Auctioneer Naxxremis."),
            },
        },
        {
            id = "objective-710-lesser-invisibility-potion",
            kind = "objective",
            priority = 50,
            text = "Buy Lesser Invisibility Potion from Auctioneer Naxxremis.",
            dependsOn = { "accept-710-study-of-the-elements-rock" },
            complete = QuestState(710, "complete"),
            route = {
                Point(MAP.UNDERCITY, 0.6400, 0.3600, "Auctioneer Naxxremis",
                    "Travel to Auctioneer Naxxremis."),
            },
        },
        {
            id = "objective-710-4-item-3404",
            kind = "objective",
            priority = 60,
            text = "Buy Buzzard Wing from Auctioneer Naxxremis.",
            dependsOn = { "accept-710-study-of-the-elements-rock" },
            complete = QuestState(710, "complete"),
            route = {
                Point(MAP.UNDERCITY, 0.6400, 0.3600, "Auctioneer Naxxremis",
                    "Travel to Auctioneer Naxxremis."),
            },
        },
        {
            id = "accept-1108-indurium",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { quest = { id = 1106, state = "completed" } },
                },
            },
            text = "Accept Indurium from Martek the Exiled in Valley of Fangs.",
            complete = QuestState(1108, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.4225, 0.5270, "Martek the Exiled",
                    "Travel to Martek the Exiled."),
            },
        },
        {
            id = "accept-703-barbecued-buzzard-wings",
            kind = "accept",
            priority = 120,
            text = "Accept Barbecued Buzzard Wings from Rigglefuzz in Valley of Fangs.",
            complete = QuestState(703, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.4238, 0.5283, "Rigglefuzz",
                    "Travel to Rigglefuzz."),
            },
        },
        {
            id = "objective-1108-indurium",
            kind = "objective",
            priority = 130,
            conditions = {
                all = {
                    { quest = { id = 1106, state = "completed" } },
                },
            },
            text = "Collect 10 Indurium Flake from Stonevault mobs in Agmond's End.",
            dependsOn = { "accept-1108-indurium" },
            complete = QuestState(1108, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.4997, 0.6831, "Stonevault Bonesnapper",
                    "Travel to Stonevault Bonesnapper."),
            },
        },
        {
            id = "turnin-1108-indurium",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { quest = { id = 1106, state = "completed" } },
                },
            },
            text = "Turn in Indurium to Martek the Exiled in Valley of Fangs.",
            dependsOn = { "objective-1108-indurium" },
            complete = QuestState(1108, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.4225, 0.5270, "Martek the Exiled",
                    "Travel to Martek the Exiled."),
            },
        },
        {
            id = "accept-1137-news-for-fizzle",
            kind = "accept",
            priority = 150,
            text = "Accept News for Fizzle from Martek the Exiled in Valley of Fangs.",
            complete = QuestState(1137, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.4225, 0.5270, "Martek the Exiled",
                    "Travel to Martek the Exiled."),
            },
        },
        {
            id = "accept-710-study-of-the-elements-rock",
            kind = "accept",
            priority = 170,
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus in The Dustbowl.",
            complete = QuestState(710, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "objective-710-study-of-the-elements-rock",
            kind = "objective",
            priority = 180,
            text = "Kill the Lesser Rock Elemental and collect 10 Small Stone Shard Make a start on this quest and skip it for now if you can't find any Lesser Rock Elemental.",
            dependsOn = { "accept-710-study-of-the-elements-rock" },
            complete = QuestState(710, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.1312, 0.3886, "Lesser Rock Elemental",
                    "Travel to Lesser Rock Elemental."),
            },
        },
        {
            id = "note-1419-kargath",
            kind = "note",
            priority = 200,
            text = "Set your hearth in Kargath with Innkeeper Shul'kar.",
            route = {
                Point(MAP.BADLANDS, 0.0284, 0.4591, "Innkeeper Shul'kar",
                    "Travel to Innkeeper Shul'kar."),
            },
        },
        {
            id = "accept-1419-coyote-thieves",
            kind = "accept",
            priority = 210,
            text = "Accept Coyote Thieves from Neeka Bloodscar in Kargath.",
            complete = QuestState(1419, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.0650, 0.4710, "Neeka Bloodscar",
                    "Travel to Neeka Bloodscar."),
            },
        },
        {
            id = "accept-1420-report-to-helgrum",
            kind = "accept",
            priority = 220,
            text = "Accept Report to Helgrum from Neeka Bloodscar in Kargath.",
            complete = QuestState(1420, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.0650, 0.4710, "Neeka Bloodscar",
                    "Travel to Neeka Bloodscar."),
            },
        },
        {
            id = "accept-782-broken-alliances",
            kind = "accept",
            priority = 230,
            text = "Accept Broken Alliances from Gorn in Kargath.",
            complete = QuestState(782, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.0290, 0.4580, "Gorn",
                    "Travel to Gorn."),
            },
        },
        {
            id = "accept-2258-badlands-reagent-run",
            kind = "accept",
            priority = 240,
            text = "Accept Badlands Reagent Run from Jarkal Mossmeld in Kargath.",
            complete = QuestState(2258, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.0250, 0.4610, "Jarkal Mossmeld",
                    "Travel to Jarkal Mossmeld."),
            },
        },
        {
            id = "objective-710-study-of-the-elements-rock-2",
            kind = "objective",
            priority = 250,
            text = "Kill the Lesser Rock Elemental and collect 10 Small Stone Shard.",
            dependsOn = { "accept-710-study-of-the-elements-rock" },
            complete = QuestState(710, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.1312, 0.3886, "Lesser Rock Elemental",
                    "Travel to Lesser Rock Elemental."),
            },
        },
        {
            id = "turnin-710-study-of-the-elements-rock",
            kind = "turnin",
            priority = 260,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus in The Dustbowl.",
            dependsOn = { "objective-710-frost-oil", "objective-710-gyrochronatom", "objective-710-healing-potion", "objective-710-lesser-invisibility-potion", "objective-710-4-item-3404", "objective-710-study-of-the-elements-rock", "objective-710-study-of-the-elements-rock-2" },
            complete = QuestState(710, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "accept-711-study-of-the-elements-rock",
            kind = "accept",
            priority = 270,
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus in The Dustbowl.",
            complete = QuestState(711, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "objective-711-study-of-the-elements-rock",
            kind = "objective",
            priority = 280,
            text = "Kill Rock Elemental until you've collected 3 Large Stone Slab. They are found either further West or to the South of Badlands.",
            dependsOn = { "accept-711-study-of-the-elements-rock" },
            complete = QuestState(711, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.1552, 0.3218, "Rock Elemental",
                    "Travel to Rock Elemental."),
            },
        },
        {
            id = "objective-2258-3-rock-elemental-shard",
            kind = "objective",
            priority = 290,
            text = "Kill Rock Elementals to collect 5 Rock Elemental Shard.",
            dependsOn = { "accept-2258-badlands-reagent-run" },
            complete = QuestObjective(2258, 3),
            route = {
                Point(MAP.BADLANDS, 0.1552, 0.3218, "Lesser Rock Elemental",
                    "Travel to Lesser Rock Elemental."),
            },
        },
        {
            id = "turnin-711-study-of-the-elements-rock",
            kind = "turnin",
            priority = 300,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus in The Dustbowl.",
            dependsOn = { "objective-711-study-of-the-elements-rock" },
            complete = QuestState(711, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "accept-712-study-of-the-elements-rock",
            kind = "accept",
            priority = 310,
            text = "Accept Study of the Elements: Rock from Lotwil Veriatus in The Dustbowl.",
            complete = QuestState(712, "activeOrCompleted"),
            route = {
                Point(MAP.BADLANDS, 0.2591, 0.4491, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "objective-703-barbecued-buzzard-wings",
            kind = "objective",
            priority = 320,
            text = "Kill the Buzzards for 4 Buzzard Wing.",
            dependsOn = { "accept-703-barbecued-buzzard-wings" },
            complete = QuestState(703, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.1510, 0.5984, "Giant Buzzard",
                    "Travel to Giant Buzzard."),
            },
        },
        {
            id = "objective-2258-1-buzzard-gizzard",
            kind = "objective",
            priority = 330,
            text = "Kill any Buzzards and collect 5 Buzzard Gizzard in Apocryphan's Rest.",
            dependsOn = { "accept-2258-badlands-reagent-run" },
            complete = QuestObjective(2258, 1),
            route = {
                Point(MAP.BADLANDS, 0.1510, 0.5984, "Giant Buzzard",
                    "Travel to Giant Buzzard."),
            },
        },
        {
            id = "objective-712-study-of-the-elements-rock",
            kind = "objective",
            priority = 350,
            text = "Kill the Greater Rock Elemental and collect 5 Bracers of Rock Binding in Camp Cagg Drop rate is high, avoid the level 44 Greater Rock Elemental.",
            dependsOn = { "accept-712-study-of-the-elements-rock" },
            complete = QuestState(712, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.1703, 0.8440, "Greater Rock Elemental",
                    "Travel to Greater Rock Elemental."),
            },
        },
        {
            id = "objective-782-broken-alliances",
            kind = "objective",
            priority = 360,
            text = "Kill Boss Tho'grun who patrol down to the southwest side of the zone and back in a circle. You should be able to pick Boss Tho'grun off the back of the pack easily.",
            dependsOn = { "accept-782-broken-alliances" },
            complete = QuestState(782, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.1100, 0.7200, "Continue toward Broken Alliances",
                    "Continue toward Broken Alliances."),
                Point(MAP.BADLANDS, 0.1800, 0.7970, "Continue toward Broken Alliances",
                    "Continue toward Broken Alliances."),
                Point(MAP.BADLANDS, 0.5900, 0.6900, "Continue toward Broken Alliances",
                    "Continue toward Broken Alliances."),
                Point(MAP.BADLANDS, 0.4800, 0.5100, "Continue toward Broken Alliances",
                    "Continue toward Broken Alliances."),
                Point(MAP.BADLANDS, 0.2950, 0.5900, "Continue toward Broken Alliances",
                    "Continue toward Broken Alliances."),
                Point(MAP.BADLANDS, 0.2300, 0.5200, "Boss Tho'grun",
                    "Travel to Boss Tho'grun."),
            },
        },
        {
            id = "objective-2258-badlands-reagent-run",
            kind = "objective",
            priority = 380,
            text = "Kill Coyotes for 10 Crag Coyote Fang.",
            dependsOn = { "accept-2258-badlands-reagent-run" },
            complete = QuestState(2258, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.1300, 0.3600, "Continue toward Badlands Reagent Run",
                    "Continue toward Badlands Reagent Run."),
                Point(MAP.BADLANDS, 0.1400, 0.6000, "Continue toward Badlands Reagent Run",
                    "Continue toward Badlands Reagent Run."),
                Point(MAP.BADLANDS, 0.1100, 0.6300, "Crag Coyote",
                    "Travel to Crag Coyote."),
            },
        },
        {
            id = "objective-1419-coyote-thieves",
            kind = "objective",
            priority = 390,
            text = "Kill Coyotes for 30 Coyote Jawbone.",
            dependsOn = { "accept-1419-coyote-thieves" },
            complete = QuestState(1419, "complete"),
            route = {
                Point(MAP.BADLANDS, 0.2009, 0.5110, "Continue toward Coyote Thieves",
                    "Continue toward Coyote Thieves."),
                Point(MAP.BADLANDS, 0.2991, 0.7079, "Continue toward Coyote Thieves",
                    "Continue toward Coyote Thieves."),
                Point(MAP.BADLANDS, 0.4201, 0.7353, "Crag Coyote",
                    "Travel to Crag Coyote."),
            },
        },
        {
            id = "turnin-712-study-of-the-elements-rock",
            kind = "turnin",
            priority = 410,
            text = "Turn in Study of the Elements: Rock to Lotwil Veriatus in The Dustbowl.",
            dependsOn = { "objective-712-study-of-the-elements-rock" },
            complete = QuestState(712, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.2590, 0.4500, "Lotwil Veriatus",
                    "Travel to Lotwil Veriatus."),
            },
        },
        {
            id = "turnin-1419-coyote-thieves",
            kind = "turnin",
            priority = 430,
            text = "Turn in Coyote Thieves to Neeka Bloodscar in Kargath.",
            dependsOn = { "objective-1419-coyote-thieves" },
            complete = QuestState(1419, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.0650, 0.4710, "Neeka Bloodscar",
                    "Travel to Neeka Bloodscar."),
            },
        },
        {
            id = "turnin-782-broken-alliances",
            kind = "turnin",
            priority = 440,
            text = "Turn in Broken Alliances to Gorn in Kargath.",
            dependsOn = { "objective-782-broken-alliances" },
            complete = QuestState(782, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.0290, 0.4580, "Gorn",
                    "Travel to Gorn."),
            },
        },
        {
            id = "turnin-2258-badlands-reagent-run",
            kind = "turnin",
            priority = 450,
            text = "Turn in Badlands Reagent Run to Jarkal Mossmeld in Kargath.",
            dependsOn = { "objective-2258-3-rock-elemental-shard", "objective-2258-1-buzzard-gizzard", "objective-2258-badlands-reagent-run" },
            complete = QuestState(2258, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.0250, 0.4610, "Jarkal Mossmeld",
                    "Travel to Jarkal Mossmeld."),
            },
        },
        {
            id = "turnin-703-barbecued-buzzard-wings",
            kind = "turnin",
            priority = 470,
            text = "Turn in Barbecued Buzzard Wings to Rigglefuzz in Valley of Fangs.",
            dependsOn = { "objective-703-barbecued-buzzard-wings" },
            complete = QuestState(703, "completed"),
            route = {
                Point(MAP.BADLANDS, 0.4238, 0.5283, "Rigglefuzz",
                    "Travel to Rigglefuzz."),
            },
        },
    },
})
