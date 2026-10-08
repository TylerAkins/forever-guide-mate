local _, ns = ...

-- Forever Casual spine: Undead Starter (1-13)
-- Hearth, grind/ding, trainer, vendor, and flight-learn steps omitted.
-- Forever weaves ported from prior Leveling chapters (quest id >= 90000).
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
    DUROTAR = 1411,
    TIRISFAL_GLADES = 1420,
    ORGRIMMAR = 1454,
    UNDERCITY = 1458,
}

ns:RegisterGuide({
    id = "leveling-era-tirisfal-glades",
    title = "Undead Starter",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
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
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Rude Awakening.",
            complete = QuestState(363, "activeOrCompleted"),
            route = {
                Point(1420, 0.3022, 0.7165, "Rude Awakening",
                    "Travel to Rude Awakening.")
            }
            },
        {
            id = "objective-364-1-duskbat",
            kind = "objective",
            priority = 20,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { any = { { class = 1 }, { class = 9 } } }
            } },
            text = "Kill Duskbat.",
            complete = QuestObjective(364, 1, "Duskbat"),
            route = {
                Point(1420, 0.2940, 0.6960, "Duskbat",
                    "Travel to Duskbat.")
            }
            },
        {
            id = "turnin-363-rude-awakening",
            kind = "turnin",
            priority = 30,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Rude Awakening.",
            complete = QuestState(363, "completed"),
            dependsOn = { "accept-363-rude-awakening" },
            route = {
                Point(1420, 0.3084, 0.6620, "Rude Awakening",
                    "Travel to Rude Awakening.")
            }
            },
        {
            id = "accept-364-the-mindless-ones",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Mindless Ones.",
            complete = QuestState(364, "activeOrCompleted"),
            route = {
                Point(1420, 0.3084, 0.6620, "The Mindless Ones",
                    "Travel to The Mindless Ones.")
            }
            },
        {
            id = "accept-1470-piercing-the-veil",
            kind = "accept",
            priority = 50,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Accept Piercing the Veil.",
            complete = QuestState(1470, "activeOrCompleted"),
            route = {
                Point(1420, 0.3098, 0.6641, "Piercing the Veil",
                    "Travel to Piercing the Veil.")
            }
            },
        {
            id = "objective-1470-1-rattlecage-skeleton",
            kind = "objective",
            priority = 60,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Rattlecage Skeleton.",
            complete = QuestObjective(1470, 1, "Rattlecage Skeleton"),
            dependsOn = { "accept-1470-piercing-the-veil" },
            route = {
                Point(1420, 0.3220, 0.6260, "Rattlecage Skeleton",
                    "Travel to Rattlecage Skeleton.")
            }
            },
        {
            id = "turnin-1470-piercing-the-veil",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Turn in Piercing the Veil.",
            complete = QuestState(1470, "completed"),
            dependsOn = { "accept-1470-piercing-the-veil", "objective-1470-1-rattlecage-skeleton" },
            route = {
                Point(1420, 0.3098, 0.6641, "Piercing the Veil",
                    "Travel to Piercing the Veil.")
            }
            },
        {
            id = "turnin-364-the-mindless-ones",
            kind = "turnin",
            priority = 80,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Mindless Ones.",
            complete = QuestState(364, "completed"),
            dependsOn = { "accept-364-the-mindless-ones", "objective-364-1-duskbat" },
            route = {
                Point(1420, 0.3084, 0.6620, "The Mindless Ones",
                    "Travel to The Mindless Ones.")
            }
            },
        {
            id = "accept-3095-simple-scroll",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Simple Scroll.",
            complete = QuestState(3095, "activeOrCompleted"),
            route = {
                Point(1420, 0.3084, 0.6620, "Simple Scroll",
                    "Travel to Simple Scroll.")
            }
            },
        {
            id = "accept-3099-tainted-scroll",
            kind = "accept",
            priority = 100,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Tainted Scroll.",
            complete = QuestState(3099, "activeOrCompleted"),
            route = {
                Point(1420, 0.3084, 0.6620, "Tainted Scroll",
                    "Travel to Tainted Scroll.")
            }
            },
        {
            id = "accept-3096-encrypted-scroll",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Encrypted Scroll.",
            complete = QuestState(3096, "activeOrCompleted"),
            route = {
                Point(1420, 0.3084, 0.6620, "Encrypted Scroll",
                    "Travel to Encrypted Scroll.")
            }
            },
        {
            id = "accept-3097-hallowed-scroll",
            kind = "accept",
            priority = 120,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Hallowed Scroll.",
            complete = QuestState(3097, "activeOrCompleted"),
            route = {
                Point(1420, 0.3084, 0.6620, "Hallowed Scroll",
                    "Travel to Hallowed Scroll.")
            }
            },
        {
            id = "accept-3098-glyphic-scroll",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Glyphic Scroll.",
            complete = QuestState(3098, "activeOrCompleted"),
            route = {
                Point(1420, 0.3084, 0.6620, "Glyphic Scroll",
                    "Travel to Glyphic Scroll.")
            }
            },
        {
            id = "accept-3901-rattling-the-rattlecages",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Rattling the Rattlecages.",
            complete = QuestState(3901, "activeOrCompleted"),
            route = {
                Point(1420, 0.3084, 0.6620, "Rattling the Rattlecages",
                    "Travel to Rattling the Rattlecages.")
            }
            },
        {
            id = "accept-376-the-damned",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Damned.",
            complete = QuestState(376, "activeOrCompleted"),
            route = {
                Point(1420, 0.3086, 0.6605, "The Damned",
                    "Travel to The Damned.")
            }
            },
        {
            id = "turnin-3098-glyphic-scroll",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 8 }
            } },
            text = "Turn in Glyphic Scroll.",
            complete = QuestState(3098, "completed"),
            dependsOn = { "accept-3098-glyphic-scroll" },
            route = {
                Point(1420, 0.3094, 0.6606, "Glyphic Scroll",
                    "Travel to Glyphic Scroll.")
            }
            },
        {
            id = "turnin-3099-tainted-scroll",
            kind = "turnin",
            priority = 170,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Turn in Tainted Scroll.",
            complete = QuestState(3099, "completed"),
            dependsOn = { "accept-3099-tainted-scroll" },
            route = {
                Point(1420, 0.3091, 0.6634, "Tainted Scroll",
                    "Travel to Tainted Scroll.")
            }
            },
        {
            id = "turnin-3097-hallowed-scroll",
            kind = "turnin",
            priority = 180,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 5 }
            } },
            text = "Turn in Hallowed Scroll.",
            complete = QuestState(3097, "completed"),
            dependsOn = { "accept-3097-hallowed-scroll" },
            route = {
                Point(1420, 0.3111, 0.6603, "Hallowed Scroll",
                    "Travel to Hallowed Scroll.")
            }
            },
        {
            id = "objective-3901-1-rattlecage-skeleton",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill 12 Rattlecage Skeleton.",
            complete = QuestObjective(3901, 1, "Rattlecage Skeleton"),
            dependsOn = { "accept-3901-rattling-the-rattlecages" },
            route = {
                Point(1420, 0.3220, 0.6260, "Rattlecage Skeleton",
                    "Travel to Rattlecage Skeleton.")
            }
            },
        {
            id = "turnin-376-the-damned",
            kind = "turnin",
            priority = 200,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Damned.",
            complete = QuestState(376, "completed"),
            dependsOn = { "accept-376-the-damned" },
            route = {
                Point(1420, 0.3086, 0.6605, "The Damned",
                    "Travel to The Damned.")
            }
            },
        {
            id = "accept-6395-marla-s-last-wish",
            kind = "accept",
            priority = 210,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Marla's Last Wish.",
            complete = QuestState(6395, "activeOrCompleted"),
            route = {
                Point(1420, 0.3086, 0.6605, "Marla's Last Wish",
                    "Travel to Marla's Last Wish.")
            }
            },
        {
            id = "turnin-3901-rattling-the-rattlecages",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Rattling the Rattlecages.",
            complete = QuestState(3901, "completed"),
            dependsOn = { "accept-3901-rattling-the-rattlecages", "objective-3901-1-rattlecage-skeleton" },
            route = {
                Point(1420, 0.3083, 0.6620, "Rattling the Rattlecages",
                    "Travel to Rattling the Rattlecages.")
            }
            },
        {
            id = "accept-380-night-web-s-hollow",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Night Web's Hollow.",
            complete = QuestState(380, "activeOrCompleted"),
            route = {
                Point(1420, 0.3215, 0.6601, "Night Web's Hollow",
                    "Travel to Night Web's Hollow.")
            }
            },
        {
            id = "turnin-3095-simple-scroll",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Turn in Simple Scroll.",
            complete = QuestState(3095, "completed"),
            dependsOn = { "accept-3095-simple-scroll" },
            route = {
                Point(1420, 0.3269, 0.6556, "Simple Scroll",
                    "Travel to Simple Scroll.")
            }
            },
        {
            id = "turnin-3096-encrypted-scroll",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 4 }
            } },
            text = "Turn in Encrypted Scroll.",
            complete = QuestState(3096, "completed"),
            dependsOn = { "accept-3096-encrypted-scroll" },
            route = {
                Point(1420, 0.3253, 0.6565, "Encrypted Scroll",
                    "Travel to Encrypted Scroll.")
            }
            },
        {
            id = "accept-3902-scavenging-deathknell",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Scavenging Deathknell.",
            complete = QuestState(3902, "activeOrCompleted"),
            route = {
                Point(1420, 0.3161, 0.6560, "Scavenging Deathknell",
                    "Travel to Scavenging Deathknell.")
            }
            },
        {
            id = "objective-3902-1-scavenged-goods",
            kind = "objective",
            priority = 270,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Collect 6 Scavenged Goods.",
            complete = QuestObjective(3902, 1, "Scavenged Goods"),
            dependsOn = { "accept-3902-scavenging-deathknell" },
            route = {
                Point(1420, 0.3360, 0.6590, "Scavenged Goods",
                    "Travel to Scavenged Goods.")
            }
            },
        {
            id = "objective-380-1-young-night-web-spider",
            kind = "objective",
            priority = 280,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill 10 Young Night Web Spider.",
            complete = QuestObjective(380, 1, "Young Night Web Spider"),
            dependsOn = { "accept-380-night-web-s-hollow" },
            route = {
                Point(1420, 0.2920, 0.5960, "Young Night Web Spider",
                    "Travel to Young Night Web Spider.")
            }
            },
        {
            id = "objective-380-2-night-web-spider",
            kind = "objective",
            priority = 290,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill 8 Night Web Spider.",
            complete = QuestObjective(380, 2, "Night Web Spider"),
            dependsOn = { "accept-380-night-web-s-hollow" },
            route = {
                Point(1420, 0.2684, 0.5941, "Night Web Spider",
                    "Travel to Night Web Spider.")
            }
            },
        {
            id = "turnin-3902-scavenging-deathknell",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Scavenging Deathknell.",
            complete = QuestState(3902, "completed"),
            dependsOn = { "accept-3902-scavenging-deathknell", "objective-3902-1-scavenged-goods" },
            route = {
                Point(1420, 0.2682, 0.5942, "Scavenging Deathknell",
                    "Travel to Scavenging Deathknell.")
            }
            },
        {
            id = "turnin-380-night-web-s-hollow",
            kind = "turnin",
            priority = 310,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Night Web's Hollow.",
            complete = QuestState(380, "completed"),
            dependsOn = { "accept-380-night-web-s-hollow", "objective-380-1-young-night-web-spider", "objective-380-2-night-web-spider" },
            route = {
                Point(1420, 0.3215, 0.6601, "Night Web's Hollow",
                    "Travel to Night Web's Hollow.")
            }
            },
        {
            id = "accept-381-the-scarlet-crusade",
            kind = "accept",
            priority = 320,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Scarlet Crusade.",
            complete = QuestState(381, "activeOrCompleted"),
            route = {
                Point(1420, 0.3215, 0.6601, "The Scarlet Crusade",
                    "Travel to The Scarlet Crusade.")
            }
            },
        {
            id = "objective-381-1-scarlet-convert",
            kind = "objective",
            priority = 330,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Scarlet Convert.",
            complete = QuestObjective(381, 1, "Scarlet Convert"),
            dependsOn = { "accept-381-the-scarlet-crusade" },
            route = {
                Point(1420, 0.3540, 0.6580, "Scarlet Convert",
                    "Travel to Scarlet Convert.")
            }
            },
        {
            id = "objective-6395-1-samuel-fipps",
            kind = "objective",
            priority = 340,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Samuel Fipps.",
            complete = QuestObjective(6395, 1, "Samuel Fipps"),
            dependsOn = { "accept-6395-marla-s-last-wish" },
            route = {
                Point(1420, 0.3668, 0.6157, "Samuel Fipps",
                    "Travel to Samuel Fipps.")
            }
            },
        {
            id = "turnin-6395-marla-s-last-wish",
            kind = "turnin",
            priority = 350,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Marla's Last Wish.",
            complete = QuestState(6395, "completed"),
            dependsOn = { "accept-6395-marla-s-last-wish", "objective-6395-1-samuel-fipps" },
            route = {
                Point(1420, 0.3086, 0.6605, "Marla's Last Wish",
                    "Travel to Marla's Last Wish.")
            }
            },
        {
            id = "accept-5651-in-favor-of-darkness",
            kind = "accept",
            priority = 360,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 5 }
            } },
            text = "Accept In Favor of Darkness.",
            complete = QuestState(5651, "activeOrCompleted"),
            route = {
                Point(1420, 0.3111, 0.6603, "In Favor of Darkness",
                    "Travel to In Favor of Darkness.")
            }
            },
        {
            id = "turnin-381-the-scarlet-crusade",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Scarlet Crusade.",
            complete = QuestState(381, "completed"),
            dependsOn = { "accept-381-the-scarlet-crusade", "objective-381-1-scarlet-convert" },
            route = {
                Point(1420, 0.3215, 0.6601, "The Scarlet Crusade",
                    "Travel to The Scarlet Crusade.")
            }
            },
        {
            id = "accept-382-the-red-messenger",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Red Messenger.",
            complete = QuestState(382, "activeOrCompleted"),
            route = {
                Point(1420, 0.3215, 0.6601, "The Red Messenger",
                    "Travel to The Red Messenger.")
            }
            },
        {
            id = "objective-382-1-meven-korgal",
            kind = "objective",
            priority = 390,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Meven Korgal.",
            complete = QuestObjective(382, 1, "Meven Korgal"),
            dependsOn = { "accept-382-the-red-messenger" },
            route = {
                Point(1420, 0.3651, 0.6880, "Meven Korgal",
                    "Travel to Meven Korgal.")
            }
            },
        {
            id = "turnin-382-the-red-messenger",
            kind = "turnin",
            priority = 400,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Red Messenger.",
            complete = QuestState(382, "completed"),
            dependsOn = { "accept-382-the-red-messenger", "objective-382-1-meven-korgal" },
            route = {
                Point(1420, 0.3215, 0.6601, "The Red Messenger",
                    "Travel to The Red Messenger.")
            }
            },
        {
            id = "accept-383-vital-intelligence",
            kind = "accept",
            priority = 410,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Vital Intelligence.",
            complete = QuestState(383, "activeOrCompleted"),
            route = {
                Point(1420, 0.3215, 0.6601, "Vital Intelligence",
                    "Travel to Vital Intelligence.")
            }
            },
        {
            id = "accept-8-a-rogue-s-deal",
            kind = "accept",
            priority = 420,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A Rogue's Deal.",
            complete = QuestState(8, "activeOrCompleted"),
            route = {
                Point(1420, 0.3823, 0.5679, "A Rogue's Deal",
                    "Travel to A Rogue's Deal.")
            }
            },
        {
            id = "accept-365-fields-of-grief",
            kind = "accept",
            priority = 430,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Fields of Grief.",
            complete = QuestState(365, "activeOrCompleted"),
            route = {
                Point(1420, 0.4091, 0.5416, "Fields of Grief",
                    "Travel to Fields of Grief.")
            }
            },
        {
            id = "accept-5481-gordo-s-task",
            kind = "accept",
            priority = 440,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Gordo's Task from Gordo on the road into Brill.",
            complete = QuestState(5481, "activeOrCompleted"),
            route = nil
            },
        {
            id = "accept-404-a-putrid-task",
            kind = "accept",
            priority = 450,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A Putrid Task.",
            complete = QuestState(404, "activeOrCompleted"),
            route = {
                Point(1420, 0.5820, 0.5144, "A Putrid Task",
                    "Travel to A Putrid Task.")
            }
            },
        {
            id = "accept-367-a-new-plague",
            kind = "accept",
            priority = 460,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A New Plague.",
            complete = QuestState(367, "activeOrCompleted"),
            route = {
                Point(1420, 0.5945, 0.5240, "A New Plague",
                    "Travel to A New Plague.")
            }
            },
        {
            id = "turnin-383-vital-intelligence",
            kind = "turnin",
            priority = 470,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Vital Intelligence.",
            complete = QuestState(383, "completed"),
            dependsOn = { "accept-383-vital-intelligence" },
            route = {
                Point(1420, 0.6059, 0.5176, "Vital Intelligence",
                    "Travel to Vital Intelligence.")
            }
            },
        {
            id = "accept-427-at-war-with-the-scarlet-crusade",
            kind = "accept",
            priority = 480,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept At War With The Scarlet Crusade.",
            complete = QuestState(427, "activeOrCompleted"),
            route = {
                Point(1420, 0.6059, 0.5176, "At War With The Scarlet Crusade",
                    "Travel to At War With The Scarlet Crusade.")
            }
            },
        {
            id = "turnin-8-a-rogue-s-deal",
            kind = "turnin",
            priority = 490,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A Rogue's Deal.",
            complete = QuestState(8, "completed"),
            dependsOn = { "accept-8-a-rogue-s-deal" },
            route = {
                Point(1420, 0.6171, 0.5205, "A Rogue's Deal",
                    "Travel to A Rogue's Deal.")
            }
            },
        {
            id = "turnin-5651-in-favor-of-darkness",
            kind = "turnin",
            priority = 500,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 5 }
            } },
            text = "Turn in In Favor of Darkness.",
            complete = QuestState(5651, "completed"),
            dependsOn = { "accept-5651-in-favor-of-darkness" },
            route = {
                Point(1420, 0.6157, 0.5219, "In Favor of Darkness",
                    "Travel to In Favor of Darkness.")
            }
            },
        {
            id = "accept-5650-garments-of-darkness",
            kind = "accept",
            priority = 510,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 5 }
            } },
            text = "Accept Garments of Darkness.",
            complete = QuestState(5650, "activeOrCompleted"),
            route = {
                Point(1420, 0.6157, 0.5219, "Garments of Darkness",
                    "Travel to Garments of Darkness.")
            }
            },
        {
            id = "turnin-5650-garments-of-darkness",
            kind = "turnin",
            priority = 520,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 5 }
            } },
            text = "Turn in Garments of Darkness.",
            complete = QuestState(5650, "completed"),
            dependsOn = { "accept-5650-garments-of-darkness" },
            route = {
                Point(1420, 0.6157, 0.5219, "Garments of Darkness",
                    "Travel to Garments of Darkness.")
            }
            },
        {
            id = "objective-367-1-decrepit-darkhound",
            kind = "objective",
            priority = 530,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Decrepit Darkhound.",
            complete = QuestObjective(367, 1, "Decrepit Darkhound"),
            dependsOn = { "accept-367-a-new-plague" },
            route = {
                Point(1420, 0.6440, 0.5320, "Decrepit Darkhound",
                    "Travel to Decrepit Darkhound.")
            }
            },
        {
            id = "turnin-367-a-new-plague",
            kind = "turnin",
            priority = 540,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A New Plague.",
            complete = QuestState(367, "completed"),
            dependsOn = { "accept-367-a-new-plague", "objective-367-1-decrepit-darkhound" },
            route = {
                Point(1420, 0.5945, 0.5240, "A New Plague",
                    "Travel to A New Plague.")
            }
            },
        {
            id = "accept-368-a-new-plague",
            kind = "accept",
            priority = 550,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A New Plague.",
            complete = QuestState(368, "activeOrCompleted"),
            route = {
                Point(1420, 0.5945, 0.5240, "A New Plague",
                    "Travel to A New Plague.")
            }
            },
        {
            id = "objective-404-1-ravaged-corpse",
            kind = "objective",
            priority = 560,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Ravaged Corpse.",
            complete = QuestObjective(404, 1, "Ravaged Corpse"),
            dependsOn = { "accept-404-a-putrid-task" },
            route = {
                Point(1420, 0.5320, 0.5400, "Ravaged Corpse",
                    "Travel to Ravaged Corpse.")
            }
            },
        {
            id = "objective-365-1-tirisfal-pumpkin",
            kind = "objective",
            priority = 570,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Click Tirisfal Pumpkin.",
            complete = QuestObjective(365, 1, "Tirisfal Pumpkin"),
            dependsOn = { "accept-365-fields-of-grief" },
            route = {
                Point(1420, 0.3630, 0.5120, "Tirisfal Pumpkin",
                    "Travel to Tirisfal Pumpkin.")
            }
            },
        {
            id = "objective-427-1-scarlet-warrior",
            kind = "objective",
            priority = 580,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill 10 Scarlet Warrior.",
            complete = QuestObjective(427, 1, "Scarlet Warrior"),
            dependsOn = { "accept-427-at-war-with-the-scarlet-crusade" },
            route = {
                Point(1420, 0.3280, 0.5040, "Scarlet Warrior",
                    "Travel to Scarlet Warrior.")
            }
            },
        {
            id = "turnin-427-at-war-with-the-scarlet-crusade",
            kind = "turnin",
            priority = 590,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in At War With The Scarlet Crusade.",
            complete = QuestState(427, "completed"),
            dependsOn = { "accept-427-at-war-with-the-scarlet-crusade", "objective-427-1-scarlet-warrior" },
            route = {
                Point(1420, 0.6059, 0.5176, "At War With The Scarlet Crusade",
                    "Travel to At War With The Scarlet Crusade.")
            }
            },
        {
            id = "accept-370-at-war-with-the-scarlet-crusade",
            kind = "accept",
            priority = 600,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept At War With The Scarlet Crusade.",
            complete = QuestState(370, "activeOrCompleted"),
            route = {
                Point(1420, 0.6059, 0.5176, "At War With The Scarlet Crusade",
                    "Travel to At War With The Scarlet Crusade.")
            }
            },
        {
            id = "turnin-365-fields-of-grief",
            kind = "turnin",
            priority = 610,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Fields of Grief.",
            complete = QuestState(365, "completed"),
            dependsOn = { "accept-365-fields-of-grief", "objective-365-1-tirisfal-pumpkin" },
            route = {
                Point(1420, 0.5945, 0.5240, "Fields of Grief",
                    "Travel to Fields of Grief.")
            }
            },
        {
            id = "accept-407-fields-of-grief",
            kind = "accept",
            priority = 620,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Fields of Grief.",
            complete = QuestState(407, "activeOrCompleted"),
            route = {
                Point(1420, 0.5945, 0.5240, "Fields of Grief",
                    "Travel to Fields of Grief.")
            }
            },
        {
            id = "turnin-404-a-putrid-task",
            kind = "turnin",
            priority = 630,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A Putrid Task.",
            complete = QuestState(404, "completed"),
            dependsOn = { "accept-404-a-putrid-task", "objective-404-1-ravaged-corpse" },
            route = {
                Point(1420, 0.5820, 0.5145, "A Putrid Task",
                    "Travel to A Putrid Task.")
            }
            },
        {
            id = "accept-426-the-mills-overrun",
            kind = "accept",
            priority = 640,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Mills Overrun.",
            complete = QuestState(426, "activeOrCompleted"),
            route = {
                Point(1420, 0.5820, 0.5145, "The Mills Overrun",
                    "Travel to The Mills Overrun.")
            }
            },
        {
            id = "turnin-5481-gordo-s-task",
            kind = "turnin",
            priority = 650,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Gordo's Task.",
            complete = QuestState(5481, "completed"),
            dependsOn = { "accept-5481-gordo-s-task" },
            useClientPin = true,
            route = nil
            },
        {
            id = "accept-5482-doom-weed",
            kind = "accept",
            priority = 660,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Doom Weed from Junior Apothecary Holland in Brill.",
            complete = QuestState(5482, "activeOrCompleted"),
            route = nil
            },
        {
            id = "turnin-407-fields-of-grief",
            kind = "turnin",
            priority = 670,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Fields of Grief.",
            complete = QuestState(407, "completed"),
            dependsOn = { "accept-407-fields-of-grief" },
            route = {
                Point(1420, 0.6197, 0.5129, "Fields of Grief",
                    "Travel to Fields of Grief.")
            }
            },
        {
            id = "accept-784-vanquish-the-betrayers",
            kind = "accept",
            priority = 680,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Accept Vanquish the Betrayers.",
            complete = QuestState(784, "activeOrCompleted"),
            route = {
                Point(1411, 0.5195, 0.4350, "Vanquish the Betrayers",
                    "Travel to Vanquish the Betrayers."),
            },
        },
        {
            id = "accept-791-carry-your-weight",
            kind = "accept",
            priority = 690,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Accept Carry Your Weight.",
            complete = QuestState(791, "activeOrCompleted"),
            route = {
                Point(1411, 0.5009, 0.4301, "Carry Your Weight",
                    "Travel to Carry Your Weight."),
            },
        },
        {
            id = "accept-2161-a-peon-s-burden",
            kind = "accept",
            priority = 700,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A Peon's Burden.",
            complete = QuestState(2161, "activeOrCompleted"),
            route = {
                Point(1411, 0.5206, 0.6831, "A Peon's Burden",
                    "Travel to A Peon's Burden.")
            }
            },
        {
            id = "accept-786-thwarting-kolkar-aggression",
            kind = "accept",
            priority = 710,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Accept Thwarting Kolkar Aggression.",
            complete = QuestState(786, "activeOrCompleted"),
            route = {
                Point(1411, 0.5419, 0.7329, "Thwarting Kolkar Aggression",
                    "Travel to Thwarting Kolkar Aggression."),
            },
        },
        {
            id = "accept-817-practical-prey",
            kind = "accept",
            priority = 720,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Accept Practical Prey.",
            complete = QuestState(817, "activeOrCompleted"),
            route = {
                Point(1411, 0.5596, 0.7392, "Practical Prey",
                    "Travel to Practical Prey."),
            },
        },
        {
            id = "accept-818-a-solvent-spirit",
            kind = "accept",
            priority = 730,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Accept A Solvent Spirit.",
            complete = QuestState(818, "activeOrCompleted"),
            route = {
                Point(1411, 0.5594, 0.7439, "A Solvent Spirit",
                    "Travel to A Solvent Spirit."),
            },
        },
        {
            id = "accept-808-minshina-s-skull",
            kind = "accept",
            priority = 740,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Accept Minshina's Skull.",
            complete = QuestState(808, "activeOrCompleted"),
            route = {
                Point(1411, 0.5595, 0.7472, "Minshina's Skull",
                    "Travel to Minshina's Skull."),
            },
        },
        {
            id = "accept-826-zalazane",
            kind = "accept",
            priority = 750,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Accept Zalazane.",
            complete = QuestState(826, "activeOrCompleted"),
            route = {
                Point(1411, 0.5595, 0.7472, "Zalazane",
                    "Travel to Zalazane."),
            },
        },
        {
            id = "accept-823-report-to-orgnil",
            kind = "accept",
            priority = 760,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Accept Report to Orgnil.",
            complete = QuestState(823, "activeOrCompleted"),
            route = {
                Point(1411, 0.5595, 0.7472, "Report to Orgnil",
                    "Travel to Report to Orgnil."),
            },
        },
        {
            id = "objective-818-1-makrura-clacker",
            kind = "objective",
            priority = 770,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Kill Makrura Clacker.",
            complete = QuestObjective(818, 1, "Makrura Clacker"),
            dependsOn = { "accept-818-a-solvent-spirit" },
            route = {
                Point(1411, 0.6020, 0.7080, "Makrura Clacker",
                    "Travel to Makrura Clacker."),
            },
        },
        {
            id = "turnin-818-a-solvent-spirit",
            kind = "turnin",
            priority = 780,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Turn in A Solvent Spirit.",
            complete = QuestState(818, "completed"),
            dependsOn = { "accept-818-a-solvent-spirit", "objective-818-1-makrura-clacker" },
            route = {
                Point(1411, 0.5594, 0.7439, "A Solvent Spirit",
                    "Travel to A Solvent Spirit."),
            },
        },
        {
            id = "turnin-786-thwarting-kolkar-aggression",
            kind = "turnin",
            priority = 790,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Turn in Thwarting Kolkar Aggression.",
            complete = QuestState(786, "completed"),
            dependsOn = { "accept-786-thwarting-kolkar-aggression" },
            route = {
                Point(1411, 0.5419, 0.7329, "Thwarting Kolkar Aggression",
                    "Travel to Thwarting Kolkar Aggression."),
            },
        },
        {
            id = "objective-784-3-lieutenant-benedict",
            kind = "objective",
            priority = 800,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Kill Lieutenant Benedict.",
            complete = QuestObjective(784, 3, "Lieutenant Benedict"),
            dependsOn = { "accept-784-vanquish-the-betrayers" },
            route = {
                Point(1411, 0.5899, 0.5830, "Lieutenant Benedict",
                    "Travel to Lieutenant Benedict."),
            },
        },
        {
            id = "accept-830-the-admiral-s-orders",
            kind = "accept",
            priority = 810,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Use the Admiral's Orders to accept The Admiral's Orders.",
            complete = QuestState(830, "activeOrCompleted"),
            route = nil
            },
        {
            id = "turnin-823-report-to-orgnil",
            kind = "turnin",
            priority = 820,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Turn in Report to Orgnil.",
            complete = QuestState(823, "completed"),
            dependsOn = { "accept-823-report-to-orgnil" },
            route = {
                Point(1411, 0.5225, 0.4315, "Report to Orgnil",
                    "Travel to Report to Orgnil."),
            },
        },
        {
            id = "turnin-784-vanquish-the-betrayers",
            kind = "turnin",
            priority = 830,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Turn in Vanquish the Betrayers.",
            complete = QuestState(784, "completed"),
            dependsOn = { "accept-784-vanquish-the-betrayers", "objective-784-3-lieutenant-benedict" },
            route = {
                Point(1411, 0.5195, 0.4350, "Vanquish the Betrayers",
                    "Travel to Vanquish the Betrayers."),
            },
        },
        {
            id = "accept-825-from-the-wreckage",
            kind = "accept",
            priority = 840,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Accept From The Wreckage....",
            complete = QuestState(825, "activeOrCompleted"),
            route = {
                Point(1411, 0.5195, 0.4350, "From The Wreckage...",
                    "Travel to From The Wreckage....."),
            },
        },
        {
            id = "turnin-830-the-admiral-s-orders",
            kind = "turnin",
            priority = 850,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Admiral's Orders.",
            complete = QuestState(830, "completed"),
            dependsOn = { "accept-830-the-admiral-s-orders" },
            route = {
                Point(1411, 0.5195, 0.4350, "The Admiral's Orders",
                    "Travel to The Admiral's Orders.")
            }
            },
        {
            id = "accept-831-the-admiral-s-orders",
            kind = "accept",
            priority = 860,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Admiral's Orders.",
            complete = QuestState(831, "activeOrCompleted"),
            route = {
                Point(1411, 0.5195, 0.4350, "The Admiral's Orders",
                    "Travel to The Admiral's Orders.")
            }
            },
        {
            id = "accept-837-encroachment",
            kind = "accept",
            priority = 870,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Accept Encroachment.",
            complete = QuestState(837, "activeOrCompleted"),
            route = {
                Point(1411, 0.5195, 0.4350, "Encroachment",
                    "Travel to Encroachment."),
            },
        },
        {
            id = "accept-815-break-a-few-eggs",
            kind = "accept",
            priority = 880,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Accept Break a Few Eggs.",
            complete = QuestState(815, "activeOrCompleted"),
            route = {
                Point(1411, 0.5111, 0.4245, "Break a Few Eggs",
                    "Travel to Break a Few Eggs."),
            },
        },
        {
            id = "turnin-791-carry-your-weight",
            kind = "turnin",
            priority = 890,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Turn in Carry Your Weight.",
            complete = QuestState(791, "completed"),
            dependsOn = { "accept-791-carry-your-weight" },
            route = {
                Point(1411, 0.5009, 0.4301, "Carry Your Weight",
                    "Travel to Carry Your Weight."),
            },
        },
        {
            id = "turnin-2161-a-peon-s-burden",
            kind = "turnin",
            priority = 900,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A Peon's Burden.",
            complete = QuestState(2161, "completed"),
            dependsOn = { "accept-2161-a-peon-s-burden" },
            route = {
                Point(1411, 0.5152, 0.4165, "A Peon's Burden",
                    "Travel to A Peon's Burden.")
            }
            },
        {
            id = "objective-825-1-gnomish-tools",
            kind = "objective",
            priority = 910,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Collect 3 Gnomish Tools.",
            complete = QuestObjective(825, 1, "Gnomish Tools"),
            dependsOn = { "accept-825-from-the-wreckage" },
            route = {
                Point(1411, 0.6140, 0.5620, "Gnomish Tools",
                    "Travel to Gnomish Tools."),
            },
        },
        {
            id = "objective-826-3-zalazane",
            kind = "objective",
            priority = 920,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Kill Zalazane.",
            complete = QuestObjective(826, 3, "Zalazane"),
            dependsOn = { "accept-826-zalazane" },
            route = {
                Point(1411, 0.6740, 0.8640, "Zalazane",
                    "Travel to Zalazane."),
            },
        },
        {
            id = "turnin-808-minshina-s-skull",
            kind = "turnin",
            priority = 930,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Turn in Minshina's Skull.",
            complete = QuestState(808, "completed"),
            dependsOn = { "accept-808-minshina-s-skull" },
            route = {
                Point(1411, 0.5595, 0.7472, "Minshina's Skull",
                    "Travel to Minshina's Skull."),
            },
        },
        {
            id = "turnin-826-zalazane",
            kind = "turnin",
            priority = 940,
            conditions = { all = {
                { level = { min = 4 } },
                { faction = "Horde" },
            } },
            text = "Turn in Zalazane.",
            complete = QuestState(826, "completed"),
            dependsOn = { "accept-826-zalazane", "objective-826-3-zalazane" },
            route = {
                Point(1411, 0.5595, 0.7472, "Zalazane",
                    "Travel to Zalazane."),
            },
        },
        {
            id = "turnin-817-practical-prey",
            kind = "turnin",
            priority = 950,
            conditions = { all = {
                { level = { min = 5 } },
                { faction = "Horde" },
            } },
            text = "Turn in Practical Prey.",
            complete = QuestState(817, "completed"),
            dependsOn = { "accept-817-practical-prey" },
            route = {
                Point(1411, 0.5595, 0.7393, "Practical Prey",
                    "Travel to Practical Prey."),
            },
        },
        {
            id = "turnin-825-from-the-wreckage",
            kind = "turnin",
            priority = 960,
            conditions = { all = {
                { level = { min = 3 } },
                { faction = "Horde" },
            } },
            text = "Turn in From The Wreckage....",
            complete = QuestState(825, "completed"),
            dependsOn = { "accept-825-from-the-wreckage", "objective-825-1-gnomish-tools" },
            route = {
                Point(1411, 0.5195, 0.4350, "From The Wreckage...",
                    "Travel to From The Wreckage....."),
            },
        },
        {
            id = "turnin-815-break-a-few-eggs",
            kind = "turnin",
            priority = 970,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Turn in Break a Few Eggs.",
            complete = QuestState(815, "completed"),
            dependsOn = { "accept-815-break-a-few-eggs" },
            route = {
                Point(1411, 0.5111, 0.4245, "Break a Few Eggs",
                    "Travel to Break a Few Eggs."),
            },
        },
        {
            id = "accept-5660-touch-of-weakness",
            kind = "accept",
            priority = 980,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 5 }
            } },
            text = "Accept Touch of Weakness.",
            complete = QuestState(5660, "activeOrCompleted"),
            route = {
                Point(1411, 0.5426, 0.4293, "Touch of Weakness",
                    "Travel to Touch of Weakness.")
            }
            },
        {
            id = "objective-837-1-razormane-quilboar",
            kind = "objective",
            priority = 990,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Razormane Quilboar.",
            complete = QuestObjective(837, 1, "Razormane Quilboar"),
            dependsOn = { "accept-837-encroachment" },
            route = {
                Point(1411, 0.5000, 0.4960, "Razormane Quilboar",
                    "Travel to Razormane Quilboar."),
            },
        },
        {
            id = "objective-837-2-razormane-scout",
            kind = "objective",
            priority = 1000,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Razormane Scout.",
            complete = QuestObjective(837, 2, "Razormane Scout"),
            dependsOn = { "accept-837-encroachment" },
            route = {
                Point(1411, 0.5000, 0.4960, "Razormane Scout",
                    "Travel to Razormane Scout."),
            },
        },
        {
            id = "objective-837-3-razormane-dustrunner",
            kind = "objective",
            priority = 1010,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Razormane Dustrunner.",
            complete = QuestObjective(837, 3, "Razormane Dustrunner"),
            dependsOn = { "accept-837-encroachment" },
            route = {
                Point(1411, 0.4240, 0.4060, "Razormane Dustrunner",
                    "Travel to Razormane Dustrunner."),
            },
        },
        {
            id = "objective-837-4-razormane-battleguard",
            kind = "objective",
            priority = 1020,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Kill 4 Razormane Battleguard.",
            complete = QuestObjective(837, 4, "Razormane Battleguard"),
            dependsOn = { "accept-837-encroachment" },
            route = {
                Point(1411, 0.4240, 0.4060, "Razormane Battleguard",
                    "Travel to Razormane Battleguard."),
            },
        },
        {
            id = "turnin-837-encroachment",
            kind = "turnin",
            priority = 1030,
            conditions = { all = {
                { level = { min = 6 } },
                { faction = "Horde" },
            } },
            text = "Turn in Encroachment.",
            complete = QuestState(837, "completed"),
            dependsOn = { "accept-837-encroachment", "objective-837-1-razormane-quilboar", "objective-837-2-razormane-scout", "objective-837-3-razormane-dustrunner", "objective-837-4-razormane-battleguard" },
            route = {
                Point(1411, 0.5195, 0.4350, "Encroachment",
                    "Travel to Encroachment."),
            },
        },
        {
            id = "accept-834-winds-in-the-desert",
            kind = "accept",
            priority = 1040,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Accept Winds in the Desert.",
            complete = QuestState(834, "activeOrCompleted"),
            route = {
                Point(1411, 0.4637, 0.2294, "Winds in the Desert",
                    "Travel to Winds in the Desert."),
            },
        },
        {
            id = "objective-834-1-sack-of-supplies",
            kind = "objective",
            priority = 1050,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Collect 5 Sack of Supplies.",
            complete = QuestObjective(834, 1, "Sack of Supplies"),
            dependsOn = { "accept-834-winds-in-the-desert" },
            route = {
                Point(1411, 0.4910, 0.2250, "Sack of Supplies",
                    "Travel to Sack of Supplies."),
            },
        },
        {
            id = "turnin-834-winds-in-the-desert",
            kind = "turnin",
            priority = 1060,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Turn in Winds in the Desert.",
            complete = QuestState(834, "completed"),
            dependsOn = { "accept-834-winds-in-the-desert", "objective-834-1-sack-of-supplies" },
            route = {
                Point(1411, 0.4637, 0.2294, "Winds in the Desert",
                    "Travel to Winds in the Desert."),
            },
        },
        {
            id = "accept-835-securing-the-lines",
            kind = "accept",
            priority = 1070,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Accept Securing the Lines.",
            complete = QuestState(835, "activeOrCompleted"),
            route = {
                Point(1411, 0.4637, 0.2294, "Securing the Lines",
                    "Travel to Securing the Lines."),
            },
        },
        {
            id = "turnin-835-securing-the-lines",
            kind = "turnin",
            priority = 1080,
            conditions = { all = {
                { level = { min = 7 } },
                { faction = "Horde" },
            } },
            text = "Turn in Securing the Lines.",
            complete = QuestState(835, "completed"),
            dependsOn = { "accept-835-securing-the-lines" },
            route = {
                Point(1411, 0.5351, 0.2779, "Securing the Lines",
                    "Travel to Securing the Lines."),
            },
        },
        {
            id = "turnin-831-the-admiral-s-orders",
            kind = "turnin",
            priority = 1090,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Admiral's Orders.",
            complete = QuestState(831, "completed"),
            dependsOn = { "accept-831-the-admiral-s-orders" },
            route = {
                Point(1454, 0.3227, 0.3580, "The Admiral's Orders",
                    "Travel to The Admiral's Orders.")
            }
            },
        {
            id = "accept-1818-speak-with-dillinger",
            kind = "accept",
            priority = 1100,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Accept Speak with Dillinger.",
            complete = QuestState(1818, "activeOrCompleted"),
            route = {
                Point(1420, 0.6185, 0.5254, "Speak with Dillinger",
                    "Travel to Speak with Dillinger.")
            }
            },
        {
            id = "accept-354-deaths-in-the-family",
            kind = "accept",
            priority = 1110,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Deaths in the Family.",
            complete = QuestState(354, "activeOrCompleted"),
            route = {
                Point(1420, 0.6172, 0.5229, "Deaths in the Family",
                    "Travel to Deaths in the Family.")
            }
            },
        {
            id = "accept-362-the-haunted-mills",
            kind = "accept",
            priority = 1120,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Haunted Mills.",
            complete = QuestState(362, "activeOrCompleted"),
            route = {
                Point(1420, 0.6172, 0.5229, "The Haunted Mills",
                    "Travel to The Haunted Mills.")
            }
            },
        {
            id = "accept-1881-speak-with-anastasia",
            kind = "accept",
            priority = 1130,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 8 }
            } },
            text = "Accept Speak with Anastasia.",
            complete = QuestState(1881, "activeOrCompleted"),
            route = {
                Point(1420, 0.6197, 0.5247, "Speak with Anastasia",
                    "Travel to Speak with Anastasia.")
            }
            },
        {
            id = "accept-375-the-chill-of-death",
            kind = "accept",
            priority = 1140,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Chill of Death.",
            complete = QuestState(375, "activeOrCompleted"),
            route = {
                Point(1420, 0.6189, 0.5273, "The Chill of Death",
                    "Travel to The Chill of Death.")
            }
            },
        {
            id = "accept-1478-halgar-s-summons",
            kind = "accept",
            priority = 1150,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Accept Halgar's Summons.",
            complete = QuestState(1478, "activeOrCompleted"),
            route = {
                Point(1420, 0.6162, 0.5268, "Halgar's Summons",
                    "Travel to Halgar's Summons.")
            }
            },
        {
            id = "accept-1885-mennet-carkad",
            kind = "accept",
            priority = 1160,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 4 }
            } },
            text = "Accept Mennet Carkad.",
            complete = QuestState(1885, "activeOrCompleted"),
            route = {
                Point(1420, 0.6175, 0.5200, "Mennet Carkad",
                    "Travel to Mennet Carkad.")
            }
            },
        {
            id = "accept-374-proof-of-demise",
            kind = "accept",
            priority = 1170,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Proof of Demise.",
            complete = QuestState(374, "activeOrCompleted"),
            route = {
                Point(1420, 0.6093, 0.5201, "Proof of Demise",
                    "Travel to Proof of Demise.")
            }
            },
        {
            id = "accept-358-graverobbers",
            kind = "accept",
            priority = 1180,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Graverobbers.",
            complete = QuestState(358, "activeOrCompleted"),
            route = {
                Point(1420, 0.6126, 0.5084, "Graverobbers",
                    "Travel to Graverobbers.")
            }
            },
        {
            id = "accept-398-wanted-maggot-eye",
            kind = "accept",
            priority = 1190,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Wanted: Maggot Eye.",
            complete = QuestState(398, "activeOrCompleted"),
            route = {
                Point(1420, 0.6073, 0.5152, "Wanted: Maggot Eye",
                    "Travel to Wanted: Maggot Eye.")
            }
            },
        {
            id = "turnin-1818-speak-with-dillinger",
            kind = "turnin",
            priority = 1200,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Turn in Speak with Dillinger.",
            complete = QuestState(1818, "completed"),
            dependsOn = { "accept-1818-speak-with-dillinger" },
            route = {
                Point(1420, 0.5820, 0.5145, "Speak with Dillinger",
                    "Travel to Speak with Dillinger.")
            }
            },
        {
            id = "accept-1819-ulag-the-cleaver",
            kind = "accept",
            priority = 1210,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Accept Ulag the Cleaver.",
            complete = QuestState(1819, "activeOrCompleted"),
            route = {
                Point(1420, 0.5820, 0.5145, "Ulag the Cleaver",
                    "Travel to Ulag the Cleaver.")
            }
            },
        {
            id = "objective-1819-1-mausoleum-trigger",
            kind = "objective",
            priority = 1220,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Click Mausoleum Trigger.",
            complete = QuestObjective(1819, 1, "Mausoleum Trigger"),
            dependsOn = { "accept-1819-ulag-the-cleaver" },
            route = {
                Point(1420, 0.5916, 0.4851, "Mausoleum Trigger",
                    "Travel to Mausoleum Trigger.")
            }
            },
        {
            id = "turnin-1819-ulag-the-cleaver",
            kind = "turnin",
            priority = 1230,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Turn in Ulag the Cleaver.",
            complete = QuestState(1819, "completed"),
            dependsOn = { "accept-1819-ulag-the-cleaver", "objective-1819-1-mausoleum-trigger" },
            route = {
                Point(1420, 0.5820, 0.5145, "Ulag the Cleaver",
                    "Travel to Ulag the Cleaver.")
            }
            },
        {
            id = "accept-1820-speak-with-coleman",
            kind = "accept",
            priority = 1240,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Accept Speak with Coleman.",
            complete = QuestState(1820, "activeOrCompleted"),
            route = {
                Point(1420, 0.5820, 0.5145, "Speak with Coleman",
                    "Travel to Speak with Coleman.")
            }
            },
        {
            id = "turnin-1820-speak-with-coleman",
            kind = "turnin",
            priority = 1250,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 1 }
            } },
            text = "Turn in Speak with Coleman.",
            complete = QuestState(1820, "completed"),
            dependsOn = { "accept-1820-speak-with-coleman" },
            route = {
                Point(1420, 0.6172, 0.5229, "Speak with Coleman",
                    "Travel to Speak with Coleman.")
            }
            },
        {
            id = "turnin-1478-halgar-s-summons",
            kind = "turnin",
            priority = 1260,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Turn in Halgar's Summons.",
            complete = QuestState(1478, "completed"),
            dependsOn = { "accept-1478-halgar-s-summons" },
            route = {
                Point(1458, 0.8504, 0.2601, "Halgar's Summons",
                    "Travel to Halgar's Summons.")
            }
            },
        {
            id = "accept-1473-creature-of-the-void",
            kind = "accept",
            priority = 1270,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Accept Creature of the Void.",
            complete = QuestState(1473, "activeOrCompleted"),
            route = {
                Point(1458, 0.8504, 0.2601, "Creature of the Void",
                    "Travel to Creature of the Void.")
            }
            },
        {
            id = "turnin-1885-mennet-carkad",
            kind = "turnin",
            priority = 1280,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 4 }
            } },
            text = "Turn in Mennet Carkad.",
            complete = QuestState(1885, "completed"),
            dependsOn = { "accept-1885-mennet-carkad" },
            route = {
                Point(1458, 0.8351, 0.6911, "Mennet Carkad",
                    "Travel to Mennet Carkad.")
            }
            },
        {
            id = "accept-1886-the-deathstalkers",
            kind = "accept",
            priority = 1290,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Accept The Deathstalkers.",
            complete = QuestState(1886, "activeOrCompleted"),
            route = {
                Point(1458, 0.8351, 0.6911, "The Deathstalkers",
                    "Travel to The Deathstalkers."),
            },
        },
        {
            id = "turnin-5660-touch-of-weakness",
            kind = "turnin",
            priority = 1300,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 5 }
            } },
            text = "Turn in Touch of Weakness.",
            complete = QuestState(5660, "completed"),
            dependsOn = { "accept-5660-touch-of-weakness" },
            route = {
                Point(1458, 0.4926, 0.1712, "Touch of Weakness",
                    "Travel to Touch of Weakness.")
            }
            },
        {
            id = "turnin-1881-speak-with-anastasia",
            kind = "turnin",
            priority = 1310,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Speak with Anastasia.",
            complete = QuestState(1881, "completed"),
            dependsOn = { "accept-1881-speak-with-anastasia" },
            route = {
                Point(1458, 0.8514, 0.1003, "Speak with Anastasia",
                    "Travel to Speak with Anastasia.")
            }
            },
        {
            id = "accept-1882-the-balnir-farmstead",
            kind = "accept",
            priority = 1320,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept The Balnir Farmstead.",
            complete = QuestState(1882, "activeOrCompleted"),
            route = {
                Point(1458, 0.8514, 0.1003, "The Balnir Farmstead",
                    "Travel to The Balnir Farmstead.")
            }
            },
        {
            id = "objective-370-1-captain-perrine",
            kind = "objective",
            priority = 1330,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Captain Perrine.",
            complete = QuestObjective(370, 1, "Captain Perrine"),
            dependsOn = { "accept-370-at-war-with-the-scarlet-crusade" },
            route = {
                Point(1420, 0.5113, 0.6780, "Captain Perrine",
                    "Travel to Captain Perrine.")
            }
            },
        {
            id = "turnin-1473-creature-of-the-void",
            kind = "turnin",
            priority = 1340,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Turn in Creature of the Void.",
            complete = QuestState(1473, "completed"),
            dependsOn = { "accept-1473-creature-of-the-void" },
            route = {
                Point(1458, 0.8504, 0.2601, "Creature of the Void",
                    "Travel to Creature of the Void.")
            }
            },
        {
            id = "accept-1471-the-binding",
            kind = "accept",
            priority = 1350,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Accept The Binding.",
            complete = QuestState(1471, "activeOrCompleted"),
            route = {
                Point(1458, 0.8504, 0.2601, "The Binding",
                    "Travel to The Binding.")
            }
            },
        {
            id = "objective-1471-1-runes-of-summoning",
            kind = "objective",
            priority = 1360,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Use Runes of Summoning.",
            complete = QuestObjective(1471, 1, "Runes of Summoning"),
            dependsOn = { "accept-1471-the-binding" },
            route = {
                Point(1458, 0.8662, 0.2710, "Runes of Summoning",
                    "Travel to Runes of Summoning.")
            }
            },
        {
            id = "turnin-1471-the-binding",
            kind = "turnin",
            priority = 1370,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 9 }
            } },
            text = "Turn in The Binding.",
            complete = QuestState(1471, "completed"),
            dependsOn = { "accept-1471-the-binding", "objective-1471-1-runes-of-summoning" },
            route = {
                Point(1458, 0.8504, 0.2601, "The Binding",
                    "Travel to The Binding.")
            }
            },
        {
            id = "objective-375-1-greater-duskbat",
            kind = "objective",
            priority = 1380,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Greater Duskbat.",
            complete = QuestObjective(375, 1, "Greater Duskbat"),
            dependsOn = { "accept-375-the-chill-of-death" },
            route = {
                Point(1420, 0.5840, 0.5440, "Greater Duskbat",
                    "Travel to Greater Duskbat.")
            }
            },
        {
            id = "objective-362-1-devlin-agamand",
            kind = "objective",
            priority = 1390,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Devlin Agamand.",
            complete = QuestObjective(362, 1, "Devlin Agamand"),
            dependsOn = { "accept-362-the-haunted-mills" },
            route = {
                Point(1420, 0.4740, 0.4160, "Devlin Agamand",
                    "Travel to Devlin Agamand.")
            }
            },
        {
            id = "objective-354-2-nissa-agamand",
            kind = "objective",
            priority = 1400,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Nissa Agamand.",
            complete = QuestObjective(354, 2, "Nissa Agamand"),
            dependsOn = { "accept-354-deaths-in-the-family" },
            route = {
                Point(1420, 0.4954, 0.3602, "Nissa Agamand",
                    "Travel to Nissa Agamand.")
            }
            },
        {
            id = "objective-354-1-gregor-agamand",
            kind = "objective",
            priority = 1410,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Gregor Agamand.",
            complete = QuestObjective(354, 1, "Gregor Agamand"),
            dependsOn = { "accept-354-deaths-in-the-family" },
            route = {
                Point(1420, 0.4640, 0.3060, "Gregor Agamand",
                    "Travel to Gregor Agamand.")
            }
            },
        {
            id = "objective-354-3-thurman-agamand",
            kind = "objective",
            priority = 1420,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Thurman Agamand.",
            complete = QuestObjective(354, 3, "Thurman Agamand"),
            dependsOn = { "accept-354-deaths-in-the-family" },
            route = {
                Point(1420, 0.4340, 0.3420, "Thurman Agamand",
                    "Travel to Thurman Agamand.")
            }
            },
        {
            id = "accept-361-a-letter-undelivered",
            kind = "accept",
            priority = 1430,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Use the A Sealed Letter to accept A Letter Undelivered.",
            complete = QuestState(361, "activeOrCompleted"),
            route = nil
            },
        {
            id = "objective-398-1-maggot-eye",
            kind = "objective",
            priority = 1440,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Maggot Eye.",
            complete = QuestObjective(398, 1, "Maggot Eye"),
            dependsOn = { "accept-398-wanted-maggot-eye" },
            route = {
                Point(1420, 0.5428, 0.3167, "Maggot Eye",
                    "Travel to Maggot Eye.")
            }
            },
        {
            id = "objective-368-1-vile-fin-puddlejumper",
            kind = "objective",
            priority = 1450,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Vile Fin Puddlejumper.",
            complete = QuestObjective(368, 1, "Vile Fin Puddlejumper"),
            dependsOn = { "accept-368-a-new-plague" },
            route = {
                Point(1420, 0.6240, 0.2880, "Vile Fin Puddlejumper",
                    "Travel to Vile Fin Puddlejumper.")
            }
            },
        {
            id = "objective-358-1-rot-hide-graverobber",
            kind = "objective",
            priority = 1460,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill 8 Rot Hide Graverobber.",
            complete = QuestObjective(358, 1, "Rot Hide Graverobber"),
            dependsOn = { "accept-358-graverobbers" },
            route = {
                Point(1420, 0.5537, 0.4234, "Rot Hide Graverobber",
                    "Travel to Rot Hide Graverobber.")
            }
            },
        {
            id = "turnin-5482-doom-weed",
            kind = "turnin",
            priority = 1470,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Doom Weed.",
            complete = QuestState(5482, "completed"),
            dependsOn = { "accept-5482-doom-weed" },
            useClientPin = true,
            route = nil
            },
        {
            id = "turnin-426-the-mills-overrun",
            kind = "turnin",
            priority = 1480,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Mills Overrun.",
            complete = QuestState(426, "completed"),
            dependsOn = { "accept-426-the-mills-overrun" },
            route = {
                Point(1420, 0.5820, 0.5145, "The Mills Overrun",
                    "Travel to The Mills Overrun.")
            }
            },
        {
            id = "turnin-368-a-new-plague",
            kind = "turnin",
            priority = 1490,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A New Plague.",
            complete = QuestState(368, "completed"),
            dependsOn = { "accept-368-a-new-plague", "objective-368-1-vile-fin-puddlejumper" },
            route = {
                Point(1420, 0.5945, 0.5240, "A New Plague",
                    "Travel to A New Plague.")
            }
            },
        {
            id = "accept-369-a-new-plague",
            kind = "accept",
            priority = 1500,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A New Plague.",
            complete = QuestState(369, "activeOrCompleted"),
            route = {
                Point(1420, 0.5945, 0.5240, "A New Plague",
                    "Travel to A New Plague.")
            }
            },
        {
            id = "turnin-370-at-war-with-the-scarlet-crusade",
            kind = "turnin",
            priority = 1510,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in At War With The Scarlet Crusade.",
            complete = QuestState(370, "completed"),
            dependsOn = { "accept-370-at-war-with-the-scarlet-crusade", "objective-370-1-captain-perrine" },
            route = {
                Point(1420, 0.6059, 0.5176, "At War With The Scarlet Crusade",
                    "Travel to At War With The Scarlet Crusade.")
            }
            },
        {
            id = "accept-371-at-war-with-the-scarlet-crusade",
            kind = "accept",
            priority = 1520,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept At War With The Scarlet Crusade.",
            complete = QuestState(371, "activeOrCompleted"),
            route = {
                Point(1420, 0.6059, 0.5176, "At War With The Scarlet Crusade",
                    "Travel to At War With The Scarlet Crusade.")
            }
            },
        {
            id = "turnin-398-wanted-maggot-eye",
            kind = "turnin",
            priority = 1530,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Wanted: Maggot Eye.",
            complete = QuestState(398, "completed"),
            dependsOn = { "accept-398-wanted-maggot-eye", "objective-398-1-maggot-eye" },
            route = {
                Point(1420, 0.6059, 0.5176, "Wanted: Maggot Eye",
                    "Travel to Wanted: Maggot Eye.")
            }
            },
        {
            id = "turnin-358-graverobbers",
            kind = "turnin",
            priority = 1540,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Graverobbers.",
            complete = QuestState(358, "completed"),
            dependsOn = { "accept-358-graverobbers", "objective-358-1-rot-hide-graverobber" },
            route = {
                Point(1420, 0.6126, 0.5084, "Graverobbers",
                    "Travel to Graverobbers.")
            }
            },
        {
            id = "accept-359-forsaken-duties",
            kind = "accept",
            priority = 1550,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Forsaken Duties.",
            complete = QuestState(359, "activeOrCompleted"),
            route = {
                Point(1420, 0.6126, 0.5084, "Forsaken Duties",
                    "Travel to Forsaken Duties.")
            }
            },
        {
            id = "turnin-374-proof-of-demise",
            kind = "turnin",
            priority = 1560,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Proof of Demise.",
            complete = QuestState(374, "completed"),
            dependsOn = { "accept-374-proof-of-demise" },
            route = {
                Point(1420, 0.6093, 0.5201, "Proof of Demise",
                    "Travel to Proof of Demise.")
            }
            },
        {
            id = "turnin-361-a-letter-undelivered",
            kind = "turnin",
            priority = 1570,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A Letter Undelivered.",
            complete = QuestState(361, "completed"),
            dependsOn = { "accept-361-a-letter-undelivered" },
            route = {
                Point(1420, 0.6158, 0.5260, "A Letter Undelivered",
                    "Travel to A Letter Undelivered.")
            }
            },
        {
            id = "turnin-354-deaths-in-the-family",
            kind = "turnin",
            priority = 1580,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Deaths in the Family.",
            complete = QuestState(354, "completed"),
            dependsOn = { "accept-354-deaths-in-the-family", "objective-354-2-nissa-agamand", "objective-354-1-gregor-agamand", "objective-354-3-thurman-agamand" },
            route = {
                Point(1420, 0.6172, 0.5229, "Deaths in the Family",
                    "Travel to Deaths in the Family.")
            }
            },
        {
            id = "turnin-362-the-haunted-mills",
            kind = "turnin",
            priority = 1590,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Haunted Mills.",
            complete = QuestState(362, "completed"),
            dependsOn = { "accept-362-the-haunted-mills", "objective-362-1-devlin-agamand" },
            route = {
                Point(1420, 0.6172, 0.5229, "The Haunted Mills",
                    "Travel to The Haunted Mills.")
            }
            },
        {
            id = "accept-355-speak-with-sevren",
            kind = "accept",
            priority = 1600,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Speak with Sevren.",
            complete = QuestState(355, "activeOrCompleted"),
            route = {
                Point(1420, 0.6172, 0.5229, "Speak with Sevren",
                    "Travel to Speak with Sevren.")
            }
            },
        {
            id = "turnin-375-the-chill-of-death",
            kind = "turnin",
            priority = 1610,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in The Chill of Death.",
            complete = QuestState(375, "completed"),
            dependsOn = { "accept-375-the-chill-of-death", "objective-375-1-greater-duskbat" },
            route = {
                Point(1420, 0.6189, 0.5273, "The Chill of Death",
                    "Travel to The Chill of Death.")
            }
            },
        {
            id = "turnin-359-forsaken-duties",
            kind = "turnin",
            priority = 1620,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Forsaken Duties.",
            complete = QuestState(359, "completed"),
            dependsOn = { "accept-359-forsaken-duties" },
            route = {
                Point(1420, 0.6549, 0.6025, "Forsaken Duties",
                    "Travel to Forsaken Duties.")
            }
            },
        {
            id = "accept-360-return-to-the-magistrate",
            kind = "accept",
            priority = 1630,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Return to the Magistrate.",
            complete = QuestState(360, "activeOrCompleted"),
            route = {
                Point(1420, 0.6549, 0.6025, "Return to the Magistrate",
                    "Travel to the Magistrate.")
            }
            },
        {
            id = "accept-356-rear-guard-patrol",
            kind = "accept",
            priority = 1640,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept Rear Guard Patrol.",
            complete = QuestState(356, "activeOrCompleted"),
            route = {
                Point(1420, 0.6549, 0.6025, "Rear Guard Patrol",
                    "Travel to Rear Guard Patrol.")
            }
            },
        {
            id = "objective-371-1-captain-vachon",
            kind = "objective",
            priority = 1650,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Captain Vachon.",
            complete = QuestObjective(371, 1, "Captain Vachon"),
            dependsOn = { "accept-371-at-war-with-the-scarlet-crusade" },
            route = {
                Point(1420, 0.7882, 0.5613, "Captain Vachon",
                    "Travel to Captain Vachon.")
            }
            },
        {
            id = "objective-369-1-vicious-night-web-spider",
            kind = "objective",
            priority = 1660,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Kill Vicious Night Web Spider.",
            complete = QuestObjective(369, 1, "Vicious Night Web Spider"),
            dependsOn = { "accept-369-a-new-plague" },
            route = {
                Point(1420, 0.8340, 0.5140, "Vicious Night Web Spider",
                    "Travel to Vicious Night Web Spider.")
            }
            },
        {
            id = "turnin-356-rear-guard-patrol",
            kind = "turnin",
            priority = 1670,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Rear Guard Patrol.",
            complete = QuestState(356, "completed"),
            dependsOn = { "accept-356-rear-guard-patrol" },
            route = {
                Point(1420, 0.6549, 0.6025, "Rear Guard Patrol",
                    "Travel to Rear Guard Patrol.")
            }
            },
        {
            id = "turnin-355-speak-with-sevren",
            kind = "turnin",
            priority = 1680,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Speak with Sevren.",
            complete = QuestState(355, "completed"),
            dependsOn = { "accept-355-speak-with-sevren" },
            route = {
                Point(1420, 0.6126, 0.5084, "Speak with Sevren",
                    "Travel to Speak with Sevren.")
            }
            },
        {
            id = "turnin-360-return-to-the-magistrate",
            kind = "turnin",
            priority = 1690,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in Return to the Magistrate.",
            complete = QuestState(360, "completed"),
            dependsOn = { "accept-360-return-to-the-magistrate" },
            route = {
                Point(1420, 0.6126, 0.5084, "Return to the Magistrate",
                    "Travel to the Magistrate.")
            }
            },
        {
            id = "turnin-371-at-war-with-the-scarlet-crusade",
            kind = "turnin",
            priority = 1700,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in At War With The Scarlet Crusade.",
            complete = QuestState(371, "completed"),
            dependsOn = { "accept-371-at-war-with-the-scarlet-crusade", "objective-371-1-captain-vachon" },
            route = {
                Point(1420, 0.6058, 0.5177, "At War With The Scarlet Crusade",
                    "Travel to At War With The Scarlet Crusade.")
            }
            },
        {
            id = "turnin-369-a-new-plague",
            kind = "turnin",
            priority = 1710,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A New Plague.",
            complete = QuestState(369, "completed"),
            dependsOn = { "accept-369-a-new-plague", "objective-369-1-vicious-night-web-spider" },
            route = {
                Point(1420, 0.5945, 0.5240, "A New Plague",
                    "Travel to A New Plague.")
            }
            },
        {
            id = "accept-492-a-new-plague",
            kind = "accept",
            priority = 1720,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Accept A New Plague.",
            complete = QuestState(492, "activeOrCompleted"),
            route = {
                Point(1420, 0.5945, 0.5240, "A New Plague",
                    "Travel to A New Plague.")
            }
            },
        {
            id = "accept-445-delivery-to-silverpine-forest",
            kind = "accept",
            priority = 1730,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Horde" },
            } },
            text = "Accept Delivery to Silverpine Forest.",
            complete = QuestState(445, "activeOrCompleted"),
            route = {
                Point(1420, 0.5945, 0.5240, "Delivery to Silverpine Forest",
                    "Travel to Delivery to Silverpine Forest."),
            },
        },
        {
            id = "turnin-492-a-new-plague",
            kind = "turnin",
            priority = 1740,
            conditions = { all = {
                { },
                { faction = "Horde" }
            } },
            text = "Turn in A New Plague.",
            complete = QuestState(492, "completed"),
            dependsOn = { "accept-492-a-new-plague" },
            route = {
                Point(1420, 0.6194, 0.5140, "A New Plague",
                    "Travel to A New Plague.")
            }
            },
        {
            id = "turnin-1882-the-balnir-farmstead",
            kind = "turnin",
            priority = 1750,
            conditions = { all = {
                { },
                { faction = "Horde" },
                { class = 8 }
            } },
            text = "Turn in The Balnir Farmstead.",
            complete = QuestState(1882, "completed"),
            dependsOn = { "accept-1882-the-balnir-farmstead" },
            route = {
                Point(1458, 0.8514, 0.1003, "The Balnir Farmstead",
                    "Travel to The Balnir Farmstead.")
            }
            },
        {
            id = "objective-1886-1-astor-hadren",
            kind = "objective",
            priority = 1760,
            conditions = { all = {
                { level = { min = 13 } },
                { faction = "Horde" },
                { class = 4 },
            } },
            text = "Kill Astor Hadren.",
            complete = QuestObjective(1886, 1, "Astor Hadren"),
            dependsOn = { "accept-1886-the-deathstalkers" },
            useClientPin = true,
            route = nil,
        },
        {
            id = "woven-accept-98601-a-difficult-path",
            kind = "accept",
            priority = 1770,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                },
            },
            text = "Accept A Difficult Path from Shadow Priest Sarvis in Deathknell.",
            complete = QuestState(98601, "activeOrCompleted"),
            route = {
                Point(1420, 0.3086, 0.6617, "Shadow Priest Sarvis",
                    "Travel to Shadow Priest Sarvis."),
            },
        },
        {
            id = "woven-turnin-98601-a-difficult-path",
            kind = "turnin",
            priority = 1780,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                },
            },
            text = "Turn in A Difficult Path to Aramis Hammerhand in Deathknell.",
            complete = QuestState(98601, "completed"),
            route = {
                Point(1420, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand."),
            },
        },
        {
            id = "woven-accept-98389-a-light-in-the-darkness",
            kind = "accept",
            priority = 1790,
            conditions = { level = { min = 4 } },
            text = "Accept A Light in the Darkness from Aramis Hammerhand in Deathknell.",
            complete = QuestState(98389, "activeOrCompleted"),
            route = {
                Point(1420, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand."),
            },
        },
        {
            id = "woven-accept-90902-rediscovering-the-light",
            kind = "accept",
            priority = 1800,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 2 } },
                },
            },
            text = "Accept Rediscovering the Light from Aramis Hammerhand in Deathknell.",
            complete = QuestState(90902, "activeOrCompleted"),
            route = {
                Point(1420, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand."),
            },
        },
        {
            id = "woven-objective-98389-a-light-in-the-darkness",
            kind = "objective",
            priority = 1810,
            conditions = { level = { min = 4 } },
            text = "Free 6 Webbed Forsaken in Night Web's Hollow.",
            complete = QuestState(98389, "complete"),
            route = {
                Point(1420, 0.2660, 0.5940, "Webbed Forsaken",
                    "Travel to Webbed Forsaken."),
            },
        },
        {
            id = "woven-turnin-98389-a-light-in-the-darkness",
            kind = "turnin",
            priority = 1820,
            conditions = { level = { min = 4 } },
            text = "Turn in A Light in the Darkness to Aramis Hammerhand in Deathknell.",
            complete = QuestState(98389, "completed"),
            route = {
                Point(1420, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand."),
            },
        },
        {
            id = "woven-objective-90902-rediscovering-the-light",
            kind = "objective",
            priority = 1830,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 2 } },
                },
            },
            text = "Heal 5 Injured Deathguard with Holy Light in Deathknell.",
            complete = QuestState(90902, "complete"),
            route = {
                Point(1420, 0.3160, 0.6480, "Injured Deathguard",
                    "Travel to Injured Deathguard."),
            },
        },
        {
            id = "woven-turnin-90902-rediscovering-the-light",
            kind = "turnin",
            priority = 1840,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 2 } },
                },
            },
            text = "Turn in Rediscovering the Light to Aramis Hammerhand in Deathknell.",
            complete = QuestState(90902, "completed"),
            route = {
                Point(1420, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand."),
            },
        },
        {
            id = "woven-accept-91208-coming-to-terms",
            kind = "accept",
            priority = 1850,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Coming to Terms from Aramis Hammerhand in Deathknell.",
            complete = QuestState(91208, "activeOrCompleted"),
            route = {
                Point(1420, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand."),
            },
        },
        {
            id = "woven-objective-91208-coming-to-terms",
            kind = "objective",
            priority = 1860,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 4 } },
                },
            },
            text = "Find the Frightened Paladin in the hills west of the Deathknell chapel.",
            complete = QuestState(91208, "complete"),
            route = {
                Point(1420, 0.2760, 0.6380, "Frightened Paladin",
                    "Travel to Frightened Paladin."),
            },
        },
        {
            id = "woven-turnin-91208-coming-to-terms",
            kind = "turnin",
            priority = 1870,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Coming to Terms to Aramis Hammerhand in Deathknell.",
            complete = QuestState(91208, "completed"),
            route = {
                Point(1420, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand."),
            },
        },
        {
            id = "woven-accept-91209-continue-your-training",
            kind = "accept",
            priority = 1880,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 4 } },
                },
            },
            text = "Accept Continue Your Training from Aramis Hammerhand in Deathknell.",
            complete = QuestState(91209, "activeOrCompleted"),
            route = {
                Point(1420, 0.3100, 0.6620, "Aramis Hammerhand",
                    "Travel to Aramis Hammerhand."),
            },
        },
        {
            id = "woven-accept-96656-the-adventurer",
            kind = "accept",
            priority = 1890,
            conditions = { level = { min = 6 } },
            text = "Accept The Adventurer from Executor Arren in Deathknell.",
            complete = QuestState(96656, "activeOrCompleted"),
            route = {
                Point(1420, 0.3200, 0.6600, "Executor Arren",
                    "Travel to Executor Arren."),
            },
        },
        {
            id = "woven-turnin-91209-continue-your-training",
            kind = "turnin",
            priority = 1900,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 4 } },
                },
            },
            text = "Turn in Continue Your Training to Shari Stilwell in Brill.",
            complete = QuestState(91209, "completed"),
            route = {
                Point(1420, 0.6020, 0.5260, "Shari Stilwell",
                    "Travel to Shari Stilwell."),
            },
        },
        {
            id = "woven-turnin-96656-the-adventurer",
            kind = "turnin",
            priority = 1910,
            conditions = { level = { min = 6 } },
            text = "Turn in The Adventurer to Eleanor Shackleton in Brill.",
            complete = QuestState(96656, "completed"),
            route = {
                Point(1420, 0.5720, 0.5540, "Eleanor Shackleton",
                    "Travel to Eleanor Shackleton."),
            },
        },
        {
            id = "woven-accept-96101-the-great-outdoors",
            kind = "accept",
            priority = 1920,
            conditions = { level = { min = 6 } },
            text = "Accept The Great Outdoors from Eleanor Shackleton.",
            complete = QuestState(96101, "activeOrCompleted"),
            route = {
                Point(1420, 0.5720, 0.5540, "Eleanor Shackleton",
                    "Travel to Eleanor Shackleton."),
            },
        },
        {
            id = "woven-objective-96101-the-great-outdoors",
            kind = "objective",
            priority = 1930,
            conditions = { level = { min = 6 } },
            text = "Type /sit at Eleanor Shackleton's campfire and wait until you gain the Boosted Rest buff.",
            complete = QuestState(96101, "complete"),
        },
        {
            id = "woven-turnin-96101-the-great-outdoors",
            kind = "turnin",
            priority = 1940,
            conditions = { level = { min = 6 } },
            text = "Turn in The Great Outdoors to Eleanor Shackleton.",
            complete = QuestState(96101, "completed"),
            route = {
                Point(1420, 0.5720, 0.5540, "Eleanor Shackleton",
                    "Travel to Eleanor Shackleton."),
            },
        },
        {
            id = "woven-accept-99134-discipline",
            kind = "accept",
            priority = 1950,
            conditions = { level = { min = 6 } },
            text = "Accept Discipline from Executor Zygand in Brill.",
            complete = QuestState(99134, "activeOrCompleted"),
            route = {
                Point(1420, 0.6060, 0.5180, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "woven-accept-95314-that-shadowvale-green-elixir",
            kind = "accept",
            priority = 1960,
            conditions = { level = { min = 10 } },
            text = "Accept That Shadowvale Green Elixir from Carolai Anise in Brill.",
            complete = QuestState(95314, "activeOrCompleted"),
            route = {
                Point(1420, 0.5940, 0.5220, "Carolai Anise",
                    "Travel to Carolai Anise."),
            },
        },
        {
            id = "woven-accept-99142-tomb-weed",
            kind = "accept",
            priority = 1970,
            conditions = { level = { min = 5 } },
            text = "Accept Tomb Weed from Junior Apothecary Holland in Brill.",
            complete = QuestState(99142, "activeOrCompleted"),
            route = {
                Point(1420, 0.5760, 0.4900, "Junior Apothecary Holland",
                    "Travel to Junior Apothecary Holland."),
            },
        },
        {
            id = "woven-objective-99142-tomb-weed",
            kind = "objective",
            priority = 1980,
            conditions = { level = { min = 5 } },
            text = "Collect 5 Tomb Weed at Balnir Farmstead, on the same trip as Rear Guard Patrol.",
            complete = QuestState(99142, "complete"),
            route = {
                Point(1420, 0.7500, 0.6000, "Balnir Farmstead",
                    "Travel to Balnir Farmstead."),
            },
        },
        {
            id = "woven-turnin-99142-tomb-weed",
            kind = "turnin",
            priority = 1990,
            conditions = { level = { min = 5 } },
            text = "Turn in Tomb Weed to Junior Apothecary Holland.",
            complete = QuestState(99142, "completed"),
            route = {
                Point(1420, 0.5760, 0.4900, "Junior Apothecary Holland",
                    "Travel to Junior Apothecary Holland."),
            },
        },
        {
            id = "woven-objective-99134-discipline",
            kind = "objective",
            priority = 2000,
            conditions = { level = { min = 6 } },
            text = "Motivate the Deathguards Executor Zygand named. They stand in Brill and along the roads you are already riding, including Deathknell.",
            complete = QuestState(99134, "complete"),
            route = {
                Point(1420, 0.6060, 0.5180, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "woven-turnin-99134-discipline",
            kind = "turnin",
            priority = 2010,
            conditions = { level = { min = 6 } },
            text = "Turn in Discipline to Executor Zygand.",
            complete = QuestState(99134, "completed"),
            route = {
                Point(1420, 0.6060, 0.5180, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "woven-accept-99141-patience",
            kind = "accept",
            priority = 2020,
            conditions = { level = { min = 6 } },
            text = "Accept Patience from Executor Zygand.",
            complete = QuestState(99141, "activeOrCompleted"),
            route = {
                Point(1420, 0.6060, 0.5180, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "woven-objective-99141-patience",
            kind = "objective",
            priority = 2030,
            conditions = { level = { min = 6 } },
            text = "Collect reports from Deathguard Dillinger, Deathguard Kristof, and Gordo.",
            complete = QuestState(99141, "complete"),
            route = {
                Point(1420, 0.5820, 0.5140, "Deathguard Dillinger",
                    "Travel to Deathguard Dillinger."),
            },
        },
        {
            id = "woven-turnin-99141-patience",
            kind = "turnin",
            priority = 2040,
            conditions = { level = { min = 6 } },
            text = "Turn in Patience to Executor Zygand.",
            complete = QuestState(99141, "completed"),
            route = {
                Point(1420, 0.6060, 0.5180, "Executor Zygand",
                    "Travel to Executor Zygand."),
            },
        },
        {
            id = "woven-accept-97558-hides-for-the-forsaken",
            kind = "accept",
            priority = 2050,
            conditions = { level = { min = 11 } },
            text = "Accept Hides for the Forsaken from Shelene Rhobart.",
            complete = QuestState(97558, "activeOrCompleted"),
            route = {
                Point(1420, 0.6540, 0.6000, "Shelene Rhobart",
                    "Travel to Shelene Rhobart."),
            },
        },
        {
            id = "woven-objective-97558-hides-for-the-forsaken",
            kind = "objective",
            priority = 2060,
            conditions = { level = { min = 11 } },
            text = "Collect 8 Duskbat Wing Membranes, 6 Darkhound Hides, and 3 Vile Fin Murloc Skins.",
            complete = QuestState(97558, "complete"),
            route = {
                Point(1420, 0.6540, 0.6000, "Shelene Rhobart",
                    "Travel to Shelene Rhobart."),
            },
        },
        {
            id = "woven-objective-95314-that-shadowvale-green-elixir",
            kind = "objective",
            priority = 2070,
            conditions = { level = { min = 10 } },
            text = "Collect 8 Bottles of Whispering Elixir in Shadowvale. A Whispering Horror may drop residue. Use it if it does.",
            complete = QuestState(95314, "complete"),
            route = {
                Point(1420, 0.1100, 0.6600, "Shadowvale",
                    "Travel to Shadowvale."),
            },
        },
        {
            id = "woven-accept-99144-seeking-refuge",
            kind = "accept",
            priority = 2080,
            conditions = { level = { min = 7 } },
            text = "Accept Seeking Refuge from Bareth Dawnstone at the top of the tower in Solliden Farmstead.",
            complete = QuestState(99144, "activeOrCompleted"),
            route = {
                Point(1420, 0.3400, 0.4800, "Bareth Dawnstone",
                    "Travel to Bareth Dawnstone."),
            },
        },
        {
            id = "woven-objective-99144-seeking-refuge",
            kind = "objective",
            priority = 2090,
            conditions = { level = { min = 7 } },
            text = "Escort Bareth Dawnstone out of Solliden Farmstead.",
            complete = QuestState(99144, "complete"),
            route = {
                Point(1420, 0.3400, 0.4800, "Bareth Dawnstone",
                    "Travel to Bareth Dawnstone."),
            },
        },
        {
            id = "woven-accept-99156-rear-guard-patrol",
            kind = "accept",
            priority = 2100,
            conditions = { level = { min = 13 } },
            text = "Accept Rear Guard Patrol from Deathguard Linnea.",
            complete = QuestState(99156, "activeOrCompleted"),
            route = {
                Point(1420, 0.6540, 0.6020, "Deathguard Linnea",
                    "Travel to Deathguard Linnea."),
            },
        },
        {
            id = "woven-objective-99156-rear-guard-patrol",
            kind = "objective",
            priority = 2110,
            conditions = { level = { min = 13 } },
            text = "Kill Riptear and bring Riptear's Heart to Deathguard Linnea.",
            complete = QuestState(99156, "complete"),
            route = {
                Point(1420, 0.8280, 0.4420, "Riptear",
                    "Travel to Riptear."),
            },
        },
        {
            id = "woven-turnin-99156-rear-guard-patrol",
            kind = "turnin",
            priority = 2120,
            conditions = { level = { min = 13 } },
            text = "Turn in Rear Guard Patrol to Deathguard Linnea.",
            complete = QuestState(99156, "completed"),
            route = {
                Point(1420, 0.6540, 0.6020, "Deathguard Linnea",
                    "Travel to Deathguard Linnea."),
            },
        },
        {
            id = "woven-turnin-97558-hides-for-the-forsaken",
            kind = "turnin",
            priority = 2130,
            conditions = { level = { min = 11 } },
            text = "Turn in Hides for the Forsaken to Shelene Rhobart.",
            complete = QuestState(97558, "completed"),
            route = {
                Point(1420, 0.6540, 0.6000, "Shelene Rhobart",
                    "Travel to Shelene Rhobart."),
            },
        },
        {
            id = "woven-turnin-99144-seeking-refuge",
            kind = "turnin",
            priority = 2140,
            conditions = { level = { min = 7 } },
            text = "Turn in Seeking Refuge to Shari Stilwell in Brill.",
            complete = QuestState(99144, "completed"),
            route = {
                Point(1420, 0.6020, 0.5260, "Shari Stilwell",
                    "Travel to Shari Stilwell."),
            },
        },
        {
            id = "woven-turnin-95314-that-shadowvale-green-elixir",
            kind = "turnin",
            priority = 2150,
            conditions = { level = { min = 10 } },
            text = "Turn in That Shadowvale Green Elixir to Carolai Anise in Brill.",
            complete = QuestState(95314, "completed"),
            route = {
                Point(1420, 0.5940, 0.5220, "Carolai Anise",
                    "Travel to Carolai Anise."),
            },
        },
        {
            id = "woven-accept-91282-a-second-home",
            kind = "accept",
            priority = 2160,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 8 } },
                },
            },
            text = "Accept A Second Home from Shari Stilwell in Brill.",
            complete = QuestState(91282, "activeOrCompleted"),
            route = {
                Point(1420, 0.6020, 0.5260, "Shari Stilwell", "Travel to Shari Stilwell."),
            },
        },
        {
            id = "woven-turnin-91282-a-second-home",
            kind = "turnin",
            priority = 2170,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 8 } },
                },
            },
            text = "Turn in A Second Home to Breton Samuels at Bandarion Keep.",
            complete = QuestState(91282, "completed"),
            route = {
                Point(1420, 0.2180, 0.4520, "Breton Samuels", "Travel to Breton Samuels."),
            },
        },
        {
            id = "woven-accept-91285-murlocs-at-the-gates",
            kind = "accept",
            priority = 2180,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 7 } },
                },
            },
            text = "Accept Murlocs at the Gates from Breton Samuels at Bandarion Keep.",
            complete = QuestState(91285, "activeOrCompleted"),
            route = {
                Point(1420, 0.2180, 0.4520, "Breton Samuels", "Travel to Breton Samuels."),
            },
        },
        {
            id = "woven-objective-91285-murlocs-at-the-gates",
            kind = "objective",
            priority = 2190,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 7 } },
                },
            },
            text = "Kill Vile Fin Attackers and Vile Fin Seers for Breton Samuels.",
            complete = QuestState(91285, "complete"),
            route = {
                Point(1420, 0.1720, 0.5820, "Vile Fin Seer", "Travel to Vile Fin Seer."),
            },
        },
        {
            id = "woven-turnin-91285-murlocs-at-the-gates",
            kind = "turnin",
            priority = 2200,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 7 } },
                },
            },
            text = "Turn in Murlocs at the Gates to Breton Samuels at Bandarion Keep.",
            complete = QuestState(91285, "completed"),
            route = {
                Point(1420, 0.2180, 0.4520, "Breton Samuels", "Travel to Breton Samuels."),
            },
        },
        {
            id = "woven-accept-91294-touring-the-grounds",
            kind = "accept",
            priority = 2210,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 8 } },
                },
            },
            text = "Accept Touring the Grounds from Breton Samuels at Bandarion Keep.",
            complete = QuestState(91294, "activeOrCompleted"),
            route = {
                Point(1420, 0.2180, 0.4520, "Breton Samuels", "Travel to Breton Samuels."),
            },
        },
        {
            id = "woven-objective-91294-touring-the-grounds",
            kind = "objective",
            priority = 2220,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 8 } },
                },
            },
            text = "Speak with Danitha Morr, Hilda the Breaker, Jorin Croge, and Ander Solliden at Bandarion Keep.",
            complete = QuestState(91294, "complete"),
            route = {
                Point(1420, 0.2200, 0.4720, "Hilda the Breaker", "Travel to Hilda the Breaker."),
            },
        },
        {
            id = "woven-turnin-91294-touring-the-grounds",
            kind = "turnin",
            priority = 2230,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 8 } },
                },
            },
            text = "Turn in Touring the Grounds to Danitha Morr at Bandarion Keep.",
            complete = QuestState(91294, "completed"),
            route = {
                Point(1420, 0.2200, 0.4460, "Danitha Morr", "Travel to Danitha Morr."),
            },
        },
        {
            id = "woven-accept-91316-making-repairs",
            kind = "accept",
            priority = 2240,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 8 } },
                },
            },
            text = "Accept Making Repairs from Jorin Croge at Bandarion Keep.",
            complete = QuestState(91316, "activeOrCompleted"),
            route = {
                Point(1420, 0.2260, 0.4480, "Jorin Croge", "Travel to Jorin Croge."),
            },
        },
        {
            id = "woven-accept-91317-the-tarnished",
            kind = "accept",
            priority = 2250,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 9 } },
                },
            },
            text = "Accept The Tarnished from Danitha Morr at Bandarion Keep.",
            complete = QuestState(91317, "activeOrCompleted"),
            route = {
                Point(1420, 0.2200, 0.4460, "Danitha Morr", "Travel to Danitha Morr."),
            },
        },
        {
            id = "woven-objective-91316-making-repairs",
            kind = "objective",
            priority = 2260,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 8 } },
                },
            },
            text = "Complete Making Repairs for Jorin Croge. The guide follows the pin in your quest log.",
            useClientPin = true,
            complete = QuestState(91316, "complete"),
            route = {
                Point(1420, 0.2260, 0.4480, "Jorin Croge", "Travel to Jorin Croge."),
            },
        },
        {
            id = "woven-objective-91317-the-tarnished",
            kind = "objective",
            priority = 2270,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 9 } },
                },
            },
            text = "The Tarnished: Rudolph Gelhardt's Head.",
            complete = QuestState(91317, "complete"),
            route = {
                Point(1420, 0.1160, 0.6420, "Rudolph Gelhardt", "Travel to Rudolph Gelhardt."),
            },
        },
        {
            id = "woven-turnin-91316-making-repairs",
            kind = "turnin",
            priority = 2280,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 8 } },
                },
            },
            text = "Turn in Making Repairs to Jorin Croge at Bandarion Keep.",
            complete = QuestState(91316, "completed"),
            route = {
                Point(1420, 0.2260, 0.4480, "Jorin Croge", "Travel to Jorin Croge."),
            },
        },
        {
            id = "woven-turnin-91317-the-tarnished",
            kind = "turnin",
            priority = 2290,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in The Tarnished to Danitha Morr at Bandarion Keep.",
            complete = QuestState(91317, "completed"),
            route = {
                Point(1420, 0.2200, 0.4460, "Danitha Morr", "Travel to Danitha Morr."),
            },
        },
        {
            id = "woven-accept-95803-a-token-of-good-faith",
            kind = "accept",
            priority = 2300,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 9 } },
                },
            },
            text = "Accept A Token of Good Faith from Danitha Morr at Bandarion Keep.",
            complete = QuestState(95803, "activeOrCompleted"),
            route = {
                Point(1420, 0.2200, 0.4460, "Danitha Morr", "Travel to Danitha Morr."),
            },
        },
        {
            id = "woven-turnin-95803-a-token-of-good-faith",
            kind = "turnin",
            priority = 2310,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 9 } },
                },
            },
            text = "Turn in A Token of Good Faith to Lady Sylvanas Windrunner in the Royal Quarter.",
            complete = QuestState(95803, "completed"),
            route = {
                Point(1458, 0.5780, 0.9180, "Lady Sylvanas Windrunner", "Travel to Lady Sylvanas Windrunner."),
            },
        },
        {
            id = "woven-accept-94427-a-lesson-in-divinity",
            kind = "accept",
            priority = 2320,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Danitha Morr at Bandarion Keep.",
            complete = QuestState(94427, "activeOrCompleted"),
            route = {
                Point(1420, 0.2200, 0.4460, "Danitha Morr", "Travel to Danitha Morr."),
            },
        },
        {
            id = "woven-turnin-94427-a-lesson-in-divinity",
            kind = "turnin",
            priority = 2330,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Tanis Alderwood in the Undercity.",
            complete = QuestState(94427, "completed"),
            route = {
                Point(1458, 0.6560, 0.3780, "Tanis Alderwood", "Travel to Tanis Alderwood."),
            },
        },
        {
            id = "woven-accept-94434-a-lesson-in-divinity-undercity",
            kind = "accept",
            priority = 2340,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Tanis Alderwood in the Undercity.",
            complete = QuestState(94434, "activeOrCompleted"),
            route = {
                Point(1458, 0.6560, 0.3780, "Tanis Alderwood", "Travel to Tanis Alderwood."),
            },
        },
        {
            id = "woven-objective-94434-a-lesson-in-divinity-undercity",
            kind = "objective",
            priority = 2350,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Complete Tanis Alderwood's lesson in the Undercity. The guide follows the pin in your quest log.",
            useClientPin = true,
            complete = QuestState(94434, "complete"),
            route = {
                Point(1458, 0.6560, 0.3780, "Tanis Alderwood", "Travel to Tanis Alderwood."),
            },
        },
        {
            id = "woven-turnin-94434-a-lesson-in-divinity-undercity",
            kind = "turnin",
            priority = 2360,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Tanis Alderwood in the Undercity.",
            complete = QuestState(94434, "completed"),
            route = {
                Point(1458, 0.6560, 0.3780, "Tanis Alderwood", "Travel to Tanis Alderwood."),
            },
        },
        {
            id = "woven-accept-94435-a-lesson-in-divinity-return",
            kind = "accept",
            priority = 2370,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Tanis Alderwood in the Undercity.",
            complete = QuestState(94435, "activeOrCompleted"),
            route = {
                Point(1458, 0.6560, 0.3780, "Tanis Alderwood", "Travel to Tanis Alderwood."),
            },
        },
        {
            id = "woven-turnin-94435-a-lesson-in-divinity-return",
            kind = "turnin",
            priority = 2380,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Danitha Morr at Bandarion Keep.",
            complete = QuestState(94435, "completed"),
            route = {
                Point(1420, 0.2200, 0.4460, "Danitha Morr", "Travel to Danitha Morr."),
            },
        },
        {
            id = "woven-accept-94436-a-lesson-in-divinity-billmuth",
            kind = "accept",
            priority = 2390,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Danitha Morr at Bandarion Keep.",
            complete = QuestState(94436, "activeOrCompleted"),
            route = {
                Point(1420, 0.2200, 0.4460, "Danitha Morr", "Travel to Danitha Morr."),
            },
        },
        {
            id = "woven-turnin-94436-a-lesson-in-divinity-billmuth",
            kind = "turnin",
            priority = 2400,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Deathguard Billmuth at Bandarion Keep.",
            complete = QuestState(94436, "completed"),
            route = {
                Point(1420, 0.2200, 0.4460, "Deathguard Billmuth", "Travel to Deathguard Billmuth."),
            },
        },
        {
            id = "woven-accept-94438-a-lesson-in-divinity-falgan",
            kind = "accept",
            priority = 2410,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Deathguard Billmuth at Bandarion Keep.",
            complete = QuestState(94438, "activeOrCompleted"),
            route = {
                Point(1420, 0.2200, 0.4460, "Deathguard Billmuth", "Travel to Deathguard Billmuth."),
            },
        },
        {
            id = "woven-turnin-94438-a-lesson-in-divinity-falgan",
            kind = "turnin",
            priority = 2420,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Deathguard Falgan.",
            complete = QuestState(94438, "completed"),
            route = {
                Point(1420, 0.8660, 0.4760, "Deathguard Falgan", "Travel to Deathguard Falgan."),
            },
        },
        {
            id = "woven-accept-94440-a-lesson-in-divinity-scarlets",
            kind = "accept",
            priority = 2430,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Deathguard Falgan.",
            complete = QuestState(94440, "activeOrCompleted"),
            route = {
                Point(1420, 0.8660, 0.4760, "Deathguard Falgan", "Travel to Deathguard Falgan."),
            },
        },
        {
            id = "woven-objective-94440-a-lesson-in-divinity-scarlets",
            kind = "objective",
            priority = 2440,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Do as Deathguard Falgan asks among the Scarlet Crusade.",
            complete = QuestState(94440, "complete"),
            route = {
                Point(1420, 0.5160, 0.6760, "Scarlet Zealot", "Travel to Scarlet Zealot."),
            },
        },
        {
            id = "woven-turnin-94440-a-lesson-in-divinity-scarlets",
            kind = "turnin",
            priority = 2450,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Deathguard Billmuth at Bandarion Keep.",
            complete = QuestState(94440, "completed"),
            route = {
                Point(1420, 0.2200, 0.4460, "Deathguard Billmuth", "Travel to Deathguard Billmuth."),
            },
        },
        {
            id = "woven-accept-94441-a-lesson-in-divinity-done",
            kind = "accept",
            priority = 2460,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Accept A Lesson in Divinity from Deathguard Billmuth at Bandarion Keep.",
            complete = QuestState(94441, "activeOrCompleted"),
            route = {
                Point(1420, 0.2200, 0.4460, "Deathguard Billmuth", "Travel to Deathguard Billmuth."),
            },
        },
        {
            id = "woven-turnin-94441-a-lesson-in-divinity-done",
            kind = "turnin",
            priority = 2470,
            conditions = {
                all = {
                    { race = 5 },
                    { class = 2 },
                    { level = { min = 12 } },
                },
            },
            text = "Turn in A Lesson in Divinity to Danitha Morr at Bandarion Keep.",
            complete = QuestState(94441, "completed"),
            route = {
                Point(1420, 0.2200, 0.4460, "Danitha Morr", "Travel to Danitha Morr."),
            },
        },
        {
            id = "woven-accept-96895-the-argent-emissary",
            kind = "accept",
            priority = 2480,
            conditions = { level = { min = 13 } },
            text = "Accept The Argent Emissary from Deathguard Terrence in Brill.",
            complete = QuestState(96895, "activeOrCompleted"),
            route = {
                Point(1420, 0.6140, 0.5340, "Deathguard Terrence",
                    "Travel to Deathguard Terrence."),
            },
        },
        {
            id = "woven-turnin-96895-the-argent-emissary",
            kind = "turnin",
            priority = 2490,
            conditions = { level = { min = 13 } },
            text = "Turn in The Argent Emissary to Hadric Harlson, on the road toward the Undercity.",
            complete = QuestState(96895, "completed"),
            route = {
                Point(1420, 0.6580, 0.6100, "Hadric Harlson",
                    "Travel to Hadric Harlson."),
            },
        },
        {
            id = "woven-accept-96896-a-righteous-cause",
            kind = "accept",
            priority = 2500,
            conditions = { level = { min = 13 } },
            text = "Accept A Righteous Cause from Leonid Barthalomew the Revered.",
            complete = QuestState(96896, "activeOrCompleted"),
            route = {
                Point(1420, 0.2200, 0.4480, "Leonid Barthalomew the Revered",
                    "Travel to Leonid Barthalomew the Revered."),
            },
        },
        {
            id = "woven-objective-96896-a-righteous-cause",
            kind = "objective",
            priority = 2510,
            conditions = { level = { min = 13 } },
            text = "Observe the conversation between Danitha Morr and Leonid Barthalomew.",
            complete = QuestState(96896, "complete"),
            route = {
                Point(1420, 0.2200, 0.4480, "Leonid Barthalomew the Revered",
                    "Travel to Leonid Barthalomew the Revered."),
            },
        },
        {
            id = "woven-turnin-96896-a-righteous-cause",
            kind = "turnin",
            priority = 2520,
            conditions = { level = { min = 13 } },
            text = "Turn in A Righteous Cause to Leonid Barthalomew the Revered.",
            complete = QuestState(96896, "completed"),
            route = {
                Point(1420, 0.2200, 0.4480, "Leonid Barthalomew the Revered",
                    "Travel to Leonid Barthalomew the Revered."),
            },
        },
        {
            id = "woven-accept-96897-the-cult-of-the-damned",
            kind = "accept",
            priority = 2530,
            conditions = { level = { min = 13 } },
            text = "Accept The Cult of the Damned from Hadric Harlson.",
            complete = QuestState(96897, "activeOrCompleted"),
            route = {
                Point(1420, 0.6580, 0.6100, "Hadric Harlson",
                    "Travel to Hadric Harlson."),
            },
        },
        {
            id = "woven-accept-96898-remnants-of-war",
            kind = "accept",
            priority = 2540,
            conditions = { level = { min = 13 } },
            text = "Accept Remnants of War from Hadric Harlson.",
            complete = QuestState(96898, "activeOrCompleted"),
            route = {
                Point(1420, 0.6580, 0.6100, "Hadric Harlson",
                    "Travel to Hadric Harlson."),
            },
        },
        {
            id = "woven-objective-96897-the-cult-of-the-damned",
            kind = "objective",
            priority = 2550,
            conditions = { level = { min = 13 } },
            text = "Kill 8 Dark Neophytes and 8 Dark Enforcers.",
            complete = QuestState(96897, "complete"),
            route = {
                Point(1420, 0.6660, 0.6540, "Dark Neophyte",
                    "Travel to Dark Neophyte."),
            },
        },
        {
            id = "woven-objective-96898-remnants-of-war",
            kind = "objective",
            priority = 2560,
            conditions = { level = { min = 13 } },
            text = "Gather 12 Necrotic Crystal Fragments.",
            complete = QuestState(96898, "complete"),
            route = {
                Point(1420, 0.6660, 0.6540, "Dark Neophyte",
                    "Travel to Dark Neophyte."),
            },
        },
        {
            id = "woven-turnin-96897-the-cult-of-the-damned",
            kind = "turnin",
            priority = 2570,
            conditions = { level = { min = 13 } },
            text = "Turn in The Cult of the Damned to Hadric Harlson.",
            complete = QuestState(96897, "completed"),
            route = {
                Point(1420, 0.6580, 0.6100, "Hadric Harlson",
                    "Travel to Hadric Harlson."),
            },
        },
        {
            id = "woven-turnin-96898-remnants-of-war",
            kind = "turnin",
            priority = 2580,
            conditions = { level = { min = 13 } },
            text = "Turn in Remnants of War to Hadric Harlson.",
            complete = QuestState(96898, "completed"),
            route = {
                Point(1420, 0.6580, 0.6100, "Hadric Harlson",
                    "Travel to Hadric Harlson."),
            },
        },
        {
            id = "woven-accept-96899-bandarion-keep",
            kind = "accept",
            priority = 2590,
            conditions = { level = { min = 13 } },
            text = "Accept Bandarion Keep from Hadric Harlson.",
            complete = QuestState(96899, "activeOrCompleted"),
            route = {
                Point(1420, 0.6580, 0.6100, "Hadric Harlson",
                    "Travel to Hadric Harlson."),
            },
        },
        {
            id = "woven-turnin-96899-bandarion-keep",
            kind = "turnin",
            priority = 2600,
            conditions = { level = { min = 13 } },
            text = "Turn in Bandarion Keep to Leonid Barthalomew the Revered.",
            complete = QuestState(96899, "completed"),
            route = {
                Point(1420, 0.2200, 0.4480, "Leonid Barthalomew the Revered",
                    "Travel to Leonid Barthalomew the Revered."),
            },
        },
        {
            id = "woven-accept-99152-as-above-so-below",
            kind = "accept",
            priority = 2610,
            conditions = { level = { min = 10 } },
            text = "Accept As Above, So Below from Hilda the Breaker at Bandarion Keep.",
            complete = QuestState(99152, "activeOrCompleted"),
            route = {
                Point(1420, 0.2200, 0.4720, "Hilda the Breaker",
                    "Travel to Hilda the Breaker."),
            },
        },
        {
            id = "woven-accept-99153-the-one-that-got-away",
            kind = "accept",
            priority = 2620,
            conditions = { level = { min = 10 } },
            text = "Accept The One That Got Away from Ephram Barbaro at Bandarion Keep.",
            complete = QuestState(99153, "activeOrCompleted"),
            route = {
                Point(1420, 0.2020, 0.4640, "Ephram Barbaro",
                    "Travel to Ephram Barbaro."),
            },
        },
        {
            id = "woven-objective-99152-as-above-so-below",
            kind = "objective",
            priority = 2630,
            conditions = { level = { min = 10 } },
            text = "Collect 6 Faintly Glowing Bones from Shadowvale Lurchers and Shadowvale Mystics in the Shadowvale cellars. The Glowing Crystal Fragment for The One That Got Away is in the same cellar.",
            complete = QuestState(99152, "complete"),
            route = {
                Point(1420, 0.1300, 0.6500, "Shadowvale cellars",
                    "Travel to the burned house entrance to the Shadowvale cellars."),
                Point(1420, 0.0970, 0.6940, "Shadowvale cellars",
                    "Travel into the Shadowvale cellars."),
            },
        },
        {
            id = "woven-objective-99153-the-one-that-got-away",
            kind = "objective",
            priority = 2640,
            conditions = { level = { min = 10 } },
            text = "Pick up the Glowing Crystal Fragment in the Shadowvale cellars.",
            complete = QuestState(99153, "complete"),
            route = {
                Point(1420, 0.1300, 0.6500, "Shadowvale cellars",
                    "Travel to the burned house entrance to the Shadowvale cellars."),
                Point(1420, 0.0970, 0.6940, "Glowing Crystal Fragment",
                    "Travel to the Glowing Crystal Fragment."),
            },
        },
        {
            id = "woven-turnin-99152-as-above-so-below",
            kind = "turnin",
            priority = 2650,
            conditions = { level = { min = 10 } },
            text = "Turn in As Above, So Below to Hilda the Breaker at Bandarion Keep.",
            complete = QuestState(99152, "completed"),
            route = {
                Point(1420, 0.2200, 0.4720, "Hilda the Breaker",
                    "Travel to Hilda the Breaker."),
            },
        },
        {
            id = "woven-turnin-99153-the-one-that-got-away",
            kind = "turnin",
            priority = 2660,
            conditions = { level = { min = 10 } },
            text = "Turn in The One That Got Away to Ephram Barbaro at Bandarion Keep.",
            complete = QuestState(99153, "completed"),
            route = {
                Point(1420, 0.2020, 0.4640, "Ephram Barbaro",
                    "Travel to Ephram Barbaro."),
            },
        },
        {
            id = "woven-accept-98545-leonid-s-letter",
            kind = "accept",
            priority = 2670,
            conditions = { level = { min = 13 } },
            text = "Accept Leonid's Letter from Leonid Barthalomew.",
            complete = QuestState(98545, "activeOrCompleted"),
            route = {
                Point(1420, 0.2200, 0.4480, "Leonid Barthalomew the Revered",
                "Travel to Leonid Barthalomew the Revered."),
            },
        },
        {
            id = "woven-turnin-98545-leonids-letter",
            kind = "turnin",
            priority = 2680,
            conditions = { level = { min = 13 } },
            text = "Deliver it to Glix Xizzix in the Undercity.",
            complete = QuestState(98545, "completed"),
            route = {
                Point(1458, 0.6980, 0.4700, "Glix Xizzix",
                    "Travel to Glix Xizzix."),
            },
        },
        {
            id = "woven-turnin-95328-whispering-horror-residue",
            kind = "turnin",
            priority = 2690,
            conditions = {
                all = {
                    { level = { min = 10 } },
                    { quest = { id = 95328, state = "activeOrCompleted" } },
                },
            },
            text = "Turn in Whispering Horror Residue to Father Lankester in the War Quarter if you found it.",
            complete = QuestState(95328, "completed"),
            route = {
                Point(1458, 0.4960, 0.1560, "Father Lankester",
                    "Travel to Father Lankester."),
            },
        },
    },
})
