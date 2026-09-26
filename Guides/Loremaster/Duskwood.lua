local _, ns = ...

-- Duskwood Loremaster route.
-- The step order follows the leveling route. Quests that are on the
-- Wowhead zone page and not on that route are woven in at the giver
-- the route already visits, or after the series quest they follow.
-- Leveling route: Guides/Leveling/28-29-duskwood.lua
-- Quest list: https://www.wowhead.com/forever/quests/eastern-kingdoms/duskwood
-- Dungeon quests stay in the dungeon guides.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    DUSKWOOD = 1431,
    WESTFALL = 1436,
    STORMWIND = 1453,
    ELWYNN = 1429,
    ZONE_1437 = 1437,
}

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
end

local function QuestObjective(questID, index, text)
    return { questObjective = { id = questID, index = index, text = text } }
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
    id = "leveling-duskwood",
    title = "Duskwood",
    category = "Loremaster Guides",
    revision = 2,
    conditions = {
        all = {
            { level = { min = 28 } },
        },
    },
    goals = {
        {
            id = "accept-66-the-legend-of-stalvan",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Legend of Stalvan from Madame Eva in Darkshire.",
            complete = QuestState(66, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7572, 0.4534, "Madame Eva",
                    "Travel to Madame Eva."),
            },
        },
        {
            id = "accept-101-the-totem-of-infliction",
            kind = "accept",
            priority = 20,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Totem of Infliction from Madame Eva in Darkshire.",
            complete = QuestState(101, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7572, 0.4534, "Madame Eva",
                    "Travel to Madame Eva."),
            },
        },
        {
            id = "accept-56-the-night-watch",
            kind = "accept",
            priority = 30,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Night Watch from Commander Althea Ebonlocke in Darkshire.",
            complete = QuestState(56, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7360, 0.4685, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "turnin-66-the-legend-of-stalvan",
            kind = "turnin",
            priority = 40,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Legend of Stalvan to Clerk Daltry in Darkshire.",
            dependsOn = { "accept-66-the-legend-of-stalvan" },
            complete = QuestState(66, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7264, 0.4684, "Clerk Daltry",
                    "Travel to Clerk Daltry."),
            },
        },
        {
            id = "accept-67-the-legend-of-stalvan",
            kind = "accept",
            priority = 50,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Legend of Stalvan from Clerk Daltry in Darkshire.",
            complete = QuestState(67, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7264, 0.4684, "Clerk Daltry",
                    "Travel to Clerk Daltry."),
            },
        },
        {
            id = "accept-173-worgen-in-the-woods",
            kind = "accept",
            priority = 60,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Worgen in the Woods from Calor in Darkshire.",
            complete = QuestState(173, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7524, 0.4800, "Calor",
                    "Travel to Calor."),
            },
        },
        {
            id = "accept-165-the-hermit",
            kind = "accept",
            priority = 70,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Hermit from Elaine Carevin in Darkshire.",
            complete = QuestState(165, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7533, 0.4862, "Elaine Carevin",
                    "Travel to Elaine Carevin."),
            },
        },
        {
            id = "accept-164-deliveries-to-sven",
            kind = "accept",
            priority = 80,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Deliveries to Sven from Elaine Carevin in Darkshire.",
            complete = QuestState(164, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7533, 0.4862, "Elaine Carevin",
                    "Travel to Elaine Carevin."),
            },
        },
        {
            id = "accept-163-raven-hill",
            kind = "accept",
            priority = 90,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Raven Hill from Elaine Carevin in Darkshire.",
            complete = QuestState(163, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7531, 0.4851, "Elaine Carevin",
                    "Travel to Elaine Carevin."),
            },
        },
        {
            id = "accept-174-look-to-the-stars",
            kind = "accept",
            priority = 100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Look To The Stars from Viktori Prism'Antras in Darkshire.",
            complete = QuestState(174, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7979, 0.4797, "Viktori Prism'Antras",
                    "Travel to Viktori Prism'Antras."),
            },
        },
        {
            id = "objective-174-look-to-the-stars",
            kind = "objective",
            priority = 110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Buy a Bronze Tube from Herble Baubbletump in Darkshire He does only have a limited supply of these and you may have to wait for him to stock up. If he does not have any you can easily fly to Stormwind where you can buy these from Billibub Cogspinner in the Dwarven District or the Auction House.",
            dependsOn = { "accept-174-look-to-the-stars" },
            complete = QuestState(174, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.7800, 0.4800, "Herble Baubbletump",
                    "Travel to Herble Baubbletump."),
            },
        },
        {
            id = "turnin-174-look-to-the-stars",
            kind = "turnin",
            priority = 120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Look To The Stars to Viktori Prism'Antras in Darkshire.",
            dependsOn = { "objective-174-look-to-the-stars" },
            complete = QuestState(174, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7979, 0.4797, "Viktori Prism'Antras",
                    "Travel to Viktori Prism'Antras."),
            },
        },
        {
            id = "accept-175-look-to-the-stars",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Look To The Stars from Viktori Prism'Antras in Darkshire.",
            complete = QuestState(175, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7979, 0.4797, "Viktori Prism'Antras",
                    "Travel to Viktori Prism'Antras."),
            },
        },
        {
            id = "turnin-175-look-to-the-stars",
            kind = "turnin",
            priority = 140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Look To The Stars to Blind Mary in Tranquil Gardens Cemetery.",
            dependsOn = { "accept-175-look-to-the-stars" },
            complete = QuestState(175, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.8180, 0.5929, "Blind Mary",
                    "Travel to Blind Mary."),
            },
        },
        {
            id = "accept-177-look-to-the-stars",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Look To The Stars from Blind Mary in Tranquil Gardens Cemetery.",
            complete = QuestState(177, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.8180, 0.5929, "Blind Mary",
                    "Travel to Blind Mary."),
            },
        },
        {
            id = "objective-177-look-to-the-stars",
            kind = "objective",
            priority = 160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill the Insane Ghoul which can be found patrolling the Tranquil Gardens Cemetary around and collect Mary's Looking Glass.",
            dependsOn = { "accept-177-look-to-the-stars" },
            complete = QuestState(177, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.7800, 0.7000, "Insane Ghoul",
                    "Travel to Insane Ghoul."),
            },
        },
        {
            id = "objective-101-3-skeleton-finger",
            kind = "objective",
            priority = 170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Collect 10 Skeleton Finger from skeletons in in Tranquil Gardens Cemetery.",
            dependsOn = { "accept-101-the-totem-of-infliction" },
            complete = QuestObjective(101, 3),
            route = {
                Point(MAP.DUSKWOOD, 0.7689, 0.7207, "Skeletal Warrior",
                    "Travel to Skeletal Warrior."),
            },
        },
        {
            id = "objective-56-the-night-watch",
            kind = "objective",
            priority = 180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill 8 Skeletal Warrior and 6 Skeletal Mage in Tranquil Gardens Cemetery.",
            dependsOn = { "accept-56-the-night-watch" },
            complete = QuestState(56, "complete"),
        },
        {
            id = "objective-173-worgen-in-the-woods",
            kind = "objective",
            priority = 190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill 6 Nightbane Shadow Weaver in the The Rotting Orchard Southwest of the town of Darkshire.",
            dependsOn = { "accept-173-worgen-in-the-woods" },
            complete = QuestState(173, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.6300, 0.7000, "Nightbane Shadow Weaver",
                    "Travel to Nightbane Shadow Weaver."),
            },
        },
        {
            id = "turnin-173-worgen-in-the-woods",
            kind = "turnin",
            priority = 200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Worgen in the Woods to Calor in Darkshire.",
            dependsOn = { "objective-173-worgen-in-the-woods" },
            complete = QuestState(173, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7524, 0.4800, "Calor",
                    "Travel to Calor."),
            },
        },
        {
            id = "accept-221-worgen-in-the-woods",
            kind = "accept",
            priority = 210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Worgen in the Woods from Calor in Darkshire.",
            complete = QuestState(221, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7524, 0.4800, "Calor",
                    "Travel to Calor."),
            },
        },
        {
            id = "turnin-56-the-night-watch",
            kind = "turnin",
            priority = 220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Night Watch to Commander Althea Ebonlocke in Darkshire.",
            dependsOn = { "objective-56-the-night-watch" },
            complete = QuestState(56, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7360, 0.4685, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "accept-57-the-night-watch",
            kind = "accept",
            priority = 230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Night Watch from Commander Althea Ebonlocke in Darkshire.",
            complete = QuestState(57, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7360, 0.4685, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "turnin-177-look-to-the-stars",
            kind = "turnin",
            priority = 240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Look To The Stars to Viktori Prism'Antras in Darkshire.",
            dependsOn = { "objective-177-look-to-the-stars" },
            complete = QuestState(177, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7979, 0.4797, "Viktori Prism'Antras",
                    "Travel to Viktori Prism'Antras."),
            },
        },
        {
            id = "accept-181-look-to-the-stars",
            kind = "accept",
            priority = 250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Look To The Stars from Viktori Prism'Antras in Darkshire.",
            complete = QuestState(181, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7979, 0.4797, "Viktori Prism'Antras",
                    "Travel to Viktori Prism'Antras."),
            },
        },
        {
            id = "objective-221-worgen-in-the-woods",
            kind = "objective",
            priority = 260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill 12 Nightbane Dark Runner found in The Rotting Orchard.",
            dependsOn = { "accept-221-worgen-in-the-woods" },
            complete = QuestState(221, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.6300, 0.7000, "Nightbane Dark Runner",
                    "Travel to Nightbane Dark Runner."),
            },
        },
        {
            id = "turnin-221-worgen-in-the-woods",
            kind = "turnin",
            priority = 270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Worgen in the Woods to Calor in Darkshire.",
            dependsOn = { "objective-221-worgen-in-the-woods" },
            complete = QuestState(221, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7524, 0.4800, "Calor",
                    "Travel to Calor."),
            },
        },
        {
            id = "accept-222-worgen-in-the-woods",
            kind = "accept",
            priority = 280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Worgen in the Woods from Calor in Darkshire.",
            complete = QuestState(222, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7524, 0.4800, "Calor",
                    "Travel to Calor."),
            },
        },
        {
            id = "objective-222-worgen-in-the-woods",
            kind = "objective",
            priority = 290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill 8 Nightbane Vile Fang and 8 Nightbane Tainted One around the Western edge of the Tranquil Gardens Cemetary. Tainted Ones are found further South of this area.",
            dependsOn = { "accept-222-worgen-in-the-woods" },
            complete = QuestState(222, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.7400, 0.6700, "Continue toward Worgen in the Woods",
                    "Continue toward Worgen in the Woods."),
                Point(MAP.DUSKWOOD, 0.7400, 0.7400, "Nightbane Vile Fang",
                    "Travel to Nightbane Vile Fang."),
            },
        },
        {
            id = "objective-181-look-to-the-stars",
            kind = "objective",
            priority = 300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Find and kill Zzarc' Vul collect the Ogre's Monocle inside the Vul'Gol Ogre Mound cave.",
            dependsOn = { "accept-181-look-to-the-stars" },
            complete = QuestState(181, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.3600, 0.8300, "Zzarc' Vul",
                    "Travel to Zzarc' Vul."),
            },
        },
        {
            id = "turnin-163-raven-hill",
            kind = "turnin",
            priority = 310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Raven Hill to Jitters in Raven Hill.",
            dependsOn = { "accept-163-raven-hill" },
            complete = QuestState(163, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.1833, 0.5625, "Jitters",
                    "Travel to Jitters."),
            },
        },
        {
            id = "accept-5-jitters-growling-gut",
            kind = "accept",
            priority = 320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Jitters' Growling Gut from Jitters in Raven Hill.",
            complete = QuestState(5, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.1838, 0.5643, "Jitters",
                    "Travel to Jitters."),
            },
        },
        {
            id = "objective-57-the-night-watch",
            kind = "objective",
            priority = 330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Travel North of Raven Hill and kill 15 Skeletal Fiend and 15 Rotting Horror.",
            dependsOn = { "accept-57-the-night-watch" },
            complete = QuestState(57, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.2000, 0.4500, "Skeletal Fiend",
                    "Travel to Skeletal Fiend."),
            },
        },
        {
            id = "turnin-165-the-hermit",
            kind = "turnin",
            priority = 340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Hermit to Abercrombie in Raven Hill Cemetery.",
            dependsOn = { "accept-165-the-hermit" },
            complete = QuestState(165, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.2798, 0.3151, "Abercrombie",
                    "Travel to Abercrombie."),
            },
        },
        {
            id = "accept-148-supplies-from-darkshire",
            kind = "accept",
            priority = 350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Supplies from Darkshire from Abercrombie in Raven Hill Cemetery.",
            complete = QuestState(148, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.2798, 0.3151, "Abercrombie",
                    "Travel to Abercrombie."),
            },
        },
        {
            id = "objective-101-2-vial-of-spider-venom",
            kind = "objective",
            priority = 360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Black Widow Hatchling for 5 Vial of Spider Venom around the area, also collect 6 Gooey Spider Leg for a later quest.",
            dependsOn = { "accept-101-the-totem-of-infliction" },
            complete = QuestObjective(101, 2),
            route = {
                Point(MAP.DUSKWOOD, 0.2926, 0.5180, "Black Widow Hatchling",
                    "Travel to Black Widow Hatchling."),
            },
        },
        {
            id = "objective-93-gooey-spider-leg",
            kind = "objective",
            priority = 370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Black Widow Hatchling for 6 Gooey Spider Leg for a later quest.",
            dependsOn = { "accept-93-dusky-crab-cakes" },
            complete = QuestState(93, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.2926, 0.5180, "Black Widow Hatchling",
                    "Travel to Black Widow Hatchling."),
            },
        },
        {
            id = "objective-101-1-ghoul-fang",
            kind = "objective",
            priority = 380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill ghouls and collect 10 Ghoul Fang in Raven Hill Cemetery.",
            dependsOn = { "accept-101-the-totem-of-infliction" },
            complete = QuestObjective(101, 1),
            route = {
                Point(MAP.DUSKWOOD, 0.2579, 0.3339, "Rotted One",
                    "Travel to Rotted One."),
            },
        },
        {
            id = "accept-225-the-weathered-grave",
            kind = "accept",
            priority = 390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Weathered Grave in Forlorn Rowe.",
            complete = QuestState(225, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.1768, 0.2915, "Forlorn Rowe",
                    "Travel to Forlorn Rowe."),
            },
        },
        {
            id = "turnin-164-deliveries-to-sven",
            kind = "turnin",
            priority = 400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Deliveries to Sven to Sven Yorgen in The Hushed Bank.",
            dependsOn = { "accept-164-deliveries-to-sven" },
            complete = QuestState(164, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.0782, 0.3406, "Sven Yorgen",
                    "Travel to Sven Yorgen."),
            },
        },
        {
            id = "accept-95-sven-s-revenge",
            kind = "accept",
            priority = 410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Sven's Revenge from Sven Yorgen in The Hushed Bank.",
            complete = QuestState(95, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.0782, 0.3406, "Sven Yorgen",
                    "Travel to Sven Yorgen."),
            },
        },
        {
            id = "turnin-5-jitters-growling-gut",
            kind = "turnin",
            priority = 420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Jitters' Growling Gut to Chef Grual in Darkshire.",
            dependsOn = { "accept-5-jitters-growling-gut" },
            complete = QuestState(5, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7388, 0.4343, "Chef Grual",
                    "Travel to Chef Grual."),
            },
        },
        {
            id = "accept-93-dusky-crab-cakes",
            kind = "accept",
            priority = 430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Dusky Crab Cakes from Chef Grual in Darkshire.",
            complete = QuestState(93, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7388, 0.4343, "Chef Grual",
                    "Travel to Chef Grual."),
            },
        },
        {
            id = "accept-90-seasoned-wolf-kabobs",
            kind = "accept",
            priority = 440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 25 } },
                },
            },
            text = "Accept Seasoned Wolf Kabobs from Chef Grual.",
            complete = QuestState(90, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.738, 0.436, "Chef Grual",
                    "Travel to Chef Grual."),
            },
        },
        {
            id = "objective-90-seasoned-wolf-kabobs-1",
            kind = "objective",
            priority = 450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 25 } },
                },
            },
            text = "Seasoned Wolf Kabobs: Lean Wolf Flank.",
            dependsOn = { "accept-90-seasoned-wolf-kabobs" },
            complete = QuestObjective(90, 1, "Lean Wolf Flank"),
            route = {
                Point(MAP.DUSKWOOD, 0.372, 0.198, "Starving Dire Wolf",
                    "Travel to Starving Dire Wolf."),
            },
        },
        {
            id = "turnin-90-seasoned-wolf-kabobs",
            kind = "turnin",
            priority = 460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 25 } },
                },
            },
            text = "Turn in Seasoned Wolf Kabobs to Chef Grual.",
            dependsOn = { "objective-90-seasoned-wolf-kabobs-1" },
            complete = QuestState(90, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.738, 0.436, "Chef Grual",
                    "Travel to Chef Grual."),
            },
        },
        {
            id = "turnin-93-dusky-crab-cakes",
            kind = "turnin",
            priority = 470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Dusky Crab Cakes to Chef Grual in Darkshire.",
            dependsOn = { "objective-93-gooey-spider-leg" },
            complete = QuestState(93, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7388, 0.4343, "Chef Grual",
                    "Travel to Chef Grual."),
            },
        },
        {
            id = "accept-240-return-to-jitters",
            kind = "accept",
            priority = 480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Return to Jitters from Chef Grual in Darkshire.",
            complete = QuestState(240, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7386, 0.4349, "Chef Grual",
                    "Travel to Chef Grual."),
            },
        },
        {
            id = "turnin-57-the-night-watch",
            kind = "turnin",
            priority = 490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Night Watch to Commander Althea Ebonlocke in Darkshire.",
            dependsOn = { "objective-57-the-night-watch" },
            complete = QuestState(57, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7360, 0.4685, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "accept-58-the-night-watch",
            kind = "accept",
            priority = 500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Night Watch from Commander Althea Ebonlocke in Darkshire.",
            complete = QuestState(58, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7360, 0.4685, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "turnin-225-the-weathered-grave",
            kind = "turnin",
            priority = 510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Weathered Grave to Sirra Von'Indi in Darkshire.",
            dependsOn = { "accept-225-the-weathered-grave" },
            complete = QuestState(225, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7258, 0.4757, "Sirra Von'Indi",
                    "Travel to Sirra Von'Indi."),
            },
        },
        {
            id = "accept-227-morgan-ladimore",
            kind = "accept",
            priority = 520,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Morgan Ladimore from Sirra Von'Indi in Darkshire.",
            complete = QuestState(227, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7258, 0.4757, "Sirra Von'Indi",
                    "Travel to Sirra Von'Indi."),
            },
        },
        {
            id = "accept-96139-the-valor-family",
            kind = "accept",
            priority = 530,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Accept The Valor Family from Sirra Von'Indi.",
            complete = QuestState(96139, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.726, 0.476, "Sirra Von'Indi",
                    "Travel to Sirra Von'Indi."),
            },
        },
        {
            id = "objective-98447-the-valor-family-1",
            kind = "objective",
            priority = 540,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 27 } },
                },
            },
            useClientPin = true,
            text = "The Valor Family: Raven Hill investigated. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(98447, 1, "Raven Hill investigated"),
            route = {},
        },
        {
            id = "turnin-98447-the-valor-family",
            kind = "turnin",
            priority = 550,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 27 } },
                },
            },
            useClientPin = true,
            text = "Turn in The Valor Family. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "objective-98447-the-valor-family-1" },
            complete = QuestState(98447, "completed"),
            route = {},
        },
        {
            id = "objective-96139-the-valor-family-1",
            kind = "objective",
            priority = 560,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "The Valor Family: Raven Hill Tome.",
            dependsOn = { "accept-96139-the-valor-family" },
            complete = QuestObjective(96139, 1, "Raven Hill Tome"),
            route = {
                Point(MAP.DUSKWOOD, 0.726, 0.476, "Sirra Von'Indi",
                    "Travel to Sirra Von'Indi."),
            },
        },
        {
            id = "turnin-96139-the-valor-family",
            kind = "turnin",
            priority = 570,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 22 } },
                },
            },
            text = "Turn in The Valor Family to Sirra Von'Indi.",
            dependsOn = { "objective-96139-the-valor-family-1" },
            complete = QuestState(96139, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.726, 0.476, "Sirra Von'Indi",
                    "Travel to Sirra Von'Indi."),
            },
        },
        {
            id = "turnin-227-morgan-ladimore",
            kind = "turnin",
            priority = 580,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Morgan Ladimore to Commander Althea Ebonlocke in Darkshire.",
            dependsOn = { "accept-227-morgan-ladimore" },
            complete = QuestState(227, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7360, 0.4685, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "accept-228-mor-ladim",
            kind = "accept",
            priority = 590,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Mor'Ladim from Commander Althea Ebonlocke in Darkshire.",
            complete = QuestState(228, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7360, 0.4685, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "turnin-101-the-totem-of-infliction",
            kind = "turnin",
            priority = 600,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Totem of Infliction to Madame Eva in Darkshire.",
            dependsOn = { "objective-101-3-skeleton-finger", "objective-101-2-vial-of-spider-venom", "objective-101-1-ghoul-fang" },
            complete = QuestState(101, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7578, 0.4533, "Madame Eva",
                    "Travel to Madame Eva."),
            },
        },
        {
            id = "turnin-148-supplies-from-darkshire",
            kind = "turnin",
            priority = 610,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Supplies from Darkshire to Madame Eva in Darkshire.",
            dependsOn = { "accept-148-supplies-from-darkshire" },
            complete = QuestState(148, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7572, 0.4534, "Madame Eva",
                    "Travel to Madame Eva."),
            },
        },
        {
            id = "accept-149-ghost-hair-thread",
            kind = "accept",
            priority = 620,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Ghost Hair Thread from Madame Eva in Darkshire.",
            complete = QuestState(149, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7572, 0.4534, "Madame Eva",
                    "Travel to Madame Eva."),
            },
        },
        {
            id = "turnin-222-worgen-in-the-woods",
            kind = "turnin",
            priority = 630,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Worgen in the Woods to Calor in Darkshire.",
            dependsOn = { "objective-222-worgen-in-the-woods" },
            complete = QuestState(222, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7524, 0.4800, "Calor",
                    "Travel to Calor."),
            },
        },
        {
            id = "accept-223-worgen-in-the-woods",
            kind = "accept",
            priority = 640,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Worgen in the Woods from Calor in Darkshire.",
            complete = QuestState(223, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7524, 0.4800, "Calor",
                    "Travel to Calor."),
            },
        },
        {
            id = "turnin-223-worgen-in-the-woods",
            kind = "turnin",
            priority = 650,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Worgen in the Woods to Jonathan Carevin in Darkshire.",
            dependsOn = { "accept-223-worgen-in-the-woods" },
            complete = QuestState(223, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7533, 0.4903, "Jonathan Carevin",
                    "Travel to Jonathan Carevin."),
            },
        },
        {
            id = "turnin-181-look-to-the-stars",
            kind = "turnin",
            priority = 660,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Look To The Stars to Viktori Prism'Antras in Darkshire.",
            dependsOn = { "objective-181-look-to-the-stars" },
            complete = QuestState(181, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7979, 0.4797, "Viktori Prism'Antras",
                    "Travel to Viktori Prism'Antras."),
            },
        },
        {
            id = "turnin-149-ghost-hair-thread",
            kind = "turnin",
            priority = 670,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Ghost Hair Thread to Blind Mary in Darkshire.",
            dependsOn = { "accept-149-ghost-hair-thread" },
            complete = QuestState(149, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.8180, 0.5929, "Blind Mary",
                    "Travel to Blind Mary."),
            },
        },
        {
            id = "accept-154-return-the-comb",
            kind = "accept",
            priority = 680,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Return the Comb from Blind Mary in Darkshire.",
            complete = QuestState(154, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.8180, 0.5929, "Blind Mary",
                    "Travel to Blind Mary."),
            },
        },
        {
            id = "turnin-154-return-the-comb",
            kind = "turnin",
            priority = 690,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Return the Comb to Madame Eva in Darkshire.",
            dependsOn = { "accept-154-return-the-comb" },
            complete = QuestState(154, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7572, 0.4534, "Madame Eva",
                    "Travel to Madame Eva."),
            },
        },
        {
            id = "accept-157-deliver-the-thread",
            kind = "accept",
            priority = 700,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Deliver the Thread from Madame Eva in Darkshire.",
            complete = QuestState(157, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7572, 0.4534, "Madame Eva",
                    "Travel to Madame Eva."),
            },
        },
        {
            id = "turnin-95-sven-s-revenge",
            kind = "turnin",
            priority = 710,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Sven's Revenge in The Yorgen Farmstead.",
            dependsOn = { "accept-95-sven-s-revenge" },
            complete = QuestState(95, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.4979, 0.7786, "The Yorgen Farmstead",
                    "Travel to The Yorgen Farmstead."),
            },
        },
        {
            id = "accept-230-sven-s-camp",
            kind = "accept",
            priority = 720,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Sven's Camp in The Yorgen Farmstead.",
            complete = QuestState(230, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.4979, 0.7786, "The Yorgen Farmstead",
                    "Travel to The Yorgen Farmstead."),
            },
        },
        {
            id = "turnin-240-return-to-jitters",
            kind = "turnin",
            priority = 730,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Return to Jitters to Jitters in R Raven Hill.",
            dependsOn = { "accept-240-return-to-jitters" },
            complete = QuestState(240, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.1840, 0.5644, "Jitters",
                    "Travel to Jitters."),
            },
        },
        {
            id = "turnin-157-deliver-the-thread",
            kind = "turnin",
            priority = 740,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Deliver the Thread to Abercrombie in Raven Hill Cemetery.",
            dependsOn = { "accept-157-deliver-the-thread" },
            complete = QuestState(157, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.2798, 0.3151, "Abercrombie",
                    "Travel to Abercrombie."),
            },
        },
        {
            id = "accept-158-zombie-juice",
            kind = "accept",
            priority = 750,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Zombie Juice from Abercrombie in Raven Hill Cemetery.",
            complete = QuestState(158, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.2798, 0.3151, "Abercrombie",
                    "Travel to Abercrombie."),
            },
        },
        {
            id = "objective-58-the-night-watch",
            kind = "objective",
            priority = 760,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill 20 Plague Spreader underground in Dawning Wood Catacombs.",
            dependsOn = { "accept-58-the-night-watch" },
            complete = QuestState(58, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.2370, 0.3523, "Continue toward The Night Watch",
                    "Continue toward The Night Watch."),
                Point(MAP.DUSKWOOD, 0.2566, 0.3432, "Plague Spreader",
                    "Travel to Plague Spreader."),
            },
        },
        {
            id = "objective-228-mor-ladim",
            kind = "objective",
            priority = 770,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Mor'Ladim and collect Mor'Ladim's Skull in Forlorn Rowe This is a group quest and tough to solo, you can skip this safely.",
            dependsOn = { "accept-228-mor-ladim" },
            complete = QuestState(228, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.1668, 0.3737, "Mor'Ladim",
                    "Travel to Mor'Ladim."),
            },
        },
        {
            id = "turnin-230-sven-s-camp",
            kind = "turnin",
            priority = 780,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Sven's Camp to Sven Yorgen in The Hushed Bank.",
            dependsOn = { "accept-230-sven-s-camp" },
            complete = QuestState(230, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.0782, 0.3406, "Sven Yorgen",
                    "Travel to Sven Yorgen."),
            },
        },
        {
            id = "accept-262-the-shadowy-figure",
            kind = "accept",
            priority = 790,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Shadowy Figure from Sven Yorgen in The Hushed Bank.",
            complete = QuestState(262, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.0782, 0.3406, "Sven Yorgen",
                    "Travel to Sven Yorgen."),
            },
        },
        {
            id = "turnin-67-the-legend-of-stalvan",
            kind = "turnin",
            priority = 800,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Legend of Stalvan in Moonbrook.",
            dependsOn = { "accept-67-the-legend-of-stalvan" },
            complete = QuestState(67, "completed"),
            route = {
                Point(MAP.WESTFALL, 0.4152, 0.6672, "Moonbrook",
                    "Travel to Moonbrook."),
            },
        },
        {
            id = "accept-68-the-legend-of-stalvan",
            kind = "accept",
            priority = 810,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Legend of Stalvan in Moonbrook.",
            complete = QuestState(68, "activeOrCompleted"),
            route = {
                Point(MAP.WESTFALL, 0.4152, 0.6674, "Moonbrook",
                    "Travel to Moonbrook."),
            },
        },
        {
            id = "turnin-158-zombie-juice",
            kind = "turnin",
            priority = 820,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Zombie Juice to Tavernkeep Smitts in Darkshire.",
            dependsOn = { "accept-158-zombie-juice" },
            complete = QuestState(158, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7380, 0.4440, "Tavernkeep Smitts",
                    "Travel to Tavernkeep Smitts."),
            },
        },
        {
            id = "accept-156-gather-rot-blossoms",
            kind = "accept",
            priority = 830,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Gather Rot Blossoms from Tavernkeep Smitts in Darkshire.",
            complete = QuestState(156, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7380, 0.4440, "Tavernkeep Smitts",
                    "Travel to Tavernkeep Smitts."),
            },
        },
        {
            id = "turnin-58-the-night-watch",
            kind = "turnin",
            priority = 840,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Night Watch to Commander Althea Ebonlocke in Darkshire.",
            dependsOn = { "objective-58-the-night-watch" },
            complete = QuestState(58, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7360, 0.4685, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "turnin-228-mor-ladim",
            kind = "turnin",
            priority = 850,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Mor'Ladim to Commander Althea Ebonlocke in Darkshire.",
            dependsOn = { "objective-228-mor-ladim" },
            complete = QuestState(228, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7357, 0.4691, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "accept-229-the-daughter-who-lived",
            kind = "accept",
            priority = 860,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 228, state = "completed" } },
                },
            },
            text = "Accept The Daughter Who Lived from Commander Althea Ebonlocke in Darkshire.",
            complete = QuestState(229, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7357, 0.4691, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "turnin-229-the-daughter-who-lived",
            kind = "turnin",
            priority = 870,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 228, state = "completed" } },
                },
            },
            text = "Turn in The Daughter Who Lived to Watcher Ladimore in Darkshire.",
            dependsOn = { "accept-229-the-daughter-who-lived" },
            complete = QuestState(229, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7450, 0.4616, "Watcher Ladimore",
                    "Travel to Watcher Ladimore."),
            },
        },
        {
            id = "accept-231-a-daughter-s-love",
            kind = "accept",
            priority = 880,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 228, state = "completed" } },
                },
            },
            text = "Accept A Daughter's Love from Watcher Ladimore in Darkshire.",
            complete = QuestState(231, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7450, 0.4616, "Watcher Ladimore",
                    "Travel to Watcher Ladimore."),
            },
        },
        {
            id = "turnin-68-the-legend-of-stalvan",
            kind = "turnin",
            priority = 890,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Legend of Stalvan to Clerk Daltry in Darkshire.",
            dependsOn = { "accept-68-the-legend-of-stalvan" },
            complete = QuestState(68, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7256, 0.4683, "Clerk Daltry",
                    "Travel to Clerk Daltry."),
            },
        },
        {
            id = "accept-69-the-legend-of-stalvan",
            kind = "accept",
            priority = 900,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Accept The Legend of Stalvan from Clerk Daltry in Darkshire.",
            complete = QuestState(69, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7256, 0.4683, "Clerk Daltry",
                    "Travel to Clerk Daltry."),
            },
        },
        {
            id = "turnin-262-the-shadowy-figure",
            kind = "turnin",
            priority = 910,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Shadowy Figure to Madame Eva in Darkshire.",
            dependsOn = { "accept-262-the-shadowy-figure" },
            complete = QuestState(262, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7572, 0.4534, "Madame Eva",
                    "Travel to Madame Eva."),
            },
        },
        {
            id = "accept-265-the-shadowy-search-continues",
            kind = "accept",
            priority = 920,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Shadowy Search Continues from Madame Eva in Darkshire.",
            complete = QuestState(265, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7572, 0.4534, "Madame Eva",
                    "Travel to Madame Eva."),
            },
        },
        {
            id = "turnin-265-the-shadowy-search-continues",
            kind = "turnin",
            priority = 930,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Shadowy Search Continues to Clerk Daltry in Darkshire.",
            dependsOn = { "accept-265-the-shadowy-search-continues" },
            complete = QuestState(265, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7264, 0.4684, "Clerk Daltry",
                    "Travel to Clerk Daltry."),
            },
        },
        {
            id = "accept-266-inquire-at-the-inn",
            kind = "accept",
            priority = 940,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Inquire at the Inn from Clerk Daltry in Darkshire.",
            complete = QuestState(266, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7264, 0.4684, "Clerk Daltry",
                    "Travel to Clerk Daltry."),
            },
        },
        {
            id = "turnin-266-inquire-at-the-inn",
            kind = "turnin",
            priority = 950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Inquire at the Inn to Tavernkeep Smitts in Darkshire.",
            dependsOn = { "accept-266-inquire-at-the-inn" },
            complete = QuestState(266, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7380, 0.4440, "Tavernkeep Smitts",
                    "Travel to Tavernkeep Smitts."),
            },
        },
        {
            id = "accept-453-finding-the-shadowy-figure",
            kind = "accept",
            priority = 960,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Finding the Shadowy Figure from Tavernkeep Smitts in Darkshire.",
            complete = QuestState(453, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7380, 0.4440, "Tavernkeep Smitts",
                    "Travel to Tavernkeep Smitts."),
            },
        },
        {
            id = "turnin-453-finding-the-shadowy-figure",
            kind = "turnin",
            priority = 970,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Finding the Shadowy Figure to Jitters in Raven Hill.",
            dependsOn = { "accept-453-finding-the-shadowy-figure" },
            complete = QuestState(453, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.1840, 0.5644, "Jitters",
                    "Travel to Jitters."),
            },
        },
        {
            id = "accept-268-return-to-sven",
            kind = "accept",
            priority = 980,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Return to Sven from Jitters in Raven Hill.",
            complete = QuestState(268, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.1840, 0.5644, "Jitters",
                    "Travel to Jitters."),
            },
        },
        {
            id = "turnin-268-return-to-sven",
            kind = "turnin",
            priority = 990,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Return to Sven to Sven Yorgen in The Hushed Bank.",
            dependsOn = { "accept-268-return-to-sven" },
            complete = QuestState(268, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.0783, 0.3402, "Sven Yorgen",
                    "Travel to Sven Yorgen."),
            },
        },
        {
            id = "accept-323-proving-your-worth",
            kind = "accept",
            priority = 1000,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Proving Your Worth in The Hushed Bank.",
            complete = QuestState(323, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.0783, 0.3402, "The Hushed Bank",
                    "Travel to The Hushed Bank."),
            },
        },
        {
            id = "turnin-231-a-daughter-s-love",
            kind = "turnin",
            priority = 1010,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 228, state = "completed" } },
                },
            },
            text = "Turn in A Daughter's Love in Forlorn Rowe.",
            dependsOn = { "accept-231-a-daughter-s-love" },
            complete = QuestState(231, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.1774, 0.2909, "Forlorn Rowe",
                    "Travel to Forlorn Rowe."),
            },
        },
        {
            id = "objective-323-proving-your-worth",
            kind = "objective",
            priority = 1020,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill 3 Skeletal Healer, 15 Skeletal Raider, 3 Skeletal Warder and in Dawning Wood Catacombs The Skeletal Warder are only found inside the Catacombs underground.",
            dependsOn = { "accept-323-proving-your-worth" },
            complete = QuestState(323, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.1601, 0.3707, "Skeletal Healer",
                    "Travel to Skeletal Healer."),
            },
        },
        {
            id = "objective-156-gather-rot-blossoms",
            kind = "objective",
            priority = 1030,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill Rotting Horror and collect 8 Rot Blossom.",
            dependsOn = { "accept-156-gather-rot-blossoms" },
            complete = QuestState(156, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.8107, 0.5780, "Rotting Horror",
                    "Travel to Rotting Horror."),
            },
        },
        {
            id = "turnin-323-proving-your-worth",
            kind = "turnin",
            priority = 1040,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Proving Your Worth to Sven Yorgen in The Hushed Bank.",
            dependsOn = { "objective-323-proving-your-worth" },
            complete = QuestState(323, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.0781, 0.3402, "Sven Yorgen",
                    "Travel to Sven Yorgen."),
            },
        },
        {
            id = "accept-269-seeking-wisdom",
            kind = "accept",
            priority = 1050,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Seeking Wisdom from Sven Yorgen in The Hushed Bank.",
            complete = QuestState(269, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.0781, 0.3402, "Sven Yorgen",
                    "Travel to Sven Yorgen."),
            },
        },
        {
            id = "turnin-156-gather-rot-blossoms",
            kind = "turnin",
            priority = 1060,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Gather Rot Blossoms to Tavernkeep Smitts in Darkshire.",
            dependsOn = { "objective-156-gather-rot-blossoms" },
            complete = QuestState(156, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7382, 0.4449, "Tavernkeep Smitts",
                    "Travel to Tavernkeep Smitts."),
            },
        },
        {
            id = "accept-159-juice-delivery",
            kind = "accept",
            priority = 1070,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Juice Delivery from Tavernkeep Smitts in Darkshire.",
            complete = QuestState(159, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7382, 0.4449, "Tavernkeep Smitts",
                    "Travel to Tavernkeep Smitts."),
            },
        },
        {
            id = "turnin-159-juice-delivery",
            kind = "turnin",
            priority = 1080,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Juice Delivery to Abercrombie in Raven Hill Cemetery.",
            dependsOn = { "accept-159-juice-delivery" },
            complete = QuestState(159, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.2806, 0.3149, "Abercrombie",
                    "Travel to Abercrombie."),
            },
        },
        {
            id = "accept-133-ghoulish-effigy",
            kind = "accept",
            priority = 1090,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Ghoulish Effigy from Abercrombie in Raven Hill Cemetery.",
            complete = QuestState(133, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.2806, 0.3149, "Abercrombie",
                    "Travel to Abercrombie."),
            },
        },
        {
            id = "objective-133-ghoulish-effigy",
            kind = "objective",
            priority = 1100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Kill any ghouls and collect 7 Ghoul Rib in Raven Hill Cemetery.",
            dependsOn = { "accept-133-ghoulish-effigy" },
            complete = QuestState(133, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.2424, 0.3770, "Flesh Eater",
                    "Travel to Flesh Eater."),
            },
        },
        {
            id = "turnin-133-ghoulish-effigy",
            kind = "turnin",
            priority = 1110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Ghoulish Effigy to Abercrombie in Raven Hill Cemetery.",
            dependsOn = { "objective-133-ghoulish-effigy" },
            complete = QuestState(133, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.2805, 0.3142, "Abercrombie",
                    "Travel to Abercrombie."),
            },
        },
        {
            id = "accept-134-ogre-thieves",
            kind = "accept",
            priority = 1120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Ogre Thieves from Abercrombie in Raven Hill Cemetery.",
            complete = QuestState(134, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.2805, 0.3142, "Abercrombie",
                    "Travel to Abercrombie."),
            },
        },
        {
            id = "objective-134-ogre-thieves",
            kind = "objective",
            priority = 1130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Collect Abercrombie's Crate from the crate outside Vul'Gol Ogre Mound.",
            dependsOn = { "accept-134-ogre-thieves" },
            complete = QuestState(134, "complete"),
            route = {
                Point(MAP.DUSKWOOD, 0.3345, 0.7631, "Vul'Gol Ogre Mound",
                    "Travel to Vul'Gol Ogre Mound."),
            },
        },
        {
            id = "turnin-134-ogre-thieves",
            kind = "turnin",
            priority = 1140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Ogre Thieves to Abercrombie in Raven Hill Cemetery.",
            dependsOn = { "objective-134-ogre-thieves" },
            complete = QuestState(134, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.2806, 0.3147, "Abercrombie",
                    "Travel to Abercrombie."),
            },
        },
        {
            id = "accept-160-note-to-the-mayor",
            kind = "accept",
            priority = 1150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Note to the Mayor from Abercrombie in Raven Hill Cemetery.",
            complete = QuestState(160, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.2806, 0.3147, "Abercrombie",
                    "Travel to Abercrombie."),
            },
        },
        {
            id = "turnin-160-note-to-the-mayor",
            kind = "turnin",
            priority = 1160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Note to the Mayor to Lord Ello Ebonlocke in Darkshire.",
            dependsOn = { "accept-160-note-to-the-mayor" },
            complete = QuestState(160, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7195, 0.4642, "Lord Ello Ebonlocke",
                    "Travel to Lord Ello Ebonlocke."),
            },
        },
        {
            id = "accept-251-translate-abercrombie-s-note",
            kind = "accept",
            priority = 1170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Translate Abercrombie's Note from Lord Ello Ebonlocke in Darkshire.",
            complete = QuestState(251, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7195, 0.4642, "Lord Ello Ebonlocke",
                    "Travel to Lord Ello Ebonlocke."),
            },
        },
        {
            id = "accept-253-bride-of-the-embalmer",
            kind = "accept",
            priority = 1180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 30 } },
                },
            },
            text = "Accept Bride of the Embalmer from Lord Ello Ebonlocke.",
            complete = QuestState(253, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.718, 0.464, "Lord Ello Ebonlocke",
                    "Travel to Lord Ello Ebonlocke."),
            },
        },
        {
            id = "objective-253-bride-of-the-embalmer-1",
            kind = "objective",
            priority = 1190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 30 } },
                },
            },
            text = "Bride of the Embalmer: The Embalmer's Heart. This is an elite. Bring a group.",
            dependsOn = { "accept-253-bride-of-the-embalmer" },
            complete = QuestObjective(253, 1, "The Embalmer's Heart"),
            route = {
                Point(MAP.DUSKWOOD, 0.288, 0.310, "Eliza",
                    "Travel to Eliza."),
            },
        },
        {
            id = "turnin-253-bride-of-the-embalmer",
            kind = "turnin",
            priority = 1200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 30 } },
                },
            },
            text = "Turn in Bride of the Embalmer to Lord Ello Ebonlocke.",
            dependsOn = { "objective-253-bride-of-the-embalmer-1" },
            complete = QuestState(253, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.718, 0.464, "Lord Ello Ebonlocke",
                    "Travel to Lord Ello Ebonlocke."),
            },
        },
        {
            id = "turnin-251-translate-abercrombie-s-note",
            kind = "turnin",
            priority = 1210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Translate Abercrombie's Note to Sirra Von'Indi in Darkshire.",
            dependsOn = { "accept-251-translate-abercrombie-s-note" },
            complete = QuestState(251, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7263, 0.4760, "Sirra Von'Indi",
                    "Travel to Sirra Von'Indi."),
            },
        },
        {
            id = "accept-401-wait-for-sirra-to-finish",
            kind = "accept",
            priority = 1220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Wait for Sirra to Finish from Sirra Von'Indi in Darkshire.",
            complete = QuestState(401, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7263, 0.4760, "Sirra Von'Indi",
                    "Travel to Sirra Von'Indi."),
            },
        },
        {
            id = "turnin-401-wait-for-sirra-to-finish",
            kind = "turnin",
            priority = 1230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Wait for Sirra to Finish to Sirra Von'Indi in Darkshire.",
            dependsOn = { "accept-401-wait-for-sirra-to-finish" },
            complete = QuestState(401, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7263, 0.4760, "Sirra Von'Indi",
                    "Travel to Sirra Von'Indi."),
            },
        },
        {
            id = "accept-252-translation-to-ello",
            kind = "accept",
            priority = 1240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Translation to Ello from Sirra Von'Indi in Darkshire.",
            complete = QuestState(252, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7263, 0.4760, "Sirra Von'Indi",
                    "Travel to Sirra Von'Indi."),
            },
        },
        {
            id = "turnin-252-translation-to-ello",
            kind = "turnin",
            priority = 1250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Translation to Ello to Lord Ello Ebonlocke in Darkshire.",
            dependsOn = { "accept-252-translation-to-ello" },
            complete = QuestState(252, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.7196, 0.4643, "Lord Ello Ebonlocke",
                    "Travel to Lord Ello Ebonlocke."),
            },
        },
        {
            id = "accept-2923-tinkmaster-overspark",
            kind = "accept",
            priority = 1260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept Tinkmaster Overspark from Brother Sarno in Cathedral of Light.",
            complete = QuestState(2923, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.4055, 0.3073, "Brother Sarno",
                    "Travel to Brother Sarno."),
            },
        },
        {
            id = "turnin-269-seeking-wisdom",
            kind = "turnin",
            priority = 1270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in Seeking Wisdom to Bishop Farthing in Cathedral of Light.",
            dependsOn = { "accept-269-seeking-wisdom" },
            complete = QuestState(269, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.3953, 0.2813, "Bishop Farthing",
                    "Travel to Bishop Farthing."),
            },
        },
        {
            id = "accept-270-the-doomed-fleet",
            kind = "accept",
            priority = 1280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Doomed Fleet from Bishop Farthing in Cathedral of Light.",
            complete = QuestState(270, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3953, 0.2813, "Bishop Farthing",
                    "Travel to Bishop Farthing."),
            },
        },
        {
            id = "accept-1274-the-missing-diplomat",
            kind = "accept",
            priority = 1290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Accept The Missing Diplomat from Thomas in Cathedral of Light.",
            complete = QuestState(1274, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.3978, 0.2852, "Thomas",
                    "Travel to Thomas."),
            },
        },
        {
            id = "turnin-1274-the-missing-diplomat",
            kind = "turnin",
            priority = 1300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                },
            },
            text = "Turn in The Missing Diplomat to Bishop DeLavey in Stormwind Keep.",
            dependsOn = { "accept-1274-the-missing-diplomat" },
            complete = QuestState(1274, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.7829, 0.2544, "Bishop DeLavey",
                    "Travel to Bishop DeLavey."),
            },
        },
        {
            id = "accept-1241-the-missing-diplomat",
            kind = "accept",
            priority = 1310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Accept The Missing Diplomat from Bishop DeLavey in Stormwind Keep.",
            complete = QuestState(1241, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.7829, 0.2544, "Bishop DeLavey",
                    "Travel to Bishop DeLavey."),
            },
        },
        {
            id = "accept-538-southshore",
            kind = "accept",
            priority = 1320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Accept Southshore from Milton Sheaf in Royal Library.",
            complete = QuestState(538, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.7414, 0.0746, "Milton Sheaf",
                    "Travel to Milton Sheaf."),
            },
        },
        {
            id = "accept-337-an-old-history-book",
            kind = "accept",
            priority = 1330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 25 } },
                },
            },
            text = "Accept An Old History Book from Milton Sheaf.",
            complete = QuestState(337, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.740, 0.076, "Milton Sheaf",
                    "Travel to Milton Sheaf in Stormwind City."),
            },
        },
        {
            id = "objective-337-an-old-history-book-1",
            kind = "objective",
            priority = 1340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 25 } },
                },
            },
            text = "An Old History Book: An Old History Book.",
            dependsOn = { "accept-337-an-old-history-book" },
            complete = QuestObjective(337, 1, "An Old History Book"),
            route = {
                Point(MAP.STORMWIND, 0.740, 0.076, "Milton Sheaf",
                    "Travel to Milton Sheaf in Stormwind City."),
            },
        },
        {
            id = "turnin-337-an-old-history-book",
            kind = "turnin",
            priority = 1350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 25 } },
                },
            },
            text = "Turn in An Old History Book to Milton Sheaf.",
            dependsOn = { "objective-337-an-old-history-book-1" },
            complete = QuestState(337, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.740, 0.076, "Milton Sheaf",
                    "Travel to Milton Sheaf in Stormwind City."),
            },
        },
        {
            id = "turnin-1241-the-missing-diplomat",
            kind = "turnin",
            priority = 1360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Turn in The Missing Diplomat to Jorgen in Valley of Heroes.",
            dependsOn = { "accept-1241-the-missing-diplomat" },
            complete = QuestState(1241, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.7314, 0.7839, "Jorgen",
                    "Travel to Jorgen."),
            },
        },
        {
            id = "accept-1242-the-missing-diplomat",
            kind = "accept",
            priority = 1370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Accept The Missing Diplomat from Jorgen in Valley of Heroes.",
            complete = QuestState(1242, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.7314, 0.7839, "Jorgen",
                    "Travel to Jorgen."),
            },
        },
        {
            id = "turnin-69-the-legend-of-stalvan",
            kind = "turnin",
            priority = 1380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Turn in The Legend of Stalvan to Innkeeper Farley in Lion's Pride Inn.",
            dependsOn = { "accept-69-the-legend-of-stalvan" },
            complete = QuestState(69, "completed"),
            route = {
                Point(MAP.ELWYNN, 0.4378, 0.6584, "Innkeeper Farley",
                    "Travel to Innkeeper Farley."),
            },
        },
        {
            id = "accept-70-the-legend-of-stalvan",
            kind = "accept",
            priority = 1390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Accept The Legend of Stalvan from Innkeeper Farley in Lion's Pride Inn.",
            complete = QuestState(70, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.4378, 0.6584, "Innkeeper Farley",
                    "Travel to Innkeeper Farley."),
            },
        },
        {
            id = "objective-70-the-legend-of-stalvan",
            kind = "objective",
            priority = 1400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Retrieve Stalvan's Undelivered Letter from the chest upstairs in Lion's Pride Inn.",
            dependsOn = { "accept-70-the-legend-of-stalvan" },
            complete = QuestState(70, "complete"),
            route = {
                Point(MAP.ELWYNN, 0.4422, 0.6580, "Lion's Pride Inn",
                    "Travel to Lion's Pride Inn."),
            },
        },
        {
            id = "turnin-70-the-legend-of-stalvan",
            kind = "turnin",
            priority = 1410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Turn in The Legend of Stalvan to Caretaker Folsom in The Canals.",
            dependsOn = { "objective-70-the-legend-of-stalvan" },
            complete = QuestState(70, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.2956, 0.6191, "Caretaker Folsom",
                    "Travel to Caretaker Folsom."),
            },
        },
        {
            id = "accept-72-the-legend-of-stalvan",
            kind = "accept",
            priority = 1420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Accept The Legend of Stalvan from Caretaker Folsom in The Canals.",
            complete = QuestState(72, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.2956, 0.6191, "Caretaker Folsom",
                    "Travel to Caretaker Folsom."),
            },
        },
        {
            id = "turnin-72-the-legend-of-stalvan",
            kind = "turnin",
            priority = 1430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Turn in The Legend of Stalvan in The Canals.",
            dependsOn = { "accept-72-the-legend-of-stalvan" },
            complete = QuestState(72, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.2951, 0.6163, "The Canals",
                    "Travel to The Canals."),
            },
        },
        {
            id = "accept-74-the-legend-of-stalvan",
            kind = "accept",
            priority = 1440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Accept The Legend of Stalvan in The Canals.",
            complete = QuestState(74, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.2951, 0.6163, "The Canals",
                    "Travel to The Canals."),
            },
        },
        {
            id = "turnin-1242-the-missing-diplomat",
            kind = "turnin",
            priority = 1450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Turn in The Missing Diplomat to Elling Trias in Trade District.",
            dependsOn = { "accept-1242-the-missing-diplomat" },
            complete = QuestState(1242, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.5992, 0.6415, "Elling Trias",
                    "Travel to Elling Trias."),
            },
        },
        {
            id = "accept-1243-the-missing-diplomat",
            kind = "accept",
            priority = 1460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { quest = { id = 337, state = "completed" } },
                },
            },
            text = "Accept The Missing Diplomat from Elling Trias in Trade District.",
            complete = QuestState(1243, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.5992, 0.6415, "Elling Trias",
                    "Travel to Elling Trias."),
            },
        },
        {
            id = "accept-245-eight-legged-menaces",
            kind = "accept",
            priority = 1470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Accept Eight-Legged Menaces from Watcher Dodds.",
            complete = QuestState(245, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.450, 0.670, "Watcher Dodds",
                    "Travel to Watcher Dodds."),
            },
        },
        {
            id = "objective-245-eight-legged-menaces-1",
            kind = "objective",
            priority = 1480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Eight-Legged Menaces: Pygmy Venom Web Spider.",
            dependsOn = { "accept-245-eight-legged-menaces" },
            complete = QuestObjective(245, 1, "Pygmy Venom Web Spider"),
            route = {
                Point(MAP.DUSKWOOD, 0.450, 0.670, "Watcher Dodds",
                    "Travel to Watcher Dodds."),
            },
        },
        {
            id = "turnin-245-eight-legged-menaces",
            kind = "turnin",
            priority = 1490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Turn in Eight-Legged Menaces to Watcher Dodds.",
            dependsOn = { "objective-245-eight-legged-menaces-1" },
            complete = QuestState(245, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.450, 0.670, "Watcher Dodds",
                    "Travel to Watcher Dodds."),
            },
        },
        {
            id = "objective-96137-iras-dagger-1",
            kind = "objective",
            priority = 1500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            useClientPin = true,
            text = "Ira's Dagger: Young Black Ravager. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(96137, 1, "Young Black Ravager"),
            route = {},
        },
        {
            id = "objective-96137-iras-dagger-2",
            kind = "objective",
            priority = 1510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            useClientPin = true,
            text = "Ira's Dagger: Black Ravager. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(96137, 2, "Black Ravager"),
            route = {},
        },
        {
            id = "objective-96137-iras-dagger-3",
            kind = "objective",
            priority = 1520,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            useClientPin = true,
            text = "Ira's Dagger: Ira's Dagger. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(96137, 3, "Ira's Dagger"),
            route = {},
        },
        {
            id = "turnin-96137-iras-dagger",
            kind = "turnin",
            priority = 1530,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 24 } },
                },
            },
            useClientPin = true,
            text = "Turn in Ira's Dagger. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "objective-96137-iras-dagger-3" },
            complete = QuestState(96137, "completed"),
            route = {},
        },
        {
            id = "objective-96138-merricks-bow-1",
            kind = "objective",
            priority = 1540,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            useClientPin = true,
            text = "Merrick's Bow: Splinter Fist Warrior. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(96138, 1, "Splinter Fist Warrior"),
            route = {},
        },
        {
            id = "objective-96138-merricks-bow-2",
            kind = "objective",
            priority = 1550,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            useClientPin = true,
            text = "Merrick's Bow: Splinter Fist Taskmaster. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(96138, 2, "Splinter Fist Taskmaster"),
            route = {},
        },
        {
            id = "objective-96138-merricks-bow-3",
            kind = "objective",
            priority = 1560,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            useClientPin = true,
            text = "Merrick's Bow: Merrick's Bow. No saved spot for this, so the guide follows the pin in your quest log.",
            complete = QuestObjective(96138, 3, "Merrick's Bow"),
            route = {},
        },
        {
            id = "turnin-96138-merricks-bow",
            kind = "turnin",
            priority = 1570,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            useClientPin = true,
            text = "Turn in Merrick's Bow. No saved spot for this, so the guide follows the pin in your quest log.",
            dependsOn = { "objective-96138-merricks-bow-3" },
            complete = QuestState(96138, "completed"),
            route = {},
        },
        {
            id = "accept-226-wolves-at-our-heels",
            kind = "accept",
            priority = 1580,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Accept Wolves at Our Heels from Lars.",
            complete = QuestState(226, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.076, 0.334, "Lars",
                    "Travel to Lars."),
            },
        },
        {
            id = "objective-226-wolves-at-our-heels-1",
            kind = "objective",
            priority = 1590,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Wolves at Our Heels: Starving Dire Wolf.",
            dependsOn = { "accept-226-wolves-at-our-heels" },
            complete = QuestObjective(226, 1, "Starving Dire Wolf"),
            route = {
                Point(MAP.DUSKWOOD, 0.076, 0.334, "Lars",
                    "Travel to Lars."),
            },
        },
        {
            id = "objective-226-wolves-at-our-heels-2",
            kind = "objective",
            priority = 1600,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Wolves at Our Heels: Rabid Dire Wolf.",
            dependsOn = { "accept-226-wolves-at-our-heels" },
            complete = QuestObjective(226, 2, "Rabid Dire Wolf"),
            route = {
                Point(MAP.DUSKWOOD, 0.076, 0.334, "Lars",
                    "Travel to Lars."),
            },
        },
        {
            id = "turnin-226-wolves-at-our-heels",
            kind = "turnin",
            priority = 1610,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 21 } },
                },
            },
            text = "Turn in Wolves at Our Heels to Lars.",
            dependsOn = { "objective-226-wolves-at-our-heels-2" },
            complete = QuestState(226, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.076, 0.334, "Lars",
                    "Travel to Lars."),
            },
        },
        {
            id = "accept-254-digging-through-the-dirt",
            kind = "accept",
            priority = 1620,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 35 } },
                },
            },
            text = "Accept Digging Through the Dirt from Eliza's Grave Dirt.",
            complete = QuestState(254, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.288, 0.310, "Eliza's Grave Dirt",
                    "Travel to Eliza's Grave Dirt."),
            },
        },
        {
            id = "objective-254-digging-through-the-dirt-1",
            kind = "objective",
            priority = 1630,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 35 } },
                },
            },
            text = "Digging Through the Dirt: Digging Through the Dirt.",
            dependsOn = { "accept-254-digging-through-the-dirt" },
            complete = QuestObjective(254, 1, "Digging Through the Dirt"),
            route = {
                Point(MAP.DUSKWOOD, 0.288, 0.310, "Eliza's Grave Dirt",
                    "Travel to Eliza's Grave Dirt."),
            },
        },
        {
            id = "turnin-254-digging-through-the-dirt",
            kind = "turnin",
            priority = 1640,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in Digging Through the Dirt to Eliza's Grave Dirt.",
            dependsOn = { "objective-254-digging-through-the-dirt-1" },
            complete = QuestState(254, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.288, 0.310, "Eliza's Grave Dirt",
                    "Travel to Eliza's Grave Dirt."),
            },
        },
        {
            id = "accept-321-lightforge-iron",
            kind = "accept",
            priority = 1650,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            text = "Accept Lightforge Iron from Glorin Steelbrow.",
            complete = QuestState(321, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1437, 0.106, 0.604, "Glorin Steelbrow",
                "Travel to Glorin Steelbrow in Wetlands."),
            },
        },
        {
            id = "turnin-321-lightforge-iron",
            kind = "turnin",
            priority = 1650.1,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            text = "Turn it in to Waterlogged Chest.",
            dependsOn = { "accept-321-lightforge-iron" },
            complete = QuestState(321, "completed"),
            route = {
                Point(MAP.ZONE_1437, 0.121, 0.641, "Waterlogged Chest",
                    "Travel to Waterlogged Chest in Wetlands."),
            },
        },
        {
            id = "accept-324-the-lost-ingots",
            kind = "accept",
            priority = 1660,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            dependsOn = { "turnin-321-lightforge-iron" },
            text = "Accept The Lost Ingots from Waterlogged Chest.",
            complete = QuestState(324, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1437, 0.121, 0.641, "Waterlogged Chest",
                    "Travel to Waterlogged Chest in Wetlands."),
            },
        },
        {
            id = "objective-324-the-lost-ingots-1",
            kind = "objective",
            priority = 1670,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            text = "The Lost Ingots: Lightforge Ingot.",
            dependsOn = { "accept-324-the-lost-ingots" },
            complete = QuestObjective(324, 1, "Lightforge Ingot"),
            route = {
                Point(MAP.ZONE_1437, 0.118, 0.642, "Bluegill Raider",
                    "Travel to Bluegill Raider in Wetlands."),
            },
        },
        {
            id = "turnin-324-the-lost-ingots",
            kind = "turnin",
            priority = 1680,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            text = "Turn in The Lost Ingots to Glorin Steelbrow.",
            dependsOn = { "objective-324-the-lost-ingots-1" },
            complete = QuestState(324, "completed"),
            route = {
                Point(MAP.ZONE_1437, 0.106, 0.604, "Glorin Steelbrow",
                    "Travel to Glorin Steelbrow in Wetlands."),
            },
        },
        {
            id = "accept-526-lightforge-ingots",
            kind = "accept",
            priority = 1690,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            dependsOn = { "turnin-324-the-lost-ingots" },
            text = "Accept Lightforge Ingots from Glorin Steelbrow.",
            complete = QuestState(526, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1437, 0.106, 0.604, "Glorin Steelbrow",
                    "Travel to Glorin Steelbrow in Wetlands."),
            },
        },
        {
            id = "objective-526-lightforge-ingots-1",
            kind = "objective",
            priority = 1700,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            text = "Lightforge Ingots: Lightforge Ingot.",
            dependsOn = { "accept-526-lightforge-ingots" },
            complete = QuestObjective(526, 1, "Lightforge Ingot"),
            route = {
                Point(MAP.ZONE_1437, 0.118, 0.642, "Bluegill Raider",
                    "Travel to Bluegill Raider in Wetlands."),
            },
        },
        {
            id = "turnin-526-lightforge-ingots",
            kind = "turnin",
            priority = 1710,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            text = "Turn in Lightforge Ingots to Glorin Steelbrow.",
            dependsOn = { "objective-526-lightforge-ingots-1" },
            complete = QuestState(526, "completed"),
            route = {
                Point(MAP.ZONE_1437, 0.106, 0.604, "Glorin Steelbrow",
                    "Travel to Glorin Steelbrow in Wetlands."),
            },
        },
        {
            id = "accept-322-blessed-arm",
            kind = "accept",
            priority = 1720,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            dependsOn = { "turnin-526-lightforge-ingots" },
            text = "Accept Blessed Arm from Glorin Steelbrow.",
            complete = QuestState(322, "activeOrCompleted"),
            route = {
                Point(MAP.ZONE_1437, 0.106, 0.604, "Glorin Steelbrow",
                    "Travel to Glorin Steelbrow in Wetlands."),
            },
        },
        {
            id = "objective-322-blessed-arm-1",
            kind = "objective",
            priority = 1730,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            text = "Blessed Arm: Crate of Lightforge Ingots.",
            dependsOn = { "accept-322-blessed-arm" },
            complete = QuestObjective(322, 1, "Crate of Lightforge Ingots"),
            route = {
                Point(MAP.ZONE_1437, 0.106, 0.604, "Glorin Steelbrow",
                    "Travel to Glorin Steelbrow in Wetlands."),
            },
        },
        {
            id = "turnin-322-blessed-arm",
            kind = "turnin",
            priority = 1740,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            text = "Turn in Blessed Arm to Grimand Elmore.",
            dependsOn = { "objective-322-blessed-arm-1" },
            complete = QuestState(322, "completed"),
            route = {
                Point(MAP.ZONE_1437, 0.516, 0.122, "Grimand Elmore",
                    "Travel to Grimand Elmore in Wetlands."),
            },
        },
        {
            id = "accept-325-armed-and-ready",
            kind = "accept",
            priority = 1750,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            dependsOn = { "turnin-322-blessed-arm" },
            text = "Accept Armed and Ready from Grimand Elmore.",
            complete = QuestState(325, "activeOrCompleted"),
            route = {
                Point(MAP.STORMWIND, 0.516, 0.122, "Grimand Elmore",
                    "Travel to Grimand Elmore in Stormwind City."),
            },
        },
        {
            id = "objective-325-armed-and-ready-1",
            kind = "objective",
            priority = 1760,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            text = "Armed and Ready: Morbent's Bane.",
            dependsOn = { "accept-325-armed-and-ready" },
            complete = QuestObjective(325, 1, "Morbent's Bane"),
            route = {
                Point(MAP.STORMWIND, 0.516, 0.122, "Grimand Elmore",
                    "Travel to Grimand Elmore in Stormwind City."),
            },
        },
        {
            id = "turnin-325-armed-and-ready",
            kind = "turnin",
            priority = 1770,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 29 } },
                },
            },
            text = "Turn in Armed and Ready to Sven Yorgen.",
            dependsOn = { "objective-325-armed-and-ready-1" },
            complete = QuestState(325, "completed"),
            route = {
                Point(MAP.STORMWIND, 0.078, 0.340, "Sven Yorgen",
                    "Travel to Sven Yorgen in Stormwind City."),
            },
        },
        {
            id = "accept-55-morbent-fel",
            kind = "accept",
            priority = 1780,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 32 } },
                },
            },
            dependsOn = { "turnin-325-armed-and-ready" },
            text = "Accept Morbent Fel from Sven Yorgen.",
            complete = QuestState(55, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.078, 0.340, "Sven Yorgen",
                    "Travel to Sven Yorgen."),
            },
        },
        {
            id = "objective-55-morbent-fel-1",
            kind = "objective",
            priority = 1790,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 32 } },
                },
            },
            text = "Morbent Fel: Morbent Fel. This is an elite. Bring a group.",
            dependsOn = { "accept-55-morbent-fel" },
            complete = QuestObjective(55, 1, "Morbent Fel"),
            route = {
                Point(MAP.DUSKWOOD, 0.078, 0.340, "Sven Yorgen",
                    "Travel to Sven Yorgen."),
            },
        },
        {
            id = "objective-55-morbent-fel-2",
            kind = "objective",
            priority = 1800,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 32 } },
                },
            },
            text = "Morbent Fel: Morbent's Bane. This is an elite. Bring a group.",
            dependsOn = { "accept-55-morbent-fel" },
            complete = QuestObjective(55, 2, "Morbent's Bane"),
            route = {
                Point(MAP.DUSKWOOD, 0.078, 0.340, "Sven Yorgen",
                    "Travel to Sven Yorgen."),
            },
        },
        {
            id = "turnin-55-morbent-fel",
            kind = "turnin",
            priority = 1810,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 32 } },
                },
            },
            text = "Turn in Morbent Fel to Sven Yorgen.",
            dependsOn = { "objective-55-morbent-fel-2" },
            complete = QuestState(55, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.078, 0.340, "Sven Yorgen",
                    "Travel to Sven Yorgen."),
            },
        },
        {
            id = "accept-75-the-legend-of-stalvan",
            kind = "accept",
            priority = 1820,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "Accept The Legend of Stalvan from Marshal Haggard.",
            complete = QuestState(75, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.846, 0.694, "Marshal Haggard",
                    "Travel to Marshal Haggard in Elwynn Forest."),
            },
        },
        {
            id = "objective-75-the-legend-of-stalvan-1",
            kind = "objective",
            priority = 1830,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "The Legend of Stalvan: A Faded Journal Page.",
            dependsOn = { "accept-75-the-legend-of-stalvan" },
            complete = QuestObjective(75, 1, "A Faded Journal Page"),
            route = {
                Point(MAP.ELWYNN, 0.846, 0.694, "Marshal Haggard",
                    "Travel to Marshal Haggard in Elwynn Forest."),
            },
        },
        {
            id = "turnin-75-the-legend-of-stalvan",
            kind = "turnin",
            priority = 1840,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "Turn in The Legend of Stalvan to Marshal Haggard.",
            dependsOn = { "objective-75-the-legend-of-stalvan-1" },
            complete = QuestState(75, "completed"),
            route = {
                Point(MAP.ELWYNN, 0.846, 0.694, "Marshal Haggard",
                    "Travel to Marshal Haggard in Elwynn Forest."),
            },
        },
        {
            id = "accept-78-the-legend-of-stalvan",
            kind = "accept",
            priority = 1850,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            dependsOn = { "turnin-75-the-legend-of-stalvan" },
            text = "Accept The Legend of Stalvan from Marshal Haggard.",
            complete = QuestState(78, "activeOrCompleted"),
            route = {
                Point(MAP.ELWYNN, 0.846, 0.694, "Marshal Haggard",
                    "Travel to Marshal Haggard in Elwynn Forest."),
            },
        },
        {
            id = "objective-78-the-legend-of-stalvan-1",
            kind = "objective",
            priority = 1860,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "The Legend of Stalvan: A Faded Journal Page.",
            dependsOn = { "accept-78-the-legend-of-stalvan" },
            complete = QuestObjective(78, 1, "A Faded Journal Page"),
            route = {
                Point(MAP.ELWYNN, 0.846, 0.694, "Marshal Haggard",
                    "Travel to Marshal Haggard in Elwynn Forest."),
            },
        },
        {
            id = "turnin-78-the-legend-of-stalvan",
            kind = "turnin",
            priority = 1870,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "Turn in The Legend of Stalvan to Tavernkeep Smitts.",
            dependsOn = { "objective-78-the-legend-of-stalvan-1" },
            complete = QuestState(78, "completed"),
            route = {
                Point(MAP.ELWYNN, 0.738, 0.444, "Tavernkeep Smitts",
                    "Travel to Tavernkeep Smitts in Elwynn Forest."),
            },
        },
        {
            id = "accept-79-the-legend-of-stalvan",
            kind = "accept",
            priority = 1880,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            dependsOn = { "turnin-78-the-legend-of-stalvan" },
            text = "Accept The Legend of Stalvan from Tavernkeep Smitts.",
            complete = QuestState(79, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.738, 0.444, "Tavernkeep Smitts",
                    "Travel to Tavernkeep Smitts."),
            },
        },
        {
            id = "objective-79-the-legend-of-stalvan-1",
            kind = "objective",
            priority = 1890,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "The Legend of Stalvan: Muddy Journal Pages.",
            dependsOn = { "accept-79-the-legend-of-stalvan" },
            complete = QuestObjective(79, 1, "Muddy Journal Pages"),
            route = {
                Point(MAP.DUSKWOOD, 0.738, 0.444, "Tavernkeep Smitts",
                    "Travel to Tavernkeep Smitts."),
            },
        },
        {
            id = "turnin-79-the-legend-of-stalvan",
            kind = "turnin",
            priority = 1900,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "Turn in The Legend of Stalvan to Commander Althea Ebonlocke.",
            dependsOn = { "objective-79-the-legend-of-stalvan-1" },
            complete = QuestState(79, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.736, 0.468, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "accept-80-the-legend-of-stalvan",
            kind = "accept",
            priority = 1910,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            dependsOn = { "turnin-79-the-legend-of-stalvan" },
            text = "Accept The Legend of Stalvan from Commander Althea Ebonlocke.",
            complete = QuestState(80, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.736, 0.468, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "objective-80-the-legend-of-stalvan-1",
            kind = "objective",
            priority = 1920,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "The Legend of Stalvan: A Bloodstained Journal Page.",
            dependsOn = { "accept-80-the-legend-of-stalvan" },
            complete = QuestObjective(80, 1, "A Bloodstained Journal Page"),
            route = {
                Point(MAP.DUSKWOOD, 0.736, 0.468, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "turnin-80-the-legend-of-stalvan",
            kind = "turnin",
            priority = 1930,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "Turn in The Legend of Stalvan to Clerk Daltry.",
            dependsOn = { "objective-80-the-legend-of-stalvan-1" },
            complete = QuestState(80, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.726, 0.468, "Clerk Daltry",
                    "Travel to Clerk Daltry."),
            },
        },
        {
            id = "accept-97-the-legend-of-stalvan",
            kind = "accept",
            priority = 1940,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            text = "Accept The Legend of Stalvan from Clerk Daltry.",
            dependsOn = { "turnin-80-the-legend-of-stalvan" },
            complete = QuestState(97, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.7264, 0.4684, "Clerk Daltry",
                "Travel to Clerk Daltry."),
            },
        },
        {
            id = "turnin-97-the-legend-of-stalvan",
            kind = "turnin",
            priority = 1940.1,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 28 } },
                },
            },
            dependsOn = { "accept-97-the-legend-of-stalvan" },
            text = "Turn it in to Commander Althea Ebonlocke.",
            complete = QuestState(97, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.736, 0.468, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "accept-98-the-legend-of-stalvan",
            kind = "accept",
            priority = 1950,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 35 } },
                },
            },
            dependsOn = { "turnin-97-the-legend-of-stalvan" },
            text = "Accept The Legend of Stalvan from Commander Althea Ebonlocke.",
            complete = QuestState(98, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.736, 0.468, "Commander Althea Ebonlocke",
                    "Travel to Commander Althea Ebonlocke."),
            },
        },
        {
            id = "objective-98-the-legend-of-stalvan-1",
            kind = "objective",
            priority = 1960,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 35 } },
                },
            },
            text = "The Legend of Stalvan: Mistmantle Family Ring.",
            dependsOn = { "accept-98-the-legend-of-stalvan" },
            complete = QuestObjective(98, 1, "Mistmantle Family Ring"),
            route = {
                Point(MAP.DUSKWOOD, 0.774, 0.356, "Stalvan Mistmantle",
                    "Travel to Stalvan Mistmantle."),
            },
        },
        {
            id = "turnin-98-the-legend-of-stalvan",
            kind = "turnin",
            priority = 1970,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 35 } },
                },
            },
            text = "Turn in The Legend of Stalvan to Madame Eva.",
            dependsOn = { "objective-98-the-legend-of-stalvan-1" },
            complete = QuestState(98, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.758, 0.452, "Madame Eva",
                    "Travel to Madame Eva."),
            },
        },
        {
            id = "accept-81730-duskwood-mission-i-defeat-worgen",
            kind = "accept",
            priority = 1980,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission I: Defeat Worgen from Field Captain Palandar.",
            complete = QuestState(81730, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81731-duskwood-mission-ii-defeat-ogres",
            kind = "accept",
            priority = 1990,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission II: Defeat Ogres from Field Captain Palandar.",
            complete = QuestState(81731, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81732-duskwood-mission-iii-defeat-dragonkin",
            kind = "accept",
            priority = 2000,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission III: Defeat Dragonkin from Field Captain Palandar.",
            complete = QuestState(81732, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81733-duskwood-mission-iv-ogre-intelligence",
            kind = "accept",
            priority = 2010,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission IV: Ogre Intelligence from Field Captain Palandar.",
            complete = QuestState(81733, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81734-duskwood-mission-v-worgen-intelligence",
            kind = "accept",
            priority = 2020,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission V: Worgen Intelligence from Field Captain Palandar.",
            complete = QuestState(81734, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81735-duskwood-mission-vi-dragon-intelligence",
            kind = "accept",
            priority = 2030,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission VI: Dragon Intelligence from Field Captain Palandar.",
            complete = QuestState(81735, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81736-duskwood-mission-vii-recover-shadowscythe",
            kind = "accept",
            priority = 2040,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission VII: Recover Shadowscythe from Field Captain Palandar.",
            complete = QuestState(81736, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81737-duskwood-mission-viii-recover-ogre-magi-text",
            kind = "accept",
            priority = 2050,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission VIII: Recover Ogre Magi text from Field Captain Palandar.",
            complete = QuestState(81737, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81738-duskwood-mission-ix-recover-dragon-egg",
            kind = "accept",
            priority = 2060,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission IX: Recover Dragon Egg from Field Captain Palandar.",
            complete = QuestState(81738, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81739-duskwood-mission-x-nightmare-moss",
            kind = "accept",
            priority = 2070,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission X: Nightmare Moss from Field Captain Palandar.",
            complete = QuestState(81739, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81740-duskwood-mission-xi-cold-iron-ore",
            kind = "accept",
            priority = 2080,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission XI: Cold Iron Ore from Field Captain Palandar.",
            complete = QuestState(81740, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81741-duskwood-mission-xii-dream-touched-dragonscale",
            kind = "accept",
            priority = 2090,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission XII: Dream-Touched Dragonscale from Field Captain Palandar.",
            complete = QuestState(81741, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81742-duskwood-mission-xiii-defeat-ylanthrius",
            kind = "accept",
            priority = 2100,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission XIII: Defeat Ylanthrius from Field Captain Palandar.",
            complete = QuestState(81742, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81743-duskwood-mission-xiv-defeat-vvarczul",
            kind = "accept",
            priority = 2110,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission XIV: Defeat Vvarc'zul from Field Captain Palandar.",
            complete = QuestState(81743, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81744-duskwood-mission-xv-defeat-amokarok",
            kind = "accept",
            priority = 2120,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission XV: Defeat Amokarok from Field Captain Palandar.",
            complete = QuestState(81744, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81745-duskwood-mission-xvi-rescue-kroll-mountainshade",
            kind = "accept",
            priority = 2130,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission XVI: Rescue Kroll Mountainshade from Field Captain Palandar.",
            complete = QuestState(81745, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81746-duskwood-mission-xvii-rescue-alara-grovemender",
            kind = "accept",
            priority = 2140,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission XVII: Rescue Alara Grovemender from Field Captain Palandar.",
            complete = QuestState(81746, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-81747-duskwood-mission-xviii-rescue-elenora-marshwalke",
            kind = "accept",
            priority = 2150,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Accept Duskwood Mission XVIII: Rescue Elenora Marshwalker from Field Captain Palandar.",
            complete = QuestState(81747, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81747-duskwood-mission-xviii-rescue-elenora-marshwalke-1",
            kind = "objective",
            priority = 2160,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission XVIII: Rescue Elenora Marshwalker: Duskwood Mission XVIII: Rescue Elenora Marshwalker.",
            dependsOn = { "accept-81747-duskwood-mission-xviii-rescue-elenora-marshwalke" },
            complete = QuestObjective(81747, 1, "Duskwood Mission XVIII: Rescue Elenora Marshwalker"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81747-duskwood-mission-xviii-rescue-elenora-marshwalke",
            kind = "turnin",
            priority = 2170,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission XVIII: Rescue Elenora Marshwalker to Field Captain Palandar.",
            dependsOn = { "objective-81747-duskwood-mission-xviii-rescue-elenora-marshwalke-1" },
            complete = QuestState(81747, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81746-duskwood-mission-xvii-rescue-alara-grovemender-1",
            kind = "objective",
            priority = 2180,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission XVII: Rescue Alara Grovemender: Duskwood Mission XVII: Rescue Alara Grovemender.",
            dependsOn = { "accept-81746-duskwood-mission-xvii-rescue-alara-grovemender" },
            complete = QuestObjective(81746, 1, "Duskwood Mission XVII: Rescue Alara Grovemender"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81746-duskwood-mission-xvii-rescue-alara-grovemender",
            kind = "turnin",
            priority = 2190,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission XVII: Rescue Alara Grovemender to Field Captain Palandar.",
            dependsOn = { "objective-81746-duskwood-mission-xvii-rescue-alara-grovemender-1" },
            complete = QuestState(81746, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81745-duskwood-mission-xvi-rescue-kroll-mountainshade-1",
            kind = "objective",
            priority = 2200,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission XVI: Rescue Kroll Mountainshade: Duskwood Mission XVI: Rescue Kroll Mountainshade.",
            dependsOn = { "accept-81745-duskwood-mission-xvi-rescue-kroll-mountainshade" },
            complete = QuestObjective(81745, 1, "Duskwood Mission XVI: Rescue Kroll Mountainshade"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81745-duskwood-mission-xvi-rescue-kroll-mountainshade",
            kind = "turnin",
            priority = 2210,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission XVI: Rescue Kroll Mountainshade to Field Captain Palandar.",
            dependsOn = { "objective-81745-duskwood-mission-xvi-rescue-kroll-mountainshade-1" },
            complete = QuestState(81745, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81744-duskwood-mission-xv-defeat-amokarok-1",
            kind = "objective",
            priority = 2220,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission XV: Defeat Amokarok: Amokarok.",
            dependsOn = { "accept-81744-duskwood-mission-xv-defeat-amokarok" },
            complete = QuestObjective(81744, 1, "Amokarok"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81744-duskwood-mission-xv-defeat-amokarok",
            kind = "turnin",
            priority = 2230,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission XV: Defeat Amokarok to Field Captain Palandar.",
            dependsOn = { "objective-81744-duskwood-mission-xv-defeat-amokarok-1" },
            complete = QuestState(81744, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81743-duskwood-mission-xiv-defeat-vvarczul-1",
            kind = "objective",
            priority = 2240,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission XIV: Defeat Vvarc'zul: Duskwood Mission XIV: Defeat Vvarc'zul.",
            dependsOn = { "accept-81743-duskwood-mission-xiv-defeat-vvarczul" },
            complete = QuestObjective(81743, 1, "Duskwood Mission XIV: Defeat Vvarc'zul"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81743-duskwood-mission-xiv-defeat-vvarczul",
            kind = "turnin",
            priority = 2250,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission XIV: Defeat Vvarc'zul to Field Captain Palandar.",
            dependsOn = { "objective-81743-duskwood-mission-xiv-defeat-vvarczul-1" },
            complete = QuestState(81743, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81742-duskwood-mission-xiii-defeat-ylanthrius-1",
            kind = "objective",
            priority = 2260,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission XIII: Defeat Ylanthrius: Duskwood Mission XIII: Defeat Ylanthrius.",
            dependsOn = { "accept-81742-duskwood-mission-xiii-defeat-ylanthrius" },
            complete = QuestObjective(81742, 1, "Duskwood Mission XIII: Defeat Ylanthrius"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81742-duskwood-mission-xiii-defeat-ylanthrius",
            kind = "turnin",
            priority = 2270,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission XIII: Defeat Ylanthrius to Field Captain Palandar.",
            dependsOn = { "objective-81742-duskwood-mission-xiii-defeat-ylanthrius-1" },
            complete = QuestState(81742, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81741-duskwood-mission-xii-dream-touched-dragonscale-1",
            kind = "objective",
            priority = 2280,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission XII: Dream-Touched Dragonscale: Duskwood Mission XII: Dream-Touched Dragonscale.",
            dependsOn = { "accept-81741-duskwood-mission-xii-dream-touched-dragonscale" },
            complete = QuestObjective(81741, 1, "Duskwood Mission XII: Dream-Touched Dragonscale"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81741-duskwood-mission-xii-dream-touched-dragonscale",
            kind = "turnin",
            priority = 2290,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission XII: Dream-Touched Dragonscale to Field Captain Palandar.",
            dependsOn = { "objective-81741-duskwood-mission-xii-dream-touched-dragonscale-1" },
            complete = QuestState(81741, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81740-duskwood-mission-xi-cold-iron-ore-1",
            kind = "objective",
            priority = 2300,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission XI: Cold Iron Ore: Duskwood Mission XI: Cold Iron Ore.",
            dependsOn = { "accept-81740-duskwood-mission-xi-cold-iron-ore" },
            complete = QuestObjective(81740, 1, "Duskwood Mission XI: Cold Iron Ore"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81740-duskwood-mission-xi-cold-iron-ore",
            kind = "turnin",
            priority = 2310,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission XI: Cold Iron Ore to Field Captain Palandar.",
            dependsOn = { "objective-81740-duskwood-mission-xi-cold-iron-ore-1" },
            complete = QuestState(81740, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81739-duskwood-mission-x-nightmare-moss-1",
            kind = "objective",
            priority = 2320,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission X: Nightmare Moss: Duskwood Mission X: Nightmare Moss.",
            dependsOn = { "accept-81739-duskwood-mission-x-nightmare-moss" },
            complete = QuestObjective(81739, 1, "Duskwood Mission X: Nightmare Moss"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81739-duskwood-mission-x-nightmare-moss",
            kind = "turnin",
            priority = 2330,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission X: Nightmare Moss to Field Captain Palandar.",
            dependsOn = { "objective-81739-duskwood-mission-x-nightmare-moss-1" },
            complete = QuestState(81739, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81738-duskwood-mission-ix-recover-dragon-egg-1",
            kind = "objective",
            priority = 2340,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission IX: Recover Dragon Egg: Duskwood Mission IX: Recover Dragon Egg.",
            dependsOn = { "accept-81738-duskwood-mission-ix-recover-dragon-egg" },
            complete = QuestObjective(81738, 1, "Duskwood Mission IX: Recover Dragon Egg"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81738-duskwood-mission-ix-recover-dragon-egg",
            kind = "turnin",
            priority = 2350,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission IX: Recover Dragon Egg to Field Captain Palandar.",
            dependsOn = { "objective-81738-duskwood-mission-ix-recover-dragon-egg-1" },
            complete = QuestState(81738, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81737-duskwood-mission-viii-recover-ogre-magi-text-1",
            kind = "objective",
            priority = 2360,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission VIII: Recover Ogre Magi text: Duskwood Mission VIII: Recover Ogre Magi text.",
            dependsOn = { "accept-81737-duskwood-mission-viii-recover-ogre-magi-text" },
            complete = QuestObjective(81737, 1, "Duskwood Mission VIII: Recover Ogre Magi text"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81737-duskwood-mission-viii-recover-ogre-magi-text",
            kind = "turnin",
            priority = 2370,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission VIII: Recover Ogre Magi text to Field Captain Palandar.",
            dependsOn = { "objective-81737-duskwood-mission-viii-recover-ogre-magi-text-1" },
            complete = QuestState(81737, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81736-duskwood-mission-vii-recover-shadowscythe-1",
            kind = "objective",
            priority = 2380,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission VII: Recover Shadowscythe: Duskwood Mission VII: Recover Shadowscythe.",
            dependsOn = { "accept-81736-duskwood-mission-vii-recover-shadowscythe" },
            complete = QuestObjective(81736, 1, "Duskwood Mission VII: Recover Shadowscythe"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81736-duskwood-mission-vii-recover-shadowscythe",
            kind = "turnin",
            priority = 2390,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission VII: Recover Shadowscythe to Field Captain Palandar.",
            dependsOn = { "objective-81736-duskwood-mission-vii-recover-shadowscythe-1" },
            complete = QuestState(81736, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81735-duskwood-mission-vi-dragon-intelligence-1",
            kind = "objective",
            priority = 2400,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission VI: Dragon Intelligence: Duskwood Mission VI: Dragon Intelligence.",
            dependsOn = { "accept-81735-duskwood-mission-vi-dragon-intelligence" },
            complete = QuestObjective(81735, 1, "Duskwood Mission VI: Dragon Intelligence"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81735-duskwood-mission-vi-dragon-intelligence",
            kind = "turnin",
            priority = 2410,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission VI: Dragon Intelligence to Field Captain Palandar.",
            dependsOn = { "objective-81735-duskwood-mission-vi-dragon-intelligence-1" },
            complete = QuestState(81735, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81734-duskwood-mission-v-worgen-intelligence-1",
            kind = "objective",
            priority = 2420,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission V: Worgen Intelligence: Duskwood Mission V: Worgen Intelligence.",
            dependsOn = { "accept-81734-duskwood-mission-v-worgen-intelligence" },
            complete = QuestObjective(81734, 1, "Duskwood Mission V: Worgen Intelligence"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81734-duskwood-mission-v-worgen-intelligence",
            kind = "turnin",
            priority = 2430,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission V: Worgen Intelligence to Field Captain Palandar.",
            dependsOn = { "objective-81734-duskwood-mission-v-worgen-intelligence-1" },
            complete = QuestState(81734, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81733-duskwood-mission-iv-ogre-intelligence-1",
            kind = "objective",
            priority = 2440,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission IV: Ogre Intelligence: Duskwood Mission IV: Ogre Intelligence.",
            dependsOn = { "accept-81733-duskwood-mission-iv-ogre-intelligence" },
            complete = QuestObjective(81733, 1, "Duskwood Mission IV: Ogre Intelligence"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81733-duskwood-mission-iv-ogre-intelligence",
            kind = "turnin",
            priority = 2450,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission IV: Ogre Intelligence to Field Captain Palandar.",
            dependsOn = { "objective-81733-duskwood-mission-iv-ogre-intelligence-1" },
            complete = QuestState(81733, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81732-duskwood-mission-iii-defeat-dragonkin-1",
            kind = "objective",
            priority = 2460,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission III: Defeat Dragonkin: Duskwood Mission III: Defeat Dragonkin.",
            dependsOn = { "accept-81732-duskwood-mission-iii-defeat-dragonkin" },
            complete = QuestObjective(81732, 1, "Duskwood Mission III: Defeat Dragonkin"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81732-duskwood-mission-iii-defeat-dragonkin",
            kind = "turnin",
            priority = 2470,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission III: Defeat Dragonkin to Field Captain Palandar.",
            dependsOn = { "objective-81732-duskwood-mission-iii-defeat-dragonkin-1" },
            complete = QuestState(81732, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81731-duskwood-mission-ii-defeat-ogres-1",
            kind = "objective",
            priority = 2480,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission II: Defeat Ogres: Duskwood Mission II: Defeat Ogres.",
            dependsOn = { "accept-81731-duskwood-mission-ii-defeat-ogres" },
            complete = QuestObjective(81731, 1, "Duskwood Mission II: Defeat Ogres"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81731-duskwood-mission-ii-defeat-ogres",
            kind = "turnin",
            priority = 2490,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission II: Defeat Ogres to Field Captain Palandar.",
            dependsOn = { "objective-81731-duskwood-mission-ii-defeat-ogres-1" },
            complete = QuestState(81731, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "objective-81730-duskwood-mission-i-defeat-worgen-1",
            kind = "objective",
            priority = 2500,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Duskwood Mission I: Defeat Worgen: Duskwood Mission I: Defeat Worgen.",
            dependsOn = { "accept-81730-duskwood-mission-i-defeat-worgen" },
            complete = QuestObjective(81730, 1, "Duskwood Mission I: Defeat Worgen"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "turnin-81730-duskwood-mission-i-defeat-worgen",
            kind = "turnin",
            priority = 2510,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 23 } },
                },
            },
            text = "Turn in Duskwood Mission I: Defeat Worgen to Field Captain Palandar.",
            dependsOn = { "objective-81730-duskwood-mission-i-defeat-worgen-1" },
            complete = QuestState(81730, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.456, 0.512, "Field Captain Palandar",
                    "Travel to Field Captain Palandar."),
            },
        },
        {
            id = "accept-1372-nothing-but-the-truth",
            kind = "accept",
            priority = 2511,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 42 } },
                },
            },
            text = "Accept Nothing But The Truth from Deathstalker Zraedus.",
            complete = QuestState(1372, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.876, 0.356, "Deathstalker Zraedus",
                "Travel to Deathstalker Zraedus."),
            },
        },
        {
            id = "turnin-1372-nothing-but-the-truth",
            kind = "turnin",
            priority = 2511.1,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 42 } },
                },
            },
            text = "Turn it in to Apothecary Faustin.",
            dependsOn = { "accept-1372-nothing-but-the-truth" },
            complete = QuestState(1372, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.874, 0.354, "Apothecary Faustin",
                    "Travel to Apothecary Faustin."),
            },
        },
        {
            id = "accept-1383-nothing-but-the-truth",
            kind = "accept",
            priority = 2530,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 42 } },
                },
            },
            dependsOn = { "turnin-1372-nothing-but-the-truth" },
            text = "Accept Nothing But The Truth from Apothecary Faustin.",
            complete = QuestState(1383, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.874, 0.354, "Apothecary Faustin",
                    "Travel to Apothecary Faustin."),
            },
        },
        {
            id = "accept-1388-nothing-but-the-truth",
            kind = "accept",
            priority = 2540,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 42 } },
                },
            },
            text = "Accept Nothing But The Truth from Apothecary Faustin.",
            complete = QuestState(1388, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.874, 0.354, "Apothecary Faustin",
                    "Travel to Apothecary Faustin."),
            },
        },
        {
            id = "objective-1388-nothing-but-the-truth-1",
            kind = "objective",
            priority = 2550,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 42 } },
                },
            },
            text = "Nothing But The Truth: Faustin's Truth Serum.",
            dependsOn = { "accept-1388-nothing-but-the-truth" },
            complete = QuestObjective(1388, 1, "Faustin's Truth Serum"),
            route = {
                Point(MAP.DUSKWOOD, 0.874, 0.354, "Apothecary Faustin",
                    "Travel to Apothecary Faustin."),
            },
        },
        {
            id = "turnin-1388-nothing-but-the-truth",
            kind = "turnin",
            priority = 2560,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 42 } },
                },
            },
            text = "Turn in Nothing But The Truth to Deathstalker Zraedus.",
            dependsOn = { "objective-1388-nothing-but-the-truth-1" },
            complete = QuestState(1388, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.876, 0.356, "Deathstalker Zraedus",
                    "Travel to Deathstalker Zraedus."),
            },
        },
        {
            id = "accept-1391-nothing-but-the-truth",
            kind = "accept",
            priority = 2570,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 42 } },
                },
            },
            dependsOn = { "turnin-1388-nothing-but-the-truth" },
            text = "Accept Nothing But The Truth from Deathstalker Zraedus.",
            complete = QuestState(1391, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.876, 0.356, "Deathstalker Zraedus",
                    "Travel to Deathstalker Zraedus."),
            },
        },
        {
            id = "objective-1391-nothing-but-the-truth-1",
            kind = "objective",
            priority = 2580,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 42 } },
                },
            },
            text = "Nothing But The Truth: Zraedus's Brew.",
            dependsOn = { "accept-1391-nothing-but-the-truth" },
            complete = QuestObjective(1391, 1, "Zraedus's Brew"),
            route = {
                Point(MAP.DUSKWOOD, 0.876, 0.356, "Deathstalker Zraedus",
                    "Travel to Deathstalker Zraedus."),
            },
        },
        {
            id = "turnin-1391-nothing-but-the-truth",
            kind = "turnin",
            priority = 2590,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 42 } },
                },
            },
            text = "Turn in Nothing But The Truth to Infiltrator Marksen.",
            dependsOn = { "objective-1391-nothing-but-the-truth-1" },
            complete = QuestState(1391, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.444, 0.524, "Infiltrator Marksen",
                    "Travel to Infiltrator Marksen."),
            },
        },
        {
            id = "objective-1383-nothing-but-the-truth-1",
            kind = "objective",
            priority = 2600,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 42 } },
                },
            },
            text = "Nothing But The Truth: Shadow Panther Heart. This is an elite. Bring a group.",
            dependsOn = { "accept-1383-nothing-but-the-truth" },
            complete = QuestObjective(1383, 1, "Shadow Panther Heart"),
            route = {
                Point(MAP.DUSKWOOD, 0.874, 0.354, "Apothecary Faustin",
                    "Travel to Apothecary Faustin."),
            },
        },
        {
            id = "objective-1383-nothing-but-the-truth-2",
            kind = "objective",
            priority = 2610,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 42 } },
                },
            },
            text = "Nothing But The Truth: Mire Lord Fungus. This is an elite. Bring a group.",
            dependsOn = { "accept-1383-nothing-but-the-truth" },
            complete = QuestObjective(1383, 2, "Mire Lord Fungus"),
            route = {
                Point(MAP.DUSKWOOD, 0.874, 0.354, "Apothecary Faustin",
                    "Travel to Apothecary Faustin."),
            },
        },
        {
            id = "objective-1383-nothing-but-the-truth-3",
            kind = "objective",
            priority = 2620,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 42 } },
                },
            },
            text = "Nothing But The Truth: Deepstrider Tumor. This is an elite. Bring a group.",
            dependsOn = { "accept-1383-nothing-but-the-truth" },
            complete = QuestObjective(1383, 3, "Deepstrider Tumor"),
            route = {
                Point(MAP.DUSKWOOD, 0.874, 0.354, "Apothecary Faustin",
                    "Travel to Apothecary Faustin."),
            },
        },
        {
            id = "turnin-1383-nothing-but-the-truth",
            kind = "turnin",
            priority = 2630,
            conditions = {
                all = {
                    { faction = "Horde" },
                    { level = { min = 42 } },
                },
            },
            text = "Turn in Nothing But The Truth to Apothecary Faustin.",
            dependsOn = { "objective-1383-nothing-but-the-truth-3" },
            complete = QuestState(1383, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.874, 0.354, "Apothecary Faustin",
                    "Travel to Apothecary Faustin."),
            },
        },
        {
            id = "accept-1395-supplies-for-nethergarde",
            kind = "accept",
            priority = 2631,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 45 } },
                },
            },
            text = "Accept Supplies for Nethergarde from Watchmaster Sorigal.",
            complete = QuestState(1395, "activeOrCompleted"),
            route = {
                Point(MAP.DUSKWOOD, 0.758, 0.462, "Watchmaster Sorigal",
                    "Travel to Watchmaster Sorigal."),
            },
        },
        {
            id = "objective-1395-supplies-for-nethergarde-1",
            kind = "objective",
            priority = 2632,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 45 } },
                },
            },
            text = "Supplies for Nethergarde: Crate of Power Stones.",
            dependsOn = { "accept-1395-supplies-for-nethergarde" },
            complete = QuestObjective(1395, 1, "Crate of Power Stones"),
            route = {
                Point(MAP.DUSKWOOD, 0.758, 0.462, "Watchmaster Sorigal",
                    "Travel to Watchmaster Sorigal."),
            },
        },
        {
            id = "turnin-1395-supplies-for-nethergarde",
            kind = "turnin",
            priority = 2633,
            conditions = {
                all = {
                    { faction = "Alliance" },
                    { level = { min = 45 } },
                },
            },
            text = "Turn in Supplies for Nethergarde to Quartermaster Lungertz.",
            dependsOn = { "objective-1395-supplies-for-nethergarde-1" },
            complete = QuestState(1395, "completed"),
            route = {
                Point(MAP.DUSKWOOD, 0.664, 0.212, "Quartermaster Lungertz",
                    "Travel to Quartermaster Lungertz."),
            },
        },
    },
})
