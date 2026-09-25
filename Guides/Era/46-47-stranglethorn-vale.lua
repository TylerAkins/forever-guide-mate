local _, ns = ...

-- Alliance Era leveling route for Stranglethorn Vale, levels 46-47.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    STRANGLETHORN = 1434,
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
    id = "leveling-era-46-47-stranglethorn-vale",
    title = "46-47 Stranglethorn Vale (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 46 } },
        },
    },
    goals = {
        {
            id = "accept-610-pretty-boy-duncan",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { quest = { id = 603, state = "completed" } },
                },
            },
            text = "Accept \"Pretty Boy\" Duncan from Catelyn the Blade in The Salty Sailor Tavern.",
            complete = QuestState(610, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2727, 0.7752, "Catelyn the Blade",
                    "Travel to Catelyn the Blade."),
            },
        },
        {
            id = "note-610-the-salty-sailor-tavern",
            kind = "note",
            priority = 30,
            text = "Set your hearth in The Salty Sailor Tavern with Innkeeper Skindle.",
            route = {
                Point(MAP.STRANGLETHORN, 0.2705, 0.7732, "Innkeeper Skindle",
                    "Travel to Innkeeper Skindle."),
            },
        },
        {
            id = "accept-587-up-to-snuff",
            kind = "accept",
            priority = 40,
            text = "Accept Up to Snuff from Deeg in The Salty Sailor Tavern.",
            complete = QuestState(587, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2694, 0.7732, "Deeg",
                    "Travel to Deeg."),
            },
        },
        {
            id = "accept-614-the-captain-s-chest",
            kind = "accept",
            priority = 50,
            text = "Accept The Captain's Chest from Captain Hecklebury Smotts in Booty Bay.",
            complete = QuestState(614, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2670, 0.7361, "Captain Hecklebury Smotts",
                    "Travel to Captain Hecklebury Smotts."),
            },
        },
        {
            id = "accept-608-the-bloodsail-buccaneers",
            kind = "accept",
            priority = 60,
            conditions = {
                all = {
                    { quest = { id = 604, state = "completed" } },
                },
            },
            text = "Accept The Bloodsail Buccaneers from Fleet Master Seahorn in Booty Bay.",
            complete = QuestState(608, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2720, 0.7691, "Fleet Master Seahorn",
                    "Travel to Fleet Master Seahorn."),
            },
        },
        {
            id = "objective-610-pretty-boy-duncan",
            kind = "objective",
            priority = 80,
            conditions = {
                all = {
                    { quest = { id = 603, state = "completed" } },
                },
            },
            text = "Kill \"Pretty Boy\" Duncan and collect Catelyn's Blade in Southern Savage Coast.",
            dependsOn = { "accept-610-pretty-boy-duncan" },
            complete = QuestState(610, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2742, 0.6943, "'Pretty Boy' Duncan",
                    "Travel to 'Pretty Boy' Duncan."),
            },
        },
        {
            id = "objective-614-the-captain-s-chest",
            kind = "objective",
            priority = 100,
            text = "Kill Gorlash and collect Smotts' Chest in The Crystal Shore Gorlash is a level 47 Elite and you might need help to kill him otherwise it is safe to skip.",
            dependsOn = { "accept-614-the-captain-s-chest" },
            complete = QuestState(614, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3377, 0.7485, "Continue toward The Captain's Chest",
                    "Continue toward The Captain's Chest."),
                Point(MAP.STRANGLETHORN, 0.3919, 0.6070, "Continue toward The Captain's Chest",
                    "Continue toward The Captain's Chest."),
                Point(MAP.STRANGLETHORN, 0.3695, 0.6973, "Gorlash",
                    "Travel to Gorlash."),
            },
        },
        {
            id = "objective-594-carefully-folded-note",
            kind = "objective",
            priority = 110,
            text = "Look for a Half Burried Bottle (green) along the beach and check it for Carefully Folded Note to start quest.",
            dependsOn = { "accept-594-message-in-a-bottle" },
            complete = QuestState(594, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3460, 0.7300, "Continue toward Carefully Folded Note",
                    "Continue toward Carefully Folded Note."),
                Point(MAP.STRANGLETHORN, 0.3390, 0.7670, "Continue toward Carefully Folded Note",
                    "Continue toward Carefully Folded Note."),
                Point(MAP.STRANGLETHORN, 0.3973, 0.7739, "Carefully Folded Note",
                    "Travel to Carefully Folded Note."),
            },
        },
        {
            id = "accept-594-message-in-a-bottle",
            kind = "accept",
            priority = 120,
            text = "Use the Carefully Folded Note to accept Message in a Bottle.",
            complete = QuestState(594, "activeOrCompleted"),
        },
        {
            id = "turnin-594-message-in-a-bottle",
            kind = "turnin",
            priority = 140,
            text = "Turn in Message in a Bottle to Crank Fizzlebub in Jaguero Isle.",
            dependsOn = { "objective-594-carefully-folded-note" },
            complete = QuestState(594, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3851, 0.8058, "Crank Fizzlebub",
                    "Travel to Crank Fizzlebub."),
            },
        },
        {
            id = "accept-630-message-in-a-bottle",
            kind = "accept",
            priority = 150,
            text = "Accept Message in a Bottle from Princess Poobah in Jaguero Isle.",
            complete = QuestState(630, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3851, 0.8058, "Princess Poobah",
                    "Travel to Princess Poobah."),
            },
        },
        {
            id = "objective-630-message-in-a-bottle",
            kind = "objective",
            priority = 160,
            text = "Kill King Mukla and collect Shackle Key in Jaguero Isle This is a group quest and hard to solo, safe to skip.",
            dependsOn = { "accept-630-message-in-a-bottle" },
            complete = QuestState(630, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.4098, 0.8395, "King Mukla",
                    "Travel to King Mukla."),
            },
        },
        {
            id = "objective-608-1-captain-stillwater",
            kind = "objective",
            priority = 170,
            conditions = {
                all = {
                    { quest = { id = 604, state = "completed" } },
                },
            },
            text = "Kill Captain Stillwater in the middle floor of the ship in Wild Shore.",
            dependsOn = { "accept-608-the-bloodsail-buccaneers" },
            complete = QuestObjective(608, 1),
            route = {
                Point(MAP.STRANGLETHORN, 0.3282, 0.8833, "Captain Stillwater",
                    "Travel to Captain Stillwater."),
            },
        },
        {
            id = "objective-608-3-fleet-master-firallon",
            kind = "objective",
            priority = 180,
            conditions = {
                all = {
                    { quest = { id = 604, state = "completed" } },
                },
            },
            text = "Kill Garr Salthoof in the middle floor of the ship in Wild Shore.",
            dependsOn = { "accept-608-the-bloodsail-buccaneers" },
            complete = QuestObjective(608, 3),
            route = {
                Point(MAP.STRANGLETHORN, 0.3017, 0.8940, "Continue toward Fleet Master Firallon",
                    "Continue toward Fleet Master Firallon."),
                Point(MAP.STRANGLETHORN, 0.3063, 0.9057, "Garr Salthoof",
                    "Travel to Garr Salthoof."),
            },
        },
        {
            id = "objective-608-2-captain-keelhaul",
            kind = "objective",
            priority = 190,
            conditions = {
                all = {
                    { quest = { id = 604, state = "completed" } },
                },
            },
            text = "Kill Captain Keelhaul in the middle floor of the ship in Wild Shore.",
            dependsOn = { "accept-608-the-bloodsail-buccaneers" },
            complete = QuestObjective(608, 2),
            route = {
                Point(MAP.STRANGLETHORN, 0.2987, 0.8935, "Continue toward Captain Keelhaul",
                    "Continue toward Captain Keelhaul."),
                Point(MAP.STRANGLETHORN, 0.2920, 0.8838, "Captain Keelhaul",
                    "Travel to Captain Keelhaul."),
            },
        },
        {
            id = "objective-624-cortello-s-riddle",
            kind = "objective",
            priority = 200,
            text = "Check the bottom floor of each ship for Cortello's Riddle or in the captain's room, it can spawn in one of the three ship.",
            complete = QuestState(624, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2918, 0.8863, "Cortello's Riddle",
                    "Travel to Cortello's Riddle."),
            },
        },
        {
            id = "objective-587-up-to-snuff",
            kind = "objective",
            priority = 210,
            text = "Collect 15 Snuff from any pirates in Wild Shore.",
            dependsOn = { "accept-587-up-to-snuff" },
            complete = QuestState(587, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3314, 0.8825, "Bloodsail Warlock",
                    "Travel to Bloodsail Warlock."),
            },
        },
        {
            id = "turnin-610-pretty-boy-duncan",
            kind = "turnin",
            priority = 230,
            conditions = {
                all = {
                    { quest = { id = 603, state = "completed" } },
                },
            },
            text = "Turn in \"Pretty Boy\" Duncan to Catelyn the Blade in The Salty Sailor Tavern.",
            dependsOn = { "objective-610-pretty-boy-duncan" },
            complete = QuestState(610, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2727, 0.7752, "Catelyn the Blade",
                    "Travel to Catelyn the Blade."),
            },
        },
        {
            id = "accept-611-the-curse-of-the-tides",
            kind = "accept",
            priority = 240,
            conditions = {
                all = {
                    { quest = { id = 603, state = "completed" } },
                },
            },
            text = "Accept The Curse of the Tides from Catelyn the Blade in The Salty Sailor Tavern.",
            complete = QuestState(611, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2727, 0.7752, "Catelyn the Blade",
                    "Travel to Catelyn the Blade."),
            },
        },
        {
            id = "turnin-587-up-to-snuff",
            kind = "turnin",
            priority = 250,
            text = "Turn in Up to Snuff to Deeg in The Salty Sailor Tavern.",
            dependsOn = { "objective-587-up-to-snuff" },
            complete = QuestState(587, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2694, 0.7732, "Deeg",
                    "Travel to Deeg."),
            },
        },
        {
            id = "turnin-608-the-bloodsail-buccaneers",
            kind = "turnin",
            priority = 260,
            conditions = {
                all = {
                    { quest = { id = 604, state = "completed" } },
                },
            },
            text = "Turn in The Bloodsail Buccaneers to Fleet Master Seahorn in Booty Bay.",
            dependsOn = { "objective-608-1-captain-stillwater", "objective-608-3-fleet-master-firallon", "objective-608-2-captain-keelhaul" },
            complete = QuestState(608, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2719, 0.7699, "Fleet Master Seahorn",
                    "Travel to Fleet Master Seahorn."),
            },
        },
        {
            id = "turnin-614-the-captain-s-chest",
            kind = "turnin",
            priority = 270,
            text = "Turn in The Captain's Chest to Captain Hecklebury Smotts in Booty Bay.",
            dependsOn = { "objective-614-the-captain-s-chest" },
            complete = QuestState(614, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2669, 0.7362, "Captain Hecklebury Smotts",
                    "Travel to Captain Hecklebury Smotts."),
            },
        },
        {
            id = "accept-348-stranglethorn-fever",
            kind = "accept",
            priority = 280,
            text = "Accept Stranglethorn Fever from Fin Fizracket in Booty Bay.",
            complete = QuestState(348, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2763, 0.7675, "Fin Fizracket",
                    "Travel to Fin Fizracket."),
            },
        },
        {
            id = "accept-580-whiskey-slim-s-lost-grog",
            kind = "accept",
            priority = 290,
            text = "Accept Whiskey Slim's Lost Grog from Whiskey Slim in The Salty Sailor Tavern.",
            complete = QuestState(580, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2712, 0.7743, "Whiskey Slim",
                    "Travel to Whiskey Slim."),
            },
        },
        {
            id = "turnin-349-stranglethorn-fever",
            kind = "turnin",
            priority = 310,
            text = "Turn in Stranglethorn Fever to Witch Doctor Unbagwa in Spirit Den. This is an elite. Bring a group.",
            complete = QuestState(349, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3528, 0.6039, "Witch Doctor Unbagwa",
                    "Travel to Witch Doctor Unbagwa."),
            },
        },
        {
            id = "objective-348-stranglethorn-fever",
            kind = "objective",
            priority = 320,
            text = "Survive the wave of attack until Mokk the Savage spawn, kill him for Heart of Mokk in Spirit Den.",
            dependsOn = { "accept-348-stranglethorn-fever" },
            complete = QuestState(348, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3517, 0.6054, "Mokk the Savage",
                    "Travel to Mokk the Savage."),
            },
        },
        {
            id = "objective-611-the-curse-of-the-tides",
            kind = "objective",
            priority = 330,
            conditions = {
                all = {
                    { quest = { id = 603, state = "completed" } },
                },
            },
            text = "Click on the Altar of Tides and Gazban will spawn, kill him and collect Stone of the Tides in The Vile Reef.",
            dependsOn = { "accept-611-the-curse-of-the-tides" },
            complete = QuestState(611, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2490, 0.2356, "Gazban",
                    "Travel to Gazban."),
            },
        },
        {
            id = "accept-208-big-game-hunter",
            kind = "accept",
            priority = 340,
            conditions = {
                all = {
                    { quest = { id = 197, state = "completed" } },
                },
            },
            text = "Accept Big Game Hunter from Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            complete = QuestState(208, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3570, 0.1080, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "objective-208-big-game-hunter",
            kind = "objective",
            priority = 350,
            conditions = {
                all = {
                    { quest = { id = 197, state = "completed" } },
                },
            },
            text = "Kill King Bangalash and loot the Head of Bangalash.",
            dependsOn = { "accept-208-big-game-hunter" },
            complete = QuestState(208, "complete"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3800, 0.3500, "King Bangalash",
                    "Travel to King Bangalash."),
            },
        },
        {
            id = "turnin-208-big-game-hunter",
            kind = "turnin",
            priority = 370,
            conditions = {
                all = {
                    { quest = { id = 197, state = "completed" } },
                },
            },
            text = "Turn in Big Game Hunter to Hemet Nesingwary Jr. in Nesingwary's Expedition.",
            dependsOn = { "objective-208-big-game-hunter" },
            complete = QuestState(208, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3570, 0.1080, "Hemet Nesingwary Jr.",
                    "Travel to Hemet Nesingwary Jr.."),
            },
        },
        {
            id = "accept-338-the-green-hills-of-stranglethorn",
            kind = "accept",
            priority = 380,
            text = "Accept The Green Hills of Stranglethorn from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(338, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1051, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "accept-339-chapter-i",
            kind = "accept",
            priority = 390,
            text = "Accept Chapter I from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(339, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1051, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "accept-340-chapter-ii",
            kind = "accept",
            priority = 400,
            text = "Accept Chapter II from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(340, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1051, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "accept-341-chapter-iii",
            kind = "accept",
            priority = 410,
            text = "Accept Chapter III from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(341, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1051, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "accept-342-chapter-iv",
            kind = "accept",
            priority = 420,
            text = "Accept Chapter IV from Barnil Stonepot in Nesingwary's Expedition.",
            complete = QuestState(342, "activeOrCompleted"),
            route = {
                Point(MAP.STRANGLETHORN, 0.3565, 0.1051, "Barnil Stonepot",
                    "Travel to Barnil Stonepot."),
            },
        },
        {
            id = "turnin-611-the-curse-of-the-tides",
            kind = "turnin",
            priority = 440,
            conditions = {
                all = {
                    { quest = { id = 603, state = "completed" } },
                },
            },
            text = "Turn in The Curse of the Tides to Baron Revilgaz in Booty Bay.",
            dependsOn = { "objective-611-the-curse-of-the-tides" },
            complete = QuestState(611, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2720, 0.7690, "Baron Revilgaz",
                    "Travel to Baron Revilgaz."),
            },
        },
        {
            id = "turnin-348-stranglethorn-fever",
            kind = "turnin",
            priority = 450,
            text = "Turn in Stranglethorn Fever to Fin Fizracket in Booty Bay.",
            dependsOn = { "objective-348-stranglethorn-fever" },
            complete = QuestState(348, "completed"),
            route = {
                Point(MAP.STRANGLETHORN, 0.2764, 0.7675, "Fin Fizracket",
                    "Travel to Fin Fizracket."),
            },
        },
    },
})
