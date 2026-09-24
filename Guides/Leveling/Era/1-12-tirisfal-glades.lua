local _, ns = ...

-- Horde Era leveling route for Tirisfal Glades, levels 1-12.
-- Forever quests from the Tirisfal Glades and Undercity lists are woven into this route.
-- Left out: Prompt Potion Runner, A Frightened Request, and Unending Torment are level 16 to 22.
-- Whispering Horror Residue is turned in only after the item starts the quest.
-- Grind stops and flight-point pickups are not part of this route.
-- Coordinates have not been validated in the Forever client.

local MAP = {
    TIRISFAL = 1420,
    UNDERCITY = 1458,
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
    id = "leveling-era-1-12-tirisfal-glades",
    title = "1-12 Tirisfal Glades (Era)",
    category = "Leveling Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { faction = "Horde" },
            { level = { min = 1 } },
        },
    },
    goals = {
        {
            id = "accept-363-rude-awakening",
            kind = "accept",
            priority = 10,
            conditions = {
                all = {
                    { race = 5 },
                },
            },
            text = "Accept Rude Awakening from Undertaker Mordo in Deathknell.",
            complete = QuestState(363, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3025, 0.7171, "Undertaker Mordo",
                    "Travel to Undertaker Mordo."),
            },
        },
        {
            id = "turnin-363-rude-awakening",
            kind = "turnin",
            priority = 20,
            conditions = {
                all = {
                    { race = 5 },
                },
            },
            text = "Turn in Rude Awakening to Shadow Priest Sarvis in Deathknell.",
            dependsOn = { "accept-363-rude-awakening" },
            complete = QuestState(363, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3086, 0.6617, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis."),
            },
        },
        {
            id = "accept-364-the-mindless-ones",
            kind = "accept",
            priority = 30,
            text = "Accept The Mindless Ones from Shadow Priest Sarvis in Deathknell.",
            complete = QuestState(364, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3086, 0.6617, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis."),
            },
        },
        {
            id = "accept-1470-piercing-the-veil",
            kind = "accept",
            priority = 40,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Piercing the Veil from Venya Marthand in Deathknell.",
            complete = QuestState(1470, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3106, 0.6635, "Venya Marthand",
                    "Travel to Venya Marthand."),
            },
        },
        {
            id = "objective-1470-piercing-the-veil",
            kind = "objective",
            priority = 50,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Kill Rattlecage Skeleton and collect Rattlecage Skull in Deathknell.",
            dependsOn = { "accept-1470-piercing-the-veil" },
            complete = QuestState(1470, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.3289, 0.6161, "Rattlecage Skeleton",
                    "Travel to Rattlecage Skeleton."),
            },
        },
        {
            id = "objective-364-the-mindless-ones",
            kind = "objective",
            priority = 60,
            text = "Kill 8 Mindless Zombie and 8 Wretched Ghoul right outside town.",
            dependsOn = { "accept-364-the-mindless-ones" },
            complete = QuestState(364, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.3336, 0.6427, "Mindless Zombie",
                    "Travel to Mindless Zombie."),
            },
        },
        {
            id = "turnin-364-the-mindless-ones",
            kind = "turnin",
            priority = 70,
            text = "Turn in The Mindless Ones to Shadow Priest Sarvis in Deathknell.",
            dependsOn = { "objective-364-the-mindless-ones" },
            complete = QuestState(364, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3086, 0.6617, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis."),
            },
        },
        {
            id = "turnin-1470-piercing-the-veil",
            kind = "turnin",
            priority = 80,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Piercing the Veil to Venya Marthand in Deathknell.",
            dependsOn = { "objective-1470-piercing-the-veil" },
            complete = QuestState(1470, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3098, 0.6641, "Venya Marthand",
                    "Travel to Venya Marthand."),
            },
        },
        {
            id = "accept-3901-rattling-the-rattlecages",
            kind = "accept",
            priority = 90,
            text = "Accept Rattling the Rattlecages from Shadow Priest Sarvis in Deathknell.",
            complete = QuestState(3901, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3086, 0.6617, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis."),
            },
        },
        {
            id = "accept-376-the-damned",
            kind = "accept",
            priority = 100,
            text = "Accept The Damned from Novice Elreth in Deathknell.",
            complete = QuestState(376, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3092, 0.6614, "Novice Elreth",
                    "Travel to Novice Elreth."),
            },
        },
        {
            id = "accept-3096-encrypted-scroll",
            kind = "accept",
            priority = 110,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept Encrypted Scroll from Shadow Priest Sarvis in Deathknell.",
            complete = QuestState(3096, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3086, 0.6617, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis."),
            },
        },
        {
            id = "accept-3099-tainted-scroll",
            kind = "accept",
            priority = 120,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Tainted Scroll from Shadow Priest Sarvis in Deathknell.",
            complete = QuestState(3099, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3086, 0.6617, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis."),
            },
        },
        {
            id = "accept-3095-simple-scroll",
            kind = "accept",
            priority = 130,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Accept Simple Scroll from Shadow Priest Sarvis in Deathknell.",
            complete = QuestState(3095, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3086, 0.6617, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis."),
            },
        },
        {
            id = "accept-3098-glyphic-scroll",
            kind = "accept",
            priority = 140,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Accept Glyphic Scroll from Shadow Priest Sarvis in Deathknell.",
            complete = QuestState(3098, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3086, 0.6617, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis."),
            },
        },
        {
            id = "accept-3097-hallowed-scroll",
            kind = "accept",
            priority = 150,
            conditions = {
                all = {
                    { class = 5 },
                },
            },
            text = "Accept Hallowed Scroll from Shadow Priest Sarvis in Deathknell.",
            complete = QuestState(3097, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3086, 0.6617, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis."),
            },
        },
        {
            id = "turnin-3096-encrypted-scroll",
            kind = "turnin",
            priority = 160,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in Encrypted Scroll to David Trias in Deathknell.",
            dependsOn = { "accept-3096-encrypted-scroll" },
            complete = QuestState(3096, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3250, 0.6560, "David Trias",
                    "Travel to David Trias."),
            },
        },
        {
            id = "turnin-3099-tainted-scroll",
            kind = "turnin",
            priority = 170,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Tainted Scroll to Maximillion in Deathknell.",
            dependsOn = { "accept-3099-tainted-scroll" },
            complete = QuestState(3099, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3091, 0.6626, "Maximillion",
                    "Travel to Maximillion."),
            },
        },
        {
            id = "turnin-3095-simple-scroll",
            kind = "turnin",
            priority = 180,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in Simple Scroll to Dannal Stern in Deathknell.",
            dependsOn = { "accept-3095-simple-scroll" },
            complete = QuestState(3095, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3260, 0.6560, "Dannal Stern",
                    "Travel to Dannal Stern."),
            },
        },
        {
            id = "turnin-3098-glyphic-scroll",
            kind = "turnin",
            priority = 190,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Turn in Glyphic Scroll to Isabella in Deathknell.",
            dependsOn = { "accept-3098-glyphic-scroll" },
            complete = QuestState(3098, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3090, 0.6620, "Isabella",
                    "Travel to Isabella."),
            },
        },
        {
            id = "turnin-3097-hallowed-scroll",
            kind = "turnin",
            priority = 200,
            conditions = {
                all = {
                    { class = 5 },
                },
            },
            text = "Turn in Hallowed Scroll to Dark Cleric Duesten in Deathknell.",
            dependsOn = { "accept-3097-hallowed-scroll" },
            complete = QuestState(3097, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3110, 0.6610, "Dark Cleric Duesten",
                    "Travel to Dark Cleric Duesten."),
            },
        },
        {
            id = "objective-376-the-damned",
            kind = "objective",
            priority = 210,
            text = "Kill Ragged Scavenger and Duskbat to the south for 6 Scavenger Paw and 6 Duskbat Wing in Deathknell.",
            dependsOn = { "accept-376-the-damned" },
            complete = QuestState(376, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.3400, 0.5700, "Ragged Scavenger",
                    "Travel to Ragged Scavenger."),
            },
        },
        {
            id = "objective-3901-rattling-the-rattlecages",
            kind = "objective",
            priority = 220,
            text = "Kill 12 Rattlecage Skeleton south of town in Deathknell.",
            dependsOn = { "accept-3901-rattling-the-rattlecages" },
            complete = QuestState(3901, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.3293, 0.6172, "Rattlecage Skeleton",
                    "Travel to Rattlecage Skeleton."),
            },
        },
        {
            id = "turnin-376-the-damned",
            kind = "turnin",
            priority = 230,
            text = "Turn in The Damned to Novice Elreth in Deathknell.",
            dependsOn = { "objective-376-the-damned" },
            complete = QuestState(376, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3092, 0.6614, "Novice Elreth",
                    "Travel to Novice Elreth."),
            },
        },
        {
            id = "turnin-3901-rattling-the-rattlecages",
            kind = "turnin",
            priority = 240,
            text = "Turn in Rattling the Rattlecages to Shadow Priest Sarvis in Deathknell.",
            dependsOn = { "objective-3901-rattling-the-rattlecages" },
            complete = QuestState(3901, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3086, 0.6617, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis."),
            },
        },
        {
            id = "accept-6395-marla-s-last-wish",
            kind = "accept",
            priority = 250,
            text = "Accept Marla's Last Wish from Novice Elreth in Deathknell.",
            complete = QuestState(6395, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3092, 0.6614, "Novice Elreth",
                    "Travel to Novice Elreth."),
            },
        },
        {
            id = "accept-380-night-web-s-hollow",
            kind = "accept",
            priority = 260,
            text = "Accept Night Web's Hollow from Executor Arren in Deathknell.",
            complete = QuestState(380, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3211, 0.6603, "Executor Arren",
                    "Travel to Executor Arren."),
            },
        },
        {
            id = "accept-98389-a-light-in-the-darkness",
            kind = "accept",
            priority = 261,
            text = "Accept A Light in the Darkness from Aramis Hammerhand in Deathknell.",
            complete = QuestState(98389, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand."),
            },
        },
        {
            id = "accept-3902-scavenging-deathknell",
            kind = "accept",
            priority = 270,
            text = "Accept Scavenging Deathknell from Deathguard Saltain in Deathknell.",
            complete = QuestState(3902, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3168, 0.6551, "Deathguard Saltain",
                    "Travel to Deathguard Saltain."),
            },
        },
        {
            id = "objective-3902-scavenging-deathknell",
            kind = "objective",
            priority = 280,
            text = "Collect 6 Scavenged Goods around or inside the buildings in Deathknell.",
            dependsOn = { "accept-3902-scavenging-deathknell" },
            complete = QuestState(3902, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.3400, 0.6600, "Deathknell",
                    "Travel to Deathknell."),
            },
        },
        {
            id = "travel-3902-deathknell",
            kind = "travel",
            priority = 290,
            text = "Travel to Deathknell.",
            route = {
                Point(MAP.TIRISFAL, 0.3400, 0.6600, "Deathknell",
                    "Travel to Deathknell."),
            },
        },
        {
            id = "objective-6395-samuel-fipps",
            kind = "objective",
            priority = 300,
            text = "Kill Samuel Fipps and collect Samuel's Remains.",
            dependsOn = { "accept-6395-marla-s-last-wish" },
            complete = QuestState(6395, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.3660, 0.6160, "Samuel Fipps",
                    "Travel to Samuel Fipps."),
            },
        },
        {
            id = "travel-380-night-web-s-hollow",
            kind = "travel",
            priority = 310,
            text = "Travel to Night Web's Hollow.",
            route = {
                Point(MAP.TIRISFAL, 0.2750, 0.5800, "Night Web's Hollow",
                    "Travel to Night Web's Hollow."),
            },
        },
        {
            id = "objective-380-night-web-s-hollow",
            kind = "objective",
            priority = 320,
            text = "Kill 8 Young Night Web Spider outside the cave and 5 Night Web Spider inside the cave in Night Web's Hollow.",
            dependsOn = { "accept-380-night-web-s-hollow" },
            complete = QuestState(380, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.2680, 0.5990, "Young Night Web Spider",
                    "Travel to Young Night Web Spider."),
            },
        },
        {
            id = "objective-98389-a-light-in-the-darkness",
            kind = "objective",
            priority = 311,
            text = "Free 6 Webbed Forsaken in Night Web's Hollow.",
            dependsOn = { "accept-98389-a-light-in-the-darkness" },
            complete = QuestState(98389, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.2660, 0.5940, "Webbed Forsaken",
                    "Travel to Webbed Forsaken."),
            },
        },
        {
            id = "turnin-98389-a-light-in-the-darkness",
            kind = "turnin",
            priority = 312,
            text = "Turn in A Light in the Darkness to Aramis Hammerhand in Deathknell.",
            dependsOn = { "objective-98389-a-light-in-the-darkness" },
            complete = QuestState(98389, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand."),
            },
        },
        {
            id = "travel-6395-deathknell",
            kind = "travel",
            priority = 330,
            text = "Travel to Deathknell.",
            route = {
                Point(MAP.TIRISFAL, 0.3117, 0.6505, "Deathknell",
                    "Travel to Deathknell."),
            },
        },
        {
            id = "objective-6395-marla-s-last-wish",
            kind = "objective",
            priority = 340,
            text = "Use Samuel's Remains at Marla's Grave in Deathknell.",
            dependsOn = { "accept-6395-marla-s-last-wish" },
            complete = QuestState(6395, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.3117, 0.6505, "Deathknell",
                    "Travel to Deathknell."),
            },
        },
        {
            id = "turnin-3902-scavenging-deathknell",
            kind = "turnin",
            priority = 350,
            text = "Turn in Scavenging Deathknell to Deathguard Saltain in Deathknell.",
            dependsOn = { "objective-3902-scavenging-deathknell" },
            complete = QuestState(3902, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3168, 0.6551, "Deathguard Saltain",
                    "Travel to Deathguard Saltain."),
            },
        },
        {
            id = "turnin-380-night-web-s-hollow",
            kind = "turnin",
            priority = 360,
            text = "Turn in Night Web's Hollow to Executor Arren in Deathknell.",
            dependsOn = { "objective-380-night-web-s-hollow" },
            complete = QuestState(380, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3211, 0.6603, "Executor Arren",
                    "Travel to Executor Arren."),
            },
        },
        {
            id = "accept-381-the-scarlet-crusade",
            kind = "accept",
            priority = 370,
            text = "Accept The Scarlet Crusade from Executor Arren in Deathknell.",
            complete = QuestState(381, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3211, 0.6603, "Executor Arren",
                    "Travel to Executor Arren."),
            },
        },
        {
            id = "turnin-6395-marla-s-last-wish",
            kind = "turnin",
            priority = 380,
            text = "Turn in Marla's Last Wish to Novice Elreth in Deathknell.",
            dependsOn = { "objective-6395-samuel-fipps", "objective-6395-marla-s-last-wish" },
            complete = QuestState(6395, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3092, 0.6614, "Novice Elreth",
                    "Travel to Novice Elreth."),
            },
        },
        {
            id = "objective-381-the-scarlet-crusade",
            kind = "objective",
            priority = 390,
            text = "Kill Scarlet Convert, Scarlet Initiate and collect 12 Scarlet Armband in a camp east of town in Deathknell.",
            dependsOn = { "accept-381-the-scarlet-crusade" },
            complete = QuestState(381, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.3600, 0.6750, "Scarlet Convert",
                    "Travel to Scarlet Convert."),
            },
        },
        {
            id = "turnin-381-the-scarlet-crusade",
            kind = "turnin",
            priority = 400,
            text = "Turn in The Scarlet Crusade to Executor Arren in Deathknell.",
            dependsOn = { "objective-381-the-scarlet-crusade" },
            complete = QuestState(381, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3214, 0.6596, "Executor Arren",
                    "Travel to Executor Arren."),
            },
        },
        {
            id = "accept-382-the-red-messenger",
            kind = "accept",
            priority = 410,
            text = "Accept The Red Messenger from Executor Arren in Deathknell.",
            complete = QuestState(382, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3214, 0.6596, "Executor Arren",
                    "Travel to Executor Arren."),
            },
        },
        {
            id = "objective-382-the-red-messenger",
            kind = "objective",
            priority = 420,
            text = "Kill Meven Korgal and collect Scarlet Crusade Documents in Deathknell.",
            dependsOn = { "accept-382-the-red-messenger" },
            complete = QuestState(382, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.3648, 0.6878, "Meven Korgal",
                    "Travel to Meven Korgal."),
            },
        },
        {
            id = "turnin-382-the-red-messenger",
            kind = "turnin",
            priority = 430,
            text = "Turn in The Red Messenger to Executor Arren in Deathknell.",
            dependsOn = { "objective-382-the-red-messenger" },
            complete = QuestState(382, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.3214, 0.6596, "Executor Arren",
                    "Travel to Executor Arren."),
            },
        },
        {
            id = "accept-383-vital-intelligence",
            kind = "accept",
            priority = 440,
            text = "Accept Vital Intelligence from Executor Arren in Deathknell.",
            complete = QuestState(383, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3214, 0.6596, "Executor Arren",
                    "Travel to Executor Arren."),
            },
        },
        {
            id = "accept-8-a-rogue-s-deal",
            kind = "accept",
            priority = 450,
            text = "Accept A Rogue's Deal from Calvin Montague in Deathknell.",
            complete = QuestState(8, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.3818, 0.5684, "Calvin Montague",
                    "Travel to Calvin Montague."),
            },
        },
        {
            id = "accept-365-fields-of-grief",
            kind = "accept",
            priority = 460,
            text = "Accept Fields of Grief from Deathguard Simmer in Deathknell.",
            complete = QuestState(365, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.4088, 0.5424, "Deathguard Simmer",
                    "Travel to Deathguard Simmer."),
            },
        },
        {
            id = "accept-5481-gordo-s-task",
            kind = "accept",
            priority = 470,
            text = "Accept Gordo's Task from Gordo in Nightmare Vale.",
            complete = QuestState(5481, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.4368, 0.5441, "Gordo",
                    "Travel to Gordo."),
            },
        },
        {
            id = "travel-404-brill",
            kind = "travel",
            priority = 480,
            text = "Travel to Brill.",
            route = {
                Point(MAP.TIRISFAL, 0.5820, 0.5150, "Brill",
                    "Travel to Brill."),
            },
        },
        {
            id = "accept-404-a-putrid-task",
            kind = "accept",
            priority = 490,
            text = "Accept A Putrid Task from Deathguard Dillinger in Brill.",
            complete = QuestState(404, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5820, 0.5146, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger."),
            },
        },
        {
            id = "accept-367-a-new-plague",
            kind = "accept",
            priority = 500,
            text = "Accept A New Plague from Apothecary Johaan in Brill.",
            complete = QuestState(367, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5946, 0.5234, "Apothecary Johaan",
                    "Travel to Apothecary Johaan."),
            },
        },
        {
            id = "turnin-383-vital-intelligence",
            kind = "turnin",
            priority = 510,
            text = "Turn in Vital Intelligence to Executor Zygand in Brill.",
            dependsOn = { "accept-383-vital-intelligence" },
            complete = QuestState(383, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6055, 0.5181, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "accept-99134-discipline",
            kind = "accept",
            priority = 511,
            text = "Accept Discipline from Executor Zygand in Brill.",
            complete = QuestState(99134, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5180, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "accept-86784-sticks-and-bones",
            kind = "accept",
            priority = 512,
            text = "Accept Sticks and Bones from Deathguard Bartholomew in Brill. He gives you a Collecting Basket.",
            complete = QuestState(86784, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5840, 0.5140, "Deathguard Bartholomew",
                    "Travel to Deathguard Bartholomew."),
            },
        },
        {
            id = "objective-86784-sticks-and-bones",
            kind = "objective",
            priority = 513,
            text = "Collect 6 Dry Branches in the hills west of Brill and bring them to Eleanor Shackleton.",
            dependsOn = { "accept-86784-sticks-and-bones" },
            complete = QuestState(86784, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5720, 0.5540, "Eleanor Shackleton",
                    "Travel to Eleanor Shackleton."),
            },
        },
        {
            id = "turnin-86784-sticks-and-bones",
            kind = "turnin",
            priority = 514,
            text = "Turn in Sticks and Bones to Eleanor Shackleton.",
            dependsOn = { "objective-86784-sticks-and-bones" },
            complete = QuestState(86784, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.5720, 0.5540, "Eleanor Shackleton",
                    "Travel to Eleanor Shackleton."),
            },
        },
        {
            id = "accept-95314-that-shadowvale-green-elixir",
            kind = "accept",
            priority = 515,
            text = "Accept That Shadowvale Green Elixir from Carolai Anise in Brill.",
            complete = QuestState(95314, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5940, 0.5220, "Carolai Anise",
                    "Travel to Carolai Anise."),
            },
        },
        {
            id = "accept-427-at-war-with-the-scarlet-crusade",
            kind = "accept",
            priority = 520,
            text = "Accept At War With The Scarlet Crusade from Executor Zygand in Brill.",
            complete = QuestState(427, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5188, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "accept-398-wanted-maggot-eye",
            kind = "accept",
            priority = 530,
            text = "Accept Wanted: Maggot Eye in Brill.",
            complete = QuestState(398, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6070, 0.5160, "Brill",
                    "Travel to Brill."),
            },
        },
        {
            id = "accept-358-graverobbers",
            kind = "accept",
            priority = 540,
            text = "Accept Graverobbers from Magistrate Sevren in Brill Town Hall.",
            complete = QuestState(358, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6127, 0.5077, "Magistrate Sevren",
                    "Travel to Magistrate Sevren."),
            },
        },
        {
            id = "turnin-8-a-rogue-s-deal",
            kind = "turnin",
            priority = 550,
            text = "Turn in A Rogue's Deal to Innkeeper Renee in Gallows' End Tavern.",
            dependsOn = { "accept-8-a-rogue-s-deal" },
            complete = QuestState(8, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6174, 0.5205, "Innkeeper Renee",
                    "Travel to Innkeeper Renee."),
            },
        },
        {
            id = "note-367-gallows-end-tavern",
            kind = "note",
            priority = 560,
            text = "Set your hearth in Gallows' End Tavern with Innkeeper Renee.",
            route = {
                Point(MAP.TIRISFAL, 0.6174, 0.5205, "Innkeeper Renee",
                    "Travel to Innkeeper Renee."),
            },
        },
        {
            id = "travel-398-garren-s-haunt",
            kind = "travel",
            priority = 570,
            text = "Travel to Garren's Haunt.",
            route = {
                Point(MAP.TIRISFAL, 0.5820, 0.3053, "Garren's Haunt",
                    "Travel to Garren's Haunt."),
            },
        },
        {
            id = "objective-398-wanted-maggot-eye",
            kind = "objective",
            priority = 580,
            text = "Kill Maggot Eye and collect Maggot Eye's Paw in the house at the north end of Garren's Haunt.",
            dependsOn = { "accept-398-wanted-maggot-eye" },
            complete = QuestState(398, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5870, 0.3170, "Maggot Eye",
                    "Travel to Maggot Eye."),
            },
        },
        {
            id = "objective-358-graverobbers",
            kind = "objective",
            priority = 590,
            text = "Kill 8 Rot Hide Graverobber and 5 Rot Hide Mongrel and loot them for 8 Embalming Ichor in the area.",
            dependsOn = { "accept-358-graverobbers" },
            complete = QuestState(358, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5900, 0.3500, "Rot Hide Graverobber",
                    "Travel to Rot Hide Graverobber."),
            },
        },
        {
            id = "objective-5481-gordo-s-task",
            kind = "objective",
            priority = 600,
            text = "Collect Gloom Weed find in the area between Deathknell and Brill.",
            dependsOn = { "accept-5481-gordo-s-task" },
            complete = QuestState(5481, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5100, 0.5500, "Deathknell",
                    "Travel to Deathknell."),
            },
        },
        {
            id = "objective-404-a-putrid-task",
            kind = "objective",
            priority = 610,
            text = "Kill Rotting Dead and Ravaged Corpse west of Brill for 7 Putrid Claw.",
            dependsOn = { "accept-404-a-putrid-task" },
            complete = QuestState(404, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5100, 0.5500, "Rotting Dead",
                    "Travel to Rotting Dead."),
            },
        },
        {
            id = "travel-brill",
            kind = "travel",
            priority = 620,
            text = "Travel to Brill.",
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5188, "Brill",
                    "Travel to Brill."),
            },
        },
        {
            id = "turnin-398-wanted-maggot-eye",
            kind = "turnin",
            priority = 630,
            text = "Turn in Wanted: Maggot Eye to Executor Zygand in Brill.",
            dependsOn = { "objective-398-wanted-maggot-eye" },
            complete = QuestState(398, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6055, 0.5181, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "turnin-358-graverobbers",
            kind = "turnin",
            priority = 640,
            text = "Turn in Graverobbers to Magistrate Sevren in Brill Town Hall.",
            dependsOn = { "objective-358-graverobbers" },
            complete = QuestState(358, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6127, 0.5077, "Magistrate Sevren",
                    "Travel to Magistrate Sevren."),
            },
        },
        {
            id = "turnin-404-a-putrid-task",
            kind = "turnin",
            priority = 650,
            text = "Turn in A Putrid Task to Deathguard Dillinger in Brill.",
            dependsOn = { "objective-404-a-putrid-task" },
            complete = QuestState(404, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.5820, 0.5146, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger."),
            },
        },
        {
            id = "accept-426-the-mills-overrun",
            kind = "accept",
            priority = 660,
            text = "Accept The Mills Overrun from Deathguard Dillinger in Brill.",
            complete = QuestState(426, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5820, 0.5146, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger."),
            },
        },
        {
            id = "turnin-5481-gordo-s-task",
            kind = "turnin",
            priority = 670,
            text = "Turn in Gordo's Task to Junior Apothecary Holland in Brill.",
            dependsOn = { "objective-5481-gordo-s-task" },
            complete = QuestState(5481, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.5830, 0.4977, "Junior Apothecary Holland",
                    "Travel to Junior Apothecary Holland."),
            },
        },
        {
            id = "accept-5482-doom-weed",
            kind = "accept",
            priority = 680,
            text = "Accept Doom Weed from Junior Apothecary Holland in Brill.",
            complete = QuestState(5482, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5830, 0.4977, "Junior Apothecary Holland",
                    "Travel to Junior Apothecary Holland."),
            },
        },
        {
            id = "accept-99142-tomb-weed",
            kind = "accept",
            priority = 681,
            text = "Accept Tomb Weed from Junior Apothecary Holland in Brill.",
            complete = QuestState(99142, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5760, 0.4900, "Junior Apothecary Holland",
                    "Travel to Junior Apothecary Holland."),
            },
        },
        {
            id = "objective-99142-tomb-weed",
            kind = "objective",
            priority = 711,
            text = "Collect 5 Tomb Weed around the graves north of Brill.",
            dependsOn = { "accept-99142-tomb-weed" },
            complete = QuestState(99142, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5500, 0.4200, "Tirisfal graves",
                    "Travel to Tirisfal graves."),
            },
        },
        {
            id = "travel-398-tirisfal-glades",
            kind = "travel",
            priority = 690,
            text = "Travel to Tirisfal Glades.",
            route = {
                Point(MAP.TIRISFAL, 0.5800, 0.6000, "Tirisfal Glades",
                    "Travel to Tirisfal Glades."),
            },
        },
        {
            id = "objective-367-a-new-plague",
            kind = "objective",
            priority = 700,
            text = "Kill any Darkhounds for 5 Darkhound Blood around.",
            dependsOn = { "accept-367-a-new-plague" },
            complete = QuestState(367, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.6820, 0.4050, "Decrepit Darkhound",
                    "Travel to Decrepit Darkhound."),
            },
        },
        {
            id = "objective-5482-doom-weed",
            kind = "objective",
            priority = 710,
            text = "Collect 10 Doom Weed from the ground around Tirisfal Glades.",
            dependsOn = { "accept-5482-doom-weed" },
            complete = QuestState(5482, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5500, 0.4200, "Tirisfal Glades",
                    "Travel to Tirisfal Glades."),
            },
        },
        {
            id = "travel-354-gallows-end-tavern",
            kind = "travel",
            priority = 720,
            text = "Travel to Gallows' End Tavern in Brill.",
            route = {
                Point(MAP.TIRISFAL, 0.6176, 0.5229, "Gallows' End Tavern",
                    "Travel to Gallows' End Tavern."),
            },
        },
        {
            id = "accept-354-deaths-in-the-family",
            kind = "accept",
            priority = 730,
            text = "Accept Deaths in the Family from Coleman Farthing in Gallows' End Tavern.",
            complete = QuestState(354, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6176, 0.5229, "Coleman Farthing",
                    "Travel to Coleman Farthing."),
            },
        },
        {
            id = "accept-362-the-haunted-mills",
            kind = "accept",
            priority = 740,
            text = "Accept The Haunted Mills from Coleman Farthing in Gallows' End Tavern.",
            complete = QuestState(362, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6176, 0.5229, "Coleman Farthing",
                    "Travel to Coleman Farthing."),
            },
        },
        {
            id = "accept-375-the-chill-of-death",
            kind = "accept",
            priority = 750,
            text = "Accept The Chill of Death from Gretchen Dedmar in Gallows' End Tavern.",
            complete = QuestState(375, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6189, 0.5266, "Gretchen Dedmar",
                    "Travel to Gretchen Dedmar."),
            },
        },
        {
            id = "accept-359-forsaken-duties",
            kind = "accept",
            priority = 760,
            text = "Accept Forsaken Duties from Magistrate Sevren in Brill Town Hall.",
            complete = QuestState(359, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6127, 0.5077, "Magistrate Sevren",
                    "Travel to Magistrate Sevren."),
            },
        },
        {
            id = "turnin-367-a-new-plague",
            kind = "turnin",
            priority = 770,
            text = "Turn in A New Plague to Apothecary Johaan in Brill.",
            dependsOn = { "objective-367-a-new-plague" },
            complete = QuestState(367, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.5946, 0.5234, "Apothecary Johaan",
                    "Travel to Apothecary Johaan."),
            },
        },
        {
            id = "accept-368-a-new-plague",
            kind = "accept",
            priority = 780,
            text = "Accept A New Plague from Apothecary Johaan in Brill.",
            complete = QuestState(368, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5946, 0.5234, "Apothecary Johaan",
                    "Travel to Apothecary Johaan."),
            },
        },
        {
            id = "turnin-5482-doom-weed",
            kind = "turnin",
            priority = 790,
            text = "Turn in Doom Weed to Junior Apothecary Holland in Brill.",
            dependsOn = { "objective-5482-doom-weed" },
            complete = QuestState(5482, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.5830, 0.4977, "Junior Apothecary Holland",
                    "Travel to Junior Apothecary Holland."),
            },
        },
        {
            id = "turnin-99142-tomb-weed",
            kind = "turnin",
            priority = 791,
            text = "Turn in Tomb Weed to Junior Apothecary Holland.",
            dependsOn = { "objective-99142-tomb-weed" },
            complete = QuestState(99142, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.5760, 0.4900, "Junior Apothecary Holland",
                    "Travel to Junior Apothecary Holland."),
            },
        },
        {
            id = "objective-99134-discipline",
            kind = "objective",
            priority = 792,
            text = "Motivate the Deathguards Executor Zygand named. They stand in Brill and along the roads you are already riding, including Deathknell.",
            dependsOn = { "accept-99134-discipline" },
            complete = QuestState(99134, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5180, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "turnin-99134-discipline",
            kind = "turnin",
            priority = 793,
            text = "Turn in Discipline to Executor Zygand.",
            dependsOn = { "objective-99134-discipline" },
            complete = QuestState(99134, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5180, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "accept-99141-patience",
            kind = "accept",
            priority = 794,
            text = "Accept Patience from Executor Zygand.",
            dependsOn = { "turnin-99134-discipline" },
            complete = QuestState(99141, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5180, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "objective-99141-patience",
            kind = "objective",
            priority = 795,
            text = "Collect reports from Deathguard Dillinger, Deathguard Kristof, and Gordo.",
            dependsOn = { "accept-99141-patience" },
            complete = QuestState(99141, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5820, 0.5140, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger."),
            },
        },
        {
            id = "turnin-99141-patience",
            kind = "turnin",
            priority = 796,
            text = "Turn in Patience to Executor Zygand.",
            dependsOn = { "objective-99141-patience" },
            complete = QuestState(99141, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5180, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "travel-362-agamand-mills",
            kind = "travel",
            priority = 800,
            text = "Travel to Agamand Mills.",
            route = {
                Point(MAP.TIRISFAL, 0.4692, 0.4102, "Agamand Mills",
                    "Travel to Agamand Mills."),
            },
        },
        {
            id = "objective-362-the-haunted-mills",
            kind = "objective",
            priority = 810,
            text = "Kill Devlin Agamand and collect Devlin's Remains in Agamand Mills.",
            dependsOn = { "accept-362-the-haunted-mills" },
            complete = QuestState(362, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.4692, 0.4102, "Devlin Agamand",
                    "Travel to Devlin Agamand."),
            },
        },
        {
            id = "objective-354-2-nissa-agamand",
            kind = "objective",
            priority = 820,
            text = "Kill Nissa Agamand and collect Nissa's Remains in Agamand Mills.",
            dependsOn = { "accept-354-deaths-in-the-family" },
            complete = QuestObjective(354, 2),
            route = {
                Point(MAP.TIRISFAL, 0.4956, 0.3558, "Nissa Agamand",
                    "Travel to Nissa Agamand."),
            },
        },
        {
            id = "objective-354-1-gregor-agamand",
            kind = "objective",
            priority = 830,
            text = "Kill Gregor Agamand and collect Gregor's Remains in Agamand Mills.",
            dependsOn = { "accept-354-deaths-in-the-family" },
            complete = QuestObjective(354, 1),
            route = {
                Point(MAP.TIRISFAL, 0.4510, 0.3020, "Gregor Agamand",
                    "Travel to Gregor Agamand."),
            },
        },
        {
            id = "objective-354-3-thurman-agamand",
            kind = "objective",
            priority = 840,
            text = "Kill Thurman Agamand and collect Thurman's Remains in Agamand Mills.",
            dependsOn = { "accept-354-deaths-in-the-family" },
            complete = QuestObjective(354, 3),
            route = {
                Point(MAP.TIRISFAL, 0.4407, 0.3185, "Thurman Agamand",
                    "Travel to Thurman Agamand."),
            },
        },
        {
            id = "objective-426-the-mills-overrun",
            kind = "objective",
            priority = 850,
            text = "Kill the Scourge at Agamand Mills and gather 5 Notched Rib and 3 Blackened Skull from Darkeye Bonecaster around.",
            dependsOn = { "accept-426-the-mills-overrun" },
            complete = QuestState(426, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5000, 0.3698, "Continue toward The Mills Overrun",
                    "Continue toward The Mills Overrun."),
                Point(MAP.TIRISFAL, 0.4802, 0.3454, "Darkeye Bonecaster",
                    "Travel to Darkeye Bonecaster."),
            },
        },
        {
            id = "travel-365-solliden-farmstead",
            kind = "travel",
            priority = 860,
            text = "Travel to Solliden Farmstead.",
            route = {
                Point(MAP.TIRISFAL, 0.3452, 0.4923, "Solliden Farmstead",
                    "Travel to Solliden Farmstead."),
            },
        },
        {
            id = "objective-365-fields-of-grief",
            kind = "objective",
            priority = 870,
            text = "Collect 10 Tirisfal Pumpkin from the ground in Solliden Farmstead.",
            dependsOn = { "accept-365-fields-of-grief" },
            complete = QuestState(365, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.3452, 0.4923, "Solliden Farmstead",
                    "Travel to Solliden Farmstead."),
            },
        },
        {
            id = "objective-427-at-war-with-the-scarlet-crusade",
            kind = "objective",
            priority = 880,
            text = "Kill 10 Scarlet Warrior in Solliden Farmstead.",
            dependsOn = { "accept-427-at-war-with-the-scarlet-crusade" },
            complete = QuestState(427, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.3400, 0.4800, "Scarlet Warrior",
                    "Travel to Scarlet Warrior."),
            },
        },
        {
            id = "travel-368-whispering-shore",
            kind = "travel",
            priority = 890,
            text = "Travel to Whispering Shore.",
            route = {
                Point(MAP.TIRISFAL, 0.3624, 0.4129, "Whispering Shore",
                    "Travel to Whispering Shore."),
            },
        },
        {
            id = "objective-368-a-new-plague",
            kind = "objective",
            priority = 900,
            text = "Kill Murlocs and collect 5 Vile Fin Scale along the shore in Whispering Shore.",
            dependsOn = { "accept-368-a-new-plague" },
            complete = QuestState(368, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.3624, 0.4129, "Vile Fin Puddlejumper",
                    "Travel to Vile Fin Puddlejumper."),
            },
        },
        {
            id = "travel-gallows-end-tavern",
            kind = "travel",
            priority = 910,
            text = "Travel to Gallows' End Tavern in Brill.",
            route = {
                Point(MAP.TIRISFAL, 0.6176, 0.5229, "Gallows' End Tavern",
                    "Travel to Gallows' End Tavern."),
            },
        },
        {
            id = "turnin-354-deaths-in-the-family",
            kind = "turnin",
            priority = 920,
            text = "Turn in Deaths in the Family to Coleman Farthing in Gallows' End Tavern.",
            dependsOn = { "objective-354-2-nissa-agamand", "objective-354-1-gregor-agamand", "objective-354-3-thurman-agamand" },
            complete = QuestState(354, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6176, 0.5229, "Coleman Farthing",
                    "Travel to Coleman Farthing."),
            },
        },
        {
            id = "turnin-362-the-haunted-mills",
            kind = "turnin",
            priority = 930,
            text = "Turn in The Haunted Mills to Coleman Farthing in Gallows' End Tavern.",
            dependsOn = { "objective-362-the-haunted-mills" },
            complete = QuestState(362, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6176, 0.5229, "Coleman Farthing",
                    "Travel to Coleman Farthing."),
            },
        },
        {
            id = "accept-355-speak-with-sevren",
            kind = "accept",
            priority = 940,
            text = "Accept Speak with Sevren from Coleman Farthing in Gallows' End Tavern.",
            complete = QuestState(355, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6176, 0.5229, "Coleman Farthing",
                    "Travel to Coleman Farthing."),
            },
        },
        {
            id = "turnin-427-at-war-with-the-scarlet-crusade",
            kind = "turnin",
            priority = 950,
            text = "Turn in At War With The Scarlet Crusade to Executor Zygand in Brill.",
            dependsOn = { "objective-427-at-war-with-the-scarlet-crusade" },
            complete = QuestState(427, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5188, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "accept-370-at-war-with-the-scarlet-crusade",
            kind = "accept",
            priority = 960,
            text = "Accept At War With The Scarlet Crusade from Executor Zygand in Brill.",
            complete = QuestState(370, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5188, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "accept-374-proof-of-demise",
            kind = "accept",
            priority = 970,
            text = "Accept Proof of Demise from Deathguard Burgess in Brill.",
            complete = QuestState(374, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6089, 0.5212, "Deathguard Burgess",
                    "Travel to Deathguard Burgess."),
            },
        },
        {
            id = "turnin-355-speak-with-sevren",
            kind = "turnin",
            priority = 980,
            text = "Turn in Speak with Sevren to Magistrate Sevren in Brill Town Hall.",
            dependsOn = { "accept-355-speak-with-sevren" },
            complete = QuestState(355, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6127, 0.5077, "Magistrate Sevren",
                    "Travel to Magistrate Sevren."),
            },
        },
        {
            id = "accept-408-the-family-crypt",
            kind = "accept",
            priority = 990,
            text = "Accept The Family Crypt from Magistrate Sevren in Brill Town Hall.",
            complete = QuestState(408, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6127, 0.5077, "Magistrate Sevren",
                    "Travel to Magistrate Sevren."),
            },
        },
        {
            id = "turnin-365-fields-of-grief",
            kind = "turnin",
            priority = 1000,
            text = "Turn in Fields of Grief to Apothecary Johaan in Brill.",
            dependsOn = { "objective-365-fields-of-grief" },
            complete = QuestState(365, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.5946, 0.5234, "Apothecary Johaan",
                    "Travel to Apothecary Johaan."),
            },
        },
        {
            id = "accept-407-fields-of-grief",
            kind = "accept",
            priority = 1010,
            text = "Accept Fields of Grief from Apothecary Johaan in Brill.",
            complete = QuestState(407, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5946, 0.5234, "Apothecary Johaan",
                    "Travel to Apothecary Johaan."),
            },
        },
        {
            id = "turnin-368-a-new-plague",
            kind = "turnin",
            priority = 1020,
            text = "Turn in A New Plague to Apothecary Johaan in Brill.",
            dependsOn = { "objective-368-a-new-plague" },
            complete = QuestState(368, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.5947, 0.5233, "Apothecary Johaan",
                    "Travel to Apothecary Johaan."),
            },
        },
        {
            id = "accept-369-a-new-plague",
            kind = "accept",
            priority = 1030,
            text = "Accept A New Plague from Apothecary Johaan in Brill.",
            complete = QuestState(369, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5947, 0.5233, "Apothecary Johaan",
                    "Travel to Apothecary Johaan."),
            },
        },
        {
            id = "turnin-426-the-mills-overrun",
            kind = "turnin",
            priority = 1040,
            text = "Turn in The Mills Overrun to Deathguard Dillinger in Brill.",
            dependsOn = { "objective-426-the-mills-overrun" },
            complete = QuestState(426, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.5820, 0.5146, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger."),
            },
        },
        {
            id = "objective-369-coarse-thread",
            kind = "objective",
            priority = 1050,
            text = "Buy Coarse Thread from Abigail Shiel in Brill.",
            dependsOn = { "accept-369-a-new-plague" },
            complete = QuestState(369, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.6100, 0.5250, "Abigail Shiel",
                    "Travel to Abigail Shiel."),
            },
        },
        {
            id = "objective-375-the-chill-of-death",
            kind = "objective",
            priority = 1060,
            text = "Collect 6 Duskbat Pelt drop from the Greater Duskbat just outside town.",
            dependsOn = { "accept-375-the-chill-of-death" },
            complete = QuestState(375, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5700, 0.5600, "Greater Duskbat",
                    "Travel to Greater Duskbat."),
            },
        },
        {
            id = "travel-gallows-end-tavern-2",
            kind = "travel",
            priority = 1070,
            text = "Travel to Gallows' End Tavern in Brill.",
            route = {
                Point(MAP.TIRISFAL, 0.6176, 0.5229, "Gallows' End Tavern",
                    "Travel to Gallows' End Tavern."),
            },
        },
        {
            id = "turnin-375-the-chill-of-death",
            kind = "turnin",
            priority = 1080,
            text = "Turn in The Chill of Death to Gretchen Dedmar in Gallows' End Tavern.",
            dependsOn = { "objective-375-the-chill-of-death" },
            complete = QuestState(375, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6189, 0.5266, "Gretchen Dedmar",
                    "Travel to Gretchen Dedmar."),
            },
        },
        {
            id = "turnin-407-fields-of-grief",
            kind = "turnin",
            priority = 1090,
            text = "Turn in Fields of Grief to Captured Scarlet Zealot.",
            dependsOn = { "accept-407-fields-of-grief" },
            complete = QuestState(407, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6190, 0.5130, "Captured Scarlet Zealot",
                    "Travel to Captured Scarlet Zealot."),
            },
        },
        {
            id = "objective-370-1-captain-perrine",
            kind = "objective",
            priority = 1100,
            text = "Kill Captain Perrine inside the keep in Tirisfal Glades.",
            dependsOn = { "accept-370-at-war-with-the-scarlet-crusade" },
            complete = QuestObjective(370, 1),
            route = {
                Point(MAP.TIRISFAL, 0.5160, 0.6760, "Captain Perrine",
                    "Travel to Captain Perrine."),
            },
        },
        {
            id = "objective-370-at-war-with-the-scarlet-crusade",
            kind = "objective",
            priority = 1110,
            text = "Kill 3 Scarlet Zealot and 3 Scarlet Missionary near the keep in Tirisfal Glades.",
            dependsOn = { "accept-370-at-war-with-the-scarlet-crusade" },
            complete = QuestState(370, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5100, 0.6700, "Scarlet Zealot",
                    "Travel to Scarlet Zealot."),
            },
        },
        {
            id = "turnin-370-at-war-with-the-scarlet-crusade",
            kind = "turnin",
            priority = 1120,
            text = "Turn in At War With The Scarlet Crusade to Executor Zygand in Brill.",
            dependsOn = { "objective-370-1-captain-perrine", "objective-370-at-war-with-the-scarlet-crusade" },
            complete = QuestState(370, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5188, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "accept-371-at-war-with-the-scarlet-crusade",
            kind = "accept",
            priority = 1130,
            text = "Accept At War With The Scarlet Crusade from Executor Zygand in Brill.",
            complete = QuestState(371, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5188, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "travel-brill-2",
            kind = "travel",
            priority = 1140,
            text = "Travel to Brill.",
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5188, "Brill",
                    "Travel to Brill."),
            },
        },
        {
            id = "turnin-359-forsaken-duties",
            kind = "turnin",
            priority = 1150,
            text = "Turn in Forsaken Duties to Deathguard Linnea in Tirisfal Glades.",
            dependsOn = { "accept-359-forsaken-duties" },
            complete = QuestState(359, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6542, 0.6025, "Deathguard Linnea",
                    "Travel to Deathguard Linnea."),
            },
        },
        {
            id = "accept-360-return-to-the-magistrate",
            kind = "accept",
            priority = 1160,
            text = "Accept Return to the Magistrate from Deathguard Linnea in Tirisfal Glades.",
            complete = QuestState(360, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6553, 0.6019, "Deathguard Linnea",
                    "Travel to Deathguard Linnea."),
            },
        },
        {
            id = "accept-356-rear-guard-patrol",
            kind = "accept",
            priority = 1170,
            text = "Accept Rear Guard Patrol from Deathguard Linnea in Tirisfal Glades.",
            complete = QuestState(356, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6553, 0.6019, "Deathguard Linnea",
                    "Travel to Deathguard Linnea."),
            },
        },
        {
            id = "accept-97558-hides-for-the-forsaken",
            kind = "accept",
            priority = 1171,
            text = "Accept Hides for the Forsaken from Shelene Rhobart.",
            complete = QuestState(97558, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6540, 0.6000, "Shelene Rhobart",
                    "Travel to Shelene Rhobart."),
            },
        },
        {
            id = "accept-99156-rear-guard-patrol",
            kind = "accept",
            priority = 1172,
            text = "Accept Rear Guard Patrol from Deathguard Linnea.",
            complete = QuestState(99156, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6540, 0.6020, "Deathguard Linnea",
                    "Travel to Deathguard Linnea."),
            },
        },
        {
            id = "objective-99156-rear-guard-patrol",
            kind = "objective",
            priority = 1181,
            text = "Kill Riptear and bring Riptear's Heart to Deathguard Linnea.",
            dependsOn = { "accept-99156-rear-guard-patrol" },
            complete = QuestState(99156, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.8280, 0.4420, "Riptear",
                    "Travel to Riptear."),
            },
        },
        {
            id = "objective-97558-hides-for-the-forsaken",
            kind = "objective",
            priority = 1182,
            text = "Collect 8 Duskbat Wing Membranes, 6 Darkhound Hides, and 3 Vile Fin Murloc Skins.",
            dependsOn = { "accept-97558-hides-for-the-forsaken" },
            complete = QuestState(97558, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.6540, 0.6000, "Shelene Rhobart",
                    "Travel to Shelene Rhobart."),
            },
        },
        {
            id = "objective-95314-that-shadowvale-green-elixir",
            kind = "objective",
            priority = 1183,
            text = "Collect 8 Bottles of Whispering Elixir in Shadowvale. A Whispering Horror may drop residue. Use it if it does.",
            dependsOn = { "accept-95314-that-shadowvale-green-elixir" },
            complete = QuestState(95314, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.1100, 0.6600, "Shadowvale",
                    "Travel to Shadowvale."),
            },
        },
        {
            id = "travel-356-balnir-farmstead",
            kind = "travel",
            priority = 1180,
            text = "Travel to Balnir Farmstead.",
            route = {
                Point(MAP.TIRISFAL, 0.7629, 0.6039, "Balnir Farmstead",
                    "Travel to Balnir Farmstead."),
            },
        },
        {
            id = "objective-356-rear-guard-patrol",
            kind = "objective",
            priority = 1190,
            text = "Kill 8 Bleeding Horror and 8 Wandering Spirit at the farm further east down the road in Balnir Farmstead.",
            dependsOn = { "accept-356-rear-guard-patrol" },
            complete = QuestState(356, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.7500, 0.6000, "Bleeding Horror",
                    "Travel to Bleeding Horror."),
            },
        },
        {
            id = "travel-371-crusader-outpost",
            kind = "travel",
            priority = 1200,
            text = "Travel to Crusader Outpost.",
            route = {
                Point(MAP.TIRISFAL, 0.7932, 0.5590, "Crusader Outpost",
                    "Travel to Crusader Outpost."),
            },
        },
        {
            id = "accept-99144-seeking-refuge",
            kind = "accept",
            priority = 1201,
            text = "Accept Seeking Refuge from Bareth Dawnstone at Crusader's Outpost.",
            complete = QuestState(99144, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.7932, 0.5590, "Bareth Dawnstone",
                    "Travel to Bareth Dawnstone."),
            },
        },
        {
            id = "objective-99144-seeking-refuge",
            kind = "objective",
            priority = 1202,
            text = "Escort Bareth Dawnstone out of Crusader's Outpost.",
            dependsOn = { "accept-99144-seeking-refuge" },
            complete = QuestState(99144, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.7932, 0.5590, "Bareth Dawnstone",
                    "Travel to Bareth Dawnstone."),
            },
        },
        {
            id = "objective-371-1-captain-vachon",
            kind = "objective",
            priority = 1210,
            text = "Kill Captain Vachon in Crusader Outpost.",
            dependsOn = { "accept-371-at-war-with-the-scarlet-crusade" },
            complete = QuestObjective(371, 1),
            route = {
                Point(MAP.TIRISFAL, 0.7932, 0.5590, "Captain Vachon",
                    "Travel to Captain Vachon."),
            },
        },
        {
            id = "objective-371-2-scarlet-friar",
            kind = "objective",
            priority = 1220,
            text = "Kill 5 Scarlet Friar in Crusader Outpost.",
            dependsOn = { "accept-371-at-war-with-the-scarlet-crusade" },
            complete = QuestObjective(371, 2),
            route = {
                Point(MAP.TIRISFAL, 0.7996, 0.5597, "Scarlet Friar",
                    "Travel to Scarlet Friar."),
            },
        },
        {
            id = "travel-369-venomweb-vale",
            kind = "travel",
            priority = 1230,
            text = "Travel to Venomweb Vale.",
            route = {
                Point(MAP.TIRISFAL, 0.8508, 0.5255, "Venomweb Vale",
                    "Travel to Venomweb Vale."),
            },
        },
        {
            id = "objective-369-a-new-plague",
            kind = "objective",
            priority = 1240,
            text = "Kill Vicious Night Web Spider and collect 4 Vicious Night Web Spider Venom in Venomweb Vale.",
            dependsOn = { "accept-369-a-new-plague" },
            complete = QuestState(369, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.8600, 0.5150, "Vicious Night Web Spider",
                    "Travel to Vicious Night Web Spider."),
            },
        },
        {
            id = "travel-372-brill",
            kind = "travel",
            priority = 1250,
            text = "Travel to Brill.",
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5188, "Brill",
                    "Travel to Brill."),
            },
        },
        {
            id = "turnin-371-at-war-with-the-scarlet-crusade",
            kind = "turnin",
            priority = 1260,
            text = "Turn in At War With The Scarlet Crusade to Executor Zygand in Brill.",
            dependsOn = { "objective-371-1-captain-vachon", "objective-371-2-scarlet-friar" },
            complete = QuestState(371, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5188, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "accept-372-at-war-with-the-scarlet-crusade",
            kind = "accept",
            priority = 1270,
            text = "Accept At War With The Scarlet Crusade from Executor Zygand in Brill.",
            complete = QuestState(372, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5188, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "turnin-369-a-new-plague",
            kind = "turnin",
            priority = 1280,
            text = "Turn in A New Plague to Apothecary Johaan in Brill.",
            dependsOn = { "objective-369-coarse-thread", "objective-369-a-new-plague" },
            complete = QuestState(369, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.5946, 0.5234, "Apothecary Johaan",
                    "Travel to Apothecary Johaan."),
            },
        },
        {
            id = "accept-492-a-new-plague",
            kind = "accept",
            priority = 1290,
            text = "Accept A New Plague from Apothecary Johaan in Brill.",
            complete = QuestState(492, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5946, 0.5234, "Apothecary Johaan",
                    "Travel to Apothecary Johaan."),
            },
        },
        {
            id = "accept-445-delivery-to-silverpine-forest",
            kind = "accept",
            priority = 1300,
            text = "Accept Delivery to Silverpine Forest from Apothecary Johaan in Brill.",
            complete = QuestState(445, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5949, 0.5232, "Apothecary Johaan",
                    "Travel to Apothecary Johaan."),
            },
        },
        {
            id = "accept-1818-speak-with-dillinger",
            kind = "accept",
            priority = 1310,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Accept Speak with Dillinger from Austil de Mon in Gallows' End Tavern.",
            complete = QuestState(1818, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6185, 0.5254, "Austil de Mon",
                    "Travel to Austil de Mon."),
            },
        },
        {
            id = "turnin-1818-speak-with-dillinger",
            kind = "turnin",
            priority = 1320,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in Speak with Dillinger to Deathguard Dillinger in Brill.",
            dependsOn = { "accept-1818-speak-with-dillinger" },
            complete = QuestState(1818, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.5819, 0.5148, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger."),
            },
        },
        {
            id = "accept-1819-ulag-the-cleaver",
            kind = "accept",
            priority = 1330,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Accept Ulag the Cleaver from Deathguard Dillinger in Brill.",
            complete = QuestState(1819, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5819, 0.5148, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger."),
            },
        },
        {
            id = "objective-1819-ulag-the-cleaver",
            kind = "objective",
            priority = 1340,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Click on the Mausoleum Trigger on the ground then click on the crypt door to find and kill Ulag the Cleaver in Brill.",
            dependsOn = { "accept-1819-ulag-the-cleaver" },
            complete = QuestState(1819, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5914, 0.4852, "Ulag the Cleaver",
                    "Travel to Ulag the Cleaver."),
            },
        },
        {
            id = "turnin-1819-ulag-the-cleaver",
            kind = "turnin",
            priority = 1350,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in Ulag the Cleaver to Deathguard Dillinger in Brill.",
            dependsOn = { "objective-1819-ulag-the-cleaver" },
            complete = QuestState(1819, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.5820, 0.5145, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger."),
            },
        },
        {
            id = "accept-1820-speak-with-coleman",
            kind = "accept",
            priority = 1360,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Accept Speak with Coleman from Deathguard Dillinger in Brill.",
            complete = QuestState(1820, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.5820, 0.5145, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger."),
            },
        },
        {
            id = "turnin-1820-speak-with-coleman",
            kind = "turnin",
            priority = 1370,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in Speak with Coleman to Coleman Farthing in Gallows' End Tavern.",
            dependsOn = { "accept-1820-speak-with-coleman" },
            complete = QuestState(1820, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6171, 0.5229, "Coleman Farthing",
                    "Travel to Coleman Farthing."),
            },
        },
        {
            id = "accept-1821-agamand-heirlooms",
            kind = "accept",
            priority = 1380,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Accept Agamand Heirlooms from Coleman Farthing in Gallows' End Tavern.",
            complete = QuestState(1821, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6171, 0.5229, "Coleman Farthing",
                    "Travel to Coleman Farthing."),
            },
        },
        {
            id = "turnin-492-a-new-plague",
            kind = "turnin",
            priority = 1390,
            text = "Turn in A New Plague to Captured Mountaineer in Gallows' End Tavern.",
            dependsOn = { "accept-492-a-new-plague" },
            complete = QuestState(492, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6189, 0.5137, "Captured Mountaineer",
                    "Travel to Captured Mountaineer."),
            },
        },
        {
            id = "turnin-360-return-to-the-magistrate",
            kind = "turnin",
            priority = 1400,
            text = "Turn in Return to the Magistrate to Magistrate Sevren in Brill Town Hall.",
            dependsOn = { "accept-360-return-to-the-magistrate" },
            complete = QuestState(360, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6127, 0.5077, "Magistrate Sevren",
                    "Travel to Magistrate Sevren."),
            },
        },
        {
            id = "turnin-356-rear-guard-patrol",
            kind = "turnin",
            priority = 1410,
            text = "Turn in Rear Guard Patrol to Deathguard Linnea in Tirisfal Glades.",
            dependsOn = { "objective-356-rear-guard-patrol" },
            complete = QuestState(356, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6553, 0.6019, "Deathguard Linnea",
                    "Travel to Deathguard Linnea."),
            },
        },
        {
            id = "turnin-99156-rear-guard-patrol",
            kind = "turnin",
            priority = 1411,
            text = "Turn in Rear Guard Patrol to Deathguard Linnea.",
            dependsOn = { "objective-99156-rear-guard-patrol" },
            complete = QuestState(99156, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6540, 0.6020, "Deathguard Linnea",
                    "Travel to Deathguard Linnea."),
            },
        },
        {
            id = "turnin-97558-hides-for-the-forsaken",
            kind = "turnin",
            priority = 1412,
            text = "Turn in Hides for the Forsaken to Shelene Rhobart.",
            dependsOn = { "objective-97558-hides-for-the-forsaken" },
            complete = QuestState(97558, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6540, 0.6000, "Shelene Rhobart",
                    "Travel to Shelene Rhobart."),
            },
        },
        {
            id = "turnin-99144-seeking-refuge",
            kind = "turnin",
            priority = 1413,
            text = "Turn in Seeking Refuge to Shari Stilwell in Brill.",
            dependsOn = { "objective-99144-seeking-refuge" },
            complete = QuestState(99144, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6020, 0.5260, "Shari Stilwell",
                    "Travel to Shari Stilwell."),
            },
        },
        {
            id = "turnin-95314-that-shadowvale-green-elixir",
            kind = "turnin",
            priority = 1414,
            text = "Turn in That Shadowvale Green Elixir to Carolai Anise in Brill.",
            dependsOn = { "objective-95314-that-shadowvale-green-elixir" },
            complete = QuestState(95314, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.5940, 0.5220, "Carolai Anise",
                    "Travel to Carolai Anise."),
            },
        },
        {
            id = "travel-1821-scarlet-watch-post",
            kind = "travel",
            priority = 1420,
            text = "Travel to Scarlet Watch Post.",
            route = {
                Point(MAP.TIRISFAL, 0.7690, 0.4942, "Continue toward Scarlet Watch Post",
                    "Continue toward Scarlet Watch Post."),
                Point(MAP.TIRISFAL, 0.8126, 0.3948, "Continue toward Scarlet Watch Post",
                    "Continue toward Scarlet Watch Post."),
                Point(MAP.TIRISFAL, 0.7822, 0.3532, "Scarlet Watch Post",
                    "Travel to Scarlet Watch Post."),
            },
        },
        {
            id = "objective-372-1-captain-melrache",
            kind = "objective",
            priority = 1430,
            text = "Kill Captain Melrache in Scarlet Watch Post.",
            dependsOn = { "accept-372-at-war-with-the-scarlet-crusade" },
            complete = QuestObjective(372, 1),
            route = {
                Point(MAP.TIRISFAL, 0.7948, 0.2595, "Captain Melrache",
                    "Travel to Captain Melrache."),
            },
        },
        {
            id = "objective-372-2-scarlet-bodyguard",
            kind = "objective",
            priority = 1440,
            text = "Kill 2 Scarlet Bodyguard in Scarlet Watch Post.",
            dependsOn = { "accept-372-at-war-with-the-scarlet-crusade" },
            complete = QuestObjective(372, 2),
            route = {
                Point(MAP.TIRISFAL, 0.7948, 0.2595, "Scarlet Bodyguard",
                    "Travel to Scarlet Bodyguard."),
            },
        },
        {
            id = "objective-374-proof-of-demise",
            kind = "objective",
            priority = 1450,
            text = "Collect 10 Scarlet Insignia Ring dropped by the Scarlet Crusade enemies in Scarlet Watch Post.",
            dependsOn = { "accept-374-proof-of-demise" },
            complete = QuestState(374, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5100, 0.6700, "Scarlet Bodyguard",
                    "Travel to Scarlet Bodyguard."),
            },
        },
        {
            id = "travel-brill-3",
            kind = "travel",
            priority = 1460,
            text = "Travel to Brill.",
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5188, "Brill",
                    "Travel to Brill."),
            },
        },
        {
            id = "turnin-372-at-war-with-the-scarlet-crusade",
            kind = "turnin",
            priority = 1470,
            text = "Turn in At War With The Scarlet Crusade to Executor Zygand in Brill.",
            dependsOn = { "objective-372-1-captain-melrache", "objective-372-2-scarlet-bodyguard" },
            complete = QuestState(372, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6060, 0.5188, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "accept-96895-the-argent-emissary",
            kind = "accept",
            priority = 1471,
            text = "Accept The Argent Emissary from Deathguard Terrence in Brill.",
            complete = QuestState(96895, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6140, 0.5340, "Deathguard Terrence",
                    "Travel to Deathguard Terrence."),
            },
        },
        {
            id = "turnin-96895-the-argent-emissary",
            kind = "turnin",
            priority = 1472,
            text = "Turn in The Argent Emissary to Hadric Harlson, on the road toward the Undercity.",
            dependsOn = { "accept-96895-the-argent-emissary" },
            complete = QuestState(96895, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6580, 0.6100, "Hadric Harlson",
                    "Travel to Hadric Harlson."),
            },
        },
        {
            id = "accept-96896-a-righteous-cause",
            kind = "accept",
            priority = 1473,
            text = "Accept A Righteous Cause from Leonid Barthalomew the Revered.",
            dependsOn = { "turnin-96899-bandarion-keep" },
            complete = QuestState(96896, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.2200, 0.4480, "Leonid Barthalomew the Revered",
                    "Travel to Leonid Barthalomew the Revered."),
            },
        },
        {
            id = "objective-96896-a-righteous-cause",
            kind = "objective",
            priority = 1474,
            text = "Observe the conversation between Danitha Morr and Leonid Barthalomew.",
            dependsOn = { "accept-96896-a-righteous-cause" },
            complete = QuestState(96896, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.2200, 0.4480, "Leonid Barthalomew the Revered",
                    "Travel to Leonid Barthalomew the Revered."),
            },
        },
        {
            id = "turnin-96896-a-righteous-cause",
            kind = "turnin",
            priority = 1475,
            text = "Turn in A Righteous Cause to Leonid Barthalomew the Revered.",
            dependsOn = { "objective-96896-a-righteous-cause" },
            complete = QuestState(96896, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.2200, 0.4480, "Leonid Barthalomew the Revered",
                    "Travel to Leonid Barthalomew the Revered."),
            },
        },
        {
            id = "accept-96897-the-cult-of-the-damned",
            kind = "accept",
            priority = 1476,
            text = "Accept The Cult of the Damned from Hadric Harlson.",
            dependsOn = { "turnin-96895-the-argent-emissary" },
            complete = QuestState(96897, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6580, 0.6100, "Hadric Harlson",
                    "Travel to Hadric Harlson."),
            },
        },
        {
            id = "accept-96898-remnants-of-war",
            kind = "accept",
            priority = 1477,
            text = "Accept Remnants of War from Hadric Harlson.",
            dependsOn = { "turnin-96895-the-argent-emissary" },
            complete = QuestState(96898, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6580, 0.6100, "Hadric Harlson",
                    "Travel to Hadric Harlson."),
            },
        },
        {
            id = "objective-96897-the-cult-of-the-damned",
            kind = "objective",
            priority = 1478,
            text = "Kill 8 Dark Neophytes and 8 Dark Enforcers.",
            dependsOn = { "accept-96897-the-cult-of-the-damned" },
            complete = QuestState(96897, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.6660, 0.6540, "Dark Neophyte",
                    "Travel to Dark Neophyte."),
            },
        },
        {
            id = "objective-96898-remnants-of-war",
            kind = "objective",
            priority = 1479,
            text = "Gather 12 Necrotic Crystal Fragments.",
            dependsOn = { "accept-96898-remnants-of-war" },
            complete = QuestState(96898, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.6660, 0.6540, "Dark Neophyte",
                    "Travel to Dark Neophyte."),
            },
        },
        {
            id = "turnin-96897-the-cult-of-the-damned",
            kind = "turnin",
            priority = 1486,
            text = "Turn in The Cult of the Damned to Hadric Harlson.",
            dependsOn = { "objective-96897-the-cult-of-the-damned" },
            complete = QuestState(96897, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6580, 0.6100, "Hadric Harlson",
                    "Travel to Hadric Harlson."),
            },
        },
        {
            id = "turnin-96898-remnants-of-war",
            kind = "turnin",
            priority = 1487,
            text = "Turn in Remnants of War to Hadric Harlson.",
            dependsOn = { "objective-96898-remnants-of-war" },
            complete = QuestState(96898, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6580, 0.6100, "Hadric Harlson",
                    "Travel to Hadric Harlson."),
            },
        },
        {
            id = "accept-96899-bandarion-keep",
            kind = "accept",
            priority = 1475.5,
            text = "Accept Bandarion Keep from Hadric Harlson.",
            dependsOn = { "turnin-96895-the-argent-emissary" },
            complete = QuestState(96899, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6580, 0.6100, "Hadric Harlson",
                    "Travel to Hadric Harlson."),
            },
        },
        {
            id = "turnin-96899-bandarion-keep",
            kind = "turnin",
            priority = 1489,
            text = "Turn in Bandarion Keep to Leonid Barthalomew the Revered.",
            dependsOn = { "accept-96899-bandarion-keep" },
            complete = QuestState(96899, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.2200, 0.4480, "Leonid Barthalomew the Revered",
                    "Travel to Leonid Barthalomew the Revered."),
            },
        },
        {
            id = "turnin-98545-leonids-letter",
            kind = "turnin",
            priority = 1491,
            text = "Accept Leonid's Letter from Leonid Barthalomew, then deliver it to Glix Xizzix in the Undercity.",
            dependsOn = { "turnin-96896-a-righteous-cause" },
            complete = QuestState(98545, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.6980, 0.4700, "Glix Xizzix",
                    "Travel to Glix Xizzix."),
            },
        },
        {
            id = "turnin-95328-whispering-horror-residue",
            kind = "turnin",
            priority = 1492,
            conditions = {
                all = {
                    { quest = { id = 95328, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Whispering Horror Residue to Father Lankester in the War Quarter if you found it.",
            complete = QuestState(95328, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.4960, 0.1560, "Father Lankester",
                    "Travel to Father Lankester."),
            },
        },
        {
            id = "turnin-374-proof-of-demise",
            kind = "turnin",
            priority = 1470.5,
            text = "Turn in Proof of Demise to Deathguard Burgess in Brill.",
            dependsOn = { "objective-374-proof-of-demise" },
            complete = QuestState(374, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6089, 0.5212, "Deathguard Burgess",
                    "Travel to Deathguard Burgess."),
            },
        },
        {
            id = "accept-1885-mennet-carkad",
            kind = "accept",
            priority = 1470.6,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept Mennet Carkad from Marion Call in Gallows' End Tavern.",
            complete = QuestState(1885, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6174, 0.5200, "Marion Call",
                    "Travel to Marion Call."),
            },
        },
        {
            id = "accept-1881-speak-with-anastasia",
            kind = "accept",
            priority = 1500,
            conditions = {
                all = {
                    { class = 8 },
                    { ["not"] = { quest = { id = 1882, state = "activeOrCompleted" } } },
                },
            },
            text = "Accept Speak with Anastasia from Cain Firesong in Gallows' End Tavern.",
            complete = QuestState(1881, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6192, 0.5231, "Cain Firesong",
                    "Travel to Cain Firesong."),
            },
        },
        {
            id = "accept-1478-halgar-s-summons",
            kind = "accept",
            priority = 1510,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Halgar's Summons from Ageron Kargal in Gallows' End Tavern.",
            complete = QuestState(1478, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6162, 0.5265, "Ageron Kargal",
                    "Travel to Ageron Kargal."),
            },
        },
        {
            id = "travel-1473-magic-quarter",
            kind = "travel",
            priority = 1520,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Travel to Magic Quarter in Undercity.",
            route = {
                Point(MAP.UNDERCITY, 0.8502, 0.2589, "Magic Quarter",
                    "Travel to Magic Quarter."),
            },
        },
        {
            id = "turnin-1478-halgar-s-summons",
            kind = "turnin",
            priority = 1530,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Halgar's Summons to Carendin Halgar in Magic Quarter.",
            dependsOn = { "accept-1478-halgar-s-summons" },
            complete = QuestState(1478, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8502, 0.2589, "Carendin Halgar",
                    "Travel to Carendin Halgar."),
            },
        },
        {
            id = "accept-1473-creature-of-the-void",
            kind = "accept",
            priority = 1540,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept Creature of the Void from Carendin Halgar in Magic Quarter.",
            complete = QuestState(1473, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8502, 0.2589, "Carendin Halgar",
                    "Travel to Carendin Halgar."),
            },
        },
        {
            id = "travel-1473-sewers",
            kind = "travel",
            priority = 1550,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Exit from the Sewers.",
            route = {
                Point(MAP.UNDERCITY, 0.4533, 0.4364, "Sewers",
                    "Travel to Sewers."),
            },
        },
        {
            id = "travel-1473-tirisfal-glades",
            kind = "travel",
            priority = 1560,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Travel to Tirisfal Glades. Exit from the Sewers.",
            route = {
                Point(MAP.UNDERCITY, 0.3976, 0.2405, "Sewers",
                    "Travel to Sewers."),
            },
        },
        {
            id = "objective-1473-creature-of-the-void",
            kind = "objective",
            priority = 1570,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Collect Egalin's Grimoire from the lockbox inside the tower.",
            dependsOn = { "accept-1473-creature-of-the-void" },
            complete = QuestState(1473, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5110, 0.6757, "Creature of the Void",
                    "Travel to Creature of the Void."),
            },
        },
        {
            id = "travel-1471-sewers",
            kind = "travel",
            priority = 1580,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Enter through the Sewers.",
            route = {
                Point(MAP.UNDERCITY, 0.1471, 0.3426, "Sewers",
                    "Travel to Sewers."),
            },
        },
        {
            id = "travel-1471-magic-quarter",
            kind = "travel",
            priority = 1590,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Travel to Magic Quarter.",
            route = {
                Point(MAP.UNDERCITY, 0.3467, 0.3321, "Continue toward Magic Quarter",
                    "Continue toward Magic Quarter."),
                Point(MAP.UNDERCITY, 0.8509, 0.2606, "Magic Quarter",
                    "Travel to Magic Quarter."),
            },
        },
        {
            id = "turnin-1473-creature-of-the-void",
            kind = "turnin",
            priority = 1600,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in Creature of the Void to Carendin Halgar in Magic Quarter.",
            dependsOn = { "objective-1473-creature-of-the-void" },
            complete = QuestState(1473, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8509, 0.2606, "Carendin Halgar",
                    "Travel to Carendin Halgar."),
            },
        },
        {
            id = "accept-1471-the-binding",
            kind = "accept",
            priority = 1610,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Accept The Binding from Carendin Halgar in Magic Quarter.",
            complete = QuestState(1471, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8627, 0.2668, "Carendin Halgar",
                    "Travel to Carendin Halgar."),
            },
        },
        {
            id = "objective-1471-the-binding",
            kind = "objective",
            priority = 1620,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Using the Runes of Summoning on the purple summoning circle to summon and subdue a Summoned Voidwalker in Magic Quarter.",
            dependsOn = { "accept-1471-the-binding" },
            complete = QuestState(1471, "complete"),
            route = {
                Point(MAP.UNDERCITY, 0.8664, 0.2697, "Summoned Voidwalker",
                    "Travel to Summoned Voidwalker."),
            },
        },
        {
            id = "turnin-1471-the-binding",
            kind = "turnin",
            priority = 1630,
            conditions = {
                all = {
                    { class = 9 },
                },
            },
            text = "Turn in The Binding to Carendin Halgar in Magic Quarter.",
            dependsOn = { "objective-1471-the-binding" },
            complete = QuestState(1471, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8504, 0.2593, "Carendin Halgar",
                    "Travel to Carendin Halgar."),
            },
        },
        {
            id = "travel-1882-magic-quarter",
            kind = "travel",
            priority = 1640,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Travel to Magic Quarter.",
            route = {
                Point(MAP.UNDERCITY, 0.8509, 0.1014, "Magic Quarter",
                    "Travel to Magic Quarter."),
            },
        },
        {
            id = "turnin-1881-speak-with-anastasia",
            kind = "turnin",
            priority = 1650,
            conditions = {
                all = {
                    { class = 8 },
                    { ["not"] = { quest = { id = 1882, state = "activeOrCompleted" } } },
                },
            },
            text = "Turn in Speak with Anastasia to Anastasia Hartwell in Magic Quarter.",
            dependsOn = { "accept-1881-speak-with-anastasia" },
            complete = QuestState(1881, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8509, 0.1014, "Anastasia Hartwell",
                    "Travel to Anastasia Hartwell."),
            },
        },
        {
            id = "accept-1882-the-balnir-farmstead",
            kind = "accept",
            priority = 1660,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Accept The Balnir Farmstead from Anastasia Hartwell in Magic Quarter.",
            complete = QuestState(1882, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8509, 0.1014, "Anastasia Hartwell",
                    "Travel to Anastasia Hartwell."),
            },
        },
        {
            id = "travel-1882-balnir-farmstead",
            kind = "travel",
            priority = 1670,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Travel to Balnir Farmstead.",
            route = {
                Point(MAP.TIRISFAL, 0.7752, 0.6171, "Balnir Farmstead",
                    "Travel to Balnir Farmstead."),
            },
        },
        {
            id = "objective-1882-the-balnir-farmstead",
            kind = "objective",
            priority = 1680,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Collect Balnir Snapdragons from the bush in Balnir Farmstead.",
            dependsOn = { "accept-1882-the-balnir-farmstead" },
            complete = QuestState(1882, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.7752, 0.6171, "Balnir Farmstead",
                    "Travel to Balnir Farmstead."),
            },
        },
        {
            id = "turnin-1882-the-balnir-farmstead",
            kind = "turnin",
            priority = 1690,
            conditions = {
                all = {
                    { class = 8 },
                },
            },
            text = "Turn in The Balnir Farmstead to Anastasia Hartwell in Magic Quarter.",
            dependsOn = { "objective-1882-the-balnir-farmstead" },
            complete = QuestState(1882, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8514, 0.1016, "Anastasia Hartwell",
                    "Travel to Anastasia Hartwell."),
            },
        },
        {
            id = "travel-1886-rogues-quarter",
            kind = "travel",
            priority = 1700,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Travel to Rogues' Quarter.",
            route = {
                Point(MAP.UNDERCITY, 0.8353, 0.6906, "Rogues' Quarter",
                    "Travel to Rogues' Quarter."),
            },
        },
        {
            id = "turnin-1885-mennet-carkad",
            kind = "turnin",
            priority = 1710,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in Mennet Carkad to Mennet Carkad in Rogues' Quarter.",
            dependsOn = { "accept-1885-mennet-carkad" },
            complete = QuestState(1885, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8353, 0.6906, "Mennet Carkad",
                    "Travel to Mennet Carkad."),
            },
        },
        {
            id = "accept-1886-the-deathstalkers",
            kind = "accept",
            priority = 1720,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept The Deathstalkers from Mennet Carkad in Rogues' Quarter.",
            complete = QuestState(1886, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8353, 0.6906, "Mennet Carkad",
                    "Travel to Mennet Carkad."),
            },
        },
        {
            id = "travel-1886-sewers",
            kind = "travel",
            priority = 1730,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Exit from the Sewers.",
            route = {
                Point(MAP.UNDERCITY, 0.4533, 0.4364, "Sewers",
                    "Travel to Sewers."),
            },
        },
        {
            id = "travel-1886-tirisfal-glades",
            kind = "travel",
            priority = 1740,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Travel to Tirisfal Glades. Exit from the Sewers.",
            route = {
                Point(MAP.UNDERCITY, 0.3976, 0.2405, "Sewers",
                    "Travel to Sewers."),
            },
        },
        {
            id = "objective-1886-the-deathstalkers",
            kind = "objective",
            priority = 1750,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Find and speak to Astor Hadren, you can find him patroling the road to Silverpine Forest He will become hostile after you speak to him and you will need to kill him to collect Astor's Letter of Introduction.",
            dependsOn = { "accept-1886-the-deathstalkers" },
            complete = QuestState(1886, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5899, 0.6396, "Continue toward The Deathstalkers",
                    "Continue toward The Deathstalkers."),
                Point(MAP.TIRISFAL, 0.5481, 0.7288, "Continue toward The Deathstalkers",
                    "Continue toward The Deathstalkers."),
                Point(MAP.TIRISFAL, 0.5475, 0.7335, "Astor Hadren",
                    "Travel to Astor Hadren."),
            },
        },
        {
            id = "travel-1898-sewers",
            kind = "travel",
            priority = 1760,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Enter through the Sewers.",
            route = {
                Point(MAP.UNDERCITY, 0.1471, 0.3426, "Sewers",
                    "Travel to Sewers."),
            },
        },
        {
            id = "travel-1898-rogues-quarter",
            kind = "travel",
            priority = 1770,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Travel to Rogues' Quarter.",
            route = {
                Point(MAP.UNDERCITY, 0.3467, 0.3321, "Continue toward Rogues' Quarter",
                    "Continue toward Rogues' Quarter."),
                Point(MAP.UNDERCITY, 0.8351, 0.6906, "Rogues' Quarter",
                    "Travel to Rogues' Quarter."),
            },
        },
        {
            id = "turnin-1886-the-deathstalkers",
            kind = "turnin",
            priority = 1780,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in The Deathstalkers to Mennet Carkad in Rogues' Quarter.",
            dependsOn = { "objective-1886-the-deathstalkers" },
            complete = QuestState(1886, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8351, 0.6906, "Mennet Carkad",
                    "Travel to Mennet Carkad."),
            },
        },
        {
            id = "accept-1898-the-deathstalkers",
            kind = "accept",
            priority = 1790,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept The Deathstalkers from Mennet Carkad in Rogues' Quarter.",
            complete = QuestState(1898, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8351, 0.6906, "Mennet Carkad",
                    "Travel to Mennet Carkad."),
            },
        },
        {
            id = "turnin-1898-the-deathstalkers",
            kind = "turnin",
            priority = 1800,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in The Deathstalkers to Andron Gant in The Apothecarium.",
            dependsOn = { "accept-1898-the-deathstalkers" },
            complete = QuestState(1898, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.5483, 0.7631, "Andron Gant",
                    "Travel to Andron Gant."),
            },
        },
        {
            id = "accept-1899-the-deathstalkers",
            kind = "accept",
            priority = 1810,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept The Deathstalkers from Andron Gant in The Apothecarium.",
            complete = QuestState(1899, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.5587, 0.7524, "Andron Gant",
                    "Travel to Andron Gant."),
            },
        },
        {
            id = "objective-1899-the-deathstalkers",
            kind = "objective",
            priority = 1820,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Collect Andron's Ledger from the Bookshelf next to the quest giver in The Apothecarium.",
            dependsOn = { "accept-1899-the-deathstalkers" },
            complete = QuestState(1899, "complete"),
            route = {
                Point(MAP.UNDERCITY, 0.5547, 0.7673, "The Apothecarium",
                    "Travel to The Apothecarium."),
            },
        },
        {
            id = "turnin-1899-the-deathstalkers",
            kind = "turnin",
            priority = 1830,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in The Deathstalkers to Mennet Carkad in Rogues' Quarter.",
            dependsOn = { "objective-1899-the-deathstalkers" },
            complete = QuestState(1899, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8356, 0.6907, "Mennet Carkad",
                    "Travel to Mennet Carkad."),
            },
        },
        {
            id = "accept-1978-the-deathstalkers",
            kind = "accept",
            priority = 1840,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Accept The Deathstalkers from Mennet Carkad in Rogues' Quarter.",
            complete = QuestState(1978, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8356, 0.6907, "Mennet Carkad",
                    "Travel to Mennet Carkad."),
            },
        },
        {
            id = "travel-royal-quarter",
            kind = "travel",
            priority = 1850,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Travel to Royal Quarter.",
            route = {
                Point(MAP.UNDERCITY, 0.5224, 0.6411, "Continue toward Royal Quarter",
                    "Continue toward Royal Quarter."),
                Point(MAP.UNDERCITY, 0.5014, 0.6710, "Royal Quarter",
                    "Travel to Royal Quarter."),
            },
        },
        {
            id = "turnin-1978-the-deathstalkers",
            kind = "turnin",
            priority = 1860,
            conditions = {
                all = {
                    { class = 4 },
                },
            },
            text = "Turn in The Deathstalkers to Varimathras in Royal Quarter.",
            dependsOn = { "accept-1978-the-deathstalkers" },
            complete = QuestState(1978, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.5624, 0.9216, "Varimathras",
                    "Travel to Varimathras."),
            },
        },
        {
            id = "travel-1821-agamand-family-crypt",
            kind = "travel",
            priority = 1870,
            text = "Travel to Agamand Family Crypt.",
            route = {
                Point(MAP.TIRISFAL, 0.4764, 0.4877, "Continue toward Agamand Family Crypt",
                    "Continue toward Agamand Family Crypt."),
                Point(MAP.TIRISFAL, 0.5033, 0.3321, "Continue toward Agamand Family Crypt",
                    "Continue toward Agamand Family Crypt."),
                Point(MAP.TIRISFAL, 0.5225, 0.2688, "Agamand Family Crypt",
                    "Travel to Agamand Family Crypt."),
            },
        },
        {
            id = "objective-1821-3-agamand-family-mace",
            kind = "objective",
            priority = 1880,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Collect Agamand Family Mace from the weapon rack in Agamand Family Crypt.",
            dependsOn = { "accept-1821-agamand-heirlooms" },
            complete = QuestObjective(1821, 3),
            route = {
                Point(MAP.TIRISFAL, 0.5190, 0.2709, "Agamand Family Crypt",
                    "Travel to Agamand Family Crypt."),
            },
        },
        {
            id = "objective-1821-2-agamand-family-dagger",
            kind = "objective",
            priority = 1890,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Collect Agamand Family Dagger from the weapon rack in Agamand Family Crypt.",
            dependsOn = { "accept-1821-agamand-heirlooms" },
            complete = QuestObjective(1821, 2),
            route = {
                Point(MAP.TIRISFAL, 0.5190, 0.2709, "Agamand Family Crypt",
                    "Travel to Agamand Family Crypt."),
            },
        },
        {
            id = "objective-1821-1-agamand-family-axe",
            kind = "objective",
            priority = 1900,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Collect Agamand Family Axe from the weapon rack in Agamand Family Crypt.",
            dependsOn = { "accept-1821-agamand-heirlooms" },
            complete = QuestObjective(1821, 1),
            route = {
                Point(MAP.TIRISFAL, 0.5264, 0.2591, "Agamand Family Crypt",
                    "Travel to Agamand Family Crypt."),
            },
        },
        {
            id = "objective-1821-4-agamand-family-sword",
            kind = "objective",
            priority = 1910,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Collect Agamand Family Sword from the weapon rack in Agamand Family Crypt.",
            dependsOn = { "accept-1821-agamand-heirlooms" },
            complete = QuestObjective(1821, 4),
            route = {
                Point(MAP.TIRISFAL, 0.5264, 0.2591, "Agamand Family Crypt",
                    "Travel to Agamand Family Crypt."),
            },
        },
        {
            id = "objective-408-3-captain-dargol",
            kind = "objective",
            priority = 1920,
            text = "Kill Captain Dargol and collect Dargol's Skull in Agamand Family Crypt.",
            dependsOn = { "accept-408-the-family-crypt" },
            complete = QuestObjective(408, 3),
            route = {
                Point(MAP.TIRISFAL, 0.5234, 0.2631, "Captain Dargol",
                    "Travel to Captain Dargol."),
            },
        },
        {
            id = "objective-408-the-family-crypt",
            kind = "objective",
            priority = 1930,
            text = "Kill 8 Wailing Ancestor and 8 Rotting Ancestor Agamand Mills.",
            dependsOn = { "accept-408-the-family-crypt" },
            complete = QuestState(408, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.5257, 0.2707, "Wailing Ancestor",
                    "Travel to Wailing Ancestor."),
            },
        },
        {
            id = "travel-brill-town-hall",
            kind = "travel",
            priority = 1940,
            text = "Travel to Brill Town Hall.",
            route = {
                Point(MAP.TIRISFAL, 0.6127, 0.5077, "Brill Town Hall",
                    "Travel to Brill Town Hall."),
            },
        },
        {
            id = "turnin-408-the-family-crypt",
            kind = "turnin",
            priority = 1950,
            text = "Turn in The Family Crypt to Magistrate Sevren in Brill Town Hall.",
            dependsOn = { "objective-408-3-captain-dargol", "objective-408-the-family-crypt" },
            complete = QuestState(408, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6127, 0.5077, "Magistrate Sevren",
                    "Travel to Magistrate Sevren."),
            },
        },
        {
            id = "turnin-1821-agamand-heirlooms",
            kind = "turnin",
            priority = 1960,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in Agamand Heirlooms to Coleman Farthing in Gallows' End Tavern.",
            dependsOn = { "objective-1821-3-agamand-family-mace", "objective-1821-2-agamand-family-dagger", "objective-1821-1-agamand-family-axe", "objective-1821-4-agamand-family-sword" },
            complete = QuestState(1821, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6173, 0.5231, "Coleman Farthing",
                    "Travel to Coleman Farthing."),
            },
        },
        {
            id = "turnin-1822-heirloom-weapon",
            kind = "turnin",
            priority = 1970,
            conditions = {
                all = {
                    { class = 1 },
                },
            },
            text = "Turn in Heirloom Weapon to Coleman Farthing in Gallows' End Tavern. This is an elite. Bring a group.",
            complete = QuestState(1822, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6173, 0.5231, "Coleman Farthing",
                    "Travel to Coleman Farthing."),
            },
        },
        {
            id = "travel-357-undercity",
            kind = "travel",
            priority = 1980,
            text = "Run to Undercity.",
            route = {
                Point(MAP.TIRISFAL, 0.6160, 0.6870, "Undercity",
                    "Travel to Undercity."),
            },
        },
        {
            id = "turnin-405-the-prodigal-lich",
            kind = "turnin",
            priority = 1990,
            text = "Turn in The Prodigal Lich.",
            complete = QuestState(405, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8430, 0.1750, "The Prodigal Lich",
                    "Travel to The Prodigal Lich."),
            },
        },
        {
            id = "accept-357-the-lich-s-identity",
            kind = "accept",
            priority = 2000,
            text = "Accept The Lich's Identity.",
            complete = QuestState(357, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8430, 0.1750, "The Lich's Identity",
                    "Travel to The Lich's Identity."),
            },
        },
        {
            id = "travel-371-tirisfal-glades",
            kind = "travel",
            priority = 2010,
            text = "Travel to Tirisfal Glades. Exit through to the sewers.",
            route = {
                Point(MAP.UNDERCITY, 0.1520, 0.3140, "Tirisfal Glades",
                    "Travel to Tirisfal Glades."),
            },
        },
        {
            id = "objective-357-the-lich-s-identity",
            kind = "objective",
            priority = 2020,
            text = "Loot [The Lich's Spellbook] on the island.",
            dependsOn = { "accept-357-the-lich-s-identity" },
            complete = QuestState(357, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.6793, 0.4215, "The Lich's Identity",
                    "Travel to The Lich's Identity."),
            },
        },
        {
            id = "travel-366-undercity",
            kind = "travel",
            priority = 2030,
            text = "Run to Undercity.",
            route = {
                Point(MAP.TIRISFAL, 0.6160, 0.6870, "Undercity",
                    "Travel to Undercity."),
            },
        },
        {
            id = "turnin-357-the-lich-s-identity",
            kind = "turnin",
            priority = 2040,
            text = "Turn in The Lich's Identity.",
            dependsOn = { "objective-357-the-lich-s-identity" },
            complete = QuestState(357, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8430, 0.1750, "The Lich's Identity",
                    "Travel to The Lich's Identity."),
            },
        },
        {
            id = "accept-366-return-the-book",
            kind = "accept",
            priority = 2050,
            text = "Accept Return the Book.",
            complete = QuestState(366, "activeOrCompleted"),
            route = {
                Point(MAP.UNDERCITY, 0.8430, 0.1750, "Return the Book",
                    "Travel to Return the Book."),
            },
        },
        {
            id = "turnin-366-return-the-book",
            kind = "turnin",
            priority = 2060,
            text = "Turn in Return the Book.",
            dependsOn = { "accept-366-return-the-book" },
            complete = QuestState(366, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6818, 0.4198, "Return the Book",
                    "Travel to Return the Book."),
            },
        },
        {
            id = "accept-409-proving-allegiance",
            kind = "accept",
            priority = 2070,
            text = "Accept Proving Allegiance.",
            complete = QuestState(409, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6820, 0.4200, "Proving Allegiance",
                    "Travel to Proving Allegiance."),
            },
        },
        {
            id = "objective-409-proving-allegiance",
            kind = "objective",
            priority = 2080,
            text = "Grab a candle from the crate, then summon Lillith at the table on the island to the south.",
            dependsOn = { "accept-409-proving-allegiance" },
            complete = QuestState(409, "complete"),
            route = {
                Point(MAP.TIRISFAL, 0.6660, 0.4480, "Proving Allegiance",
                    "Travel to Proving Allegiance."),
            },
        },
        {
            id = "turnin-409-proving-allegiance",
            kind = "turnin",
            priority = 2090,
            text = "Turn in Proving Allegiance.",
            dependsOn = { "objective-409-proving-allegiance" },
            complete = QuestState(409, "completed"),
            route = {
                Point(MAP.TIRISFAL, 0.6820, 0.4200, "Proving Allegiance",
                    "Travel to Proving Allegiance."),
            },
        },
        {
            id = "accept-411-the-prodigal-lich-returns",
            kind = "accept",
            priority = 2100,
            text = "Accept The Prodigal Lich Returns.",
            complete = QuestState(411, "activeOrCompleted"),
            route = {
                Point(MAP.TIRISFAL, 0.6820, 0.4200, "The Prodigal Lich Returns",
                    "Travel to The Prodigal Lich Returns."),
            },
        },
        {
            id = "turnin-411-the-prodigal-lich-returns",
            kind = "turnin",
            priority = 2110,
            text = "Turn in The Prodigal Lich Returns.",
            dependsOn = { "accept-411-the-prodigal-lich-returns" },
            complete = QuestState(411, "completed"),
            route = {
                Point(MAP.UNDERCITY, 0.8430, 0.1750, "The Prodigal Lich Returns",
                    "Travel to The Prodigal Lich Returns."),
            },
        },
    },
})
