local _, ns = ...

-- Forever Casual spine: Stranglethorn Vale (37-38)
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
    STRANGLETHORN_VALE = 1434,
    STORMWIND_CITY = 1453,
}

ns:RegisterGuide({
    id = "leveling-era-alliance-stranglethorn-vale-part-2",
    title = "Stranglethorn Vale",
    category = "Leveling Quest Guides",
    revision = 1,
    casualSpine = true,
    conditions = {
        all = {
            { faction = "Alliance" },
            { level = { min = 37 } },
        },
    },
    goals = {
        {
            id = "turnin-1115-the-rumormonger",
            kind = "turnin",
            priority = 10,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Rumormonger.",
            complete = QuestState(1115, "completed"),
            route = {
                Point(1434, 0.2694, 0.7721, "The Rumormonger",
                    "Travel to The Rumormonger."),
            },
        },
        {
            id = "accept-189-bloodscalp-ears",
            kind = "accept",
            priority = 20,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept Bloodscalp Ears.",
            complete = QuestState(189, "activeOrCompleted"),
            route = {
                Point(1434, 0.2700, 0.7712, "Bloodscalp Ears",
                    "Travel to Bloodscalp Ears."),
            },
        },
        {
            id = "accept-601-water-elementals",
            kind = "accept",
            priority = 30,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept Water Elementals.",
            complete = QuestState(601, "activeOrCompleted"),
            route = {
                Point(1434, 0.2723, 0.7687, "Water Elementals",
                    "Travel to Water Elementals."),
            },
        },
        {
            id = "accept-577-some-assembly-required",
            kind = "accept",
            priority = 40,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Some Assembly Required.",
            complete = QuestState(577, "activeOrCompleted"),
            route = {
                Point(1434, 0.2829, 0.7759, "Some Assembly Required",
                    "Travel to Some Assembly Required."),
            },
        },
        {
            id = "objective-627-1-lesser-bloodstone-ore",
            kind = "objective",
            priority = 50,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Collect 4 Lesser Bloodstone Ore.",
            complete = QuestObjective(627, 1, "Lesser Bloodstone Ore"),
            route = {
                Point(1453, 0.5362, 0.5976, "Lesser Bloodstone Ore",
                    "Travel to Lesser Bloodstone Ore."),
            },
        },
        {
            id = "accept-627-favor-for-krazek",
            kind = "accept",
            priority = 60,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept Favor for Krazek.",
            complete = QuestState(627, "activeOrCompleted"),
            route = {
                Point(1434, 0.2694, 0.7721, "Favor for Krazek",
                    "Travel to Favor for Krazek."),
            },
        },
        {
            id = "turnin-627-favor-for-krazek",
            kind = "turnin",
            priority = 70,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Favor for Krazek.",
            complete = QuestState(627, "completed"),
            dependsOn = { "accept-627-favor-for-krazek", "objective-627-1-lesser-bloodstone-ore" },
            route = {
                Point(1434, 0.2694, 0.7721, "Favor for Krazek",
                    "Travel to Favor for Krazek."),
            },
        },
        {
            id = "accept-622-return-to-corporal-kaleb",
            kind = "accept",
            priority = 80,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept Return to Corporal Kaleb.",
            complete = QuestState(622, "activeOrCompleted"),
            route = {
                Point(1434, 0.2694, 0.7721, "Return to Corporal Kaleb",
                    "Travel to Corporal Kaleb."),
            },
        },
        {
            id = "accept-207-kurzen-s-mystery",
            kind = "accept",
            priority = 90,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept Kurzen's Mystery.",
            complete = QuestState(207, "activeOrCompleted"),
            route = {
                Point(1434, 0.3783, 0.0356, "Kurzen's Mystery",
                    "Travel to Kurzen's Mystery."),
            },
        },
        {
            id = "turnin-198-supplies-to-private-thorsen",
            kind = "turnin",
            priority = 100,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Supplies to Private Thorsen.",
            complete = QuestState(198, "completed"),
            route = {
                Point(1434, 0.3798, 0.0342, "Supplies to Private Thorsen",
                    "Travel to Supplies to Private Thorsen."),
            },
        },
        {
            id = "accept-574-special-forces",
            kind = "accept",
            priority = 110,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept Special Forces.",
            complete = QuestState(574, "activeOrCompleted"),
            route = {
                Point(1434, 0.3802, 0.0333, "Special Forces",
                    "Travel to Special Forces."),
            },
        },
        {
            id = "turnin-622-return-to-corporal-kaleb",
            kind = "turnin",
            priority = 120,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Return to Corporal Kaleb.",
            complete = QuestState(622, "completed"),
            dependsOn = { "accept-622-return-to-corporal-kaleb" },
            route = {
                Point(1434, 0.3774, 0.0330, "Return to Corporal Kaleb",
                    "Travel to Corporal Kaleb."),
            },
        },
        {
            id = "accept-195-raptor-mastery",
            kind = "accept",
            priority = 130,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raptor Mastery.",
            complete = QuestState(195, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "accept-188-tiger-mastery",
            kind = "accept",
            priority = 140,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept Tiger Mastery.",
            complete = QuestState(188, "activeOrCompleted"),
            route = {
                Point(1434, 0.3562, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "accept-192-panther-mastery",
            kind = "accept",
            priority = 150,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept Panther Mastery.",
            complete = QuestState(192, "activeOrCompleted"),
            route = {
                Point(1434, 0.3555, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "turnin-328-the-hidden-key",
            kind = "turnin",
            priority = 160,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Hidden Key.",
            complete = QuestState(328, "completed"),
            route = {
                Point(1434, 0.4582, 0.0818, "The Hidden Key",
                    "Travel to The Hidden Key."),
            },
        },
        {
            id = "accept-329-the-spy-revealed",
            kind = "accept",
            priority = 170,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept The Spy Revealed!.",
            complete = QuestState(329, "activeOrCompleted"),
            route = {
                Point(1434, 0.4582, 0.0818, "The Spy Revealed!",
                    "Travel to The Spy Revealed!."),
            },
        },
        {
            id = "objective-192-1-shadowmaw-panther",
            kind = "objective",
            priority = 180,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Kill 10 Shadowmaw Panther.",
            complete = QuestObjective(192, 1, "Shadowmaw Panther"),
            dependsOn = { "accept-192-panther-mastery" },
            route = {
                Point(1434, 0.4582, 0.0818, "Shadowmaw Panther",
                    "Travel to Shadowmaw Panther."),
            },
        },
        {
            id = "objective-577-1-snapjaw-crocolisk",
            kind = "objective",
            priority = 190,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Kill Snapjaw Crocolisk.",
            complete = QuestObjective(577, 1, "Snapjaw Crocolisk"),
            dependsOn = { "accept-577-some-assembly-required" },
            route = {
                Point(1434, 0.4040, 0.2500, "Snapjaw Crocolisk",
                    "Travel to Snapjaw Crocolisk."),
            },
        },
        {
            id = "objective-188-1-sin-dall",
            kind = "objective",
            priority = 200,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Kill Sin'Dall.",
            complete = QuestObjective(188, 1, "Sin'Dall"),
            dependsOn = { "accept-188-tiger-mastery" },
            route = {
                Point(1434, 0.3221, 0.1739, "Sin'Dall",
                    "Travel to Sin'Dall."),
            },
        },
        {
            id = "objective-601-1-lesser-water-elemental",
            kind = "objective",
            priority = 210,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Kill Lesser Water Elemental.",
            complete = QuestObjective(601, 1, "Lesser Water Elemental"),
            dependsOn = { "accept-601-water-elementals" },
            route = {
                Point(1434, 0.2140, 0.2220, "Lesser Water Elemental",
                    "Travel to Lesser Water Elemental."),
            },
        },
        {
            id = "turnin-195-raptor-mastery",
            kind = "turnin",
            priority = 220,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Raptor Mastery.",
            complete = QuestState(195, "completed"),
            dependsOn = { "accept-195-raptor-mastery" },
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "accept-196-raptor-mastery",
            kind = "accept",
            priority = 230,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Accept Raptor Mastery.",
            complete = QuestState(196, "activeOrCompleted"),
            route = {
                Point(1434, 0.3566, 0.1081, "Raptor Mastery",
                    "Travel to Raptor Mastery."),
            },
        },
        {
            id = "turnin-188-tiger-mastery",
            kind = "turnin",
            priority = 240,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Tiger Mastery.",
            complete = QuestState(188, "completed"),
            dependsOn = { "accept-188-tiger-mastery", "objective-188-1-sin-dall" },
            route = {
                Point(1434, 0.3562, 0.1062, "Tiger Mastery",
                    "Travel to Tiger Mastery."),
            },
        },
        {
            id = "turnin-192-panther-mastery",
            kind = "turnin",
            priority = 250,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Panther Mastery.",
            complete = QuestState(192, "completed"),
            dependsOn = { "accept-192-panther-mastery", "objective-192-1-shadowmaw-panther" },
            route = {
                Point(1434, 0.3555, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "accept-193-panther-mastery",
            kind = "accept",
            priority = 260,
            conditions = { all = {
                { level = { min = 44 } },
                { faction = "Alliance" },
            } },
            text = "Accept Panther Mastery.",
            complete = QuestState(193, "activeOrCompleted"),
            route = {
                Point(1434, 0.3555, 0.1055, "Panther Mastery",
                    "Travel to Panther Mastery."),
            },
        },
        {
            id = "turnin-207-kurzen-s-mystery",
            kind = "turnin",
            priority = 270,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Kurzen's Mystery.",
            complete = QuestState(207, "completed"),
            dependsOn = { "accept-207-kurzen-s-mystery" },
            route = {
                Point(1434, 0.3783, 0.0356, "Kurzen's Mystery",
                    "Travel to Kurzen's Mystery."),
            },
        },
        {
            id = "accept-205-troll-witchery",
            kind = "accept",
            priority = 280,
            conditions = { all = {
                { level = { min = 42 } },
                { faction = "Alliance" },
            } },
            text = "Accept Troll Witchery.",
            complete = QuestState(205, "activeOrCompleted"),
            route = {
                Point(1434, 0.3783, 0.0356, "Troll Witchery",
                    "Travel to Troll Witchery."),
            },
        },
        {
            id = "turnin-574-special-forces",
            kind = "turnin",
            priority = 290,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Special Forces.",
            complete = QuestState(574, "completed"),
            dependsOn = { "accept-574-special-forces" },
            route = {
                Point(1434, 0.3804, 0.0301, "Special Forces",
                    "Travel to Special Forces."),
            },
        },
        {
            id = "turnin-329-the-spy-revealed",
            kind = "turnin",
            priority = 300,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in The Spy Revealed!.",
            complete = QuestState(329, "completed"),
            dependsOn = { "accept-329-the-spy-revealed" },
            route = {
                Point(1434, 0.3804, 0.0301, "The Spy Revealed!",
                    "Travel to The Spy Revealed!."),
            },
        },
        {
            id = "accept-330-patrol-schedules",
            kind = "accept",
            priority = 310,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept Patrol Schedules.",
            complete = QuestState(330, "activeOrCompleted"),
            route = {
                Point(1434, 0.3804, 0.0301, "Patrol Schedules",
                    "Travel to Patrol Schedules."),
            },
        },
        {
            id = "turnin-330-patrol-schedules",
            kind = "turnin",
            priority = 320,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Patrol Schedules.",
            complete = QuestState(330, "completed"),
            dependsOn = { "accept-330-patrol-schedules" },
            route = {
                Point(1434, 0.3766, 0.0339, "Patrol Schedules",
                    "Travel to Patrol Schedules."),
            },
        },
        {
            id = "accept-331-report-to-doren",
            kind = "accept",
            priority = 330,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Accept Report to Doren.",
            complete = QuestState(331, "activeOrCompleted"),
            route = {
                Point(1434, 0.3766, 0.0339, "Report to Doren",
                    "Travel to Report to Doren."),
            },
        },
        {
            id = "turnin-331-report-to-doren",
            kind = "turnin",
            priority = 340,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Report to Doren.",
            complete = QuestState(331, "completed"),
            dependsOn = { "accept-331-report-to-doren" },
            route = {
                Point(1434, 0.3804, 0.0301, "Report to Doren",
                    "Travel to Report to Doren."),
            },
        },
        {
            id = "accept-1116-dream-dust-in-the-swamp",
            kind = "accept",
            priority = 350,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Accept Dream Dust in the Swamp.",
            complete = QuestState(1116, "activeOrCompleted"),
            route = {
                Point(1434, 0.2694, 0.7721, "Dream Dust in the Swamp",
                    "Travel to Dream Dust in the Swamp."),
            },
        },
        {
            id = "turnin-189-bloodscalp-ears",
            kind = "turnin",
            priority = 360,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Bloodscalp Ears.",
            complete = QuestState(189, "completed"),
            dependsOn = { "accept-189-bloodscalp-ears" },
            route = {
                Point(1434, 0.2700, 0.7712, "Bloodscalp Ears",
                    "Travel to Bloodscalp Ears."),
            },
        },
        {
            id = "turnin-601-water-elementals",
            kind = "turnin",
            priority = 370,
            conditions = { all = {
                { level = { min = 37 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Water Elementals.",
            complete = QuestState(601, "completed"),
            dependsOn = { "accept-601-water-elementals", "objective-601-1-lesser-water-elemental" },
            route = {
                Point(1434, 0.2723, 0.7687, "Water Elementals",
                    "Travel to Water Elementals."),
            },
        },
        {
            id = "accept-602-magical-analysis",
            kind = "accept",
            priority = 380,
            conditions = { all = {
                { level = { min = 39 } },
                { faction = "Alliance" },
            } },
            text = "Accept Magical Analysis.",
            complete = QuestState(602, "activeOrCompleted"),
            route = {
                Point(1434, 0.2723, 0.7687, "Magical Analysis",
                    "Travel to Magical Analysis."),
            },
        },
        {
            id = "turnin-577-some-assembly-required",
            kind = "turnin",
            priority = 390,
            conditions = { all = {
                { level = { min = 40 } },
                { faction = "Alliance" },
            } },
            text = "Turn in Some Assembly Required.",
            complete = QuestState(577, "completed"),
            dependsOn = { "accept-577-some-assembly-required", "objective-577-1-snapjaw-crocolisk" },
            route = {
                Point(1434, 0.2829, 0.7759, "Some Assembly Required",
                    "Travel to Some Assembly Required."),
            },
        },
    },
})
