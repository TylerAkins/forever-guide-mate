local _, ns = ...

local MAP = {
    DESOLACE = 1443,
}

local BOTH_FACTIONS = { any = { { faction = "Alliance" }, { faction = "Horde" } } }

local function QuestState(questID, state)
    return { quest = { id = questID, state = state } }
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
    id = "dungeons-maraudon-earth-song-falls-inner",
    title = "Maraudon (Earth Song Falls - Inner)",
    category = "Dungeon Quest Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 48 } },
            BOTH_FACTIONS,
        },
    },
    goals = {
        {
            id = "note-click-stone-door",
            kind = "note",
            priority = 10,
            conditions = { level = { min = 48 } },
            text = "Click Stone Door.",
        },
        {
            id = "note-click-portal-to-inner-maraudon",
            kind = "note",
            priority = 11,
            conditions = { level = { min = 48 } },
            text = "Click Portal to Inner Maraudon.",
            route = {
                Point(MAP.DESOLACE, 0.292, 0.612, "Desolace", "Travel to Desolace."),
            },
        },
        {
            id = "enter-dungeon",
            kind = "travel",
            priority = 12,
            conditions = { level = { min = 48 } },
            text = "Enter Maraudon (Earth Song Falls - Inner) with your group.",
            persistCompletion = true,
            complete = { instance = 349 },
        },
        {
            id = "boss-landslide",
            kind = "note",
            priority = 13,
            conditions = { level = { min = 48 } },
            text = "Kill Landslide. The tank should keep him where he spawns. The tank should also keep their back to the wall when possible. Ranged stay at a distance.",
            dependsOn = { "enter-dungeon" },
        },
        {
            id = "note-click-here-to-continue",
            kind = "note",
            priority = 14,
            conditions = { level = { min = 48 } },
            text = "Click Here to Continue.",
        },
        {
            id = "boss-princess-theradras",
            kind = "note",
            priority = 15,
            conditions = { level = { min = 48 } },
            text = "Kill Princess Theradras. She has the ability 'Repulsive Gaze' which will fear the entire group. Use 'Fear Ward' on the tank if possible. Warriors ability 'Berserker Rage' can negate the fear.",
            dependsOn = { "boss-landslide" },
        },
        {
            id = "boss-rotgrip",
            kind = "note",
            priority = 16,
            conditions = { level = { min = 48 } },
            text = "Kill Rotgrip. Jump down into the water. Rotgrip deals high damage, so the fight will be very heal intensive. You may need support heals.",
            dependsOn = { "boss-princess-theradras" },
        },
        {
            id = "boss-tinkerer-gizlock",
            kind = "note",
            priority = 17,
            conditions = { level = { min = 48 } },
            text = "Kill Tinkerer Gizlock. The tank should face him away from the group to avoid taking damage from 'Gobling Dragon Gun'. After, the group should stack in close melee rang to prevent Gizlock from using his 'Bomb' and 'Shoot' abilities.",
            dependsOn = { "boss-rotgrip" },
        },
    },
})
