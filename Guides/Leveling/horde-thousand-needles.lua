local _, ns = ...

-- Forever Casual spine: Thousand Needles (28-30)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves are applied in a separate pass.
-- Coordinates not yet validated in Forever.

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

local MAP = {
    THE_BARRENS = 1413,
    THOUSAND_NEEDLES = 1441,
    ORGRIMMAR = 1454,
    THUNDER_BLUFF = 1456,
}

ns:RegisterGuide({
    id = "leveling-era-horde-thousand-needles",
    title = "Thousand Needles",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 28 } },
        },
    },
    goals = {
        {
            id = "accept-1153-a-new-ore-sample",
            kind = "accept",
            priority = 10,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept A New Ore Sample.",
            complete = QuestState(1153, "activeOrCompleted"),
            route = {
                Point(1413, 0.4510, 0.5768, "A New Ore Sample",
                    "Travel to A New Ore Sample."),
            },
        },
        {
            id = "turnin-1534-call-of-water",
            kind = "turnin",
            priority = 20,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Water.",
            complete = QuestState(1534, "completed"),
            route = {
                Point(1413, 0.4342, 0.7741, "Call of Water",
                    "Travel to Call of Water."),
            },
        },
        {
            id = "accept-220-call-of-water",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Water.",
            complete = QuestState(220, "activeOrCompleted"),
            route = {
                Point(1413, 0.4342, 0.7741, "Call of Water",
                    "Travel to Call of Water."),
            },
        },
        {
            id = "turnin-5881-calling-in-the-reserves",
            kind = "turnin",
            priority = 40,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Calling in the Reserves.",
            complete = QuestState(5881, "completed"),
            route = {
                Point(1441, 0.3186, 0.2166, "Calling in the Reserves",
                    "Travel to Calling in the Reserves."),
            },
        },
        {
            id = "accept-4542-message-to-freewind-post",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Message to Freewind Post.",
            complete = QuestState(4542, "activeOrCompleted"),
            route = {
                Point(1441, 0.3224, 0.2217, "Message to Freewind Post",
                    "Travel to Message to Freewind Post."),
            },
        },
        {
            id = "accept-4767-wind-rider",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Wind Rider.",
            complete = QuestState(4767, "activeOrCompleted"),
            route = {
                Point(1441, 0.4493, 0.4893, "Wind Rider",
                    "Travel to Wind Rider."),
            },
        },
        {
            id = "accept-4821-alien-egg",
            kind = "accept",
            priority = 70,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Alien Egg.",
            complete = QuestState(4821, "activeOrCompleted"),
            route = {
                Point(1441, 0.4464, 0.5029, "Alien Egg",
                    "Travel to Alien Egg."),
            },
        },
        {
            id = "turnin-4542-message-to-freewind-post",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Message to Freewind Post.",
            complete = QuestState(4542, "completed"),
            dependsOn = { "accept-4542-message-to-freewind-post" },
            route = {
                Point(1441, 0.4565, 0.5080, "Message to Freewind Post",
                    "Travel to Message to Freewind Post."),
            },
        },
        {
            id = "accept-4841-pacify-the-centaur",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Pacify the Centaur.",
            complete = QuestState(4841, "activeOrCompleted"),
            route = {
                Point(1441, 0.4565, 0.5080, "Pacify the Centaur",
                    "Travel to Pacify the Centaur."),
            },
        },
        {
            id = "turnin-1196-the-sacred-flame",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Sacred Flame.",
            complete = QuestState(1196, "completed"),
            route = {
                Point(1441, 0.4614, 0.5172, "The Sacred Flame",
                    "Travel to The Sacred Flame."),
            },
        },
        {
            id = "accept-1197-the-sacred-flame",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept The Sacred Flame.",
            complete = QuestState(1197, "activeOrCompleted"),
            route = {
                Point(1441, 0.4614, 0.5172, "The Sacred Flame",
                    "Travel to The Sacred Flame."),
            },
        },
        {
            id = "accept-1149-test-of-faith",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Test of Faith.",
            complete = QuestState(1149, "activeOrCompleted"),
            route = {
                Point(1441, 0.4405, 0.3734, "Test of Faith",
                    "Travel to Test of Faith."),
            },
        },
        {
            id = "turnin-1149-test-of-faith",
            kind = "turnin",
            priority = 130,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Test of Faith.",
            complete = QuestState(1149, "completed"),
            dependsOn = { "accept-1149-test-of-faith" },
            route = {
                Point(1441, 0.5394, 0.4148, "Test of Faith",
                    "Travel to Test of Faith."),
            },
        },
        {
            id = "turnin-4821-alien-egg",
            kind = "turnin",
            priority = 140,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Alien Egg.",
            complete = QuestState(4821, "completed"),
            dependsOn = { "accept-4821-alien-egg" },
            route = {
                Point(1441, 0.4702, 0.4832, "Alien Egg",
                    "Travel to Alien Egg."),
            },
        },
        {
            id = "accept-4865-serpent-wild",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Serpent Wild.",
            complete = QuestState(4865, "activeOrCompleted"),
            route = {
                Point(1441, 0.4702, 0.4832, "Serpent Wild",
                    "Travel to Serpent Wild."),
            },
        },
        {
            id = "turnin-4841-pacify-the-centaur",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Pacify the Centaur.",
            complete = QuestState(4841, "completed"),
            dependsOn = { "accept-4841-pacify-the-centaur" },
            route = {
                Point(1441, 0.4565, 0.5080, "Pacify the Centaur",
                    "Travel to Pacify the Centaur."),
            },
        },
        {
            id = "turnin-1197-the-sacred-flame",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Sacred Flame.",
            complete = QuestState(1197, "completed"),
            dependsOn = { "accept-1197-the-sacred-flame" },
            route = {
                Point(1441, 0.4614, 0.5171, "The Sacred Flame",
                    "Travel to The Sacred Flame."),
            },
        },
        {
            id = "accept-4770-homeward-bound",
            kind = "accept",
            priority = 180,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Homeward Bound.",
            complete = QuestState(4770, "activeOrCompleted"),
            route = {
                Point(1441, 0.1317, 0.3951, "Homeward Bound",
                    "Travel to Homeward Bound."),
            },
        },
        {
            id = "objective-1131-1-steelsnap",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Kill Steelsnap.",
            complete = QuestObjective(1131, 1, "Steelsnap"),
            useClientPin = true,
            route = nil,
        },
        {
            id = "turnin-4770-homeward-bound",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Homeward Bound.",
            complete = QuestState(4770, "completed"),
            dependsOn = { "accept-4770-homeward-bound" },
            route = {
                Point(1441, 0.2155, 0.3235, "Homeward Bound",
                    "Travel to Homeward Bound."),
            },
        },
        {
            id = "turnin-4865-serpent-wild",
            kind = "turnin",
            priority = 210,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Serpent Wild.",
            complete = QuestState(4865, "completed"),
            dependsOn = { "accept-4865-serpent-wild" },
            route = {
                Point(1441, 0.2155, 0.3235, "Serpent Wild",
                    "Travel to Serpent Wild."),
            },
        },
        {
            id = "accept-5062-sacred-fire",
            kind = "accept",
            priority = 220,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Sacred Fire.",
            complete = QuestState(5062, "activeOrCompleted"),
            route = {
                Point(1441, 0.2155, 0.3235, "Sacred Fire",
                    "Travel to Sacred Fire."),
            },
        },
        {
            id = "accept-4881-assassination-plot",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Use the Assassination Note to accept Assassination Plot.",
            complete = QuestState(4881, "activeOrCompleted"),
            route = nil,
        },
        {
            id = "turnin-4881-assassination-plot",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Assassination Plot.",
            complete = QuestState(4881, "completed"),
            dependsOn = { "accept-4881-assassination-plot" },
            route = {
                Point(1441, 0.2121, 0.3210, "Assassination Plot",
                    "Travel to Assassination Plot."),
            },
        },
        {
            id = "accept-4966-protect-kanati-greycloud",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Protect Kanati Greycloud.",
            complete = QuestState(4966, "activeOrCompleted"),
            route = {
                Point(1441, 0.2121, 0.3210, "Protect Kanati Greycloud",
                    "Travel to Protect Kanati Greycloud."),
            },
        },
        {
            id = "turnin-4966-protect-kanati-greycloud",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Protect Kanati Greycloud.",
            complete = QuestState(4966, "completed"),
            dependsOn = { "accept-4966-protect-kanati-greycloud" },
            route = {
                Point(1441, 0.2121, 0.3210, "Protect Kanati Greycloud",
                    "Travel to Protect Kanati Greycloud."),
            },
        },
        {
            id = "objective-5062-1-incendia-agave",
            kind = "objective",
            priority = 280,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Collect 10 Incendia Agave.",
            complete = QuestObjective(5062, 1, "Incendia Agave"),
            dependsOn = { "accept-5062-sacred-fire" },
            route = {
                Point(1441, 0.3360, 0.3410, "Incendia Agave",
                    "Travel to Incendia Agave."),
            },
        },
        {
            id = "turnin-1131-steelsnap",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Steelsnap.",
            complete = QuestState(1131, "completed"),
            dependsOn = { "objective-1131-1-steelsnap" },
            route = {
                Point(1456, 0.6153, 0.8090, "Steelsnap",
                    "Travel to Steelsnap."),
            },
        },
        {
            id = "accept-1136-frostmaw",
            kind = "accept",
            priority = 300,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Horde" },
            } },
            text = "Accept Frostmaw.",
            complete = QuestState(1136, "activeOrCompleted"),
            route = {
                Point(1456, 0.6153, 0.8090, "Frostmaw",
                    "Travel to Frostmaw."),
            },
        },
        {
            id = "turnin-5062-sacred-fire",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Sacred Fire.",
            complete = QuestState(5062, "completed"),
            dependsOn = { "accept-5062-sacred-fire", "objective-5062-1-incendia-agave" },
            route = {
                Point(1456, 0.6986, 0.3092, "Sacred Fire",
                    "Travel to Sacred Fire."),
            },
        },
        {
            id = "accept-5088-arikara",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Arikara.",
            complete = QuestState(5088, "activeOrCompleted"),
            route = {
                Point(1456, 0.6986, 0.3092, "Arikara",
                    "Travel to Arikara."),
            },
        },
        {
            id = "turnin-1153-a-new-ore-sample",
            kind = "turnin",
            priority = 330,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in A New Ore Sample.",
            complete = QuestState(1153, "completed"),
            dependsOn = { "accept-1153-a-new-ore-sample" },
            route = {
                Point(1413, 0.4510, 0.5768, "A New Ore Sample",
                    "Travel to A New Ore Sample."),
            },
        },
        {
            id = "turnin-4767-wind-rider",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Wind Rider.",
            complete = QuestState(4767, "completed"),
            dependsOn = { "accept-4767-wind-rider" },
            route = {
                Point(1441, 0.4493, 0.4893, "Wind Rider",
                    "Travel to Wind Rider."),
            },
        },
        {
            id = "accept-5064-grimtotem-spying",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Grimtotem Spying.",
            complete = QuestState(5064, "activeOrCompleted"),
            route = {
                Point(1441, 0.4565, 0.5080, "Grimtotem Spying",
                    "Travel to Grimtotem Spying."),
            },
        },
        {
            id = "accept-5147-wanted-arnak-grimtotem",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Wanted - Arnak Grimtotem.",
            complete = QuestState(5147, "activeOrCompleted"),
            route = {
                Point(1441, 0.4600, 0.5084, "Wanted - Arnak Grimtotem",
                    "Travel to Wanted - Arnak Grimtotem."),
            },
        },
        {
            id = "objective-5088-1-arikara",
            kind = "objective",
            priority = 370,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Kill Arikara.",
            complete = QuestObjective(5088, 1, "Arikara"),
            dependsOn = { "accept-5088-arikara" },
            route = {
                Point(1441, 0.3829, 0.3554, "Arikara",
                    "Travel to Arikara."),
            },
        },
        {
            id = "objective-5147-1-arnak-grimtotem",
            kind = "objective",
            priority = 380,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Kill Arnak Grimtotem.",
            complete = QuestObjective(5147, 1, "Arnak Grimtotem"),
            dependsOn = { "accept-5147-wanted-arnak-grimtotem" },
            route = {
                Point(1441, 0.3808, 0.2685, "Arnak Grimtotem",
                    "Travel to Arnak Grimtotem."),
            },
        },
        {
            id = "accept-4904-free-at-last",
            kind = "accept",
            priority = 390,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Free at Last.",
            complete = QuestState(4904, "activeOrCompleted"),
            route = {
                Point(1441, 0.3799, 0.2659, "Free at Last",
                    "Travel to Free at Last."),
            },
        },
        {
            id = "turnin-5088-arikara",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Arikara.",
            complete = QuestState(5088, "completed"),
            dependsOn = { "accept-5088-arikara", "objective-5088-1-arikara" },
            route = {
                Point(1441, 0.2155, 0.3235, "Arikara",
                    "Travel to Arikara."),
            },
        },
        {
            id = "accept-5151-hypercapacitor-gizmo",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Hypercapacitor Gizmo.",
            complete = QuestState(5151, "activeOrCompleted"),
            route = {
                Point(1441, 0.2143, 0.3255, "Hypercapacitor Gizmo",
                    "Travel to Hypercapacitor Gizmo."),
            },
        },
        {
            id = "objective-5151-1-enraged-panther",
            kind = "objective",
            priority = 420,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Kill Enraged Panther.",
            complete = QuestObjective(5151, 1, "Enraged Panther"),
            dependsOn = { "accept-5151-hypercapacitor-gizmo" },
            route = {
                Point(1441, 0.2279, 0.2454, "Enraged Panther",
                    "Travel to Enraged Panther."),
            },
        },
        {
            id = "turnin-5151-hypercapacitor-gizmo",
            kind = "turnin",
            priority = 430,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Hypercapacitor Gizmo.",
            complete = QuestState(5151, "completed"),
            dependsOn = { "accept-5151-hypercapacitor-gizmo", "objective-5151-1-enraged-panther" },
            route = {
                Point(1441, 0.2143, 0.3255, "Hypercapacitor Gizmo",
                    "Travel to Hypercapacitor Gizmo."),
            },
        },
        {
            id = "turnin-5064-grimtotem-spying",
            kind = "turnin",
            priority = 440,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Grimtotem Spying.",
            complete = QuestState(5064, "completed"),
            dependsOn = { "accept-5064-grimtotem-spying" },
            route = {
                Point(1441, 0.4565, 0.5080, "Grimtotem Spying",
                    "Travel to Grimtotem Spying."),
            },
        },
        {
            id = "turnin-5147-wanted-arnak-grimtotem",
            kind = "turnin",
            priority = 450,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Wanted - Arnak Grimtotem.",
            complete = QuestState(5147, "completed"),
            dependsOn = { "accept-5147-wanted-arnak-grimtotem", "objective-5147-1-arnak-grimtotem" },
            route = {
                Point(1441, 0.4565, 0.5080, "Wanted - Arnak Grimtotem",
                    "Travel to Wanted - Arnak Grimtotem."),
            },
        },
        {
            id = "turnin-4904-free-at-last",
            kind = "turnin",
            priority = 460,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Free at Last.",
            complete = QuestState(4904, "completed"),
            dependsOn = { "accept-4904-free-at-last" },
            route = {
                Point(1441, 0.4597, 0.5161, "Free at Last",
                    "Travel to Free at Last."),
            },
        },
        {
            id = "accept-1111-wharfmaster-dizzywig",
            kind = "accept",
            priority = 470,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept Wharfmaster Dizzywig.",
            complete = QuestState(1111, "activeOrCompleted"),
            route = {
                Point(1441, 0.7779, 0.7727, "Wharfmaster Dizzywig",
                    "Travel to Wharfmaster Dizzywig."),
            },
        },
        {
            id = "accept-1718-the-islander",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Accept The Islander.",
            complete = QuestState(1718, "activeOrCompleted"),
            route = {
                Point(1456, 0.5724, 0.8737, "The Islander",
                    "Travel to The Islander."),
            },
        },
        {
            id = "accept-1145-the-swarm-grows",
            kind = "accept",
            priority = 490,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept The Swarm Grows.",
            complete = QuestState(1145, "activeOrCompleted"),
            route = {
                Point(1456, 0.2981, 0.2982, "The Swarm Grows",
                    "Travel to The Swarm Grows."),
            },
        },
        {
            id = "turnin-1111-wharfmaster-dizzywig",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Turn in Wharfmaster Dizzywig.",
            complete = QuestState(1111, "completed"),
            dependsOn = { "accept-1111-wharfmaster-dizzywig" },
            route = {
                Point(1413, 0.6335, 0.3845, "Wharfmaster Dizzywig",
                    "Travel to Wharfmaster Dizzywig."),
            },
        },
        {
            id = "accept-1112-parts-for-kravel",
            kind = "accept",
            priority = 510,
            conditions = { all = {
                { level = { min = 35 } },
                { faction = "Horde" },
            } },
            text = "Accept Parts for Kravel.",
            complete = QuestState(1112, "activeOrCompleted"),
            route = {
                Point(1413, 0.6335, 0.3845, "Parts for Kravel",
                    "Travel to Parts for Kravel."),
            },
        },
        {
            id = "turnin-220-call-of-water",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Turn in Call of Water.",
            complete = QuestState(220, "completed"),
            dependsOn = { "accept-220-call-of-water" },
            route = {
                Point(1413, 0.6583, 0.4378, "Call of Water",
                    "Travel to Call of Water."),
            },
        },
        {
            id = "accept-63-call-of-water",
            kind = "accept",
            priority = 530,
            conditions = { all = {
                { level = { min = 30 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Water.",
            complete = QuestState(63, "activeOrCompleted"),
            route = {
                Point(1413, 0.6583, 0.4378, "Call of Water",
                    "Travel to Call of Water."),
            },
        },
        {
            id = "turnin-1718-the-islander",
            kind = "turnin",
            priority = 540,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Turn in The Islander.",
            complete = QuestState(1718, "completed"),
            dependsOn = { "accept-1718-the-islander" },
            route = {
                Point(1413, 0.6862, 0.4917, "The Islander",
                    "Travel to The Islander."),
            },
        },
        {
            id = "accept-1719-the-affray",
            kind = "accept",
            priority = 550,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Accept The Affray.",
            complete = QuestState(1719, "activeOrCompleted"),
            route = {
                Point(1413, 0.6862, 0.4917, "The Affray",
                    "Travel to The Affray."),
            },
        },
        {
            id = "objective-1719-1-affray-challenger",
            kind = "objective",
            priority = 560,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Kill Affray Challenger.",
            complete = QuestObjective(1719, 1, "Affray Challenger"),
            dependsOn = { "accept-1719-the-affray" },
            route = {
                Point(1413, 0.6861, 0.4872, "Affray Challenger",
                    "Travel to Affray Challenger."),
            },
        },
        {
            id = "turnin-1719-the-affray",
            kind = "turnin",
            priority = 570,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Turn in The Affray.",
            complete = QuestState(1719, "completed"),
            dependsOn = { "accept-1719-the-affray", "objective-1719-1-affray-challenger" },
            route = {
                Point(1413, 0.6862, 0.4917, "The Affray",
                    "Travel to The Affray."),
            },
        },
        {
            id = "accept-1791-the-windwatcher",
            kind = "accept",
            priority = 580,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
                { class = 1 },
            } },
            text = "Accept The Windwatcher.",
            complete = QuestState(1791, "activeOrCompleted"),
            route = {
                Point(1413, 0.6862, 0.4917, "The Windwatcher",
                    "Travel to The Windwatcher."),
            },
        },
        {
            id = "accept-1431-alliance-relations",
            kind = "accept",
            priority = 590,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Accept Alliance Relations.",
            complete = QuestState(1431, "activeOrCompleted"),
            route = {
                Point(1454, 0.4676, 0.5043, "Alliance Relations",
                    "Travel to Alliance Relations."),
            },
        },
        {
            id = "accept-1531-call-of-air",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
                { class = 7 },
            } },
            text = "Accept Call of Air.",
            complete = QuestState(1531, "activeOrCompleted"),
            route = {
                Point(1454, 0.3796, 0.3773, "Call of Air",
                    "Travel to Call of Air."),
            },
        },
        {
            id = "turnin-1145-the-swarm-grows",
            kind = "turnin",
            priority = 610,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in The Swarm Grows.",
            complete = QuestState(1145, "completed"),
            dependsOn = { "accept-1145-the-swarm-grows" },
            route = {
                Point(1454, 0.7523, 0.3423, "The Swarm Grows",
                    "Travel to The Swarm Grows."),
            },
        },
        {
            id = "accept-1146-the-swarm-grows",
            kind = "accept",
            priority = 620,
            conditions = { all = {
                { level = { min = 33 } },
                { faction = "Horde" },
            } },
            text = "Accept The Swarm Grows.",
            complete = QuestState(1146, "activeOrCompleted"),
            route = {
                Point(1454, 0.7523, 0.3423, "The Swarm Grows",
                    "Travel to The Swarm Grows."),
            },
        },
        {
            id = "turnin-1431-alliance-relations",
            kind = "turnin",
            priority = 630,
            conditions = { all = {
                { level = { min = 28 } },
                { faction = "Horde" },
            } },
            text = "Turn in Alliance Relations.",
            complete = QuestState(1431, "completed"),
            dependsOn = { "accept-1431-alliance-relations" },
            route = {
                Point(1454, 0.2256, 0.5263, "Alliance Relations",
                    "Travel to Alliance Relations."),
            },
        },
        {
            id = "accept-1432-alliance-relations",
            kind = "accept",
            priority = 640,
            conditions = { all = {
                { level = { min = 34 } },
                { faction = "Horde" },
            } },
            text = "Accept Alliance Relations.",
            complete = QuestState(1432, "activeOrCompleted"),
            route = {
                Point(1454, 0.2256, 0.5263, "Alliance Relations",
                    "Travel to Alliance Relations."),
            },
        },
    },
})
