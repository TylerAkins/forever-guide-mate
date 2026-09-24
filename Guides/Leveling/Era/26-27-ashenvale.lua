local _, ns = ...

-- Horde Era leveling route for Ashenvale, levels 26-27.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    ASHENVALE = 1440,
    THUNDER_BLUFF = 1456,
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
    id = "leveling-era-26-27-ashenvale",
    title = "26-27 Ashenvale (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 26 } },
        },
    },
    goals = {
        {
            id = "travel-1195-thunder-bluff",
            kind = "travel",
            priority = 10,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 1195, state = "activeOrCompleted" } } },
                },
            },
            text = "Zangen Stonehoof in Thunder Bluff.",
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5479, 0.5129, "Zangen Stonehoof",
                    "Travel to Zangen Stonehoof."),
            },
        },
        {
            id = "accept-1195-the-sacred-flame",
            kind = "accept",
            priority = 20,
            text = "Accept The Sacred Flame from Zangen Stonehoof in Thunder Bluff.",
            complete = QuestState(1195, "activeOrCompleted"),
            route = {
                Point(MAP.THUNDER_BLUFF, 0.5479, 0.5129, "Zangen Stonehoof",
                    "Travel to Zangen Stonehoof."),
            },
        },
        {
            id = "travel-25-splintertree-post",
            kind = "travel",
            priority = 30,
            text = "Follow the road north east to Splintertree Post.",
            route = {
                Point(MAP.ASHENVALE, 0.7300, 0.6500, "Splintertree Post",
                    "Travel to Splintertree Post."),
            },
        },
        {
            id = "note-25-splintertree-post",
            kind = "note",
            priority = 40,
            text = "Set your hearth in Splintertree Post with Innkeeper Kaylisk.",
            route = {
                Point(MAP.ASHENVALE, 0.7396, 0.6069, "Innkeeper Kaylisk",
                    "Travel to Innkeeper Kaylisk."),
            },
        },
        {
            id = "accept-25-stonetalon-standstill",
            kind = "accept",
            priority = 50,
            text = "Accept Stonetalon Standstill from Mastok Wrilehiss in Splintertree Post.",
            complete = QuestState(25, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.7364, 0.6003, "Mastok Wrilehiss",
                    "Travel to Mastok Wrilehiss."),
            },
        },
        {
            id = "accept-6441-satyr-horns",
            kind = "accept",
            priority = 60,
            text = "Accept Satyr Horns from Pixel in Splintertree Post.",
            complete = QuestState(6441, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.7310, 0.6148, "Pixel",
                    "Travel to Pixel."),
            },
        },
        {
            id = "accept-6503-ashenvale-outrunners",
            kind = "accept",
            priority = 70,
            text = "Accept Ashenvale Outrunners from Kuray'bin in Splintertree Post.",
            complete = QuestState(6503, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.7116, 0.6819, "Kuray'bin",
                    "Travel to Kuray'bin."),
            },
        },
        {
            id = "accept-6383-the-ashenvale-hunt",
            kind = "accept",
            priority = 80,
            text = "Accept The Ashenvale Hunt from Senani Thunderheart in Splintertree Post. This is an elite. Bring a group.",
            complete = QuestState(6383, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.7374, 0.6144, "Senani Thunderheart",
                    "Travel to Senani Thunderheart."),
            },
        },
        {
            id = "travel-6503-nightsong-woods",
            kind = "travel",
            priority = 90,
            text = "Travel to Nightsong Woods.",
            route = {
                Point(MAP.ASHENVALE, 0.7000, 0.7600, "Nightsong Woods",
                    "Travel to Nightsong Woods."),
            },
        },
        {
            id = "objective-6503-ashenvale-outrunners",
            kind = "objective",
            priority = 100,
            text = "Kill 9 Ashenvale Outrunner south of Splintertree Post in Nightsong Woods.",
            dependsOn = { "accept-6503-ashenvale-outrunners" },
            complete = QuestState(6503, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.7000, 0.7600, "Ashenvale Outrunner",
                    "Travel to Ashenvale Outrunner."),
            },
        },
        {
            id = "travel-splintertree-post",
            kind = "travel",
            priority = 110,
            text = "Travel to Splintertree Post.",
            route = {
                Point(MAP.ASHENVALE, 0.7116, 0.6819, "Splintertree Post",
                    "Travel to Splintertree Post."),
            },
        },
        {
            id = "turnin-6503-ashenvale-outrunners",
            kind = "turnin",
            priority = 120,
            text = "Turn in Ashenvale Outrunners to Kuray'bin in Splintertree Post.",
            dependsOn = { "objective-6503-ashenvale-outrunners" },
            complete = QuestState(6503, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.7116, 0.6819, "Kuray'bin",
                    "Travel to Kuray'bin."),
            },
        },
        {
            id = "travel-6544-nightsong-woods",
            kind = "travel",
            priority = 130,
            text = "Travel to Nightsong Woods.",
            route = {
                Point(MAP.ASHENVALE, 0.6836, 0.7538, "Nightsong Woods",
                    "Travel to Nightsong Woods."),
            },
        },
        {
            id = "accept-6544-torek-s-assault",
            kind = "accept",
            priority = 140,
            text = "Accept Torek's Assault from Torek in Nightsong Woods.",
            complete = QuestState(6544, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.6836, 0.7538, "Torek",
                    "Travel to Torek."),
            },
        },
        {
            id = "objective-6544-torek-s-assault",
            kind = "objective",
            priority = 150,
            text = "Escort Torek, let him and his bodyguard do most of the fighting when you do this quest.",
            dependsOn = { "accept-6544-torek-s-assault" },
            complete = QuestState(6544, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.6800, 0.7500, "Torek",
                    "Travel to Torek."),
            },
        },
        {
            id = "travel-1918-mystral-lake",
            kind = "travel",
            priority = 160,
            text = "Travel to Mystral Lake.",
            route = {
                Point(MAP.ASHENVALE, 0.4844, 0.6892, "Mystral Lake",
                    "Travel to Mystral Lake."),
            },
        },
        {
            id = "objective-tideress",
            kind = "objective",
            priority = 170,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 1918, state = "activeOrCompleted" } } },
                },
            },
            text = "Kill Tideress and collect Befouled Water Globe in Mystral Lake to start a quest.",
            route = {
                Point(MAP.ASHENVALE, 0.4844, 0.6892, "Tideress",
                    "Travel to Tideress."),
            },
        },
        {
            id = "objective-25-stonetalon-standstill",
            kind = "objective",
            priority = 180,
            text = "Dispatch 12 Befouled Water Elemental at Mystral Lake and discover the gazebo on the island.",
            dependsOn = { "accept-25-stonetalon-standstill" },
            complete = QuestState(25, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.6158, 0.7051, "Continue toward Stonetalon Standstill",
                    "Continue toward Stonetalon Standstill."),
                Point(MAP.ASHENVALE, 0.5585, 0.7092, "Continue toward Stonetalon Standstill",
                    "Continue toward Stonetalon Standstill."),
                Point(MAP.ASHENVALE, 0.4890, 0.6940, "Befouled Water Elemental",
                    "Travel to Befouled Water Elemental."),
            },
        },
        {
            id = "objective-ursangous",
            kind = "objective",
            priority = 190,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 23, state = "activeOrCompleted" } } },
                },
            },
            text = "Find Ursangous patrolling the area northwest of Mystral Lake, around.",
            route = {
                Point(MAP.ASHENVALE, 0.4210, 0.6620, "Ursangous",
                    "Travel to Ursangous."),
            },
        },
        {
            id = "objective-shadumbra",
            kind = "objective",
            priority = 200,
            conditions = {
                all = {
                    { ["not"] = { quest = { id = 24, state = "activeOrCompleted" } } },
                },
            },
            text = "Find Shadumbra patrolling the area between the path towards Astranaar and the path towards Felwood.",
            route = {
                Point(MAP.ASHENVALE, 0.5610, 0.5740, "Continue toward Shadumbra",
                    "Continue toward Shadumbra."),
                Point(MAP.ASHENVALE, 0.6310, 0.4860, "Shadumbra",
                    "Travel to Shadumbra."),
            },
        },
        {
            id = "travel-1918-splintertree-post",
            kind = "travel",
            priority = 210,
            text = "Travel to Splintertree Post.",
            route = {
                Point(MAP.ASHENVALE, 0.7380, 0.6150, "Splintertree Post",
                    "Travel to Splintertree Post."),
            },
        },
        {
            id = "turnin-25-stonetalon-standstill",
            kind = "turnin",
            priority = 220,
            text = "Turn in Stonetalon Standstill to Mastok Wrilehiss in Splintertree Post.",
            dependsOn = { "objective-25-stonetalon-standstill" },
            complete = QuestState(25, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.7364, 0.6003, "Mastok Wrilehiss",
                    "Travel to Mastok Wrilehiss."),
            },
        },
        {
            id = "accept-824-je-neu-of-the-earthen-ring",
            kind = "accept",
            priority = 230,
            text = "Accept Je'neu of the Earthen Ring from Mastok Wrilehiss in Splintertree Post.",
            complete = QuestState(824, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.7364, 0.6003, "Mastok Wrilehiss",
                    "Travel to Mastok Wrilehiss."),
            },
        },
        {
            id = "turnin-6544-torek-s-assault",
            kind = "turnin",
            priority = 240,
            text = "Turn in Torek's Assault to Ertog Ragetusk in Splintertree Post.",
            dependsOn = { "objective-6544-torek-s-assault" },
            complete = QuestState(6544, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.7305, 0.6251, "Ertog Ragetusk",
                    "Travel to Ertog Ragetusk."),
            },
        },
        {
            id = "travel-6641-zoram-gar-outpost",
            kind = "travel",
            priority = 250,
            text = "Travel to Zoram'gar Outpost.",
            route = {
                Point(MAP.ASHENVALE, 0.1160, 0.3428, "Zoram'gar Outpost",
                    "Travel to Zoram'gar Outpost."),
            },
        },
        {
            id = "turnin-824-je-neu-of-the-earthen-ring",
            kind = "turnin",
            priority = 260,
            text = "Turn in Je'neu of the Earthen Ring to Je'neu Sancrea in Zoram'gar Outpost.",
            dependsOn = { "accept-824-je-neu-of-the-earthen-ring" },
            complete = QuestState(824, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.1160, 0.3428, "Je'neu Sancrea",
                    "Travel to Je'neu Sancrea."),
            },
        },
        {
            id = "accept-6462-troll-charm",
            kind = "accept",
            priority = 270,
            text = "Accept Troll Charm from Mitsuwa in Zoram'gar Outpost.",
            complete = QuestState(6462, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.1166, 0.3487, "Mitsuwa",
                    "Travel to Mitsuwa."),
            },
        },
        {
            id = "accept-216-between-a-rock-and-a-thistlefur",
            kind = "accept",
            priority = 280,
            text = "Accept Between a Rock and a Thistlefur from Karang Amakkar in Zoram'gar Outpost.",
            complete = QuestState(216, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.1188, 0.3456, "Karang Amakkar",
                    "Travel to Karang Amakkar."),
            },
        },
        {
            id = "accept-6641-vorsha-the-lasher",
            kind = "accept",
            priority = 290,
            text = "Accept Vorsha the Lasher from Muglash in Zoram'gar Outpost.",
            complete = QuestState(6641, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.1205, 0.3460, "Muglash",
                    "Travel to Muglash."),
            },
        },
        {
            id = "objective-6641-vorsha-the-lasher",
            kind = "objective",
            priority = 300,
            text = "Follow Muglash and defeat Vorsha the Lasher on the island in The Zoram Strand.",
            dependsOn = { "accept-6641-vorsha-the-lasher" },
            complete = QuestState(6641, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.0959, 0.2771, "Muglash",
                    "Travel to Muglash."),
            },
        },
        {
            id = "travel-216-thistlefur-village",
            kind = "travel",
            priority = 310,
            text = "Travel to Thistlefur Village.",
            route = {
                Point(MAP.ASHENVALE, 0.2566, 0.3483, "Continue toward Thistlefur Village",
                    "Continue toward Thistlefur Village."),
                Point(MAP.ASHENVALE, 0.3125, 0.4470, "Continue toward Thistlefur Village",
                    "Continue toward Thistlefur Village."),
                Point(MAP.ASHENVALE, 0.3637, 0.3277, "Thistlefur Village",
                    "Travel to Thistlefur Village."),
            },
        },
        {
            id = "objective-216-between-a-rock-and-a-thistlefur",
            kind = "objective",
            priority = 320,
            text = "Kill 12 Thistlefur Avenger and 12 Thistlefur Shaman west of Astranaar in Thistlefur Village.",
            dependsOn = { "accept-216-between-a-rock-and-a-thistlefur" },
            complete = QuestState(216, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.3637, 0.3277, "Thistlefur Avenger",
                    "Travel to Thistlefur Avenger."),
            },
        },
        {
            id = "objective-6462-troll-charm",
            kind = "objective",
            priority = 330,
            text = "Gather 8 Troll Charm in the cave at the back of the Thistlefur camp.",
            dependsOn = { "accept-6462-troll-charm" },
            complete = QuestState(6462, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.3887, 0.3064, "Continue toward Troll Charm",
                    "Continue toward Troll Charm."),
                Point(MAP.ASHENVALE, 0.3800, 0.3000, "Troll Charm",
                    "Travel to Troll Charm."),
            },
        },
        {
            id = "accept-6482-freedom-to-ruul",
            kind = "accept",
            priority = 340,
            text = "Accept Freedom to Ruul from Ruul Snowhoof in Ashenvale.",
            complete = QuestState(6482, "activeOrCompleted"),
            route = {
                Point(MAP.ASHENVALE, 0.4155, 0.3462, "Ruul Snowhoof",
                    "Travel to Ruul Snowhoof."),
            },
        },
        {
            id = "objective-6482-freedom-to-ruul",
            kind = "objective",
            priority = 350,
            text = "Escort Ruul Snowhoof, skip if it's to hard.",
            dependsOn = { "accept-6482-freedom-to-ruul" },
            complete = QuestState(6482, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.4150, 0.3460, "Ruul Snowhoof",
                    "Travel to Ruul Snowhoof."),
            },
        },
        {
            id = "travel-zoram-gar-outpost",
            kind = "travel",
            priority = 360,
            text = "Travel to Zoram'gar Outpost.",
            route = {
                Point(MAP.ASHENVALE, 0.2552, 0.3848, "Continue toward Zoram'gar Outpost",
                    "Continue toward Zoram'gar Outpost."),
                Point(MAP.ASHENVALE, 0.1188, 0.3456, "Zoram'gar Outpost",
                    "Travel to Zoram'gar Outpost."),
            },
        },
        {
            id = "turnin-216-between-a-rock-and-a-thistlefur",
            kind = "turnin",
            priority = 370,
            text = "Turn in Between a Rock and a Thistlefur to Karang Amakkar in Zoram'gar Outpost.",
            dependsOn = { "objective-216-between-a-rock-and-a-thistlefur" },
            complete = QuestState(216, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.1188, 0.3456, "Karang Amakkar",
                    "Travel to Karang Amakkar."),
            },
        },
        {
            id = "turnin-6462-troll-charm",
            kind = "turnin",
            priority = 380,
            text = "Turn in Troll Charm to Mitsuwa in Zoram'gar Outpost.",
            dependsOn = { "objective-6462-troll-charm" },
            complete = QuestState(6462, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.1166, 0.3487, "Mitsuwa",
                    "Travel to Mitsuwa."),
            },
        },
        {
            id = "turnin-6641-vorsha-the-lasher",
            kind = "turnin",
            priority = 390,
            text = "Turn in Vorsha the Lasher to Warsong Runner in Zoram'gar Outpost.",
            dependsOn = { "objective-6641-vorsha-the-lasher" },
            complete = QuestState(6641, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.1219, 0.3421, "Warsong Runner",
                    "Travel to Warsong Runner."),
            },
        },
        {
            id = "turnin-6482-freedom-to-ruul",
            kind = "turnin",
            priority = 400,
            text = "Turn in Freedom to Ruul to Yama Snowhoof in Splintertree Post.",
            dependsOn = { "objective-6482-freedom-to-ruul" },
            complete = QuestState(6482, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.7408, 0.6088, "Yama Snowhoof",
                    "Travel to Yama Snowhoof."),
            },
        },
        {
            id = "objective-1088-ordanus",
            kind = "objective",
            priority = 410,
            text = "Fight to the top of the tower and kill Keeper Ordanus, then loot Ordanus' Head and jump out of there This quest is dificult to solo and safe to skip.",
            complete = QuestState(1088, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.6200, 0.5100, "Keeper Ordanus",
                    "Travel to Keeper Ordanus."),
            },
        },
        {
            id = "objective-6441-satyr-horns",
            kind = "objective",
            priority = 420,
            text = "Kill Bleakheart Satyr, Felmusk Felsworn, Felmusk Satyr and Felmusk Rogue and collect 16 Satyr Horns in Night Run.",
            dependsOn = { "accept-6441-satyr-horns" },
            complete = QuestState(6441, "complete"),
            route = {
                Point(MAP.ASHENVALE, 0.8000, 0.5200, "Bleakheart Satyr",
                    "Travel to Bleakheart Satyr."),
            },
        },
        {
            id = "travel-splintertree-post-2",
            kind = "travel",
            priority = 430,
            text = "Travel to Splintertree Post.",
            route = {
                Point(MAP.ASHENVALE, 0.6824, 0.5482, "Continue toward Splintertree Post",
                    "Continue toward Splintertree Post."),
                Point(MAP.ASHENVALE, 0.7167, 0.6366, "Continue toward Splintertree Post",
                    "Continue toward Splintertree Post."),
                Point(MAP.ASHENVALE, 0.7309, 0.6149, "Splintertree Post",
                    "Travel to Splintertree Post."),
            },
        },
        {
            id = "turnin-6441-satyr-horns",
            kind = "turnin",
            priority = 440,
            text = "Turn in Satyr Horns to Pixel in Splintertree Post.",
            dependsOn = { "objective-6441-satyr-horns" },
            complete = QuestState(6441, "completed"),
            route = {
                Point(MAP.ASHENVALE, 0.7310, 0.6148, "Pixel",
                    "Travel to Pixel."),
            },
        },
    },
})
