local _, ns = ...

local MAP = {
    FERALAS = 1444,
}

local BOTH_FACTIONS = { any = { { faction = "Alliance" }, { faction = "Horde" } } }

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
    id = "dungeons-dire-maul-west",
    title = "Dire Maul West",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 56 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "boss-pusillin",
            kind = "note",
            priority = 10,
            conditions = { level = { min = 56 } },
            text = "Kill Pusillin. He is the first boss in the Dire Maul East dungeon. Use the Dire Maul East dungeon guide to accomplish this. This item is required to enter Dire Maul West.",
        },
        {
            id = "note-click-door",
            kind = "note",
            priority = 11,
            conditions = { level = { min = 56 } },
            text = "Click Door.",
            route = {
                Point(MAP.FERALAS, 0.603, 0.302, "Feralas", "Travel to Feralas."),
            },
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 12,
            conditions = { level = { min = 56 } },
            text = "Enter Dire Maul - West with your group.",
            persistCompletion = true,
            complete = { instance = 429 },
        },
        {
            id = "note-click-here-to-continue",
            kind = "note",
            priority = 13,
            conditions = { level = { min = 56 } },
            text = "Click Here to Continue.",
        },
        {
            id = "accept-7461-the-madness-within",
            kind = "accept",
            priority = 14,
            conditions = { level = { min = 56 } },
            text = "Accept The Madness Within from Shen'dralar Ancient.",
            complete = QuestState(7461, "activeOrCompleted"),
        },
        {
            id = "boss-immol-thar",
            kind = "note",
            priority = 15,
            conditions = { level = { min = 56 } },
            text = "Kill Immol'thar. Clear the remaining two pylons in this room in order to engage him. He will use the 'Eye of Immol'thar' ability during the encounter, spawning eye enemies around the room. Designate a ranged attack to deal with them. At 50% health, he will enrage, increasing his attack speed by 60%.",
            dependsOn = { "enter-dungeon" },
        },
        {
            id = "objective-7461-1-immol-thar",
            kind = "objective",
            priority = 16,
            conditions = { level = { min = 56 } },
            text = "Slay Immol'thar.",
            dependsOn = { "accept-7461-the-madness-within" },
            complete = QuestObjective(7461, 1, "Immol'thar"),
            useClientPin = true,
        },
        {
            id = "boss-prince-tortheldrin",
            kind = "note",
            priority = 17,
            conditions = { level = { min = 56 } },
            text = "Kill Prince Tortheldrin. Once inside The Athenaeum, jump down. He is underneath the platform that you are on after entering the room. This is a healing intensive fight. The tank should face their back to the wall to avoid being knocked back by his 'Arcane Blast' ability. When Arcane Blast is used, his aggro will reset, so it's best to stop DPS until the tank can establish aggro once more.",
            dependsOn = { "boss-immol-thar" },
        },
        {
            id = "objective-7461-2-prince-tortheldrin",
            kind = "objective",
            priority = 18,
            conditions = { level = { min = 56 } },
            text = "Slay Prince Tortheldrin.",
            dependsOn = { "accept-7461-the-madness-within" },
            complete = QuestObjective(7461, 2, "Prince Tortheldrin"),
            useClientPin = true,
        },
        {
            id = "turnin-7461-the-madness-within",
            kind = "turnin",
            priority = 19,
            conditions = { level = { min = 56 } },
            text = "Turn in The Madness Within to Shen'dralar Ancient.",
            dependsOn = { "objective-7461-1-immol-thar", "objective-7461-2-prince-tortheldrin" },
            complete = QuestState(7461, "completed"),
            useClientPin = true,
        },
        {
            id = "accept-7462-the-treasure-of-the-shen-dralar",
            kind = "accept",
            priority = 20,
            conditions = { level = { min = 56 } },
            text = "Accept The Treasure of the Shen'dralar from Shen'dralar Ancient.",
            dependsOn = { "turnin-7461-the-madness-within" },
            complete = QuestState(7462, "activeOrCompleted"),
        },
        {
            id = "note-click-treasure-of-the-shen-dralar",
            kind = "note",
            priority = 21,
            conditions = { level = { min = 56 } },
            text = "Click Treasure of the Shen'dralar.",
        },
        {
            id = "turnin-7462-the-treasure-of-the-shen-dralar",
            kind = "turnin",
            priority = 22,
            conditions = { level = { min = 56 } },
            text = "Turn in The Treasure of the Shen'dralar.",
            dependsOn = { "accept-7462-the-treasure-of-the-shen-dralar" },
            complete = QuestState(7462, "completed"),
            useClientPin = true,
        },
        {
            id = "boss-tendris-warpwood",
            kind = "note",
            priority = 23,
            conditions = { level = { min = 56 } },
            text = "Kill Tendris Warpwood. Clear all ancients in the area before engaging Tendris. Melee should move away when it uses the 'Trample' ability. Range stand at max distance to avoid being hit with 'Entangle'.",
            dependsOn = { "boss-prince-tortheldrin" },
        },
        {
            id = "boss-magister-kalendris",
            kind = "note",
            priority = 24,
            conditions = { level = { min = 56 } },
            text = "Kill Magister Kalendris. Dispel 'Shadow Word: Pain' when an ally is afflicted by it. Interrupt his 'Mind Blast' and 'Mind Flay' spells when possible. Use CC abilities on group members who are afflicted by 'Dominate Mind'.",
            dependsOn = { "boss-tendris-warpwood" },
        },
        {
            id = "boss-tsu-zee",
            kind = "note",
            priority = 25,
            conditions = { level = { min = 56 } },
            text = "Kill Tsu'zee. This will be a healing intensive encounter. Dispel her 'Blind' ability on allies when afflicted.",
            dependsOn = { "boss-magister-kalendris" },
        },
        {
            id = "boss-illyanna-ravenoak",
            kind = "note",
            priority = 26,
            conditions = { level = { min = 56 } },
            text = "Kill Illyanna Ravenoak. The group should stand in melee range to avoid her abilities. Kill Illyanna. Ferra after.",
            dependsOn = { "boss-tsu-zee" },
        },
    },
})
