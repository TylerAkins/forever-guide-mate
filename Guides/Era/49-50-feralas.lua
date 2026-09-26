local _, ns = ...

-- Horde Era leveling route for Feralas, levels 49-50.
-- This follows the classic route and is not rewritten for Forever yet.
-- Grind stops and flight-point pickups are not part of this route.
-- Again With the Zapped Giants (7725) is the repeatable follow-up to Zapped Giants
-- and is not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    FERALAS = 1444,
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
    id = "leveling-era-49-50-feralas",
    title = "49-50 Feralas (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 49 } },
        },
    },
    goals = {
        {
            id = "accept-3124-hippogryph-muisek",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Accept Hippogryph Muisek from Witch Doctor Uzer'i in Camp Mojache.",
            complete = QuestState(3124, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.7442, 0.4335, "Witch Doctor Uzer'i",
                    "Travel to Witch Doctor Uzer'i."),
            },
        },
        {
            id = "accept-3380-the-sunken-temple",
            kind = "accept",
            priority = 30,
            text = "Accept The Sunken Temple from Witch Doctor Uzer'i in Camp Mojache.",
            complete = QuestState(3380, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.7442, 0.4335, "Witch Doctor Uzer'i",
                    "Travel to Witch Doctor Uzer'i."),
            },
        },
        {
            id = "accept-7734-improved-quality",
            kind = "accept",
            priority = 40,
            text = "Accept Improved Quality in Camp Mojache.",
            complete = QuestState(7734, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.7451, 0.4295, "Camp Mojache",
                    "Travel to Camp Mojache."),
            },
        },
        {
            id = "accept-3062-dark-heart",
            kind = "accept",
            priority = 50,
            text = "Accept Dark Heart from Talo Thornhoof in Camp Mojache.",
            complete = QuestState(3062, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.7618, 0.4382, "Talo Thornhoof",
                    "Travel to Talo Thornhoof."),
            },
        },
        {
            id = "accept-3063-vengeance-on-the-northspring",
            kind = "accept",
            priority = 60,
            text = "Accept Vengeance on the Northspring from Talo Thornhoof in Camp Mojache.",
            complete = QuestState(3063, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.7618, 0.4382, "Talo Thornhoof",
                    "Travel to Talo Thornhoof."),
            },
        },
        {
            id = "accept-4120-the-strength-of-corruption",
            kind = "accept",
            priority = 70,
            text = "Accept The Strength of Corruption from Talo Thornhoof in Camp Mojache.",
            complete = QuestState(4120, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.7618, 0.4382, "Talo Thornhoof",
                    "Travel to Talo Thornhoof."),
            },
        },
        {
            id = "note-3124-camp-mojache",
            kind = "note",
            priority = 80,
            text = "Set your hearth in Camp Mojache with Innkeeper Greul.",
            route = {
                Point(MAP.FERALAS, 0.7478, 0.4513, "Innkeeper Greul",
                    "Travel to Innkeeper Greul."),
            },
        },
        {
            id = "objective-3124-hippogryph-muisek",
            kind = "objective",
            priority = 100,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Kill any Hippogryph and use Hippogryph Muisek Vessel on the corpse to colllect 10 Hippogryph Muisek in High Wilderness.",
            dependsOn = { "accept-3124-hippogryph-muisek" },
            complete = QuestState(3124, "complete"),
            route = {
                Point(MAP.FERALAS, 0.5584, 0.6326, "Frayfeather Hippogryph",
                    "Travel to Frayfeather Hippogryph."),
            },
        },
        {
            id = "turnin-3124-hippogryph-muisek",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Turn in Hippogryph Muisek to Witch Doctor Uzer'i in Camp Mojache.",
            dependsOn = { "objective-3124-hippogryph-muisek" },
            complete = QuestState(3124, "completed"),
            route = {
                Point(MAP.FERALAS, 0.7441, 0.4337, "Witch Doctor Uzer'i",
                    "Travel to Witch Doctor Uzer'i."),
            },
        },
        {
            id = "accept-3125-faerie-dragon-muisek",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Accept Faerie Dragon Muisek from Witch Doctor Uzer'i in Camp Mojache.",
            complete = QuestState(3125, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.7447, 0.4361, "Witch Doctor Uzer'i",
                    "Travel to Witch Doctor Uzer'i."),
            },
        },
        {
            id = "objective-3125-faerie-dragon-muisek",
            kind = "objective",
            priority = 140,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Kill Sprite Darter and use Faerie Dragon Muisek Vessel on the corpse to colllect 10 Hippogryph Muisek.",
            dependsOn = { "accept-3125-faerie-dragon-muisek" },
            complete = QuestState(3125, "complete"),
            route = {
                Point(MAP.FERALAS, 0.6984, 0.4698, "Sprite Darter",
                    "Travel to Sprite Darter."),
            },
        },
        {
            id = "turnin-3125-faerie-dragon-muisek",
            kind = "turnin",
            priority = 150,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Turn in Faerie Dragon Muisek to Witch Doctor Uzer'i in Camp Mojache.",
            dependsOn = { "objective-3125-faerie-dragon-muisek" },
            complete = QuestState(3125, "completed"),
            route = {
                Point(MAP.FERALAS, 0.7443, 0.4338, "Witch Doctor Uzer'i",
                    "Travel to Witch Doctor Uzer'i."),
            },
        },
        {
            id = "accept-3126-treant-muisek",
            kind = "accept",
            priority = 160,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Accept Treant Muisek from Witch Doctor Uzer'i in Camp Mojache.",
            complete = QuestState(3126, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.7443, 0.4338, "Witch Doctor Uzer'i",
                    "Travel to Witch Doctor Uzer'i."),
            },
        },
        {
            id = "objective-3126-treant-muisek",
            kind = "objective",
            priority = 170,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Rotate between the two spawn location to kill 3 Wandering Forest Walker and use Treant Muisek Vessel on the corpse to collect 3 Treant Muisek.",
            dependsOn = { "accept-3126-treant-muisek" },
            complete = QuestState(3126, "complete"),
            route = {
                Point(MAP.FERALAS, 0.7363, 0.3977, "Continue toward Treant Muisek",
                    "Continue toward Treant Muisek."),
                Point(MAP.FERALAS, 0.7339, 0.5440, "Wandering Forest Walker",
                    "Travel to Wandering Forest Walker."),
            },
        },
        {
            id = "turnin-3126-treant-muisek",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Turn in Treant Muisek to Witch Doctor Uzer'i in Camp Mojache.",
            dependsOn = { "objective-3126-treant-muisek" },
            complete = QuestState(3126, "completed"),
            route = {
                Point(MAP.FERALAS, 0.7442, 0.4337, "Witch Doctor Uzer'i",
                    "Travel to Witch Doctor Uzer'i."),
            },
        },
        {
            id = "accept-3127-mountain-giant-muisek",
            kind = "accept",
            priority = 190,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Accept Mountain Giant Muisek from Witch Doctor Uzer'i in Camp Mojache.",
            complete = QuestState(3127, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.7442, 0.4337, "Witch Doctor Uzer'i",
                    "Travel to Witch Doctor Uzer'i."),
            },
        },
        {
            id = "accept-7003-zapped-giants",
            kind = "accept",
            priority = 210,
            text = "Accept Zapped Giants from Zorbin Fandazzle in The Forgotten Coast.",
            complete = QuestState(7003, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.4480, 0.4345, "Zorbin Fandazzle",
                    "Travel to Zorbin Fandazzle."),
            },
        },
        {
            id = "accept-7721-fuel-for-the-zapping",
            kind = "accept",
            priority = 220,
            text = "Accept Fuel for the Zapping from Zorbin Fandazzle in The Forgotten Coast.",
            complete = QuestState(7721, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.4480, 0.4345, "Zorbin Fandazzle",
                    "Travel to Zorbin Fandazzle."),
            },
        },
        {
            id = "objective-7721-fuel-for-the-zapping",
            kind = "objective",
            priority = 230,
            text = "Kill Sea Elemental and collect 10 Water Elemental Core in The Forgotten Coast.",
            dependsOn = { "accept-7721-fuel-for-the-zapping" },
            complete = QuestState(7721, "complete"),
            route = {
                Point(MAP.FERALAS, 0.3994, 0.3742, "Sea Elemental",
                    "Travel to Sea Elemental."),
            },
        },
        {
            id = "turnin-7721-fuel-for-the-zapping",
            kind = "turnin",
            priority = 240,
            text = "Turn in Fuel for the Zapping to Zorbin Fandazzle in The Forgotten Coast.",
            dependsOn = { "objective-7721-fuel-for-the-zapping" },
            complete = QuestState(7721, "completed"),
            route = {
                Point(MAP.FERALAS, 0.4482, 0.4342, "Zorbin Fandazzle",
                    "Travel to Zorbin Fandazzle."),
            },
        },
        {
            id = "objective-7734-improved-quality",
            kind = "objective",
            priority = 260,
            text = "Kill the Yetis and collect 10 Feral Scar Yeti Hide in Rage Scar Hold.",
            dependsOn = { "accept-7734-improved-quality" },
            complete = QuestState(7734, "complete"),
            route = {
                Point(MAP.FERALAS, 0.5324, 0.3183, "Rage Scar Yeti",
                    "Travel to Rage Scar Yeti."),
            },
        },
        {
            id = "objective-7738-rage-scar-yeti",
            kind = "objective",
            priority = 270,
            text = "Keep killing Rage Scar Yeti until you collect Perfect Yeti Hide for accept a new quest.",
            complete = QuestState(7738, "complete"),
            route = {
                Point(MAP.FERALAS, 0.5238, 0.3174, "Rage Scar Yeti",
                    "Travel to Rage Scar Yeti."),
            },
        },
        {
            id = "objective-3062-northspring-windcaller",
            kind = "objective",
            priority = 290,
            text = "Kill Northspring Windcaller and collect a Horn of Hatetalon.",
            dependsOn = { "accept-3062-dark-heart" },
            complete = QuestState(3062, "complete"),
            route = {
                Point(MAP.FERALAS, 0.3880, 0.1350, "Northspring Windcaller",
                    "Travel to Northspring Windcaller."),
            },
        },
        {
            id = "objective-3062-dark-heart",
            kind = "objective",
            priority = 300,
            text = "Use Horn of Hatetalon between the two stones in Ruins of Ravenwind to summon and kill Edana Hatetalon, collect Edana's Dark Heart.",
            dependsOn = { "accept-3062-dark-heart" },
            complete = QuestState(3062, "complete"),
            route = {
                Point(MAP.FERALAS, 0.4051, 0.0866, "Edana Hatetalon",
                    "Travel to Edana Hatetalon."),
            },
        },
        {
            id = "objective-3063-vengeance-on-the-northspring",
            kind = "objective",
            priority = 310,
            text = "Kill the required Northspring Harpies in Ruins of Ravenwind.",
            dependsOn = { "accept-3063-vengeance-on-the-northspring" },
            complete = QuestState(3063, "complete"),
            route = {
                Point(MAP.FERALAS, 0.3817, 0.1189, "Northspring Windcaller",
                    "Travel to Northspring Windcaller."),
            },
        },
        {
            id = "objective-7003-zapped-giants",
            kind = "objective",
            priority = 330,
            text = "Use Zorbin's Ultra-Shrinker on Land Walker or Cliff Giant to turn them into non elites, kill them and collect 15 Miniaturization Residue in The Twin Colossals.",
            dependsOn = { "accept-7003-zapped-giants" },
            complete = QuestState(7003, "complete"),
            route = {
                Point(MAP.FERALAS, 0.3842, 0.2151, "Land Walker",
                    "Travel to Land Walker."),
            },
        },
        {
            id = "objective-3127-mountain-giant-muisek",
            kind = "objective",
            priority = 350,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Use Mountain Giant Muisek Vessel on giant corpses to collect 7 Mountain Giant Muisek, you can use it on the Zapped giants.",
            dependsOn = { "accept-3127-mountain-giant-muisek" },
            complete = QuestState(3127, "complete"),
            route = {
                Point(MAP.FERALAS, 0.4447, 0.4687, "Land Walker",
                    "Travel to Land Walker."),
            },
        },
        {
            id = "turnin-7003-zapped-giants",
            kind = "turnin",
            priority = 370,
            text = "Turn in Zapped Giants to Zorbin Fandazzle in The Forgotten Coast.",
            dependsOn = { "objective-7003-zapped-giants" },
            complete = QuestState(7003, "completed"),
            route = {
                Point(MAP.FERALAS, 0.4481, 0.4340, "Zorbin Fandazzle",
                    "Travel to Zorbin Fandazzle."),
            },
        },
        {
            id = "turnin-3127-mountain-giant-muisek",
            kind = "turnin",
            priority = 400,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Turn in Mountain Giant Muisek to Witch Doctor Uzer'i in Camp Mojache.",
            dependsOn = { "objective-3127-mountain-giant-muisek" },
            complete = QuestState(3127, "completed"),
            route = {
                Point(MAP.FERALAS, 0.7441, 0.4336, "Witch Doctor Uzer'i",
                    "Travel to Witch Doctor Uzer'i."),
            },
        },
        {
            id = "accept-3129-weapons-of-spirit",
            kind = "accept",
            priority = 410,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Accept Weapons of Spirit from Witch Doctor Uzer'i in Camp Mojache.",
            complete = QuestState(3129, "activeOrCompleted"),
            route = {
                Point(MAP.FERALAS, 0.7453, 0.4332, "Witch Doctor Uzer'i",
                    "Travel to Witch Doctor Uzer'i."),
            },
        },
        {
            id = "turnin-3129-weapons-of-spirit",
            kind = "turnin",
            priority = 420,
            conditions = {
                all = {
                    { quest = { id = 3123, state = "completed" } },
                },
            },
            text = "Turn in Weapons of Spirit to Witch Doctor Uzer'i in Camp Mojache.",
            dependsOn = { "accept-3129-weapons-of-spirit" },
            complete = QuestState(3129, "completed"),
            route = {
                Point(MAP.FERALAS, 0.7453, 0.4332, "Witch Doctor Uzer'i",
                    "Travel to Witch Doctor Uzer'i."),
            },
        },
        {
            id = "turnin-7734-improved-quality",
            kind = "turnin",
            priority = 430,
            text = "Turn in Improved Quality to Jangdor Swiftstrider in Camp Mojache.",
            dependsOn = { "objective-7734-improved-quality" },
            complete = QuestState(7734, "completed"),
            route = {
                Point(MAP.FERALAS, 0.7443, 0.4290, "Jangdor Swiftstrider",
                    "Travel to Jangdor Swiftstrider."),
            },
        },
        {
            id = "turnin-3062-dark-heart",
            kind = "turnin",
            priority = 440,
            text = "Turn in Dark Heart to Talo Thornhoof in Camp Mojache.",
            dependsOn = { "objective-3062-northspring-windcaller", "objective-3062-dark-heart" },
            complete = QuestState(3062, "completed"),
            route = {
                Point(MAP.FERALAS, 0.7618, 0.4381, "Talo Thornhoof",
                    "Travel to Talo Thornhoof."),
            },
        },
        {
            id = "turnin-3063-vengeance-on-the-northspring",
            kind = "turnin",
            priority = 450,
            text = "Turn in Vengeance on the Northspring to Talo Thornhoof in Camp Mojache.",
            dependsOn = { "objective-3063-vengeance-on-the-northspring" },
            complete = QuestState(3063, "completed"),
            route = {
                Point(MAP.FERALAS, 0.7618, 0.4381, "Talo Thornhoof",
                    "Travel to Talo Thornhoof."),
            },
        },
    },
})
