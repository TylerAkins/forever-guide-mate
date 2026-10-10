local _, ns = ...

-- Seeking the Kor Gem (95042) is repeatable, so the client never reports it as
-- turned in. Its Purified Kor Gem is only used by A Moon-Kissed Blade (95036).
local KOR_GEM_NOT_NEEDED = {
    any = {
        { quest = { id = 95036, state = "completed" } },
        { item = "Purified Kor Gem" },
    },
}

ns.classActions = {
    ["accept-98601-a-difficult-path"] = {
        text = "Accept A Difficult Path from Shadow Priest Sarvis in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 98601, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98601-a-difficult-path"] = {
        text = "Read Consecrated Scroll in your bags. Turn in A Difficult Path to Aramis Hammerhand in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 98601, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-179-dwarven-outfitters"] = {
        text = "Accept Dwarven Outfitters from Sten Stoutarm.",
        kind = "accept",
        complete = {
            quest = { id = 179, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-179-1-ragged-young-wolf"] = {
        text = "Collect 8 Tough Wolf Meat.",
        kind = "objective",
        complete = {
            questObjective = { id = 179, text = "Tough Wolf Meat", index = 1, count = 8 },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-179-dwarven-outfitters"] = {
        text = "Turn in Dwarven Outfitters to Sten Stoutarm.",
        kind = "turnin",
        complete = {
            quest = { id = 179, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-3107-consecrated-rune"] = {
        text = "Accept Consecrated Rune from Sten Stoutarm in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 3107, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3107-consecrated-rune"] = {
        text = "Read Consecrated Rune in your bags. Turn in Consecrated Rune to Bromos Grummner in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 3107, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-783-a-threat-within"] = {
        text = "Accept A Threat Within from Deputy Willem.",
        kind = "accept",
        complete = {
            quest = { id = 783, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-783-a-threat-within"] = {
        text = "Turn in A Threat Within to Marshal McBride.",
        kind = "turnin",
        complete = {
            quest = { id = 783, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-7-kobold-camp-cleanup"] = {
        text = "Accept Kobold Camp Cleanup from Marshal McBride.",
        kind = "accept",
        complete = {
            quest = { id = 7, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 783 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-7-1-kobold-vermin"] = {
        text = "Kill 10 Kobold Vermin.",
        kind = "objective",
        complete = {
            questObjective = { id = 7, text = "Kobold Vermin", index = 1, count = 10 },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 783 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7-kobold-camp-cleanup"] = {
        text = "Turn in Kobold Camp Cleanup to Marshal McBride.",
        kind = "turnin",
        complete = {
            quest = { id = 7, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 783 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3101-consecrated-letter"] = {
        text = "Accept Consecrated Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 3101, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3101-consecrated-letter"] = {
        text = "Read Consecrated Letter in your bags. Turn in Consecrated Letter to Brother Sammuel in Elwynn Forest. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 3101, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-90902-rediscovering-the-light"] = {
        text = "Accept Rediscovering the Light from Aramis Hammerhand in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 90902, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-90902-reviewed-mechanics"] = {
        text = "Cast Holy Light on 5 Injured Deathguard in Deathknell.",
        kind = "objective",
        complete = {
            quest = { id = 90902, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-90902-rediscovering-the-light"] = {
        text = "Turn in Rediscovering the Light to Aramis Hammerhand in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 90902, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-91208-coming-to-terms"] = {
        text = "Accept Coming to Terms from Aramis Hammerhand in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 91208, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-91208-coming-to-terms"] = {
        text = "Turn in Coming to Terms to Aramis Hammerhand in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 91208, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-91209-continue-your-training"] = {
        text = "Accept Continue Your Training from Aramis Hammerhand in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 91209, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91208 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-91209-continue-your-training"] = {
        text = "Turn in Continue Your Training to Shari Stilwell in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 91209, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91208 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-91282-a-second-home"] = {
        text = "Accept A Second Home from Shari Stilwell in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 91282, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91209 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-91282-a-second-home"] = {
        text = "Turn in A Second Home to Breton Samuels in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 91282, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91209 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-91285-murlocs-at-the-gates"] = {
        text = "Accept Murlocs at the Gates from Breton Samuels in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 91285, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91282 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["objective-91285-quest-work"] = {
        text = "For Murlocs at the Gates: Slay 8 Vile Fin Attackers and 8 Vile Fin Seers and report back to Breton Samuels when it is done.",
        kind = "objective",
        complete = {
            quest = { id = 91285, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91282 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-91285-murlocs-at-the-gates"] = {
        text = "Turn in Murlocs at the Gates to Breton Samuels in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 91285, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91282 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-91294-touring-the-grounds"] = {
        text = "Accept Touring the Grounds from Breton Samuels in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 91294, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91285 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-91294-touring-the-grounds"] = {
        text = "Turn in Touring the Grounds to Danitha Morr in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 91294, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91285 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-91316-making-repairs"] = {
        text = "Accept Making Repairs from Jorin Croge in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 91316, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-91316-making-repairs"] = {
        text = "Travel to Shadowvale in Tirisfal Glades and collect 12 pieces of Sturdy Lumber. Return them to Jorin Croge.",
        kind = "objective",
        complete = {
            quest = { id = 91316, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-91316-making-repairs"] = {
        text = "Turn in Making Repairs to Jorin Croge in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 91316, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-91317-the-tarnished"] = {
        text = "Accept The Tarnished from Danitha Morr in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 91317, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91294 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["objective-91317-the-tarnished"] = {
        text = "Kill Rudolph Gelhardt and collect Rudolph Gelhardt's Head in Tirisfal Glades. This step is for Undead.",
        kind = "objective",
        complete = {
            quest = { id = 91317, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91294 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-91317-the-tarnished"] = {
        text = "Turn in The Tarnished to Danitha Morr in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 91317, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91294 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-95803-a-token-of-good-faith"] = {
        text = "Accept A Token of Good Faith from Danitha Morr in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 95803, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91317 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-95803-a-token-of-good-faith"] = {
        text = "Turn in A Token of Good Faith to Lady Sylvanas Windrunner in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 95803, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91317 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-1641-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Duthorian Rall in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1641, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1641-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Duthorian Rall in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1641, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["loot-starter-before-accept-1642-the-tome-of-divinity"] = {
        text = "Loot Tome of Divinity from Tome of Divinity. Keep it for the next pickup.",
        kind = "note",
        complete = {
            any = {
                {
                    item = { name = "Tome of Divinity", minCount = 1 },
                },
                {
                    quest = { id = 1642, state = "activeOrCompleted" },
                },
            },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1642-the-tome-of-divinity"] = {
        text = "Use the Tome of Divinity to accept The Tome of Divinity.",
        kind = "accept",
        complete = {
            quest = { id = 1642, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1642-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Duthorian Rall in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1642, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1643-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Duthorian Rall in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1643, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1642 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1643-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Stephanie Turner in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1643, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1642 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1644-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Stephanie Turner in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1644, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1643 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1644-the-tome-of-divinity"] = {
        text = "Bring 10 Linen Cloth to Stephanie Turner in Stormwind. You can buy it from the auction house. This step is for Humans.",
        kind = "objective",
        complete = {
            quest = { id = 1644, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1643 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1644-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Stephanie Turner in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1644, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1643 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1780-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Stephanie Turner in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1780, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1644 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1780-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Duthorian Rall in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1780, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1644 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1781-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Duthorian Rall in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1781, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1780 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1781-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Gazin Tenorm in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1781, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1780 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1786-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Gazin Tenorm in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1786, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1781 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1786-quest-work"] = {
        text = "For The Tome of Divinity: Take the Symbol of Life and resurrect Henze Faulk in Elwynn.",
        kind = "objective",
        complete = {
            quest = { id = 1786, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1781 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1786-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Henze Faulk in Elwynn Forest. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1786, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1781 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1787-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Henze Faulk in Elwynn Forest. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1787, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1786 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1787-the-tome-of-divinity"] = {
        text = "Kill Rogue Wizard and collect Defias Script in Heroes' Vigil. This step is for Humans.",
        kind = "objective",
        complete = {
            quest = { id = 1787, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1786 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1787-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Gazin Tenorm in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1787, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1786 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1788-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Gazin Tenorm in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1788, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1787 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1788-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Duthorian Rall in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1788, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1787 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2997-tome-of-divinity"] = {
        text = "Accept Tome of Divinity from Azar Stronghammer in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 2997, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 2999, 3000 },
        useClientText = false,
    },
    ["turnin-2997-tome-of-divinity"] = {
        text = "Turn in Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 2997, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 2999, 3000 },
        useClientText = false,
    },
    ["accept-1645-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Tiza Battleforge in Ironforge. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1645, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1645-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1645, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["loot-starter-before-accept-1646-the-tome-of-divinity"] = {
        text = "Loot Tome of Divinity from Tome of Divinity. Keep it for the next pickup.",
        kind = "note",
        complete = {
            any = {
                {
                    item = { name = "Tome of Divinity", minCount = 1 },
                },
                {
                    quest = { id = 1646, state = "activeOrCompleted" },
                },
            },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1646-the-tome-of-divinity"] = {
        text = "Use the Tome of Divinity to accept The Tome of Divinity.",
        kind = "accept",
        complete = {
            quest = { id = 1646, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1646-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1646, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1647-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Tiza Battleforge in Ironforge. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1647, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1646 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1647-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to John Turner in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1647, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1646 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1648-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from John Turner in Ironforge. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1648, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1647 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1648-the-tome-of-divinity"] = {
        text = "Buy 10 Linen Cloth from the Auction House in Ironforge. This step is for Dwarves.",
        kind = "objective",
        complete = {
            quest = { id = 1648, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1647 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1648-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to John Turner in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1648, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1647 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1778-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from John Turner in Ironforge. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1778, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1648 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1778-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1778, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1648 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1779-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Tiza Battleforge in Ironforge. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1779, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1778 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1779-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Muiredon Battleforge in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1779, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1778 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1783-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Muiredon Battleforge in Ironforge. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1783, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1779 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1783-quest-work"] = {
        text = "For The Tome of Divinity: Take the Symbol of Life and resurrect Narm Faulk in Dun Morogh.",
        kind = "objective",
        complete = {
            quest = { id = 1783, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1779 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1783-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Narm Faulk in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1783, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1779 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1784-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Narm Faulk in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1784, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1783 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1784-the-tome-of-divinity"] = {
        text = "Kill a Dark Iron Spy and collect Dark Iron Script in Ironband's Compound. This step is for Dwarves.",
        kind = "objective",
        complete = {
            quest = { id = 1784, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1783 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1784-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Muiredon Battleforge in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1784, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1783 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1785-the-tome-of-divinity"] = {
        text = "Accept The Tome of Divinity from Muiredon Battleforge in Ironforge. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1785, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1784 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1785-the-tome-of-divinity"] = {
        text = "Turn in The Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1785, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1784 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-94427-a-lesson-in-divinity"] = {
        text = "Accept A Lesson in Divinity from Danitha Morr in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 94427, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91317 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94427-a-lesson-in-divinity"] = {
        text = "Turn in A Lesson in Divinity to Tanis Alderwood in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 94427, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 91317 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-94434-a-lesson-in-divinity"] = {
        text = "Accept A Lesson in Divinity from Tanis Alderwood in Undercity. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 94434, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94427 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["objective-94434-a-lesson-in-divinity"] = {
        text = "Obtain 10 Linen Cloth from humanoids or buy it, then bring it to Tanis Alderwood in the Undercity.",
        kind = "objective",
        complete = {
            quest = { id = 94434, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94427 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94434-a-lesson-in-divinity"] = {
        text = "Turn in A Lesson in Divinity to Tanis Alderwood in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 94434, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94427 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-94435-a-lesson-in-divinity"] = {
        text = "Accept A Lesson in Divinity from Tanis Alderwood in Undercity. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 94435, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94434 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94435-a-lesson-in-divinity"] = {
        text = "Turn in A Lesson in Divinity to Danitha Morr in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 94435, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94434 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-94436-a-lesson-in-divinity"] = {
        text = "Accept A Lesson in Divinity from Danitha Morr in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 94436, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94435 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94436-a-lesson-in-divinity"] = {
        text = "Turn in A Lesson in Divinity to Deathguard Billmuth in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 94436, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94435 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-94438-a-lesson-in-divinity"] = {
        text = "Accept A Lesson in Divinity from Deathguard Billmuth in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 94438, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94436 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["objective-94438-reviewed-mechanics"] = {
        text = "Take the Symbol of Life to Deathguard Falgan in Venomweb Vale and use it to resurrect him. If the item is missing, ask Danitha Morr for a replacement.",
        kind = "objective",
        complete = {
            quest = { id = 94438, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94436 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94438-a-lesson-in-divinity"] = {
        text = "Turn in A Lesson in Divinity to Deathguard Falgan in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 94438, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94436 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-94440-a-lesson-in-divinity"] = {
        text = "Accept A Lesson in Divinity from Deathguard Falgan in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 94440, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94438 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["objective-94440-a-lesson-in-divinity"] = {
        text = "Retrieve the Scarlet Crusade Attack Plans from the Scarlet Crusaders at Venomweb Vale. Return to Deathguard Billmuth at Tyr's Watch.",
        kind = "objective",
        complete = {
            quest = { id = 94440, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94438 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94440-a-lesson-in-divinity"] = {
        text = "Turn in A Lesson in Divinity to Deathguard Billmuth in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 94440, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94438 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-94441-a-lesson-in-divinity"] = {
        text = "Accept A Lesson in Divinity from Deathguard Billmuth in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 94441, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94440 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94441-a-lesson-in-divinity"] = {
        text = "Turn in A Lesson in Divinity to Danitha Morr in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 94441, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94440 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-1789-the-symbol-of-life"] = {
        text = "Accept The Symbol of Life from Tiza Battleforge in Ironforge. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1789, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1779 },
                conditions = {},
            },
        },
        alternativeQuests = { 1784 },
        useClientText = false,
    },
    ["turnin-1789-the-symbol-of-life"] = {
        text = "Turn in The Symbol of Life to Tiza Battleforge in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1789, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1779 },
                conditions = {},
            },
        },
        alternativeQuests = { 1784 },
        useClientText = false,
    },
    ["accept-1790-the-symbol-of-life"] = {
        text = "Accept The Symbol of Life from Duthorian Rall in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1790, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1781 },
                conditions = {},
            },
        },
        alternativeQuests = { 1787 },
        useClientText = false,
    },
    ["turnin-1790-the-symbol-of-life"] = {
        text = "Turn in The Symbol of Life to Duthorian Rall in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1790, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1781 },
                conditions = {},
            },
        },
        alternativeQuests = { 1787 },
        useClientText = false,
    },
    ["accept-2998-tome-of-divinity"] = {
        text = "Accept Tome of Divinity from Brother Wilhelm in Elwynn Forest. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 2998, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 3681 },
        useClientText = false,
    },
    ["turnin-2998-tome-of-divinity"] = {
        text = "Turn in Tome of Divinity to Duthorian Rall in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 2998, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 3681 },
        useClientText = false,
    },
    ["accept-2999-tome-of-divinity"] = {
        text = "Accept Tome of Divinity from Brandur Ironhammer in Ironforge. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 2999, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 2997, 3000 },
        useClientText = false,
    },
    ["turnin-2999-tome-of-divinity"] = {
        text = "Turn in Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 2999, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 2997, 3000 },
        useClientText = false,
    },
    ["accept-3000-tome-of-divinity"] = {
        text = "Accept Tome of Divinity from Lord Grayson Shadowbreaker in Stormwind City. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 3000, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 2997, 2999 },
        useClientText = false,
    },
    ["turnin-3000-tome-of-divinity"] = {
        text = "Turn in Tome of Divinity to Tiza Battleforge in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 3000, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 2997, 2999 },
        useClientText = false,
    },
    ["accept-3681-tome-of-divinity"] = {
        text = "Accept Tome of Divinity from Brandur Ironhammer in Ironforge. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 3681, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 2998 },
        useClientText = false,
    },
    ["turnin-3681-tome-of-divinity"] = {
        text = "Turn in Tome of Divinity to Duthorian Rall in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 3681, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 2998 },
        useClientText = false,
    },
    ["accept-91858-diplomatic-incident"] = {
        text = "Accept Diplomatic Incident from Danitha Morr in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 91858, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-91858-diplomatic-incident"] = {
        text = "Turn in Diplomatic Incident to Trevan Rol in Silverpine Forest. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 91858, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-91859-a-curious-pair"] = {
        text = "Accept A Curious Pair from Trevan Rol in Silverpine Forest. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 91859, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-91859-a-curious-pair"] = {
        text = "Turn in A Curious Pair to Deathguard Baldren in Silverpine Forest. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 91859, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-91860-a-grim-fate"] = {
        text = "Accept A Grim Fate from Deathguard Baldren in Silverpine Forest. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 91860, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-91860-reviewed-mechanics"] = {
        text = "Travel east to Fenris Isle in Silverpine Forest and investigate the fate of the Earthen Ring party.",
        kind = "objective",
        complete = {
            quest = { id = 91860, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-91860-a-grim-fate"] = {
        text = "Turn in A Grim Fate to Deathguard Baldren in Silverpine Forest. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 91860, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-91862-lumina-windsinger"] = {
        text = "Accept Lumina Windsinger from Lumina Windsinger in Silverpine Forest. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 91862, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-91862-lumina-windsinger"] = {
        text = "Kill Rot Hide gnolls in Silverpine Forest and collect the Fenris Isle Key. This step is for Undead.",
        kind = "objective",
        complete = {
            quest = { id = 91862, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-91862-lumina-windsinger"] = {
        text = "Turn in Lumina Windsinger to Lumina Windsinger in Silverpine Forest. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 91862, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-95034-the-debt"] = {
        text = "Accept The Debt from Lumina Windsinger in Silverpine Forest. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 95034, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-95034-the-debt"] = {
        text = "Turn in The Debt to Lumina Windsinger in Silverpine Forest. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 95034, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-96204-the-windshapers-wrath"] = {
        text = "Accept The Windshaper's Wrath from Lumina Windsinger in Silverpine Forest. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 96204, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-96204-reviewed-mechanics"] = {
        text = "Accompany Lumina Windsinger out of Fenris Keep. Protect her until the escort succeeds.",
        kind = "objective",
        complete = {
            quest = { id = 96204, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-96204-the-windshapers-wrath"] = {
        text = "Turn in The Windshaper's Wrath to Lumina Windsinger in Silverpine Forest. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 96204, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1794-the-tome-of-valor"] = {
        text = "Accept The Tome of Valor from Tiza Battleforge in Ironforge. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1794, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1794-the-tome-of-valor"] = {
        text = "Turn in The Tome of Valor to Tiza Battleforge in Ironforge. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1794, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1793-the-tome-of-valor"] = {
        text = "Accept The Tome of Valor from Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1793, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1793-the-tome-of-valor"] = {
        text = "Turn in The Tome of Valor to Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1793, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["loot-starter-before-accept-1649-the-tome-of-valor"] = {
        text = "Loot Tome of Valor from Tome of Valor. Keep it for the next pickup.",
        kind = "note",
        complete = {
            any = {
                {
                    item = { name = "Tome of Valor", minCount = 1 },
                },
                {
                    quest = { id = 1649, state = "activeOrCompleted" },
                },
            },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1649-the-tome-of-valor"] = {
        text = "Use the Tome of Valor to accept The Tome of Valor.",
        kind = "accept",
        complete = {
            quest = { id = 1649, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1649-the-tome-of-valor"] = {
        text = "Turn in The Tome of Valor to Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1649, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1650-the-tome-of-valor"] = {
        text = "Accept The Tome of Valor from Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1650, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1649 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1650-the-tome-of-valor"] = {
        text = "Turn in The Tome of Valor to Daphne Stilwell in Westfall. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1650, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1649 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1651-the-tome-of-valor"] = {
        text = "Accept The Tome of Valor from Daphne Stilwell in Westfall. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1651, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1650 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1651-reviewed-mechanics"] = {
        text = "Stay with Daphne Stilwell in Westfall and defend her against the Defias attackers. Keep Daphne alive and do not release your spirit. Speak with her after the defense succeeds.",
        kind = "objective",
        complete = {
            quest = { id = 1651, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1650 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1651-the-tome-of-valor"] = {
        text = "Turn in The Tome of Valor to Daphne Stilwell in Westfall. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1651, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1650 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1652-the-tome-of-valor"] = {
        text = "Accept The Tome of Valor from Daphne Stilwell in Westfall. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1652, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1651 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1652-the-tome-of-valor"] = {
        text = "Turn in The Tome of Valor to Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1652, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1651 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1655-bailors-ore-shipment"] = {
        text = "Accept Bailor's Ore Shipment from Bailor Stonehand in Loch Modan. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1655, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1655-quest-work"] = {
        text = "For Bailor's Ore Shipment: Bring Jordan's Ore Shipment to Bailor Stonehand in Loch Modan.",
        kind = "objective",
        complete = {
            quest = { id = 1655, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1655-bailors-ore-shipment"] = {
        text = "Turn in Bailor's Ore Shipment to Bailor Stonehand in Loch Modan. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1655, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-95042-seeking-the-kor-gem"] = {
        text = "Accept Seeking the Kor Gem from Ulric Frostveil at the Zoram Strand.",
        kind = "accept",
        complete = {
            quest = { id = 95042, state = "activeOrCompleted" },
        },
        excludeWhen = KOR_GEM_NOT_NEEDED,
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-95042-seeking-the-kor-gem"] = {
        text = "Travel north from Ulric to the Blackfathom Deeps ruins with your group. Defeat the naga and collect 1 Corrupted Kor Gem.",
        kind = "objective",
        complete = {
            questObjective = { id = 95042, index = 1, text = "Corrupted Kor Gem", count = 1 },
        },
        excludeWhen = KOR_GEM_NOT_NEEDED,
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-95042-seeking-the-kor-gem"] = {
        text = "Turn in Seeking the Kor Gem to Ulric Frostveil at the Zoram Strand. Receive 1 Purified Kor Gem.",
        kind = "turnin",
        complete = {
            quest = { id = 95042, state = "completed" },
        },
        excludeWhen = KOR_GEM_NOT_NEEDED,
        requiredQuests = {},
        useClientText = false,
    },
    ["handoff-95036-class-dungeon"] = {
        text = "Open Class Dungeon Prerequisites in the Dungeon library for A Moon-Kissed Blade. Return to this itinerary after turning it in to Trevan Rol.",
        kind = "note",
        complete = {
            quest = { id = 95036, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-95111-an-underrated-talent"] = {
        text = "Accept An Underrated Talent from Trevan Rol in Silverpine Forest. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 95111, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-95111-an-underrated-talent"] = {
        text = "Turn in An Underrated Talent to Ott in Hillsbrad Foothills. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 95111, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-95125-otts-masterwork"] = {
        text = "Accept Ott's Masterwork from Ott in Hillsbrad Foothills. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 95125, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 95111 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["objective-95125-reviewed-mechanics"] = {
        text = "Stay with Ott while he forges your blade, then speak with him when the work is finished.",
        kind = "objective",
        complete = {
            quest = { id = 95125, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 95111 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-95125-otts-masterwork"] = {
        text = "Turn in Ott's Masterwork to Ott in Hillsbrad Foothills. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 95125, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 95111 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 5 },
                        { class = 2 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-95126-the-moonsilver-blade"] = {
        text = "Accept The Moonsilver Blade from Ott in Hillsbrad Foothills. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 95126, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-95126-the-moonsilver-blade"] = {
        text = "Turn in The Moonsilver Blade to Trevan Rol in Silverpine Forest. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 95126, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-95140-old-fire-eye"] = {
        text = "Accept Old Fire-Eye from Lumina Windsinger in Silverpine Forest. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 95140, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-95140-reviewed-mechanics"] = {
        text = "Equip the Moonsilver Blade and use it to destroy Old Fire-Eye in Silverpine Forest.",
        kind = "objective",
        complete = {
            quest = { id = 95140, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-95140-old-fire-eye"] = {
        text = "Turn in Old Fire-Eye to Lumina Windsinger in Silverpine Forest. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 95140, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1661-the-tome-of-nobility"] = {
        text = "Accept The Tome of Nobility from Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 1661, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 4485, 4486 },
        useClientText = false,
    },
    ["turnin-1661-the-tome-of-nobility"] = {
        text = "Turn in The Tome of Nobility to Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 1661, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 4485, 4486 },
        useClientText = false,
    },
    ["accept-4485-the-tome-of-nobility"] = {
        text = "Accept The Tome of Nobility from Tiza Battleforge in Ironforge. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 4485, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1661, 4486 },
        useClientText = false,
    },
    ["turnin-4485-the-tome-of-nobility"] = {
        text = "Turn in The Tome of Nobility to Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 4485, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1661, 4486 },
        useClientText = false,
    },
    ["accept-4486-the-tome-of-nobility"] = {
        text = "Accept The Tome of Nobility from Brandur Ironhammer in Ironforge. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 4486, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1661, 4485 },
        useClientText = false,
    },
    ["turnin-4486-the-tome-of-nobility"] = {
        text = "Turn in The Tome of Nobility to Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 4486, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1661, 4485 },
        useClientText = false,
    },
    ["accept-8415-chillwind-point"] = {
        text = "Accept Chillwind Point from Lord Grayson Shadowbreaker.",
        kind = "accept",
        complete = {
            quest = { id = 8415, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-8415-chillwind-point"] = {
        text = "Turn in Chillwind Point to Commander Ashlam Valorfist in Western Plaguelands. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 8415, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8414-dispelling-evil"] = {
        text = "Accept Dispelling Evil from Commander Ashlam Valorfist in Western Plaguelands. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 8414, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-8414-dispelling-evil"] = {
        text = "Collect 20 Minion's Scourgestone from scourge in the Eastern Plaguelands. This step is for Humans and Dwarves.",
        kind = "objective",
        complete = {
            quest = { id = 8414, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-8414-dispelling-evil"] = {
        text = "Turn in Dispelling Evil to High Priest Thel'danis in Western Plaguelands. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 8414, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8416-inert-scourgestones"] = {
        text = "Accept Inert Scourgestones from High Priest Thel'danis in Western Plaguelands. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 8416, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8414 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-8416-inert-scourgestones"] = {
        text = "Turn in Inert Scourgestones to Commander Ashlam Valorfist in Western Plaguelands. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 8416, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8414 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7638-lord-grayson-shadowbreaker"] = {
        text = "Accept Lord Grayson Shadowbreaker from Duthorian Rall in Stormwind City. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 7638, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-7638-lord-grayson-shadowbreaker"] = {
        text = "Turn in Lord Grayson Shadowbreaker to Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 7638, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-7637-emphasis-on-sacrifice"] = {
        text = "Accept Emphasis on Sacrifice from Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 7637, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7638 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7637-emphasis-on-sacrifice"] = {
        text = "Turn in Emphasis on Sacrifice to High Priest Rohan in Ironforge. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 7637, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7638 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7639-to-show-due-judgment"] = {
        text = "Accept To Show Due Judgment from High Priest Rohan in Ironforge. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 7639, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7637 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7639-to-show-due-judgment"] = {
        text = "Turn in To Show Due Judgment to Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 7639, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7637 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7640-exorcising-terrordale"] = {
        text = "Accept Exorcising Terrordale from Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 7640, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7639 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-7640-quest-work"] = {
        text = "For Exorcising Terrordale: Use the Exorcism Censer to drive out the spirits that torment Terrordale.",
        kind = "objective",
        complete = {
            quest = { id = 7640, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7639 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7640-exorcising-terrordale"] = {
        text = "Turn in Exorcising Terrordale to Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 7640, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7639 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7641-the-work-of-grimand-elmore"] = {
        text = "Accept The Work of Grimand Elmore from Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 7641, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7640 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7641-the-work-of-grimand-elmore"] = {
        text = "Turn in The Work of Grimand Elmore to Grimand Elmore in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 7641, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7640 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7645-manna-enriched-horse-feed"] = {
        text = "Accept Manna-Enriched Horse Feed from Merideth Carlson in Hillsbrad Foothills. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 7645, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-7645-quest-work"] = {
        text = "For Manna-Enriched Horse Feed: Retrieve 20 Enriched Manna Biscuits - the key ingredient in making Manna-Enriched Horse Feed - for Merideth Carlson at Southshore in the Hillsbrad Foothills. The Argent Dawn is known as the sole purveyor of the biscuits. You also need to give her 50 gold to soothe her ruffled sensibilities.",
        kind = "objective",
        complete = {
            quest = { id = 7645, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-7645-manna-enriched-horse-feed"] = {
        text = "Turn in Manna-Enriched Horse Feed to Merideth Carlson in Hillsbrad Foothills. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 7645, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-7670-lord-grayson-shadowbreaker"] = {
        text = "Accept Lord Grayson Shadowbreaker from Brandur Ironhammer in Ironforge. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 7670, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 7638 },
        useClientText = false,
    },
    ["turnin-7670-lord-grayson-shadowbreaker"] = {
        text = "Turn in Lord Grayson Shadowbreaker to Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 7670, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 7638 },
        useClientText = false,
    },
    ["handoff-7642-class-dungeon"] = {
        text = "Open Class Dungeon Prerequisites in the Dungeon library. Collect 40 Runecloth, 6 Arcanite Bars, 10 Arthas' Tears and 5 Stratholme Holy Water from Stratholme supply crates. The quest also requires 150 gold. Bring these to Grimand Elmore in Stormwind's Dwarven District. Return to this class route after turning in Collection of Goods.",
        kind = "note",
        complete = {
            quest = { id = 7642, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7641 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7648-grimands-finest-work"] = {
        text = "Accept Grimand's Finest Work from Grimand Elmore in Stormwind City. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 7648, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7642 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7648-grimands-finest-work"] = {
        text = "Turn in Grimand's Finest Work to Lord Grayson Shadowbreaker in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 7648, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7642 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-coming-of-age"] = {
        text = "Accept Coming of Age from Ailee Farheart.",
        kind = "accept",
        complete = {
            quest = { id = 92460, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-coming-of-age"] = {
        text = "Speak with Rorian the Dayseeker in Thendal Grove.",
        kind = "turnin",
        complete = {
            quest = { id = 92460, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-92461-harmony-in-balance"] = {
        text = "Accept Harmony in Balance from Rorian the Dayseeker in Zephras Isle.",
        kind = "accept",
        complete = {
            quest = { id = 92461, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92460 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-92461-harmony-in-balance"] = {
        text = "Slay 8 Vuldren Juveniles in Thendal Grove.",
        kind = "objective",
        complete = {
            quest = { id = 92461, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92460 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-92461-harmony-in-balance"] = {
        text = "Turn in Harmony in Balance to Rorian the Dayseeker in Zephras Isle.",
        kind = "turnin",
        complete = {
            quest = { id = 92461, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92460 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-747-the-hunt-begins"] = {
        text = "Accept The Hunt Begins from Grull Hawkwind.",
        kind = "accept",
        complete = {
            quest = { id = 747, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-747-1-plainstrider-meat"] = {
        text = "Collect 7 Plainstrider Meat.",
        kind = "objective",
        complete = {
            questObjective = { id = 747, index = 1, text = "Plainstrider Meat", count = 7 },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-747-2-plainstrider-feather"] = {
        text = "Collect 7 Plainstrider Feather.",
        kind = "objective",
        complete = {
            questObjective = { id = 747, index = 2, text = "Plainstrider Feather", count = 7 },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-747-the-hunt-begins"] = {
        text = "Turn in The Hunt Begins to Grull Hawkwind.",
        kind = "turnin",
        complete = {
            quest = { id = 747, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-3094-verdant-note"] = {
        text = "Accept Verdant Note from Grull Hawkwind in Mulgore. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 3094, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 747 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3094-verdant-note"] = {
        text = "Read Verdant Note in your bags. Turn in Verdant Note to Gart Mistrunner in Mulgore. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 3094, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 747 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-456-the-balance-of-nature"] = {
        text = "Accept The Balance of Nature from Conservator Ilthalaine.",
        kind = "accept",
        complete = {
            quest = { id = 456, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-456-1-young-nightsaber"] = {
        text = "Kill 7 Young Nightsaber.",
        kind = "objective",
        complete = {
            questObjective = { id = 456, text = "Young Nightsaber", index = 1, count = 7 },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-456-1-young-nightsaber-2"] = {
        text = "Kill 7 Young Nightsaber.",
        kind = "objective",
        complete = {
            questObjective = { id = 456, text = "Young Nightsaber", index = 1 },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-456-2-young-thistle-boar"] = {
        text = "Kill 4 Young Thistle Boar.",
        kind = "objective",
        complete = {
            questObjective = { id = 456, text = "Young Thistle Boar", index = 2, count = 4 },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-456-the-balance-of-nature"] = {
        text = "Turn in The Balance of Nature to Conservator Ilthalaine.",
        kind = "turnin",
        complete = {
            quest = { id = 456, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-3120-verdant-sigil"] = {
        text = "Accept Verdant Sigil from Conservator Ilthalaine in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 3120, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 456 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3120-verdant-sigil"] = {
        text = "Read Verdant Sigil in your bags. Turn in Verdant Sigil to Mardant Strongoak in Teldrassil. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 3120, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 456 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-92485-a-student-of-nature"] = {
        text = "Accept A Student of Nature from Rorian the Dayseeker in Zephras Isle.",
        kind = "accept",
        complete = {
            quest = { id = 92485, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-92485-a-student-of-nature"] = {
        text = "Read Folded Parchment in your bags. Turn in A Student of Nature to Xyton Silverwind in Zephras Isle.",
        kind = "turnin",
        complete = {
            quest = { id = 92485, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-76156-stalk-with-the-earthmother"] = {
        text = "Accept Stalk With The Earthmother from Boarton Shadetotem in Thunder Bluff.",
        kind = "accept",
        complete = {
            quest = { id = 76156, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-76156-stalk-with-the-earthmother-1"] = {
        text = "Enter the Venture Company mine southeast of Thunder Bluff. Collect 5 Seaforium Mining Charges from the blasting-supply carts and return to Boarton Shadetotem.",
        kind = "objective",
        complete = {
            questObjective = { id = 76156, index = 1, count = 5, text = "Seaforium Mining Charge" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-76156-stalk-with-the-earthmother"] = {
        text = "Turn in Stalk With The Earthmother to Boarton Shadetotem in Thunder Bluff.",
        kind = "turnin",
        complete = {
            quest = { id = 76156, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5923-heeding-the-call"] = {
        text = "Accept Heeding the Call from Denatharion in Darnassus. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5923, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5924, 5925 },
        useClientText = false,
    },
    ["turnin-5923-heeding-the-call"] = {
        text = "Turn in Heeding the Call to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5923, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5924, 5925 },
        useClientText = false,
    },
    ["accept-5924-heeding-the-call"] = {
        text = "Accept Heeding the Call from Theridran in Stormwind City. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5924, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5923, 5925 },
        useClientText = false,
    },
    ["turnin-5924-heeding-the-call"] = {
        text = "Turn in Heeding the Call to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5924, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5923, 5925 },
        useClientText = false,
    },
    ["accept-5925-heeding-the-call"] = {
        text = "Accept Heeding the Call from Kal in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5925, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5923, 5924 },
        useClientText = false,
    },
    ["turnin-5925-heeding-the-call"] = {
        text = "Turn in Heeding the Call to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5925, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5923, 5924 },
        useClientText = false,
    },
    ["accept-5921-moonglade"] = {
        text = "Accept Moonglade from Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5921, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-5921-moonglade"] = {
        text = "Cast Teleport: Moonglade. Speak with Dendrite Starblaze in Nighthaven and turn in Moonglade.",
        kind = "turnin",
        complete = {
            quest = { id = 5921, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5929-great-bear-spirit"] = {
        text = "Accept Great Bear Spirit from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5929, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5921 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-5929-quest-work"] = {
        text = "Find the Great Bear Spirit in northwestern Moonglade. Speak with it about the nature of the bear.",
        kind = "objective",
        complete = {
            quest = { id = 5929, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5921 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-5929-great-bear-spirit"] = {
        text = "Turn in Great Bear Spirit to Dendrite Starblaze in Moonglade. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5929, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5921 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-5931-back-to-darnassus"] = {
        text = "Accept Back to Darnassus from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5931, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5929 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-5931-back-to-darnassus"] = {
        text = "Turn in Back to Darnassus to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5931, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5929 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6001-body-and-heart"] = {
        text = "Accept Body and Heart from Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 6001, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5931 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6001-quest-work"] = {
        text = "Use Cenarion Moondust at the Moonkin Stone east of Auberdine to summon Lunaclaw. Defeat Lunaclaw, then speak with Lunaclaw Spirit to earn quest credit.",
        kind = "objective",
        complete = {
            quest = { id = 6001, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5931 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6001-body-and-heart"] = {
        text = "Turn in Body and Heart to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 6001, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5931 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-94006-the-great-ursera-spirit"] = {
        text = "Accept The Great Ursera Spirit from Lotheluum Starbreeze in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 94006, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94006-the-great-ursera-spirit"] = {
        text = "Turn in The Great Ursera Spirit to Urs'endris in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 94006, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94638-strength-and-mercy"] = {
        text = "Accept Strength and Mercy from Urs'endris in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 94638, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 94006 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-94638-quest-work"] = {
        text = "For Strength and Mercy: Find and kill Ur'endra in the Shen'dar Highlands.",
        kind = "objective",
        complete = {
            quest = { id = 94638, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 94006 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-94638-strength-and-mercy"] = {
        text = "Turn in Strength and Mercy to Urs'endris in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 94638, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 94006 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-94911-child-of-nature"] = {
        text = "Accept Child of Nature from Muln Earthfury in Mulgore. This step is for Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 94911, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94911-child-of-nature"] = {
        text = "Turn in Child of Nature to Turak Runetotem in Thunder Bluff. This step is for Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 94911, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94913-moonglade"] = {
        text = "Accept Moonglade from Turak Runetotem in Thunder Bluff. This step is for Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 94913, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94911 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 96 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94913-moonglade"] = {
        text = "Cast Teleport: Moonglade. Speak with Dendrite Starblaze in Nighthaven and turn in Moonglade.",
        kind = "turnin",
        complete = {
            quest = { id = 94913, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94911 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { race = 96 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-94912-child-of-nature"] = {
        text = "Accept Child of Nature from Archmage Ansirem Runeweaver in Alterac Mountains. This step is for Alliance Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 94912, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94912-child-of-nature"] = {
        text = "Turn in Child of Nature to Sheldras Moontree in Stormwind City. This step is for Alliance Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 94912, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94914-moonglade"] = {
        text = "Accept Moonglade from Sheldras Moontree in Stormwind City. This step is for Alliance Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 94914, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94914-moonglade"] = {
        text = "Cast Teleport: Moonglade. Speak with Dendrite Starblaze in Nighthaven and turn in Moonglade.",
        kind = "turnin",
        complete = {
            quest = { id = 94914, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5926-heeding-the-call"] = {
        text = "Accept Heeding the Call from Innkeeper Pala in Thunder Bluff. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 5926, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5927, 5928 },
        useClientText = false,
    },
    ["turnin-5926-heeding-the-call"] = {
        text = "Turn in Heeding the Call to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 5926, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5927, 5928 },
        useClientText = false,
    },
    ["accept-5927-heeding-the-call"] = {
        text = "Accept Heeding the Call from Innkeeper Gryshka in Orgrimmar. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 5927, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5926, 5928 },
        useClientText = false,
    },
    ["turnin-5927-heeding-the-call"] = {
        text = "Turn in Heeding the Call to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 5927, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5926, 5928 },
        useClientText = false,
    },
    ["accept-5928-heeding-the-call"] = {
        text = "Accept Heeding the Call from Gennia Runetotem in Mulgore. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 5928, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5926, 5927 },
        useClientText = false,
    },
    ["turnin-5928-heeding-the-call"] = {
        text = "Turn in Heeding the Call to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 5928, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5926, 5927 },
        useClientText = false,
    },
    ["accept-5922-moonglade"] = {
        text = "Accept Moonglade from Turak Runetotem in Thunder Bluff. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 5922, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-5922-moonglade"] = {
        text = "Cast Teleport: Moonglade. Speak with Dendrite Starblaze in Nighthaven and turn in Moonglade.",
        kind = "turnin",
        complete = {
            quest = { id = 5922, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5930-great-bear-spirit"] = {
        text = "Accept Great Bear Spirit from Dendrite Starblaze in Moonglade. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 5930, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5922 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-5930-quest-work"] = {
        text = "Find the Great Bear Spirit in northwestern Moonglade. Speak with it about the nature of the bear.",
        kind = "objective",
        complete = {
            quest = { id = 5930, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5922 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-5930-great-bear-spirit"] = {
        text = "Turn in Great Bear Spirit to Dendrite Starblaze in Moonglade. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 5930, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5922 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-5932-back-to-thunder-bluff"] = {
        text = "Accept Back to Thunder Bluff from Dendrite Starblaze in Moonglade. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 5932, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5930 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-5932-back-to-thunder-bluff"] = {
        text = "Turn in Back to Thunder Bluff to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 5932, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5930 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6002-body-and-heart"] = {
        text = "Accept Body and Heart from Turak Runetotem in Thunder Bluff. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 6002, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5932 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6002-quest-work"] = {
        text = "Use Cenarion Moondust at the Moonkin Stone between Mulgore and the Barrens to summon Lunaclaw. Defeat Lunaclaw, then speak with Lunaclaw Spirit to earn quest credit.",
        kind = "objective",
        complete = {
            quest = { id = 6002, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5932 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6002-body-and-heart"] = {
        text = "Turn in Body and Heart to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 6002, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5932 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6121-lessons-anew"] = {
        text = "Accept Lessons Anew from Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 6121, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-6121-lessons-anew"] = {
        text = "Turn in Lessons Anew to Dendrite Starblaze in Moonglade. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 6121, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-6122-the-principal-source"] = {
        text = "Accept The Principal Source from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 6122, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6121 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6122-quest-work"] = {
        text = "For The Principal Source: Use the Empty Cliffspring Falls Sampler to draw a sample of water from the mouth of the cave by the falls. Deliver the Filled Cliffspring Falls Sampler to Alanndarian Nightsong in Auberdine, Darkshore.",
        kind = "objective",
        complete = {
            quest = { id = 6122, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6121 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6122-the-principal-source"] = {
        text = "Turn in The Principal Source to Alanndarian Nightsong in Darkshore. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 6122, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6121 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6123-gathering-the-cure"] = {
        text = "Accept Gathering the Cure from Alanndarian Nightsong in Darkshore. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 6123, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6122 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6123-gathering-the-cure"] = {
        text = "Collect 5 Earthroot and 12 Lunar Funguses for Alanndarian Nightsong in Auberdine. Gather or buy Earthroot; collect the quest fungi in Darkshore.",
        kind = "objective",
        complete = {
            quest = { id = 6123, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6122 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6123-gathering-the-cure"] = {
        text = "Turn in Gathering the Cure to Alanndarian Nightsong in Darkshore. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 6123, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6122 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6124-curing-the-sick"] = {
        text = "Accept Curing the Sick from Alanndarian Nightsong in Darkshore. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 6124, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6123 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6124-quest-work"] = {
        text = "For Curing the Sick: Use the Curative Animal Salve on 10 Sickly Deer that are located throughout Darkshore; doing so should cure them. Sickly Deer have been reported starting south of the Cliffspring River to the north of Auberdine and extending all the way into southern Darkshore where the edge of Ashenvale begins.",
        kind = "objective",
        complete = {
            quest = { id = 6124, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6123 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6124-curing-the-sick"] = {
        text = "Turn in Curing the Sick to Dendrite Starblaze in Moonglade. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 6124, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6123 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6125-power-over-poison"] = {
        text = "Accept Power over Poison from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 6125, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6124 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6125-power-over-poison"] = {
        text = "Turn in Power over Poison to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 6125, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6124 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6126-lessons-anew"] = {
        text = "Accept Lessons Anew from Turak Runetotem in Thunder Bluff. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 6126, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-6126-lessons-anew"] = {
        text = "Turn in Lessons Anew to Dendrite Starblaze in Moonglade. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 6126, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-6127-the-principal-source"] = {
        text = "Accept The Principal Source from Dendrite Starblaze in Moonglade. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 6127, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6126 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6127-quest-work"] = {
        text = "For The Principal Source: Use the Empty Dreadmist Peak Sampler to draw a sample of water from a pool at the top of the peak. Deliver the Filled Dreadmist Peak Sampler to Tonga Runetotem at the Crossroads, Barrens.",
        kind = "objective",
        complete = {
            quest = { id = 6127, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6126 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6127-the-principal-source"] = {
        text = "Turn in The Principal Source to Tonga Runetotem in The Barrens. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 6127, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6126 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6128-gathering-the-cure"] = {
        text = "Accept Gathering the Cure from Tonga Runetotem in The Barrens. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 6128, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6127 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6128-gathering-the-cure"] = {
        text = "Collect 5 Earthroot and 5 Kodo Horns for Tonga Runetotem at the Crossroads. Gather or buy Earthroot and obtain the horns from Barrens kodos.",
        kind = "objective",
        complete = {
            quest = { id = 6128, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6127 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6128-gathering-the-cure"] = {
        text = "Turn in Gathering the Cure to Tonga Runetotem in The Barrens. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 6128, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6127 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6129-curing-the-sick"] = {
        text = "Accept Curing the Sick from Tonga Runetotem in The Barrens. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 6129, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6128 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6129-quest-work"] = {
        text = "For Curing the Sick: Use the Curative Animal Salve on 10 Sickly Gazelles that are located throughout the northern part of the Barrens; doing so should cure them. Sickly Gazelles have been reported north of the east-west road that runs through the Crossroads.",
        kind = "objective",
        complete = {
            quest = { id = 6129, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6128 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6129-curing-the-sick"] = {
        text = "Turn in Curing the Sick to Dendrite Starblaze in Moonglade. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 6129, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6128 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6130-power-over-poison"] = {
        text = "Accept Power over Poison from Dendrite Starblaze in Moonglade. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 6130, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6129 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6130-power-over-poison"] = {
        text = "Turn in Power over Poison to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 6130, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6129 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-26-a-lesson-to-learn"] = {
        text = "Accept A Lesson to Learn from Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 26, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-26-a-lesson-to-learn"] = {
        text = "Turn in A Lesson to Learn to Dendrite Starblaze in Moonglade. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 26, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-29-trial-of-the-lake"] = {
        text = "Accept Trial of the Lake from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 29, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 26 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-29-quest-work"] = {
        text = "For Trial of the Lake: Find a Shrine Bauble in Lake Elune'ara, and take it to the Shrine of Remulos in northwestern Moonglade. Once there, use the Shrine Bauble. You must speak with Tajarri at the shrine afterwards in order to complete the trial.",
        kind = "objective",
        complete = {
            quest = { id = 29, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 26 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-29-trial-of-the-lake"] = {
        text = "Turn in Trial of the Lake to Tajarri in Moonglade. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 29, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 26 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-272-trial-of-the-sea-lion"] = {
        text = "Accept Trial of the Sea Lion from Tajarri in Moonglade. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 272, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 29 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-272-quest-work"] = {
        text = "Collect the Half Pendant of Aquatic Agility from the underwater Strange Lockbox in northern Darkshore, around 48.87,11.32. Collect the Half Pendant of Aquatic Endurance from the underwater lockbox off Westfall, around 17.87,33.11. Return to the Shrine of Remulos in Moonglade and use a half to combine them into the Pendant of the Sea Lion.",
        kind = "objective",
        complete = {
            quest = { id = 272, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 29 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-272-trial-of-the-sea-lion"] = {
        text = "Turn in Trial of the Sea Lion to Dendrite Starblaze in Moonglade. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 272, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 29 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-5061-aquatic-form"] = {
        text = "Accept Aquatic Form from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5061, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 272 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-5061-aquatic-form"] = {
        text = "Turn in Aquatic Form to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5061, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 272 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-27-a-lesson-to-learn"] = {
        text = "Accept A Lesson to Learn from Turak Runetotem in Thunder Bluff. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 27, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-27-a-lesson-to-learn"] = {
        text = "Turn in A Lesson to Learn to Dendrite Starblaze in Moonglade. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 27, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-28-trial-of-the-lake"] = {
        text = "Accept Trial of the Lake from Dendrite Starblaze in Moonglade. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 28, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 27 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-28-quest-work"] = {
        text = "For Trial of the Lake: Find a Shrine Bauble in Lake Elune'ara, and take it to the Shrine of Remulos in northwestern Moonglade. Once there, use the Shrine Bauble. You must speak with Tajarri at the shrine afterwards in order to complete the trial.",
        kind = "objective",
        complete = {
            quest = { id = 28, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 27 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-28-trial-of-the-lake"] = {
        text = "Turn in Trial of the Lake to Tajarri in Moonglade. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 28, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 27 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-30-trial-of-the-sea-lion"] = {
        text = "Accept Trial of the Sea Lion from Tajarri in Moonglade. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 30, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 28 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-30-quest-work"] = {
        text = "Collect the Half Pendant of Aquatic Endurance from the underwater Strange Lockbox off Silverpine Forest, around 29.54,29.53. Collect the Half Pendant of Aquatic Agility from the underwater lockbox in the northern Barrens, around 56.68,8.32. Return to the Shrine of Remulos in Moonglade and use a half to combine them into the Pendant of the Sea Lion.",
        kind = "objective",
        complete = {
            quest = { id = 30, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 28 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-30-trial-of-the-sea-lion"] = {
        text = "Turn in Trial of the Sea Lion to Dendrite Starblaze in Moonglade. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 30, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 28 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-31-aquatic-form"] = {
        text = "Accept Aquatic Form from Dendrite Starblaze in Moonglade. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 31, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 30 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-31-aquatic-form"] = {
        text = "Turn in Aquatic Form to Turak Runetotem in Thunder Bluff. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 31, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 30 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-98340-the-great-cat-spirit"] = {
        text = "Accept The Great Cat Spirit from Turak Runetotem in Thunder Bluff. This step is for Tauren and Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 98340, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98340-the-great-cat-spirit"] = {
        text = "Turn in The Great Cat Spirit to Dendrite Starblaze in Moonglade. This step is for Tauren and Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 98340, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98341-the-great-windborne-cat-spirit"] = {
        text = "Accept The Great Windborne Cat Spirit from Dendrite Starblaze in Moonglade. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 98341, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98341-the-great-windborne-cat-spirit"] = {
        text = "Turn in The Great Windborne Cat Spirit to Avatar of Saeyleenan in Moonglade. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 98341, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98393-the-great-cat-spirit"] = {
        text = "Accept The Great Cat Spirit from Mathrengyl Bearwalker in Darnassus. This step is for Night Elves and Alliance Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 98393, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98393-the-great-cat-spirit"] = {
        text = "Turn in The Great Cat Spirit to Dendrite Starblaze in Moonglade. This step is for Night Elves and Alliance Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 98393, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98394-the-great-cat-spirit"] = {
        text = "Accept The Great Cat Spirit from Dendrite Starblaze in Moonglade. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 98394, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98394-the-great-cat-spirit"] = {
        text = "Turn in The Great Cat Spirit to Great Cat Spirit in Moonglade. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 98394, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98396-the-great-cat-spirit"] = {
        text = "Accept The Great Cat Spirit from Great Cat Spirit in Moonglade. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 98396, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-98396-quest-work"] = {
        text = "For The Great Cat Spirit: Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den.",
        kind = "objective",
        complete = {
            quest = { id = 98396, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98396-the-great-cat-spirit"] = {
        text = "Turn in The Great Cat Spirit to Great Cat Spirit in Moonglade. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 98396, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98731-blessings-of-the-great-cat-spirit"] = {
        text = "Accept Blessings of the Great Cat Spirit from Great Cat Spirit in Moonglade. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 98731, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98731-blessings-of-the-great-cat-spirit"] = {
        text = "Turn in Blessings of the Great Cat Spirit to Dendrite Starblaze in Moonglade. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 98731, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98397-to-darnassus"] = {
        text = "Accept To Darnassus from Dendrite Starblaze in Moonglade. This step is for Night Elves and Alliance Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 98397, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98397-to-darnassus"] = {
        text = "Turn in To Darnassus to Mathrengyl Bearwalker in Darnassus. This step is for Night Elves and Alliance Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 98397, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98404-the-great-windborne-cat-spirit"] = {
        text = "Accept The Great Windborne Cat Spirit from Avatar of Saeyleenan in Moonglade. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 98404, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-98404-quest-work"] = {
        text = "For The Great Windborne Cat Spirit: Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den.",
        kind = "objective",
        complete = {
            quest = { id = 98404, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98404-the-great-windborne-cat-spirit"] = {
        text = "Turn in The Great Windborne Cat Spirit to Avatar of Saeyleenan in Moonglade. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 98404, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98738-blessings-of-the-great-windborne-cat-spirit"] = {
        text = "Accept Blessings of the Great Windborne Cat Spirit from Avatar of Saeyleenan in Moonglade. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 98738, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98738-blessings-of-the-great-windborne-cat-spirit"] = {
        text = "Turn in Blessings of the Great Windborne Cat Spirit to Dendrite Starblaze in Moonglade. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 98738, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98405-the-great-cat-spirit"] = {
        text = "Accept The Great Cat Spirit from Dendrite Starblaze in Moonglade. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 98405, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98405-the-great-cat-spirit"] = {
        text = "Turn in The Great Cat Spirit to Great Cat Spirit in Moonglade. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 98405, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98342-the-great-cat-spirit"] = {
        text = "Accept The Great Cat Spirit from Great Cat Spirit in Moonglade. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 98342, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-98342-quest-work"] = {
        text = "For The Great Cat Spirit: Recover the Relic of the Fang, Relic of the Claw, and Relic of the Silent Shadow from the Stormrage Barrow Den.",
        kind = "objective",
        complete = {
            quest = { id = 98342, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98342-the-great-cat-spirit"] = {
        text = "Turn in The Great Cat Spirit to Great Cat Spirit in Moonglade. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 98342, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98739-blessings-of-the-great-cat-spirit"] = {
        text = "Accept Blessings of the Great Cat Spirit from Great Cat Spirit in Moonglade. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 98739, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98739-blessings-of-the-great-cat-spirit"] = {
        text = "Turn in Blessings of the Great Cat Spirit to Dendrite Starblaze in Moonglade. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 98739, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98362-to-thunder-bluff"] = {
        text = "Accept To Thunder Bluff from Dendrite Starblaze in Moonglade. This step is for Tauren and Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 98362, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98362-to-thunder-bluff"] = {
        text = "Turn in To Thunder Bluff to Turak Runetotem in Thunder Bluff. This step is for Tauren and Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 98362, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-9063-torwa-pathfinder"] = {
        text = "Accept Torwa Pathfinder from Theridran.",
        kind = "accept",
        complete = {
            quest = { id = 9063, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-9063-torwa-pathfinder-horde"] = {
        text = "Accept Torwa Pathfinder from Turak Runetotem.",
        kind = "accept",
        complete = {
            quest = { id = 9063, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-9063-torwa-pathfinder"] = {
        text = "Turn in Torwa Pathfinder to Torwa Pathfinder in Un'Goro Crater.",
        kind = "turnin",
        complete = {
            quest = { id = 9063, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-9052-bloodpetal-poison"] = {
        text = "Accept Bloodpetal Poison from Torwa Pathfinder in Un'Goro Crater.",
        kind = "accept",
        complete = {
            quest = { id = 9052, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-9052-bloodpetal-poison"] = {
        text = "Collect 8 Gorishi Sting and 8 Bloodcap in Un'Goro Crater.",
        kind = "objective",
        complete = {
            quest = { id = 9052, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-9052-bloodpetal-poison"] = {
        text = "Turn in Bloodpetal Poison to Torwa Pathfinder in Un'Goro Crater.",
        kind = "turnin",
        complete = {
            quest = { id = 9052, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-9051-toxic-test"] = {
        text = "Accept Toxic Test from Torwa Pathfinder in Un'Goro Crater.",
        kind = "accept",
        complete = {
            quest = { id = 9051, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 9052 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-9051-quest-work"] = {
        text = "For Toxic Test: Stab a Devilsaur with the Devilsaur Barb.",
        kind = "objective",
        complete = {
            quest = { id = 9051, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 9052 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-9051-toxic-test"] = {
        text = "Turn in Toxic Test to Torwa Pathfinder in Un'Goro Crater.",
        kind = "turnin",
        complete = {
            quest = { id = 9051, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 9052 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-97286-research-access"] = {
        text = "Accept Research Access from Garion Wendell in Stormwind City.",
        kind = "accept",
        complete = {
            quest = { id = 97286, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-97286-research-access"] = {
        text = "Turn in Research Access to Owen Thadd in Undercity.",
        kind = "turnin",
        complete = {
            quest = { id = 97286, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98576-glyphic-parchment"] = {
        text = "Accept Glyphic Parchment from Gornek in Durotar. This step is for Orcs.",
        kind = "accept",
        complete = {
            quest = { id = 98576, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98576-glyphic-parchment"] = {
        text = "Read Glyphic Parchment in your bags. Turn in Glyphic Parchment to Mai'ah in Durotar. This step is for Orcs.",
        kind = "turnin",
        complete = {
            quest = { id = 98576, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-3104-glyphic-letter"] = {
        text = "Accept Glyphic Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 3104, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3104-glyphic-letter"] = {
        text = "Read Glyphic Letter in your bags. Turn in Glyphic Letter to Khelden Bremen in Elwynn Forest. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 3104, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3114-glyphic-memorandum"] = {
        text = "Accept Glyphic Memorandum from Sten Stoutarm in Dun Morogh. This step is for Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 3114, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3114-glyphic-memorandum"] = {
        text = "Read Glyphic Memorandum in your bags. Turn in Glyphic Memorandum to Marryk Nurribit in Dun Morogh. This step is for Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 3114, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-364-the-mindless-ones"] = {
        text = "Accept The Mindless Ones from Shadow Priest Sarvis.",
        kind = "accept",
        complete = {
            quest = { id = 364, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-364-1-duskbat"] = {
        text = "Kill 8 Mindless Zombie.",
        kind = "objective",
        complete = {
            questObjective = { id = 364, text = "Duskbat", index = 1, count = 8 },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-364-2-wretched-zombie"] = {
        text = "Kill 8 Wretched Zombie.",
        kind = "objective",
        complete = {
            questObjective = { id = 364, index = 2, text = "Wretched Zombie", count = 8 },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-364-the-mindless-ones"] = {
        text = "Turn in The Mindless Ones to Shadow Priest Sarvis.",
        kind = "turnin",
        complete = {
            quest = { id = 364, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-3098-glyphic-scroll"] = {
        text = "Accept Glyphic Scroll from Shadow Priest Sarvis in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 3098, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 364 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3098-glyphic-scroll"] = {
        text = "Read Glyphic Scroll in your bags. Turn in Glyphic Scroll to Isabella in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 3098, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 364 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-788-cutting-teeth"] = {
        text = "Accept Cutting Teeth from Gornek.",
        kind = "accept",
        complete = {
            quest = { id = 788, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-788-1-mottled-boar"] = {
        text = "Kill 10 Mottled Boar.",
        kind = "objective",
        complete = {
            questObjective = { id = 788, text = "Mottled Boar", index = 1, count = 10 },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-788-cutting-teeth"] = {
        text = "Turn in Cutting Teeth to Gornek.",
        kind = "turnin",
        complete = {
            quest = { id = 788, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-3086-glyphic-tablet"] = {
        text = "Accept Glyphic Tablet from Gornek in Durotar. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 3086, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3086-glyphic-tablet"] = {
        text = "Read Glyphic Tablet in your bags. Turn in Glyphic Tablet to Mai'ah in Durotar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 3086, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-92481-a-student-of-the-arcane"] = {
        text = "Accept A Student of the Arcane from Rorian the Dayseeker in Zephras Isle.",
        kind = "accept",
        complete = {
            quest = { id = 92481, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-92481-reviewed-mechanics"] = {
        text = "Examine the Glowing Recall Crystal, then speak with Dorii Brightwhisper in Thendal Grove.",
        kind = "objective",
        complete = {
            quest = { id = 92481, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-92481-a-student-of-the-arcane"] = {
        text = "Turn in A Student of the Arcane to Dorii Brightwhisper in Zephras Isle.",
        kind = "turnin",
        complete = {
            quest = { id = 92481, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1860-speak-with-jennea"] = {
        text = "Accept Speak with Jennea from Zaldimar Wefhellt in Elwynn Forest. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1860, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1880 },
        useClientText = false,
    },
    ["turnin-1860-speak-with-jennea"] = {
        text = "Turn in Speak with Jennea to Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1860, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1880 },
        useClientText = false,
    },
    ["accept-1861-mirror-lake"] = {
        text = "Accept Mirror Lake from Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1861, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1880 },
        useClientText = false,
    },
    ["objective-1861-quest-work"] = {
        text = "For Mirror Lake: Bring a Mirror Lake sample to Jennea Cannon in Stormwind.",
        kind = "objective",
        complete = {
            quest = { id = 1861, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1880 },
        useClientText = false,
    },
    ["turnin-1861-mirror-lake"] = {
        text = "Turn in Mirror Lake to Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1861, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1880 },
        useClientText = false,
    },
    ["accept-93791-speak-with-belann"] = {
        text = "Accept Speak with Belann from Anathamaas Aetherwind in Zephras Isle.",
        kind = "accept",
        complete = {
            quest = { id = 93791, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-93791-speak-with-belann"] = {
        text = "Turn in Speak with Belann to Belann Windwood in Zephras Isle.",
        kind = "turnin",
        complete = {
            quest = { id = 93791, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-93797-boughs-in-the-wind"] = {
        text = "Accept Boughs in the Wind from Belann Windwood in Zephras Isle.",
        kind = "accept",
        complete = {
            quest = { id = 93797, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 93791 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-93797-quest-work"] = {
        text = "For Boughs in the Wind: Bring a Wind-Infused Bough to Belann Windwood in Valanaar.",
        kind = "objective",
        complete = {
            quest = { id = 93797, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 93791 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-93797-boughs-in-the-wind"] = {
        text = "Turn in Boughs in the Wind to Belann Windwood in Zephras Isle.",
        kind = "turnin",
        complete = {
            quest = { id = 93797, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 93791 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1883-speak-with-unthuwa"] = {
        text = "Accept Speak with Un'thuwa from Uthel'nay.",
        kind = "accept",
        complete = {
            quest = { id = 1883, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1882 },
        useClientText = false,
    },
    ["turnin-1883-speak-with-unthuwa"] = {
        text = "Turn in Speak with Un'thuwa to Un'Thuwa in Durotar. This step is for Undead and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1883, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1882 },
        useClientText = false,
    },
    ["accept-1884-ju-ju-heaps"] = {
        text = "Accept Ju-Ju Heaps from Un'Thuwa in Durotar. This step is for Undead and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1884, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1882 },
        useClientText = false,
    },
    ["objective-1884-quest-work"] = {
        text = "For Ju-Ju Heaps: Destroy 4 Ju-Ju Heaps.",
        kind = "objective",
        complete = {
            quest = { id = 1884, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1882 },
        useClientText = false,
    },
    ["turnin-1884-ju-ju-heaps"] = {
        text = "Turn in Ju-Ju Heaps to Un'Thuwa in Durotar. This step is for Undead and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1884, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1882 },
        useClientText = false,
    },
    ["accept-1879-speak-with-bink"] = {
        text = "Accept Speak with Bink from Magis Sparkmantle in Dun Morogh. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1879, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1861 },
        useClientText = false,
    },
    ["turnin-1879-speak-with-bink"] = {
        text = "Turn in Speak with Bink to Bink in Ironforge. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1879, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1861 },
        useClientText = false,
    },
    ["accept-1880-mage-tastic-gizmonitor"] = {
        text = "Accept Mage-tastic Gizmonitor from Bink in Ironforge. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1880, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1861 },
        useClientText = false,
    },
    ["objective-1880-quest-work"] = {
        text = "For Mage-tastic Gizmonitor: Bring Bink her Mage-tastic Gizmonitor.",
        kind = "objective",
        complete = {
            quest = { id = 1880, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1861 },
        useClientText = false,
    },
    ["turnin-1880-mage-tastic-gizmonitor"] = {
        text = "Turn in Mage-tastic Gizmonitor to Bink in Ironforge. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1880, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1861 },
        useClientText = false,
    },
    ["accept-1881-speak-with-anastasia"] = {
        text = "Accept Speak with Anastasia from Cain Firesong in Tirisfal Glades. This step is for Undead and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1881, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1884 },
        useClientText = false,
    },
    ["turnin-1881-speak-with-anastasia"] = {
        text = "Turn in Speak with Anastasia to Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1881, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1884 },
        useClientText = false,
    },
    ["accept-1882-the-balnir-farmstead"] = {
        text = "Accept The Balnir Farmstead from Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1882, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1884 },
        useClientText = false,
    },
    ["objective-1882-quest-work"] = {
        text = "For The Balnir Farmstead: Bring Balnir Snapdragons to Anastasia Hartwell in the Mage Quarter of the Undercity.",
        kind = "objective",
        complete = {
            quest = { id = 1882, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1884 },
        useClientText = false,
    },
    ["turnin-1882-the-balnir-farmstead"] = {
        text = "Turn in The Balnir Farmstead to Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1882, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1884 },
        useClientText = false,
    },
    ["accept-1919-report-to-jennea"] = {
        text = "Accept Report to Jennea from Dink.",
        kind = "accept",
        complete = {
            quest = { id = 1919, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1919-report-to-jennea"] = {
        text = "Turn in Report to Jennea to Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1919, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1920-investigate-the-blue-recluse"] = {
        text = "Accept Investigate the Blue Recluse from Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1920, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1920-quest-work"] = {
        text = "Take the Cantation of Manifestation and Chest of Containment Coffers from behind Jennea Cannon. Enter the Blue Recluse in Stormwind and use the Cantation to reveal Rift Spawns. Defeat the spawns, use the coffers, and loot 3 Filled Containment Coffers. Return to Jennea.",
        kind = "objective",
        complete = {
            quest = { id = 1920, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1920-investigate-the-blue-recluse"] = {
        text = "Turn in Investigate the Blue Recluse to Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1920, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1921-gathering-materials"] = {
        text = "Accept Gathering Materials from Jennea Cannon in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1921, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1920 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1921-gathering-materials"] = {
        text = "Enter the Silver Stream Mine in northern Loch Modan, around 35.47,19.08. Collect 6 Charged Rift Gems from Miners' League Crates inside. Obtain 10 Linen Cloth from Tunnel Rat enemies or buy it. Return both materials to Wynne Larson in Stormwind.",
        kind = "objective",
        complete = {
            quest = { id = 1921, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1920 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1921-gathering-materials"] = {
        text = "Turn in Gathering Materials to Wynne Larson in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1921, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1920 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1941-manaweave-robe"] = {
        text = "Accept Manaweave Robe from Wynne Larson in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1941, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1921 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1941-manaweave-robe"] = {
        text = "Turn in Manaweave Robe to Wynne Larson in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1941, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1921 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1959-report-to-anastasia"] = {
        text = "Accept Report to Anastasia from Uthel'nay.",
        kind = "accept",
        complete = {
            quest = { id = 1959, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1959-report-to-anastasia"] = {
        text = "Turn in Report to Anastasia to Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1959, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1960-investigate-the-alchemist-shop"] = {
        text = "Accept Investigate the Alchemist Shop from Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1960, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1960-quest-work"] = {
        text = "Take the Cantation of Manifestation and Chest of Containment Coffers from behind Anastasia Hartwell. At the Undercity alchemist shop, use the Cantation and Arcane Explosion to reveal Rift Spawns. Defeat them, use the coffers, and loot 3 Filled Containment Coffers. Return the filled coffers and both quest tools to Anastasia.",
        kind = "objective",
        complete = {
            quest = { id = 1960, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1960-investigate-the-alchemist-shop"] = {
        text = "Turn in Investigate the Alchemist Shop to Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1960, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1961-gathering-materials"] = {
        text = "Accept Gathering Materials from Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1961, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1960 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1961-gathering-materials"] = {
        text = "Collect 6 Dalaran Mana Gems from Dalaran spellcasters around Ambermill in Silverpine Forest, near 62.26,64.24. Obtain 10 Linen Cloth from humanoids or buy it, then return both materials to Josef Gregorian in the Undercity.",
        kind = "objective",
        complete = {
            quest = { id = 1961, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1960 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1961-gathering-materials"] = {
        text = "Turn in Gathering Materials to Josef Gregorian in Undercity. This step is for Undead and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1961, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1960 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1962-spellfire-robes"] = {
        text = "Accept Spellfire Robes from Rhiannon Davis in Undercity. This step is for Undead and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1962, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1961 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1962-spellfire-robes"] = {
        text = "Turn in Spellfire Robes to Josef Gregorian in Undercity. This step is for Undead and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1962, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1961 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1939-high-sorcerer-andromath"] = {
        text = "Accept High Sorcerer Andromath from Jennea Cannon.",
        kind = "accept",
        complete = {
            quest = { id = 1939, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1939-high-sorcerer-andromath"] = {
        text = "Turn in High Sorcerer Andromath to High Sorcerer Andromath in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1939, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1938-urs-treatise-on-shadow-magic"] = {
        text = "Accept Ur's Treatise on Shadow Magic from High Sorcerer Andromath in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1938, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1938-quest-work"] = {
        text = "For Ur's Treatise on Shadow Magic: Bring Ur's Treatise on Shadow Magic to High Sorcerer Andromath in Stormwind.",
        kind = "objective",
        complete = {
            quest = { id = 1938, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1938-urs-treatise-on-shadow-magic"] = {
        text = "Turn in Ur's Treatise on Shadow Magic to High Sorcerer Andromath in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1938, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1940-pristine-spider-silk"] = {
        text = "Accept Pristine Spider Silk from High Sorcerer Andromath in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1940, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1938 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1940-quest-work"] = {
        text = "For Pristine Spider Silk: Bring 8 Pristine Spider Silk to Wynne Larson in Stormwind.",
        kind = "objective",
        complete = {
            quest = { id = 1940, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1938 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1940-pristine-spider-silk"] = {
        text = "Turn in Pristine Spider Silk to Wynne Larson in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1940, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1938 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1942-astral-knot-garment"] = {
        text = "Accept Astral Knot Garment from Wynne Larson in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1942, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1940 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1942-astral-knot-garment"] = {
        text = "Turn in Astral Knot Garment to Wynne Larson in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1942, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1940 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1943-speak-with-deino"] = {
        text = "Accept Speak with Deino from Anastasia Hartwell in Undercity. This step is for Undead and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1943, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1943-speak-with-deino"] = {
        text = "Turn in Speak with Deino to Deino in Orgrimmar. This step is for Undead and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1943, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1944-waters-of-xavian"] = {
        text = "Accept Waters of Xavian from Deino in Orgrimmar. This step is for Undead and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1944, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1944-quest-work"] = {
        text = "For Waters of Xavian: Bring the Xavian Water Sample to Deino in Orgrimmar.",
        kind = "objective",
        complete = {
            quest = { id = 1944, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1944-waters-of-xavian"] = {
        text = "Turn in Waters of Xavian to Deino in Orgrimmar. This step is for Undead and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1944, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1945-laughing-sisters"] = {
        text = "Accept Laughing Sisters from Deino in Orgrimmar. This step is for Undead and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1945, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1944 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1945-quest-work"] = {
        text = "For Laughing Sisters: Bring 12 Laughing Sister's Hairs to Kil'hala at the Crossroads.",
        kind = "objective",
        complete = {
            quest = { id = 1945, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1944 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1945-laughing-sisters"] = {
        text = "Turn in Laughing Sisters to Kil'hala in The Barrens. This step is for Undead and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1945, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1944 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1946-nether-lace-garment"] = {
        text = "Accept Nether-lace Garment from Kil'hala in The Barrens. This step is for Undead and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1946, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1945 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1946-nether-lace-garment"] = {
        text = "Turn in Nether-lace Garment to Kil'hala in The Barrens. This step is for Undead and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1946, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1945 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1947-journey-to-the-marsh"] = {
        text = "Accept Journey to the Marsh from Jennea Cannon.",
        kind = "accept",
        complete = {
            quest = { id = 1947, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1947-journey-to-the-marsh-horde"] = {
        text = "Accept Journey to the Marsh from Anastasia Hartwell.",
        kind = "accept",
        complete = {
            quest = { id = 1947, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1947-journey-to-the-marsh"] = {
        text = "Turn in Journey to the Marsh to Tabetha in Dustwallow Marsh.",
        kind = "turnin",
        complete = {
            quest = { id = 1947, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1949-hidden-secrets"] = {
        text = "Accept Hidden Secrets from Tabetha in Dustwallow Marsh.",
        kind = "accept",
        complete = {
            quest = { id = 1949, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1947 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1949-hidden-secrets"] = {
        text = "Turn in Hidden Secrets to Magus Tirth in Thousand Needles.",
        kind = "turnin",
        complete = {
            quest = { id = 1949, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1947 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1950-get-the-scoop"] = {
        text = "Accept Get the Scoop from Magus Tirth in Thousand Needles.",
        kind = "accept",
        complete = {
            quest = { id = 1950, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1949 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1950-quest-work"] = {
        text = "For Get the Scoop: Find the phrase to Tirth's strongbox.",
        kind = "objective",
        complete = {
            quest = { id = 1950, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1949 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1950-get-the-scoop"] = {
        text = "Turn in Get the Scoop to Magus Tirth in Thousand Needles.",
        kind = "turnin",
        complete = {
            quest = { id = 1950, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1949 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1948-items-of-power"] = {
        text = "Accept Items of Power from Tabetha in Dustwallow Marsh.",
        kind = "accept",
        complete = {
            quest = { id = 1948, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1947 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1948-items-of-power"] = {
        text = "Obtain 1 Jade through mining or trading. In southeastern Arathi Highlands, kill Witherbark trolls for 10 Witherbark Totem Sticks. Clear the Outer Binding Circle, use the sticks, and collect the Bolt Charged Bramble from the central rock. Bring the Jade and bramble to Tabetha in Dustwallow Marsh.",
        kind = "objective",
        complete = {
            quest = { id = 1948, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1947 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1948-items-of-power"] = {
        text = "Turn in Items of Power to Tabetha in Dustwallow Marsh.",
        kind = "turnin",
        complete = {
            quest = { id = 1948, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1947 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["handoff-1951-class-dungeon"] = {
        text = "Open Class Dungeon Prerequisites in the Dungeon library. Enter Scarlet Monastery Library with your group. Collect the Rituals of Power book in the Athenaeum beside the doorway. Bring it to Tabetha in Dustwallow Marsh. Return to this class route after turning in Rituals of Power.",
        kind = "note",
        complete = {
            quest = { id = 1951, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1950 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1952-mages-wand"] = {
        text = "Accept Mage's Wand from Tabetha in Dustwallow Marsh.",
        kind = "accept",
        complete = {
            quest = { id = 1952, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 1948, 1951 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1952-mages-wand"] = {
        text = "Turn in Mage's Wand to Tabetha in Dustwallow Marsh.",
        kind = "turnin",
        complete = {
            quest = { id = 1952, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 1948, 1951 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1953-return-to-the-marsh"] = {
        text = "Accept Return to the Marsh from Jennea Cannon.",
        kind = "accept",
        complete = {
            quest = { id = 1953, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1953-return-to-the-marsh-horde"] = {
        text = "Accept Return to the Marsh from Anastasia Hartwell.",
        kind = "accept",
        complete = {
            quest = { id = 1953, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1953-return-to-the-marsh"] = {
        text = "Turn in Return to the Marsh to Tabetha in Dustwallow Marsh.",
        kind = "turnin",
        complete = {
            quest = { id = 1953, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1954-the-infernal-orb"] = {
        text = "Accept The Infernal Orb from Tabetha in Dustwallow Marsh.",
        kind = "accept",
        complete = {
            quest = { id = 1954, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1954-quest-work"] = {
        text = "For The Infernal Orb: Bring an Infernal Orb to Tabetha in Dustwallow Marsh.",
        kind = "objective",
        complete = {
            quest = { id = 1954, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1954-the-infernal-orb"] = {
        text = "Turn in The Infernal Orb to Tabetha in Dustwallow Marsh.",
        kind = "turnin",
        complete = {
            quest = { id = 1954, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1955-the-exorcism"] = {
        text = "Accept The Exorcism from Tabetha in Dustwallow Marsh.",
        kind = "accept",
        complete = {
            quest = { id = 1955, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1954 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1955-quest-work"] = {
        text = "For The Exorcism: Kill the Demon of the Orb, then speak with Tabetha.",
        kind = "objective",
        complete = {
            quest = { id = 1955, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1954 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1955-the-exorcism"] = {
        text = "Turn in The Exorcism to Tabetha in Dustwallow Marsh.",
        kind = "turnin",
        complete = {
            quest = { id = 1955, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1954 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-8250-magecraft"] = {
        text = "Accept Magecraft from Maginor Dumas.",
        kind = "accept",
        complete = {
            quest = { id = 8250, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8250-magecraft-horde"] = {
        text = "Accept Magecraft from Pierce Shackleton.",
        kind = "accept",
        complete = {
            quest = { id = 8250, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-8250-magecraft"] = {
        text = "Turn in Magecraft to Sanath Lim-yo in Azshara.",
        kind = "turnin",
        complete = {
            quest = { id = 8250, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8251-magic-dust"] = {
        text = "Accept Magic Dust from Archmage Xylem in Azshara.",
        kind = "accept",
        complete = {
            quest = { id = 8251, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-8251-magic-dust"] = {
        text = "Collect 10 Glittering Dust from blood elves in Azshara.",
        kind = "objective",
        complete = {
            quest = { id = 8251, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-8251-magic-dust"] = {
        text = "Turn in Magic Dust to Archmage Xylem in Azshara.",
        kind = "turnin",
        complete = {
            quest = { id = 8251, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8252-the-sirens-coral"] = {
        text = "Accept The Siren's Coral from Archmage Xylem in Azshara.",
        kind = "accept",
        complete = {
            quest = { id = 8252, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8251 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-8252-the-sirens-coral"] = {
        text = "Collect 6 Enchanted Coral from Spitelash sirens in Azshara.",
        kind = "objective",
        complete = {
            quest = { id = 8252, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8251 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-8252-the-sirens-coral"] = {
        text = "Turn in The Siren's Coral to Archmage Xylem in Azshara.",
        kind = "turnin",
        complete = {
            quest = { id = 8252, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8251 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-9362-warlord-krellian"] = {
        text = "Accept Warlord Krellian from Archmage Xylem in Azshara.",
        kind = "accept",
        complete = {
            quest = { id = 9362, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-9362-warlord-krellian"] = {
        text = "Kill Warlord Krellian or Scalebeard in Azshara and collect the Prismatic Shell.",
        kind = "objective",
        complete = {
            quest = { id = 9362, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-9362-warlord-krellian"] = {
        text = "Turn in Warlord Krellian to Archmage Xylem in Azshara.",
        kind = "turnin",
        complete = {
            quest = { id = 9362, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-9364-fragmented-magic"] = {
        text = "Accept Fragmented Magic from Archmage Xylem in Azshara.",
        kind = "accept",
        complete = {
            quest = { id = 9364, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 9362 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-9364-quest-work"] = {
        text = "Polymorph Spitelash naga in Azshara and wait for the clones to appear. Kill 50 Polymorph Clones.",
        kind = "objective",
        complete = {
            quest = { id = 9364, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 9362 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-9364-fragmented-magic"] = {
        text = "Turn in Fragmented Magic to Archmage Xylem in Azshara.",
        kind = "turnin",
        complete = {
            quest = { id = 9364, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 9362 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-92479-a-scribbled-letter"] = {
        text = "Accept A Scribbled Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 92479, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-92479-a-scribbled-letter"] = {
        text = "Read Scribbled Letter in your bags. Turn in A Scribbled Letter to Tordrin Sternblade in Elwynn Forest. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 92479, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-3106-simple-rune"] = {
        text = "Accept Simple Rune from Sten Stoutarm in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 3106, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3106-simple-rune"] = {
        text = "Read Simple Rune in your bags. Turn in Simple Rune to Thran Khorman in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 3106, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3112-simple-memorandum"] = {
        text = "Accept Simple Memorandum from Sten Stoutarm in Dun Morogh. This step is for Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 3112, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3112-simple-memorandum"] = {
        text = "Read Simple Memorandum in your bags. Turn in Simple Memorandum to Thran Khorman in Dun Morogh. This step is for Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 3112, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3091-simple-note"] = {
        text = "Accept Simple Note from Grull Hawkwind in Mulgore. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 3091, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 747 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3091-simple-note"] = {
        text = "Read Simple Note in your bags. Turn in Simple Note to Harutt Thunderhorn in Mulgore. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 3091, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 747 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3100-simple-letter"] = {
        text = "Accept Simple Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 3100, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3100-simple-letter"] = {
        text = "Read Simple Letter in your bags. Turn in Simple Letter to Llane Beshere in Elwynn Forest. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 3100, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2383-simple-parchment"] = {
        text = "Accept Simple Parchment from Gornek in Durotar. This step is for Orcs.",
        kind = "accept",
        complete = {
            quest = { id = 2383, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2383-simple-parchment"] = {
        text = "Read Simple Parchment in your bags. Turn in Simple Parchment to Frang in Durotar. This step is for Orcs.",
        kind = "turnin",
        complete = {
            quest = { id = 2383, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3065-simple-tablet"] = {
        text = "Accept Simple Tablet from Gornek in Durotar. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 3065, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3065-simple-tablet"] = {
        text = "Read Simple Tablet in your bags. Turn in Simple Tablet to Frang in Durotar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 3065, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3095-simple-scroll"] = {
        text = "Accept Simple Scroll from Shadow Priest Sarvis in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 3095, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 364 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3095-simple-scroll"] = {
        text = "Read Simple Scroll in your bags. Turn in Simple Scroll to Dannal Stern in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 3095, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 364 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3116-simple-sigil"] = {
        text = "Accept Simple Sigil from Conservator Ilthalaine in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 3116, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 456 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3116-simple-sigil"] = {
        text = "Read Simple Sigil in your bags. Turn in Simple Sigil to Alyissia in Teldrassil. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 3116, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 456 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-92532-the-warriors-path"] = {
        text = "Accept The Warrior's Path from Rorian the Dayseeker in Zephras Isle.",
        kind = "accept",
        complete = {
            quest = { id = 92532, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-92532-the-warriors-path"] = {
        text = "Read Crumpled Note you've been given in your bags. Turn in The Warrior's Path to Blademaster Ren in Zephras Isle.",
        kind = "turnin",
        complete = {
            quest = { id = 92532, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1638-a-warriors-training"] = {
        text = "Accept A Warrior's Training from Ilsa Corbin.",
        kind = "accept",
        complete = {
            quest = { id = 1638, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1678, 1683, 1639 },
        useClientText = false,
    },
    ["turnin-1638-a-warriors-training"] = {
        text = "Turn in A Warrior's Training to Harry Burlguard in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1638, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1678, 1683, 1639 },
        useClientText = false,
    },
    ["accept-1639-bartleby-the-drunk"] = {
        text = "Accept Bartleby the Drunk from Harry Burlguard in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1639, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1678, 1683 },
        useClientText = false,
    },
    ["turnin-1639-bartleby-the-drunk"] = {
        text = "Turn in Bartleby the Drunk to Bartleby in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1639, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1678, 1683 },
        useClientText = false,
    },
    ["accept-1679-muren-stormpike"] = {
        text = "Accept Muren Stormpike from Granis Swiftaxe in Dun Morogh. This step is for Dwarves and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1679, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1639, 1683 },
        useClientText = false,
    },
    ["turnin-1679-muren-stormpike"] = {
        text = "Turn in Muren Stormpike to Muren Stormpike in Ironforge. This step is for Dwarves and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1679, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1639, 1683 },
        useClientText = false,
    },
    ["accept-1678-vejrek"] = {
        text = "Accept Vejrek from Muren Stormpike in Ironforge. This step is for Dwarves and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1678, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1639, 1683 },
        useClientText = false,
    },
    ["objective-1678-quest-work"] = {
        text = "For Vejrek: Bring Vejrek's Head to Muren Stormpike in Ironforge.",
        kind = "objective",
        complete = {
            quest = { id = 1678, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1639, 1683 },
        useClientText = false,
    },
    ["turnin-1678-vejrek"] = {
        text = "Turn in Vejrek to Muren Stormpike in Ironforge. This step is for Dwarves and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1678, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1639, 1683 },
        useClientText = false,
    },
    ["accept-1684-elanaria"] = {
        text = "Accept Elanaria from Moon Priestess Amara in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 1684, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1639, 1678, 1683 },
        useClientText = false,
    },
    ["turnin-1684-elanaria"] = {
        text = "Turn in Elanaria to Elanaria in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 1684, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1639, 1678, 1683 },
        useClientText = false,
    },
    ["accept-1683-vorlus-vilehoof"] = {
        text = "Accept Vorlus Vilehoof from Elanaria in Darnassus. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 1683, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1639, 1678 },
        useClientText = false,
    },
    ["objective-1683-quest-work"] = {
        text = "For Vorlus Vilehoof: Bring the Horn of Vorlus to Elanaria in Darnassus.",
        kind = "objective",
        complete = {
            quest = { id = 1683, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1639, 1678 },
        useClientText = false,
    },
    ["turnin-1683-vorlus-vilehoof"] = {
        text = "Turn in Vorlus Vilehoof to Elanaria in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 1683, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1639, 1678 },
        useClientText = false,
    },
    ["accept-1640-beat-bartleby"] = {
        text = "Accept Beat Bartleby from Bartleby in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1640, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1639, 1678, 1683 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1640-quest-work"] = {
        text = "For Beat Bartleby: Beat Bartleby, then talk to him.",
        kind = "objective",
        complete = {
            quest = { id = 1640, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1639, 1678, 1683 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1640-beat-bartleby"] = {
        text = "Turn in Beat Bartleby to Bartleby in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1640, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1639, 1678, 1683 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1665-bartlebys-mug"] = {
        text = "Accept Bartleby's Mug from Bartleby in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1665, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1640 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1665-bartlebys-mug"] = {
        text = "Turn in Bartleby's Mug to Harry Burlguard in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1665, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1640 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-94003-the-skybreaker-bulwark"] = {
        text = "Accept The Skybreaker Bulwark from Seena Skybreaker in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 94003, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-94003-the-skybreaker-bulwark"] = {
        text = "Reclaim the Skybreaker Bulwark from Zaal Stormshield at the Shrine of Akir. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "objective",
        complete = {
            quest = { id = 94003, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94003-the-skybreaker-bulwark"] = {
        text = "Turn in The Skybreaker Bulwark to Seena Skybreaker in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 94003, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1505-veteran-uzzek"] = {
        text = "Accept Veteran Uzzek from Sorek.",
        kind = "accept",
        complete = {
            quest = { id = 1505, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1819 },
        useClientText = false,
    },
    ["turnin-1505-veteran-uzzek"] = {
        text = "Turn in Veteran Uzzek to Uzzek in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1505, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1819 },
        useClientText = false,
    },
    ["accept-1498-path-of-defense"] = {
        text = "Accept Path of Defense from Uzzek in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1498, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1819 },
        useClientText = false,
    },
    ["objective-1498-quest-work"] = {
        text = "For Path of Defense: Bring 5 Singed Scales to Uzzek at Far Watch Post in the Barrens.",
        kind = "objective",
        complete = {
            quest = { id = 1498, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1819 },
        useClientText = false,
    },
    ["turnin-1498-path-of-defense"] = {
        text = "Turn in Path of Defense to Uzzek in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1498, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1819 },
        useClientText = false,
    },
    ["accept-1818-speak-with-dillinger"] = {
        text = "Accept Speak with Dillinger from Austil de Mon in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1818, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1498 },
        useClientText = false,
    },
    ["turnin-1818-speak-with-dillinger"] = {
        text = "Turn in Speak with Dillinger to Deathguard Dillinger in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1818, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1498 },
        useClientText = false,
    },
    ["accept-1819-ulag-the-cleaver"] = {
        text = "Accept Ulag the Cleaver from Deathguard Dillinger in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1819, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1498 },
        useClientText = false,
    },
    ["objective-1819-quest-work"] = {
        text = "For Ulag the Cleaver: Kill Ulag the Cleaver, then speak with Deathguard Dillinger.",
        kind = "objective",
        complete = {
            quest = { id = 1819, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1498 },
        useClientText = false,
    },
    ["turnin-1819-ulag-the-cleaver"] = {
        text = "Turn in Ulag the Cleaver to Deathguard Dillinger in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1819, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1498 },
        useClientText = false,
    },
    ["accept-1502-thungrim-firegaze"] = {
        text = "Accept Thun'grim Firegaze from Uzzek in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1502, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1498, 1819 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1502-thungrim-firegaze"] = {
        text = "Turn in Thun'grim Firegaze to Thun'grim Firegaze in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1502, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1498, 1819 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1503-forged-steel"] = {
        text = "Accept Forged Steel from Thun'grim Firegaze in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1503, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1502 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1503-quest-work"] = {
        text = "For Forged Steel: Bring the Forged Steel Bars to Thun'grim Firegaze in the Barrens.",
        kind = "objective",
        complete = {
            quest = { id = 1503, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1502 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1503-forged-steel"] = {
        text = "Turn in Forged Steel to Thun'grim Firegaze in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1503, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1502 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1820-speak-with-coleman"] = {
        text = "Accept Speak with Coleman from Deathguard Dillinger in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1820, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1498, 1819 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1820-speak-with-coleman"] = {
        text = "Turn in Speak with Coleman to Coleman Farthing in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1820, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1498, 1819 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1821-agamand-heirlooms"] = {
        text = "Accept Agamand Heirlooms from Coleman Farthing in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1821, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1498, 1819 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1821-quest-work"] = {
        text = "For Agamand Heirlooms: Bring Coleman Farthing the Agamand Family Axe, the Agamand Family Sword, the Agamand Family Mace and the Agamand Family dagger.",
        kind = "objective",
        complete = {
            quest = { id = 1821, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1498, 1819 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1821-agamand-heirlooms"] = {
        text = "Turn in Agamand Heirlooms to Coleman Farthing in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1821, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1498, 1819 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1666-marshal-haggard"] = {
        text = "Accept Marshal Haggard from Harry Burlguard in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1666, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1665 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1666-marshal-haggard"] = {
        text = "Turn in Marshal Haggard to Marshal Haggard in Elwynn Forest. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1666, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1665 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1667-dead-tooth-jack"] = {
        text = "Accept Dead-tooth Jack from Marshal Haggard in Elwynn Forest. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1667, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1666 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1667-dead-tooth-jack"] = {
        text = "Kill Dead-Tooth Jack and collect Dead-tooth's Key at Ridgepoint Tower. This step is for Humans.",
        kind = "objective",
        complete = {
            quest = { id = 1667, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1666 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1667-dead-tooth-jack"] = {
        text = "Turn in Dead-tooth Jack to Marshal Haggard in Elwynn Forest. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1667, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1666 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1680-tormus-deepforge"] = {
        text = "Accept Tormus Deepforge from Muren Stormpike in Ironforge. This step is for Humans, Dwarves, Night Elves, and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1680, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1683, 1678, 1639 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1680-tormus-deepforge"] = {
        text = "Turn in Tormus Deepforge to Tormus Deepforge in Ironforge. This step is for Humans, Dwarves, Night Elves, and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1680, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1683, 1678, 1639 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1681-ironbands-compound"] = {
        text = "Accept Ironband's Compound from Tormus Deepforge in Ironforge. This step is for Humans, Dwarves, Night Elves, and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1681, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1683, 1678, 1639 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1681-quest-work"] = {
        text = "For Ironband's Compound: Bring a load of Umbral Ore to Tormus Deepforge in Ironforge.",
        kind = "objective",
        complete = {
            quest = { id = 1681, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1683, 1678, 1639 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1681-ironbands-compound"] = {
        text = "Turn in Ironband's Compound to Tormus Deepforge in Ironforge. This step is for Humans, Dwarves, Night Elves, and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1681, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1683, 1678, 1639 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1682-grey-iron-weapons"] = {
        text = "Accept Grey Iron Weapons from Tormus Deepforge in Ironforge. This step is for Humans, Dwarves, Night Elves, and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1682, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1681 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1682-grey-iron-weapons"] = {
        text = "Turn in Grey Iron Weapons to Tormus Deepforge in Ironforge. This step is for Humans, Dwarves, Night Elves, and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1682, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1681 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1686-the-shade-of-elura"] = {
        text = "Accept The Shade of Elura from Elanaria in Darnassus. This step is for Humans, Dwarves, Night Elves, and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1686, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1683, 1678, 1639 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1686-quest-work"] = {
        text = "For The Shade of Elura: Bring 8 loads of Elunite Ore and the Medallion of Elura to Elanaria in Darnassus.",
        kind = "objective",
        complete = {
            quest = { id = 1686, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1683, 1678, 1639 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1686-the-shade-of-elura"] = {
        text = "Turn in The Shade of Elura to Elanaria in Darnassus. This step is for Humans, Dwarves, Night Elves, and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1686, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1683, 1678, 1639 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1692-smith-mathiel"] = {
        text = "Accept Smith Mathiel from Elanaria in Darnassus. This step is for Humans, Dwarves, Night Elves, and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1692, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1686 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1692-smith-mathiel"] = {
        text = "Turn in Smith Mathiel to Mathiel in Darnassus. This step is for Humans, Dwarves, Night Elves, and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1692, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1686 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1693-weapons-of-elunite"] = {
        text = "Accept Weapons of Elunite from Mathiel in Darnassus. This step is for Humans, Dwarves, Night Elves, and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1693, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1692 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1693-weapons-of-elunite"] = {
        text = "Turn in Weapons of Elunite to Mathiel in Darnassus. This step is for Humans, Dwarves, Night Elves, and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1693, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1692 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1822-heirloom-weapon"] = {
        text = "Accept Heirloom Weapon from Coleman Farthing in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1822, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1821 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1822-heirloom-weapon"] = {
        text = "Turn in Heirloom Weapon to Coleman Farthing in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1822, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1821 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1698-yorus-barleybrew"] = {
        text = "Accept Yorus Barleybrew from Wu Shen.",
        kind = "accept",
        complete = {
            quest = { id = 1698, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1698-yorus-barleybrew"] = {
        text = "Turn in Yorus Barleybrew to Yorus Barleybrew in Redridge Mountains.",
        kind = "turnin",
        complete = {
            quest = { id = 1698, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1699-the-rethban-gauntlet"] = {
        text = "Accept The Rethban Gauntlet from Yorus Barleybrew in Redridge Mountains.",
        kind = "accept",
        complete = {
            quest = { id = 1699, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1699-reviewed-mechanics"] = {
        text = "Enter the Rethban Caverns in Redridge Mountains and reach the first fork. Return to Yorus Barleybrew before the timer expires. Do not die and release your spirit.",
        kind = "objective",
        complete = {
            quest = { id = 1699, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1699-the-rethban-gauntlet"] = {
        text = "Turn in The Rethban Gauntlet to Yorus Barleybrew in Redridge Mountains.",
        kind = "turnin",
        complete = {
            quest = { id = 1699, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1702-the-shieldsmith"] = {
        text = "Accept The Shieldsmith from Yorus Barleybrew in Redridge Mountains.",
        kind = "accept",
        complete = {
            quest = { id = 1702, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1699 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1702-the-shieldsmith"] = {
        text = "Turn in The Shieldsmith to Furen Longbeard in Stormwind City.",
        kind = "turnin",
        complete = {
            quest = { id = 1702, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1699 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1701-fire-hardened-mail"] = {
        text = "Accept Fire Hardened Mail from Furen Longbeard in Stormwind City.",
        kind = "accept",
        complete = {
            quest = { id = 1701, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1702 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1701-quest-work"] = {
        text = "Collect 50 Scorched Spider Fangs from Leech Stalkers or Cave Stalkers in the Wetlands. Collect 12 Charred Horns from Fledgling or Young Chimaeras in Stonetalon Mountains, and 1 Galvanized Horn from a Chimaera Matriarch there. Obtain 1 Vial of Phlogiston from Roogug in Razorfen Kraul with a group. Return all four materials to Furen Longbeard in Stormwind.",
        kind = "objective",
        complete = {
            quest = { id = 1701, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1702 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1701-fire-hardened-mail"] = {
        text = "Turn in Fire Hardened Mail to Furen Longbeard in Stormwind City.",
        kind = "turnin",
        complete = {
            quest = { id = 1701, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1702 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1823-speak-with-ruga"] = {
        text = "Accept Speak with Ruga from Baltus Fowler.",
        kind = "accept",
        complete = {
            quest = { id = 1823, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1823-speak-with-ruga"] = {
        text = "Turn in Speak with Ruga to Ruga Ragetotem in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 1823, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1824-trial-at-the-field-of-giants"] = {
        text = "Accept Trial at the Field of Giants from Ruga Ragetotem in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 1824, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1824-trial-at-the-field-of-giants"] = {
        text = "Kill silithid at the Field of Giants in The Barrens and collect Twitching Antenna.",
        kind = "objective",
        complete = {
            quest = { id = 1824, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1824-trial-at-the-field-of-giants"] = {
        text = "Turn in Trial at the Field of Giants to Ruga Ragetotem in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 1824, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1825-speak-with-thungrim"] = {
        text = "Accept Speak with Thun'grim from Ruga Ragetotem in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 1825, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1824 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1825-speak-with-thungrim"] = {
        text = "Turn in Speak with Thun'grim to Thun'grim Firegaze in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 1825, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1824 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1838-brutal-armor"] = {
        text = "Accept Brutal Armor from Thun'grim Firegaze in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 1838, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1824 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1838-brutal-armor"] = {
        text = "Collect 15 Smoky Iron Ingots, 10 Powdered Azurite, 10 Iron Bars, and 1 Vial of Phlogiston for Thun'grim Firegaze. Return with all four materials; the Vial requires dungeon work.",
        kind = "objective",
        complete = {
            quest = { id = 1838, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1824 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1838-brutal-armor"] = {
        text = "Turn in Brutal Armor to Thun'grim Firegaze in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 1838, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1824 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1848-brutal-hauberk"] = {
        text = "Accept Brutal Hauberk from Thun'grim Firegaze in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 1848, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1838 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1848-brutal-hauberk"] = {
        text = "Turn in Brutal Hauberk to Thun'grim Firegaze in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 1848, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1838 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1839-ulaelek-and-the-brutal-gauntlets"] = {
        text = "Accept Ula'elek and the Brutal Gauntlets from Thun'grim Firegaze in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 1839, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1839-ulaelek-and-the-brutal-gauntlets"] = {
        text = "Turn in Ula'elek and the Brutal Gauntlets to Ula'elek in Durotar.",
        kind = "turnin",
        complete = {
            quest = { id = 1839, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1840-orm-stonehoof-and-the-brutal-helm"] = {
        text = "Accept Orm Stonehoof and the Brutal Helm from Thun'grim Firegaze in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 1840, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1840-orm-stonehoof-and-the-brutal-helm"] = {
        text = "Turn in Orm Stonehoof and the Brutal Helm to Orm Stonehoof in Thunder Bluff.",
        kind = "turnin",
        complete = {
            quest = { id = 1840, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1841-velora-nitely-and-the-brutal-legguards"] = {
        text = "Accept Velora Nitely and the Brutal Legguards from Thun'grim Firegaze in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 1841, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1841-velora-nitely-and-the-brutal-legguards"] = {
        text = "Turn in Velora Nitely and the Brutal Legguards to Velora Nitely in Undercity.",
        kind = "turnin",
        complete = {
            quest = { id = 1841, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1842-satyr-hooves"] = {
        text = "Accept Satyr Hooves from Ula'elek in Durotar.",
        kind = "accept",
        complete = {
            quest = { id = 1842, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1842-quest-work"] = {
        text = "For Satyr Hooves: Bring 7 Uncloven Satyr Hooves to Ula'elek at Sen'jin Village in Durotar.",
        kind = "objective",
        complete = {
            quest = { id = 1842, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1842-satyr-hooves"] = {
        text = "Turn in Satyr Hooves to Ula'elek in Durotar.",
        kind = "turnin",
        complete = {
            quest = { id = 1842, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1843-brutal-gauntlets"] = {
        text = "Accept Brutal Gauntlets from Ula'elek in Durotar.",
        kind = "accept",
        complete = {
            quest = { id = 1843, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1842 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1843-brutal-gauntlets"] = {
        text = "Turn in Brutal Gauntlets to Ula'elek in Durotar.",
        kind = "turnin",
        complete = {
            quest = { id = 1843, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1842 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1844-chimaeric-horn"] = {
        text = "Accept Chimaeric Horn from Orm Stonehoof in Thunder Bluff.",
        kind = "accept",
        complete = {
            quest = { id = 1844, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1844-quest-work"] = {
        text = "For Chimaeric Horn: Bring a Galvanized Horn to Orm Stonehoof in Thunder Bluff.",
        kind = "objective",
        complete = {
            quest = { id = 1844, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1844-chimaeric-horn"] = {
        text = "Turn in Chimaeric Horn to Orm Stonehoof in Thunder Bluff.",
        kind = "turnin",
        complete = {
            quest = { id = 1844, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1845-brutal-helm"] = {
        text = "Accept Brutal Helm from Orm Stonehoof in Thunder Bluff.",
        kind = "accept",
        complete = {
            quest = { id = 1845, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1844 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1845-brutal-helm"] = {
        text = "Turn in Brutal Helm to Orm Stonehoof in Thunder Bluff.",
        kind = "turnin",
        complete = {
            quest = { id = 1845, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1844 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1846-dragonmaw-shinbones"] = {
        text = "Accept Dragonmaw Shinbones from Velora Nitely in Undercity.",
        kind = "accept",
        complete = {
            quest = { id = 1846, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1846-quest-work"] = {
        text = "For Dragonmaw Shinbones: Bring 8 Sturdy Dragonmaw Shinbones to Velora Nitely in the Undercity.",
        kind = "objective",
        complete = {
            quest = { id = 1846, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1846-dragonmaw-shinbones"] = {
        text = "Turn in Dragonmaw Shinbones to Velora Nitely in Undercity.",
        kind = "turnin",
        complete = {
            quest = { id = 1846, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1848 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1847-brutal-legguards"] = {
        text = "Accept Brutal Legguards from Velora Nitely in Undercity.",
        kind = "accept",
        complete = {
            quest = { id = 1847, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1846 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1847-brutal-legguards"] = {
        text = "Turn in Brutal Legguards to Velora Nitely in Undercity.",
        kind = "turnin",
        complete = {
            quest = { id = 1847, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1846 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1782-authored-class-prerequisite"] = {
        text = "Accept Furen's Armor from Furen Longbeard.",
        kind = "accept",
        complete = {
            quest = { id = 1782, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1701 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1782-authored-class-prerequisite"] = {
        text = "Turn in Furen's Armor to Furen Longbeard.",
        kind = "turnin",
        complete = {
            quest = { id = 1782, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1701 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1700-grimand-elmore"] = {
        text = "Accept Grimand Elmore from Furen Longbeard in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 1700, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1700-grimand-elmore"] = {
        text = "Turn in Grimand Elmore to Grimand Elmore in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 1700, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1703-mathiel"] = {
        text = "Accept Mathiel from Furen Longbeard in Stormwind City. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 1703, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1703-mathiel"] = {
        text = "Turn in Mathiel to Mathiel in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 1703, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1704-klockmort-spannerspan"] = {
        text = "Accept Klockmort Spannerspan from Furen Longbeard in Stormwind City. This step is for Dwarves and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1704, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1704-klockmort-spannerspan"] = {
        text = "Turn in Klockmort Spannerspan to Klockmort Spannerspan in Ironforge. This step is for Dwarves and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1704, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1705-burning-blood"] = {
        text = "Accept Burning Blood from Grimand Elmore in Stormwind City.",
        kind = "accept",
        complete = {
            quest = { id = 1705, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1705-quest-work"] = {
        text = "For Burning Blood: Bring 20 vials of Burning Blood and 1 Burning Rock to Grimand Elmore in Stormwind.",
        kind = "objective",
        complete = {
            quest = { id = 1705, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1705-burning-blood"] = {
        text = "Turn in Burning Blood to Grimand Elmore in Stormwind City.",
        kind = "turnin",
        complete = {
            quest = { id = 1705, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1706-grimands-armor"] = {
        text = "Accept Grimand's Armor from Grimand Elmore in Stormwind City.",
        kind = "accept",
        complete = {
            quest = { id = 1706, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1705 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1706-grimands-armor"] = {
        text = "Turn in Grimand's Armor to Grimand Elmore in Stormwind City.",
        kind = "turnin",
        complete = {
            quest = { id = 1706, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1705 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1708-iron-coral"] = {
        text = "Accept Iron Coral from Klockmort Spannerspan in Ironforge.",
        kind = "accept",
        complete = {
            quest = { id = 1708, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1708-quest-work"] = {
        text = "For Iron Coral: Bring 20 loads of Searing Coral to Klockmort Spannerspan in Ironforge.",
        kind = "objective",
        complete = {
            quest = { id = 1708, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1708-iron-coral"] = {
        text = "Turn in Iron Coral to Klockmort Spannerspan in Ironforge.",
        kind = "turnin",
        complete = {
            quest = { id = 1708, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1709-klockmorts-creation"] = {
        text = "Accept Klockmort's Creation from Klockmort Spannerspan in Ironforge.",
        kind = "accept",
        complete = {
            quest = { id = 1709, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1708 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1709-klockmorts-creation"] = {
        text = "Turn in Klockmort's Creation to Klockmort Spannerspan in Ironforge.",
        kind = "turnin",
        complete = {
            quest = { id = 1709, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1708 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1710-sunscorched-shells"] = {
        text = "Accept Sunscorched Shells from Mathiel in Darnassus.",
        kind = "accept",
        complete = {
            quest = { id = 1710, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1710-quest-work"] = {
        text = "For Sunscorched Shells: Bring 20 Sunscorched Shells to Mathiel in Darnassus.",
        kind = "objective",
        complete = {
            quest = { id = 1710, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1710-sunscorched-shells"] = {
        text = "Turn in Sunscorched Shells to Mathiel in Darnassus.",
        kind = "turnin",
        complete = {
            quest = { id = 1710, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1711-mathiels-armor"] = {
        text = "Accept Mathiel's Armor from Mathiel in Darnassus.",
        kind = "accept",
        complete = {
            quest = { id = 1711, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1710 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1711-mathiels-armor"] = {
        text = "Turn in Mathiel's Armor to Mathiel in Darnassus.",
        kind = "turnin",
        complete = {
            quest = { id = 1711, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1710 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1718-the-islander"] = {
        text = "Accept The Islander from Wu Shen.",
        kind = "accept",
        complete = {
            quest = { id = 1718, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1718-the-islander-horde"] = {
        text = "Accept The Islander from Baltus Fowler.",
        kind = "accept",
        complete = {
            quest = { id = 1718, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1718-the-islander"] = {
        text = "Turn in The Islander to Klannoc Macleod in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 1718, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1719-the-affray"] = {
        text = "Accept The Affray from Klannoc Macleod in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 1719, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1718 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1719-quest-work"] = {
        text = "On Fray Island in the Barrens, step onto the grate to begin the Affray. Defeat the challengers as they enter, then kill Big Will. Return to Klannoc Macleod after winning.",
        kind = "objective",
        complete = {
            quest = { id = 1719, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1718 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1719-the-affray"] = {
        text = "Turn in The Affray to Klannoc Macleod in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 1719, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1718 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1791-the-windwatcher"] = {
        text = "Accept The Windwatcher from Klannoc Macleod in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 1791, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1719 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1791-the-windwatcher"] = {
        text = "Turn in The Windwatcher to Bath'rah the Windwatcher in Alterac Mountains.",
        kind = "turnin",
        complete = {
            quest = { id = 1791, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1719 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1712-cyclonian"] = {
        text = "Accept Cyclonian from Bath'rah the Windwatcher in Alterac Mountains.",
        kind = "accept",
        complete = {
            quest = { id = 1712, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1791 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1714-essence-of-the-exile"] = {
        text = "Accept Essence of the Exile from Bath'rah's Cauldron in Alterac Mountains.",
        kind = "accept",
        complete = {
            quest = { id = 1714, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1714-essence-of-the-exile"] = {
        text = "Collect 8 Burning Charms, 8 Thundering Charms, and 8 Cresting Charms from the fire, air, and water elementals in the Arathi Highlands. Turn them in at Bath'rah's Cauldron for the Essence of the Exile.",
        kind = "objective",
        complete = {
            quest = { id = 1714, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1714-essence-of-the-exile"] = {
        text = "Turn in Essence of the Exile to Bath'rah's Cauldron in Alterac Mountains.",
        kind = "turnin",
        complete = {
            quest = { id = 1714, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1712-cyclonian"] = {
        text = "Obtain 8 Liferoot, 30 Bloodscalp Tusks from Bloodscalp trolls in Stranglethorn Vale, and 1 Essence of the Exile. Complete the Essence of the Exile collection at Bath'rah's Cauldron for the essence, then return all three materials to Bath'rah.",
        kind = "objective",
        complete = {
            quest = { id = 1712, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1791 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1712-cyclonian"] = {
        text = "Turn in Cyclonian to Bath'rah the Windwatcher in Alterac Mountains.",
        kind = "turnin",
        complete = {
            quest = { id = 1712, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1791 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1713-the-summoning"] = {
        text = "Accept The Summoning from Bath'rah the Windwatcher in Alterac Mountains.",
        kind = "accept",
        complete = {
            quest = { id = 1713, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1712 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1713-the-summoning"] = {
        text = "The Summoning: Whirlwind Heart. This is an elite. Bring a group.",
        kind = "objective",
        complete = {
            quest = { id = 1713, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1712 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1713-the-summoning"] = {
        text = "Turn in The Summoning to Bath'rah the Windwatcher in Alterac Mountains.",
        kind = "turnin",
        complete = {
            quest = { id = 1713, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1712 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1792-whirlwind-weapon"] = {
        text = "Accept Whirlwind Weapon from Bath'rah the Windwatcher in Alterac Mountains.",
        kind = "accept",
        complete = {
            quest = { id = 1792, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1713 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1792-whirlwind-weapon"] = {
        text = "Turn in Whirlwind Weapon to Bath'rah the Windwatcher in Alterac Mountains.",
        kind = "turnin",
        complete = {
            quest = { id = 1792, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1713 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-8417-a-troubled-spirit"] = {
        text = "Accept A Troubled Spirit from Wu Shen.",
        kind = "accept",
        complete = {
            quest = { id = 8417, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8417-a-troubled-spirit-horde"] = {
        text = "Accept A Troubled Spirit from Christoph Walker.",
        kind = "accept",
        complete = {
            quest = { id = 8417, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-8417-a-troubled-spirit"] = {
        text = "Turn in A Troubled Spirit to Fallen Hero of the Horde in Swamp of Sorrows.",
        kind = "turnin",
        complete = {
            quest = { id = 8417, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8423-warrior-kinship"] = {
        text = "Accept Warrior Kinship from Fallen Hero of the Horde in Swamp of Sorrows.",
        kind = "accept",
        complete = {
            quest = { id = 8423, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-8423-quest-work"] = {
        text = "For Warrior Kinship: Kill 7 Helboar in the Blasted Lands and return to the Fallen Hero of the Horde.",
        kind = "objective",
        complete = {
            quest = { id = 8423, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-8423-warrior-kinship"] = {
        text = "Turn in Warrior Kinship to Fallen Hero of the Horde in Swamp of Sorrows.",
        kind = "turnin",
        complete = {
            quest = { id = 8423, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8424-war-on-the-shadowsworn"] = {
        text = "Accept War on the Shadowsworn from Fallen Hero of the Horde in Swamp of Sorrows.",
        kind = "accept",
        complete = {
            quest = { id = 8424, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8423 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-8424-quest-work"] = {
        text = "For War on the Shadowsworn: Slaughter the Shadowsworn in the Blasted Lands and return to the Fallen Hero of the Horde.",
        kind = "objective",
        complete = {
            quest = { id = 8424, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8423 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-8424-war-on-the-shadowsworn"] = {
        text = "Turn in War on the Shadowsworn to Fallen Hero of the Horde in Swamp of Sorrows.",
        kind = "turnin",
        complete = {
            quest = { id = 8424, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8423 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-98581-archaic-rune"] = {
        text = "Accept Archaic Rune from Sten Stoutarm in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 98581, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98581-archaic-rune"] = {
        text = "Read Archaic Rune in your bags. Turn in Archaic Rune to Teo Hammerstorm in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 98581, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-3084-rune-inscribed-tablet"] = {
        text = "Accept Rune-Inscribed Tablet from Gornek in Durotar. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 3084, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3084-rune-inscribed-tablet"] = {
        text = "Turn in Rune-Inscribed Tablet to Shikrik in Durotar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 3084, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3089-rune-inscribed-parchment"] = {
        text = "Accept Rune-Inscribed Parchment from Gornek in Durotar. This step is for Orcs.",
        kind = "accept",
        complete = {
            quest = { id = 3089, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3089-rune-inscribed-parchment"] = {
        text = "Read Rune-Inscribed Parchment in your bags. Turn in Rune-Inscribed Parchment to Shikrik in Durotar. This step is for Orcs.",
        kind = "turnin",
        complete = {
            quest = { id = 3089, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3093-rune-inscribed-note"] = {
        text = "Accept Rune-Inscribed Note from Grull Hawkwind in Mulgore. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 3093, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 747 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3093-rune-inscribed-note"] = {
        text = "Read Rune-Inscribed Note in your bags. Turn in Rune-Inscribed Note to Meela Dawnstrider in Mulgore. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 3093, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 747 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-92484-embracing-the-elements"] = {
        text = "Accept Embracing the Elements from Rorian the Dayseeker in Zephras Isle.",
        kind = "accept",
        complete = {
            quest = { id = 92484, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-92484-reviewed-mechanics"] = {
        text = "Examine the Humming Recall Crystal, then speak with Windshaper Boro in Thendal Grove.",
        kind = "objective",
        complete = {
            quest = { id = 92484, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-92484-embracing-the-elements"] = {
        text = "Turn in Embracing the Elements to Windshaper Boro in Zephras Isle.",
        kind = "turnin",
        complete = {
            quest = { id = 92484, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-call-of-earth"] = {
        text = "Accept Call of Earth from Windshaper Boro.",
        kind = "accept",
        complete = {
            quest = { id = 92466, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1516, 1519 },
        useClientText = false,
    },
    ["objective-call-of-earth"] = {
        text = "Bring a Signet of Akir to Windshaper Boro.",
        kind = "objective",
        complete = {
            quest = { id = 92466, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1516, 1519 },
        useClientText = false,
    },
    ["turnin-call-of-earth"] = {
        text = "Turn in Call of Earth to Windshaper Boro.",
        kind = "turnin",
        complete = {
            quest = { id = 92466, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1516, 1519 },
        useClientText = false,
    },
    ["accept-1519-call-of-earth"] = {
        text = "Accept Call of Earth from Seer Ravenfeather in Mulgore. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 1519, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1516, 92466 },
        useClientText = false,
    },
    ["objective-1519-call-of-earth"] = {
        text = "Kill Bristleback Shaman in Brambleblade Ravine and collect 2 Ritual Salve. This step is for Tauren.",
        kind = "objective",
        complete = {
            quest = { id = 1519, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1516, 92466 },
        useClientText = false,
    },
    ["turnin-1519-call-of-earth"] = {
        text = "Turn in Call of Earth to Seer Ravenfeather in Mulgore. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 1519, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1516, 92466 },
        useClientText = false,
    },
    ["accept-1516-call-of-earth"] = {
        text = "Accept Call of Earth from Canaga Earthcaller in Durotar. This step is for Orcs and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1516, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1519, 92466 },
        useClientText = false,
    },
    ["objective-1516-call-of-earth"] = {
        text = "Kill Felstalker in Burning Blade Coven and collect 2 Felstalker Hoof. This step is for Orcs and Trolls.",
        kind = "objective",
        complete = {
            quest = { id = 1516, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1519, 92466 },
        useClientText = false,
    },
    ["turnin-1516-call-of-earth"] = {
        text = "Turn in Call of Earth to Canaga Earthcaller in Durotar. This step is for Orcs and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1516, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1519, 92466 },
        useClientText = false,
    },
    ["accept-call-of-earth-92467"] = {
        text = "Accept Call of Earth from Windshaper Boro.",
        kind = "accept",
        complete = {
            quest = { id = 92467, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1516, 1519, 92466 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-92467-earth-sapta"] = {
        text = "Drink Earth Sapta at the Rise of Spirits before speaking to the Minor Manifestation of Earth.",
        kind = "objective",
        complete = {
            quest = { id = 92467, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1516, 1519, 92466 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-call-of-earth-92467"] = {
        text = "Find the Rise of Spirits and drink the Earth Sapta.",
        kind = "turnin",
        complete = {
            quest = { id = 92467, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1516, 1519, 92466 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-call-of-earth-92468"] = {
        text = "Accept Call of Earth from Minor Manifestation of Earth.",
        kind = "accept",
        complete = {
            quest = { id = 92468, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92467 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-call-of-earth-92468"] = {
        text = "Bring the Rough Quartz to Windshaper Boros in Thendal Grove.",
        kind = "turnin",
        complete = {
            quest = { id = 92468, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92467 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1520-call-of-earth"] = {
        text = "Accept Call of Earth from Seer Ravenfeather in Mulgore. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 1520, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1516, 1519 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1520-earth-sapta"] = {
        text = "Go to Kodo Rock southeast of Camp Narache in Mulgore and drink Earth Sapta. Speak with the Minor Manifestation of Earth.",
        kind = "objective",
        complete = {
            quest = { id = 1520, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1516, 1519 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1520-call-of-earth"] = {
        text = "Turn in Call of Earth to the Minor Manifestation of Earth at Kodo Rock in Mulgore.",
        kind = "turnin",
        complete = {
            quest = { id = 1520, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1516, 1519 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1521-call-of-earth"] = {
        text = "Accept Call of Earth from the Minor Manifestation of Earth at Kodo Rock in Mulgore.",
        kind = "accept",
        complete = {
            quest = { id = 1521, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1520 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1521-call-of-earth"] = {
        text = "Turn in Call of Earth to Seer Ravenfeather in Mulgore. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 1521, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1520 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1517-call-of-earth"] = {
        text = "Accept Call of Earth from Canaga Earthcaller in Durotar. This step is for Orcs and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1517, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1516, 1519 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1517-earth-sapta"] = {
        text = "Follow the path to Spirit Rock in southern Durotar and drink Earth Sapta. Speak with the Minor Manifestation of Earth.",
        kind = "objective",
        complete = {
            quest = { id = 1517, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1516, 1519 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1517-call-of-earth"] = {
        text = "Turn in Call of Earth to Minor Manifestation of Earth in Durotar. This step is for Orcs and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1517, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1516, 1519 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1518-call-of-earth"] = {
        text = "Accept Call of Earth from Minor Manifestation of Earth in Durotar. This step is for Orcs and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1518, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1517 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1518-call-of-earth"] = {
        text = "Turn in Call of Earth to Canaga Earthcaller in Durotar. This step is for Orcs and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1518, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1517 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-94373-call-of-earth"] = {
        text = "Accept Call of Earth from Teo Hammerstorm in Dun Morogh.",
        kind = "accept",
        complete = {
            quest = { id = 94373, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-94373-call-of-earth"] = {
        text = "Kill Frostmane Novices in the Coldridge Valley troll cave in Dun Morogh, around 29,82, and collect 2 Frostmane Bear Pendants for Teo Hammerstorm.",
        kind = "objective",
        complete = {
            quest = { id = 94373, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94373-call-of-earth"] = {
        text = "Turn in Call of Earth to Teo Hammerstorm in Dun Morogh.",
        kind = "turnin",
        complete = {
            quest = { id = 94373, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94374-call-of-earth"] = {
        text = "Accept Call of Earth from Teo Hammerstorm in Dun Morogh.",
        kind = "accept",
        complete = {
            quest = { id = 94374, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94373 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 7 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["objective-94374-reviewed-mechanics"] = {
        text = "Find the Spirit Stone in Dun Morogh and drink Earth Sapta. Speak with the Minor Manifestation of Earth that appears.",
        kind = "objective",
        complete = {
            quest = { id = 94374, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94373 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 7 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94374-call-of-earth"] = {
        text = "Turn in Call of Earth to the Minor Manifestation of Earth at the Spirit Stone in Dun Morogh.",
        kind = "turnin",
        complete = {
            quest = { id = 94374, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94373 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 7 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-94375-call-of-earth"] = {
        text = "Accept Call of Earth from the Minor Manifestation of Earth at the Spirit Stone in Dun Morogh.",
        kind = "accept",
        complete = {
            quest = { id = 94375, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94374 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 7 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94375-call-of-earth"] = {
        text = "Turn in Call of Earth to Teo Hammerstorm in Dun Morogh.",
        kind = "turnin",
        complete = {
            quest = { id = 94375, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94374 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 7 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-94472-earth-sapta"] = {
        text = "Accept Earth Sapta from Teo Hammerstorm in Dun Morogh.",
        kind = "accept",
        complete = {
            quest = { id = 94472, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94472-earth-sapta"] = {
        text = "Turn in Earth Sapta to Teo Hammerstorm in Dun Morogh.",
        kind = "turnin",
        complete = {
            quest = { id = 94472, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-76240-stalk-with-the-earthmother"] = {
        text = "Accept Stalk With The Earthmother from Boarton Shadetotem in Thunder Bluff.",
        kind = "accept",
        complete = {
            quest = { id = 76240, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-76240-stalk-with-the-earthmother-1"] = {
        text = "Stalk With The Earthmother: Fish Chunks. Buy or catch a Raw Brilliant Smallfish and fillet it in front of Boarton Shadetotem.",
        kind = "objective",
        complete = {
            questObjective = { id = 76240, text = "Fish Chunks", index = 1 },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-76240-stalk-with-the-earthmother"] = {
        text = "Turn in Stalk With The Earthmother to Boarton Shadetotem in Thunder Bluff.",
        kind = "turnin",
        complete = {
            quest = { id = 76240, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94449-call-of-fire"] = {
        text = "Accept Call of Fire from Eldrun Stormbreaker.",
        kind = "accept",
        complete = {
            quest = { id = 94449, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94449-call-of-fire"] = {
        text = "Turn in Call of Fire to Bruegs Kindleborn in Dun Morogh.",
        kind = "turnin",
        complete = {
            quest = { id = 94449, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94465-call-of-fire"] = {
        text = "Accept Call of Fire from Bruegs Kindleborn in Dun Morogh.",
        kind = "accept",
        complete = {
            quest = { id = 94465, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94449 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 7 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94465-call-of-fire"] = {
        text = "Turn in Call of Fire to Braldir Ashmantle in Loch Modan.",
        kind = "turnin",
        complete = {
            quest = { id = 94465, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94449 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 7 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-94466-call-of-fire"] = {
        text = "Accept Call of Fire from Braldir Ashmantle in Loch Modan.",
        kind = "accept",
        complete = {
            quest = { id = 94466, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-94466-call-of-fire"] = {
        text = "Kill Tunnel Rat Geomancers in the northern kobold caves of Loch Modan to collect 1 Fire Tar. Kill Stonesplinter Seers in the southern hills to collect 1 Reagent Pouch. Keep both for Braldir Ashmantle.",
        kind = "objective",
        complete = {
            quest = { id = 94466, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94466-call-of-fire"] = {
        text = "Turn in Call of Fire to Braldir Ashmantle in Loch Modan.",
        kind = "turnin",
        complete = {
            quest = { id = 94466, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94467-call-of-fire"] = {
        text = "Accept Call of Fire from Braldir Ashmantle in Loch Modan.",
        kind = "accept",
        complete = {
            quest = { id = 94467, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-94467-quest-work"] = {
        text = "For Call of Fire: Defeat the Minor Manifestation of Fire, and place the Glowing Ember in the brazier atop the Shrine of Eternal Flame.",
        kind = "objective",
        complete = {
            quest = { id = 94467, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94467-call-of-fire"] = {
        text = "Turn in Call of Fire to Brazier of the Dormant Flame in Loch Modan.",
        kind = "turnin",
        complete = {
            quest = { id = 94467, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94468-call-of-fire"] = {
        text = "Accept Call of Fire from Brazier of the Dormant Flame in Loch Modan.",
        kind = "accept",
        complete = {
            quest = { id = 94468, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94468-call-of-fire"] = {
        text = "Turn in Call of Fire to Bruegs Kindleborn in Dun Morogh.",
        kind = "turnin",
        complete = {
            quest = { id = 94468, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94473-fire-sapta"] = {
        text = "Accept Fire Sapta from Braldir Ashmantle in Loch Modan.",
        kind = "accept",
        complete = {
            quest = { id = 94473, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94473-fire-sapta"] = {
        text = "Turn in Fire Sapta to Braldir Ashmantle in Loch Modan.",
        kind = "turnin",
        complete = {
            quest = { id = 94473, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-97243-call-of-fire"] = {
        text = "Accept Call of Fire from Sessaria Skystride in Zephras Isle. This step is for Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 97243, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-97243-call-of-fire"] = {
        text = "Turn in Call of Fire to Olariaan Swiftburn in Zephras Isle. This step is for Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 97243, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-97244-call-of-fire"] = {
        text = "Accept Call of Fire from Olariaan Swiftburn in Zephras Isle. This step is for Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 97244, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 97243 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-97244-call-of-fire"] = {
        text = "Slay Skypriest Faladiel in the Gustberry Lowlands and collect Faladiel's Heart. This step is for Horde Skyborne.",
        kind = "objective",
        complete = {
            quest = { id = 97244, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 97243 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-97244-call-of-fire"] = {
        text = "Turn in Call of Fire to Olariaan Swiftburn in Zephras Isle. This step is for Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 97244, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 97243 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-97245-call-of-fire"] = {
        text = "Accept Call of Fire from Olariaan Swiftburn in Zephras Isle. This step is for Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 97245, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 97244 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-97245-call-of-fire"] = {
        text = "Defeat Kuramaa in the Shen'dar Highlands and collect Kuramaa's Mask. This step is for Horde Skyborne.",
        kind = "objective",
        complete = {
            quest = { id = 97245, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 97244 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-97245-call-of-fire"] = {
        text = "Turn in Call of Fire to Olariaan Swiftburn in Zephras Isle. This step is for Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 97245, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 97244 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-97257-call-of-fire"] = {
        text = "Accept Call of Fire from Olariaan Swiftburn in Zephras Isle. This step is for Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 97257, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 97245 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-97257-quest-work-ritual"] = {
        text = "Wait beside Olariaan Swiftburn at the Brazier of Offering on Zephras Isle, around 51.20,85.90. When the spirits light the flame, use the provided Torch of Eternal Flame to capture it.",
        kind = "objective",
        complete = {
            questObjective = { id = 97257, index = 1, count = 1, text = "Complete the Ritual with Olariaan" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 97245 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-97257-quest-work-deliver-flame"] = {
        text = "Carry the lit Torch of Eternal Flame to Valanaar and use it to light the Brazier of Eternal Flame at 58.35,78.84 before the quest timer expires.",
        kind = "objective",
        complete = {
            questObjective = { id = 97257, index = 2, count = 1, text = "Light the Brazier of Eternal Flame" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 97245 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-97257-call-of-fire"] = {
        text = "Turn in Call of Fire to Sessaria Skystride in Zephras Isle. This step is for Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 97257, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 97245 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1522-call-of-fire"] = {
        text = "Accept Call of Fire from Searn Firewarder in Orgrimmar. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1522, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1523, 2983, 2984 },
        useClientText = false,
    },
    ["turnin-1522-call-of-fire"] = {
        text = "Turn in Call of Fire to Kranal Fiss in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1522, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1523, 2983, 2984 },
        useClientText = false,
    },
    ["accept-1523-call-of-fire"] = {
        text = "Accept Call of Fire from Xanis Flameweaver in Thunder Bluff. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1523, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1522, 2983, 2984 },
        useClientText = false,
    },
    ["turnin-1523-call-of-fire"] = {
        text = "Turn in Call of Fire to Kranal Fiss in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1523, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1522, 2983, 2984 },
        useClientText = false,
    },
    ["accept-2983-call-of-fire"] = {
        text = "Accept Call of Fire from Swart in Durotar. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 2983, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1522, 1523, 2984 },
        useClientText = false,
    },
    ["turnin-2983-call-of-fire"] = {
        text = "Turn in Call of Fire to Kranal Fiss in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 2983, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1522, 1523, 2984 },
        useClientText = false,
    },
    ["accept-2984-call-of-fire"] = {
        text = "Accept Call of Fire from Narm Skychaser in Mulgore. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 2984, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1522, 1523, 2983 },
        useClientText = false,
    },
    ["turnin-2984-call-of-fire"] = {
        text = "Turn in Call of Fire to Kranal Fiss in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 2984, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1522, 1523, 2983 },
        useClientText = false,
    },
    ["accept-1524-call-of-fire"] = {
        text = "Accept Call of Fire from Kranal Fiss in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1524, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1524-call-of-fire"] = {
        text = "Turn in Call of Fire to Telf Joolam in Durotar. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1524, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1525-call-of-fire"] = {
        text = "Accept Call of Fire from Telf Joolam in Durotar. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1525, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1524 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1525-call-of-fire"] = {
        text = "Collect 1 Fire Tar and 1 Reagent Pouch for Telf Joolam. Obtain Fire Tar from the Razormane casters in the Barrens and the pouch from Burning Blade cultists in the Durotar cave east of Razor Hill. Return to Telf at the Durotar shrine.",
        kind = "objective",
        complete = {
            quest = { id = 1525, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1524 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1525-call-of-fire"] = {
        text = "Turn in Call of Fire to Telf Joolam in Durotar. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1525, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1524 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1526-call-of-fire"] = {
        text = "Accept Call of Fire from Telf Joolam in Durotar. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1526, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1525 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1526-call-of-fire"] = {
        text = "Climb the path to the Shrine of Eternal Flame in southern Durotar. Drink Fire Sapta to see the Minor Manifestation of Fire, defeat it and loot 1 Glowing Ember.",
        kind = "objective",
        complete = {
            questObjective = { id = 1526, index = 1, count = 1 },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1525 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1526-call-of-fire"] = {
        text = "Turn in Call of Fire to Brazier of the Dormant Flame in Durotar. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1526, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1525 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1527-call-of-fire"] = {
        text = "Accept Call of Fire from Brazier of the Dormant Flame in Durotar. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1527, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1526 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1527-call-of-fire"] = {
        text = "Turn in Call of Fire to Kranal Fiss in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1527, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1526 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1528-call-of-water"] = {
        text = "Accept Call of Water from Searn Firewarder in Orgrimmar. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1528, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1529, 2985, 2986 },
        useClientText = false,
    },
    ["turnin-1528-call-of-water"] = {
        text = "Turn in Call of Water to Islen Waterseer in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1528, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1529, 2985, 2986 },
        useClientText = false,
    },
    ["accept-94495-call-of-water"] = {
        text = "Accept Call of Water from Norric Lochthane in Loch Modan.",
        kind = "accept",
        complete = {
            quest = { id = 94495, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94495-call-of-water"] = {
        text = "Turn in Call of Water to Hervdana Saegrund in Wetlands.",
        kind = "turnin",
        complete = {
            quest = { id = 94495, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94497-call-of-water"] = {
        text = "Accept Call of Water from Hervdana Saegrund in Wetlands.",
        kind = "accept",
        complete = {
            quest = { id = 94497, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-94497-quest-work"] = {
        text = "For Call of Water: Fill the Empty Brown Waterskin at the bottom of the waterfalls below Hervdana's cave and return it to her in the Wetlands.",
        kind = "objective",
        complete = {
            quest = { id = 94497, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94497-call-of-water"] = {
        text = "Turn in Call of Water to Hervdana Saegrund in Wetlands.",
        kind = "turnin",
        complete = {
            quest = { id = 94497, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94499-call-of-water"] = {
        text = "Accept Call of Water from Hervdana Saegrund in Wetlands.",
        kind = "accept",
        complete = {
            quest = { id = 94499, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-94499-quest-work"] = {
        text = "For Call of Water: Fill the Empty Red Waterskin at Stonewatch Falls near the Nightcrawler Murlocs and return to Hervdana Saegrund in the Wetlands.",
        kind = "objective",
        complete = {
            quest = { id = 94499, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94499-call-of-water"] = {
        text = "Turn in Call of Water to Hervdana Saegrund in Wetlands.",
        kind = "turnin",
        complete = {
            quest = { id = 94499, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94500-call-of-water"] = {
        text = "Accept Call of Water from Hervdana Saegrund in Wetlands.",
        kind = "accept",
        complete = {
            quest = { id = 94500, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-94500-quest-work"] = {
        text = "For Call of Water: Fill the Unfilled Blue Waterskin at the waters of Astranaar in Ashenvale and return to Hervdana Saegrund in the Wetlands.",
        kind = "objective",
        complete = {
            quest = { id = 94500, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94500-call-of-water"] = {
        text = "Turn in Call of Water to Hervdana Saegrund in Wetlands.",
        kind = "turnin",
        complete = {
            quest = { id = 94500, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94501-call-of-water"] = {
        text = "Accept Call of Water from Hervdana Saegrund in Wetlands.",
        kind = "accept",
        complete = {
            quest = { id = 94501, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94501-call-of-water"] = {
        text = "Turn in Call of Water to Norric Lochthane in Loch Modan.",
        kind = "turnin",
        complete = {
            quest = { id = 94501, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94502-call-of-water"] = {
        text = "Accept Call of Water from Norric Lochthane in Loch Modan.",
        kind = "accept",
        complete = {
            quest = { id = 94502, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-94502-quest-work"] = {
        text = "For Call of Water: Cleanse the corruption at Stendel's Pond in Westfall.",
        kind = "objective",
        complete = {
            quest = { id = 94502, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94502-call-of-water"] = {
        text = "Turn in Call of Water to Norric Lochthane in Loch Modan.",
        kind = "turnin",
        complete = {
            quest = { id = 94502, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94616-water-sapta"] = {
        text = "Accept Water Sapta from Norric Lochthane in Loch Modan.",
        kind = "accept",
        complete = {
            quest = { id = 94616, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94616-water-sapta"] = {
        text = "Turn in Water Sapta to Norric Lochthane in Loch Modan.",
        kind = "turnin",
        complete = {
            quest = { id = 94616, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1529-call-of-water"] = {
        text = "Accept Call of Water from Xanis Flameweaver in Thunder Bluff. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1529, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1528, 2985, 2986 },
        useClientText = false,
    },
    ["turnin-1529-call-of-water"] = {
        text = "Turn in Call of Water to Islen Waterseer in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1529, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1528, 2985, 2986 },
        useClientText = false,
    },
    ["accept-2985-call-of-water"] = {
        text = "Accept Call of Water from Swart in Durotar.",
        kind = "accept",
        complete = {
            quest = { id = 2985, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1528, 1529, 2986 },
        useClientText = false,
    },
    ["turnin-2985-call-of-water"] = {
        text = "Turn in Call of Water to Islen Waterseer in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 2985, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1528, 1529, 2986 },
        useClientText = false,
    },
    ["accept-2986-call-of-water"] = {
        text = "Accept Call of Water from Narm Skychaser in Mulgore.",
        kind = "accept",
        complete = {
            quest = { id = 2986, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1528, 1529, 2985 },
        useClientText = false,
    },
    ["turnin-2986-call-of-water"] = {
        text = "Turn in Call of Water to Islen Waterseer in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 2986, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1528, 1529, 2985 },
        useClientText = false,
    },
    ["accept-94494-call-of-water"] = {
        text = "Accept Call of Water from Eldrun Stormbreaker in Ironforge.",
        kind = "accept",
        complete = {
            quest = { id = 94494, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94494-call-of-water"] = {
        text = "Turn in Call of Water to Norric Lochthane in Loch Modan.",
        kind = "turnin",
        complete = {
            quest = { id = 94494, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1530-call-of-water"] = {
        text = "Accept Call of Water from Islen Waterseer in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1530, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1530-call-of-water"] = {
        text = "Turn in Call of Water to Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1530, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1535-call-of-water"] = {
        text = "Accept Call of Water from Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1535, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1530 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1535-quest-work"] = {
        text = "For Call of Water: Fill the Empty Brown Waterskin at the watering hole below Brine's hut and return it to her in the Barrens.",
        kind = "objective",
        complete = {
            quest = { id = 1535, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1530 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1535-call-of-water"] = {
        text = "Turn in Call of Water to Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1535, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1530 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1536-call-of-water"] = {
        text = "Accept Call of Water from Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1536, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1535 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1536-quest-work"] = {
        text = "For Call of Water: Fill the Empty Red Waterskin at the well in Tarren Mill and return to Brine in the Barrens.",
        kind = "objective",
        complete = {
            quest = { id = 1536, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1535 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1536-call-of-water"] = {
        text = "Turn in Call of Water to Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1536, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1535 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1534-call-of-water"] = {
        text = "Accept Call of Water from Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1534, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1536 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1534-quest-work"] = {
        text = "For Call of Water: Fill the Empty Blue Waterskin at the Ruins of Stardust in Ashenvale and return to Brine in the Barrens.",
        kind = "objective",
        complete = {
            quest = { id = 1534, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1536 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1534-call-of-water"] = {
        text = "Turn in Call of Water to Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1534, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1536 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-220-call-of-water"] = {
        text = "Accept Call of Water from Brine in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 220, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1534 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-220-call-of-water"] = {
        text = "Turn in Call of Water to Islen Waterseer in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 220, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1534 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-63-call-of-water"] = {
        text = "Accept Call of Water from Islen Waterseer in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 63, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 220 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-63-quest-work"] = {
        text = "For Call of Water: Defeat the Corrupt Manifestation of Water and place the Corrupted Manifestation's Bracers along with the Remaining Drops of Purest Water on the Brazier of Everfount in Silverpine Forest.",
        kind = "objective",
        complete = {
            quest = { id = 63, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 220 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-63-call-of-water"] = {
        text = "Turn in Call of Water to Brazier of Everfount in Silverpine Forest. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 63, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 220 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-100-call-of-water"] = {
        text = "Accept Call of Water from Brazier of Everfount in Silverpine Forest. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 100, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 63 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-100-call-of-water"] = {
        text = "Turn in Call of Water to Minor Manifestation of Water in Silverpine Forest. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 100, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 63 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-96-call-of-water"] = {
        text = "Accept Call of Water from Minor Manifestation of Water in Silverpine Forest. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 96, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 100 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-96-call-of-water"] = {
        text = "Turn in Call of Water to Islen Waterseer in The Barrens. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 96, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 100 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1531-call-of-air"] = {
        text = "Accept Call of Air from Searn Firewarder in Orgrimmar. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1531, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1532 },
        useClientText = false,
    },
    ["turnin-1531-call-of-air"] = {
        text = "Turn in Call of Air to Prate Cloudseer in Thousand Needles. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1531, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1532 },
        useClientText = false,
    },
    ["accept-1532-call-of-air"] = {
        text = "Accept Call of Air from Xanis Flameweaver in Thunder Bluff. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1532, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1531 },
        useClientText = false,
    },
    ["turnin-1532-call-of-air"] = {
        text = "Turn in Call of Air to Prate Cloudseer in Thousand Needles. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1532, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1531 },
        useClientText = false,
    },
    ["accept-8410-elemental-mastery"] = {
        text = "Accept Elemental Mastery from Sagorne Creststrider.",
        kind = "accept",
        complete = {
            quest = { id = 8410, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 8411 },
        useClientText = false,
    },
    ["objective-8410-quest-work"] = {
        text = "For Elemental Mastery: Collect a sample of air, fire, earth and water for Bath'rah the Windwatcher.",
        kind = "objective",
        complete = {
            quest = { id = 8410, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 8411 },
        useClientText = false,
    },
    ["turnin-8410-elemental-mastery"] = {
        text = "Turn in Elemental Mastery to Bath'rah the Windwatcher in Alterac Mountains. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 8410, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 8411 },
        useClientText = false,
    },
    ["accept-8411-mastering-the-elements"] = {
        text = "Accept Mastering the Elements from Bath'rah the Windwatcher in Alterac Mountains.",
        kind = "accept",
        complete = {
            quest = { id = 8411, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 8410 },
        useClientText = false,
    },
    ["objective-8411-mastering-the-elements"] = {
        text = "Obtain 1 Elemental Air, 1 Elemental Earth, 1 Elemental Fire, and 1 Elemental Water. Collect them from corresponding elementals or buy them, then bring all four to Bath'rah the Windwatcher.",
        kind = "objective",
        complete = {
            quest = { id = 8411, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 8410 },
        useClientText = false,
    },
    ["turnin-8411-mastering-the-elements"] = {
        text = "Turn in Mastering the Elements to Bath'rah the Windwatcher in Alterac Mountains.",
        kind = "turnin",
        complete = {
            quest = { id = 8411, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 8410 },
        useClientText = false,
    },
    ["accept-8412-spirit-totem"] = {
        text = "Accept Spirit Totem from Bath'rah the Windwatcher in Alterac Mountains. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 8412, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8410, 8411 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-8412-quest-work"] = {
        text = "Collect 8 Bloodshot Spider Eyes and 8 Thick Black Claws from spiders and bears around 33.60,60.40 in the Western Plaguelands. Bring both materials to Bath'rah the Windwatcher.",
        kind = "objective",
        complete = {
            quest = { id = 8412, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8410, 8411 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-8412-spirit-totem"] = {
        text = "Turn in Spirit Totem to Bath'rah the Windwatcher in Alterac Mountains. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 8412, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8410, 8411 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7667-material-assistance"] = {
        text = "Accept Material Assistance from Sagorne Creststrider in Orgrimmar. This step is for Orcs, Tauren, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 7667, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-7667-material-assistance"] = {
        text = "Obtain 1 Azerothian Diamond and 1 Pristine Black Diamond, then return both to Sagorne Creststrider in Orgrimmar. Buy them or obtain them from their normal sources.",
        kind = "objective",
        complete = {
            quest = { id = 7667, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-7667-material-assistance"] = {
        text = "Turn in Material Assistance to Sagorne Creststrider in Orgrimmar. This step is for Orcs, Tauren, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 7667, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-3102-encrypted-letter"] = {
        text = "Accept Encrypted Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 3102, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3102-encrypted-letter"] = {
        text = "Read Encrypted Letter in your bags. Turn in Encrypted Letter to Jorik Kerridan in Elwynn Forest. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 3102, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3083-encrypted-tablet"] = {
        text = "Accept Encrypted Tablet from Gornek in Durotar. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 3083, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3083-encrypted-tablet"] = {
        text = "Read Encrypted Tablet in your bags. Turn in Encrypted Tablet to Rwag in Durotar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 3083, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3088-encrypted-parchment"] = {
        text = "Accept Encrypted Parchment from Gornek in Durotar. This step is for Orcs.",
        kind = "accept",
        complete = {
            quest = { id = 3088, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3088-encrypted-parchment"] = {
        text = "Read Encrypted Parchment in your bags. Turn in Encrypted Parchment to Rwag in Durotar. This step is for Orcs.",
        kind = "turnin",
        complete = {
            quest = { id = 3088, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3109-encrypted-rune"] = {
        text = "Accept Encrypted Rune from Sten Stoutarm in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 3109, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3109-encrypted-rune"] = {
        text = "Read Encrypted Rune in your bags. Turn in Encrypted Rune to Solm Hargrin in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 3109, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3113-encrypted-memorandum"] = {
        text = "Accept Encrypted Memorandum from Sten Stoutarm in Dun Morogh. This step is for Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 3113, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3113-encrypted-memorandum"] = {
        text = "Read Encrypted Memorandum in your bags. Turn in Encrypted Memorandum to Solm Hargrin in Dun Morogh. This step is for Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 3113, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3118-encrypted-sigil"] = {
        text = "Accept Encrypted Sigil from Conservator Ilthalaine in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 3118, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 456 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3118-encrypted-sigil"] = {
        text = "Read Encrypted Sigil in your bags. Turn in Encrypted Sigil to Frahun Shadewhisper in Teldrassil. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 3118, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 456 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3096-encrypted-scroll"] = {
        text = "Accept Encrypted Scroll from Shadow Priest Sarvis in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 3096, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 364 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3096-encrypted-scroll"] = {
        text = "Read Encrypted Scroll in your bags. Turn in Encrypted Scroll to David Trias in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 3096, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 364 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-92483-at-home-in-the-shadows"] = {
        text = "Accept At Home in the Shadows from Rorian the Dayseeker in Zephras Isle.",
        kind = "accept",
        complete = {
            quest = { id = 92483, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-92483-at-home-in-the-shadows"] = {
        text = "Read Simple Note in your bags. Turn in At Home in the Shadows to Akeri Duskblade in Zephras Isle.",
        kind = "turnin",
        complete = {
            quest = { id = 92483, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2218-road-to-salvation"] = {
        text = "Accept Road to Salvation from Hogral Bakkan in Dun Morogh.",
        kind = "accept",
        complete = {
            quest = { id = 2218, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-2218-road-to-salvation"] = {
        text = "Turn in Road to Salvation to Hulfdan Blackbeard in Ironforge.",
        kind = "turnin",
        complete = {
            quest = { id = 2218, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-2238-simple-subterfugin"] = {
        text = "Accept Simple Subterfugin' from Hulfdan Blackbeard in Ironforge.",
        kind = "accept",
        complete = {
            quest = { id = 2238, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2218 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2238-simple-subterfugin"] = {
        text = "Turn in Simple Subterfugin' to Onin MacHammar in Dun Morogh.",
        kind = "turnin",
        complete = {
            quest = { id = 2238, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2218 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2239-onins-report"] = {
        text = "Accept Onin's Report from Onin MacHammar in Dun Morogh.",
        kind = "accept",
        complete = {
            quest = { id = 2239, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2238 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2239-onins-report"] = {
        text = "Turn in Onin's Report to Hulfdan Blackbeard in Ironforge.",
        kind = "turnin",
        complete = {
            quest = { id = 2239, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2238 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1859-therzok"] = {
        text = "Accept Therzok from Kaplak in Durotar. This step is for Orcs.",
        kind = "accept",
        complete = {
            quest = { id = 1859, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1885 },
        useClientText = false,
    },
    ["turnin-1859-therzok"] = {
        text = "Turn in Therzok to Therzok in Orgrimmar. This step is for Orcs.",
        kind = "turnin",
        complete = {
            quest = { id = 1859, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1885 },
        useClientText = false,
    },
    ["accept-1885-mennet-carkad"] = {
        text = "Accept Mennet Carkad from Marion Call in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1885, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1859 },
        useClientText = false,
    },
    ["turnin-1885-mennet-carkad"] = {
        text = "Turn in Mennet Carkad to Mennet Carkad in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1885, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1859 },
        useClientText = false,
    },
    ["accept-1886-the-deathstalkers"] = {
        text = "Accept The Deathstalkers from Mennet Carkad in Undercity. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1886, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1886-quest-work"] = {
        text = "For The Deathstalkers: Get Astor's Letter of Introduction and return it to Mennet Carkad in the Rogues' Quarter.",
        kind = "objective",
        complete = {
            quest = { id = 1886, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1886-the-deathstalkers"] = {
        text = "Turn in The Deathstalkers to Mennet Carkad in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1886, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1898-the-deathstalkers"] = {
        text = "Accept The Deathstalkers from Mennet Carkad in Undercity. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1898, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1886 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1898-the-deathstalkers"] = {
        text = "Turn in The Deathstalkers to Andron Gant in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1898, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1886 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1899-the-deathstalkers"] = {
        text = "Accept The Deathstalkers from Andron Gant in Undercity. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1899, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1898 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1899-quest-work"] = {
        text = "For The Deathstalkers: Bring Andron's Ledger to Mennet Carkad in the Rogues' Quarter of Undercity.",
        kind = "objective",
        complete = {
            quest = { id = 1899, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1898 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1899-the-deathstalkers"] = {
        text = "Turn in The Deathstalkers to Mennet Carkad in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1899, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1898 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1963-the-shattered-hand"] = {
        text = "Accept The Shattered Hand from Therzok in Orgrimmar. This step is for Orcs and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1963, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1963-quest-work"] = {
        text = "For The Shattered Hand: Kill Tazan and bring his Satchel to Therzok in the Cleft of Shadow in Orgrimmar.",
        kind = "objective",
        complete = {
            quest = { id = 1963, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1963-the-shattered-hand"] = {
        text = "Turn in The Shattered Hand to Therzok in Orgrimmar. This step is for Orcs and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1963, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1858-the-shattered-hand"] = {
        text = "Accept The Shattered Hand from Therzok in Orgrimmar. This step is for Orcs and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1858, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1963 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1858-the-shattered-hand"] = {
        text = "Pickpocket Tazan's Key from Tazan in The Barrens. This step is for Orcs and Trolls.",
        kind = "objective",
        complete = {
            quest = { id = 1858, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1963 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1858-the-shattered-hand"] = {
        text = "Turn in The Shattered Hand to Therzok in Orgrimmar. This step is for Orcs and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1858, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1963 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1978-the-deathstalkers"] = {
        text = "Accept The Deathstalkers from Mennet Carkad in Undercity. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1978, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1899 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1978-the-deathstalkers"] = {
        text = "Turn in The Deathstalkers to Varimathras in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1978, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1899 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2205-seek-out-si-7"] = {
        text = "Accept Seek out SI: 7 from Keryn Sylvius in Elwynn Forest.",
        kind = "accept",
        complete = {
            quest = { id = 2205, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-2205-seek-out-si-7"] = {
        text = "Turn in Seek out SI: 7 to Master Mathias Shaw in Stormwind City.",
        kind = "turnin",
        complete = {
            quest = { id = 2205, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-2206-snatch-and-grab"] = {
        text = "Accept Snatch and Grab from Master Mathias Shaw in Stormwind City.",
        kind = "accept",
        complete = {
            quest = { id = 2206, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2205 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-2206-quest-work"] = {
        text = "For Snatch and Grab: Find the Defias Dockmaster and recover the Shipping Schedule for Master Mathias Shaw.",
        kind = "objective",
        complete = {
            quest = { id = 2206, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2205 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2206-snatch-and-grab"] = {
        text = "Turn in Snatch and Grab to Master Mathias Shaw in Stormwind City.",
        kind = "turnin",
        complete = {
            quest = { id = 2206, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2205 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2241-the-apple-falls"] = {
        text = "Accept The Apple Falls from Jannok Breezesong in Teldrassil.",
        kind = "accept",
        complete = {
            quest = { id = 2241, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-2241-the-apple-falls"] = {
        text = "Turn in The Apple Falls to Syurna in Darnassus.",
        kind = "turnin",
        complete = {
            quest = { id = 2241, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-2242-destiny-calls"] = {
        text = "Accept Destiny Calls from Syurna in Darnassus.",
        kind = "accept",
        complete = {
            quest = { id = 2242, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2241 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-2242-quest-work"] = {
        text = "For Destiny Calls: Find Sethir the Ancient and bring back any clues that you may discover to Syurna.",
        kind = "objective",
        complete = {
            quest = { id = 2242, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2241 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2242-destiny-calls"] = {
        text = "Turn in Destiny Calls to Syurna in Darnassus.",
        kind = "turnin",
        complete = {
            quest = { id = 2242, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2241 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1998-fenwick-thatros"] = {
        text = "Accept Fenwick Thatros from Mennet Carkad in Undercity. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1998, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1998-quest-work"] = {
        text = "For Fenwick Thatros: Kill Fenwick Thatros and bring his head back to Mennet Carkad in the Rogues' Quarter of the Undercity.",
        kind = "objective",
        complete = {
            quest = { id = 1998, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1998-fenwick-thatros"] = {
        text = "Turn in Fenwick Thatros to Mennet Carkad in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1998, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1999-tools-of-the-trade"] = {
        text = "Accept Tools of the Trade from Mennet Carkad in Undercity. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1999, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1998 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1999-quest-work"] = {
        text = "For Tools of the Trade: Find the Dalaran Status Report and return it to Mennet Carkad in the Rogues' Quarter of the Undercity.",
        kind = "objective",
        complete = {
            quest = { id = 1999, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1998 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1999-tools-of-the-trade"] = {
        text = "Turn in Tools of the Trade to Mennet Carkad in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1999, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1998 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2259-erion-shadewhisper"] = {
        text = "Accept Erion Shadewhisper from Jannok Breezesong in Teldrassil.",
        kind = "accept",
        complete = {
            quest = { id = 2259, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-2259-erion-shadewhisper"] = {
        text = "Turn in Erion Shadewhisper to Erion Shadewhisper in Darnassus.",
        kind = "turnin",
        complete = {
            quest = { id = 2259, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-2260-erions-behest"] = {
        text = "Accept Erion's Behest from Erion Shadewhisper in Darnassus.",
        kind = "accept",
        complete = {
            quest = { id = 2260, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-2260-erions-behest"] = {
        text = "Turn in Erion's Behest to Renzik \"The Shiv\" in Stormwind City.",
        kind = "turnin",
        complete = {
            quest = { id = 2260, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-2281-redridge-rendezvous"] = {
        text = "Accept Redridge Rendezvous from Renzik \"The Shiv\" in Stormwind City.",
        kind = "accept",
        complete = {
            quest = { id = 2281, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-2281-redridge-rendezvous"] = {
        text = "Turn in Redridge Rendezvous to Lucius in Redridge Mountains.",
        kind = "turnin",
        complete = {
            quest = { id = 2281, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-2282-althers-mill"] = {
        text = "Accept Alther's Mill from Lucius in Redridge Mountains.",
        kind = "accept",
        complete = {
            quest = { id = 2282, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2281 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-2282-quest-work"] = {
        text = "For Alther's Mill: Open Lucius's Lockbox, recover the Token of Thievery and return it to Lucius in Lakeshire.",
        kind = "objective",
        complete = {
            quest = { id = 2282, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2281 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2282-althers-mill"] = {
        text = "Turn in Alther's Mill to Lucius in Redridge Mountains.",
        kind = "turnin",
        complete = {
            quest = { id = 2282, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2281 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2299-to-hulfdan"] = {
        text = "Accept To Hulfdan! from Hogral Bakkan in Dun Morogh.",
        kind = "accept",
        complete = {
            quest = { id = 2299, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-2299-to-hulfdan"] = {
        text = "Turn in To Hulfdan! to Hulfdan Blackbeard in Ironforge.",
        kind = "turnin",
        complete = {
            quest = { id = 2299, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-2298-kingly-shakedown"] = {
        text = "Accept Kingly Shakedown from Hulfdan Blackbeard in Ironforge.",
        kind = "accept",
        complete = {
            quest = { id = 2298, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-2298-kingly-shakedown"] = {
        text = "Turn in Kingly Shakedown to Renzik \"The Shiv\" in Stormwind City.",
        kind = "turnin",
        complete = {
            quest = { id = 2298, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-2300-si-7"] = {
        text = "Accept SI:7 from Keryn Sylvius in Elwynn Forest.",
        kind = "accept",
        complete = {
            quest = { id = 2300, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-2300-si-7"] = {
        text = "Turn in SI:7 to Renzik \"The Shiv\" in Stormwind City.",
        kind = "turnin",
        complete = {
            quest = { id = 2300, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-2378-find-the-shattered-hand"] = {
        text = "Accept Find the Shattered Hand from Mennet Carkad in Undercity. This step is for Orcs, Undead, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 2378, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 2380 },
        useClientText = false,
    },
    ["turnin-2378-find-the-shattered-hand"] = {
        text = "Turn in Find the Shattered Hand to Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 2378, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 2380 },
        useClientText = false,
    },
    ["accept-2380-to-orgrimmar"] = {
        text = "Accept To Orgrimmar! from Kaplak in Durotar.",
        kind = "accept",
        complete = {
            quest = { id = 2380, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 2378 },
        useClientText = false,
    },
    ["turnin-2380-to-orgrimmar"] = {
        text = "Turn in To Orgrimmar! to Shenthul in Orgrimmar.",
        kind = "turnin",
        complete = {
            quest = { id = 2380, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 2378 },
        useClientText = false,
    },
    ["accept-2379-zandozan"] = {
        text = "Accept Zando'zan from Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 2379, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-2379-zandozan"] = {
        text = "Turn in Zando'zan to Zando'zan in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 2379, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-2382-wrenix-of-ratchet"] = {
        text = "Accept Wrenix of Ratchet from Zando'zan in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 2382, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2379 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2382-wrenix-of-ratchet"] = {
        text = "Turn in Wrenix of Ratchet to Wrenix the Wretched in The Barrens. This step is for Orcs, Undead, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 2382, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2379 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2381-plundering-the-plunderers"] = {
        text = "Accept Plundering the Plunderers from Wrenix the Wretched in The Barrens. This step is for Orcs, Undead, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 2381, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2382 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-2381-plundering-the-plunderers"] = {
        text = "Steal Southsea Treasure from the Southsea pirates in The Barrens. This step is for Orcs, Undead, and Trolls.",
        kind = "objective",
        complete = {
            quest = { id = 2381, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2382 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2381-plundering-the-plunderers"] = {
        text = "Turn in Plundering the Plunderers to Wrenix the Wretched in The Barrens. This step is for Orcs, Undead, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 2381, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2382 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2360-mathias-and-the-defias"] = {
        text = "Accept Mathias and the Defias from Master Mathias Shaw in Stormwind City.",
        kind = "accept",
        complete = {
            quest = { id = 2360, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-2360-mathias-and-the-defias"] = {
        text = "Turn in Mathias and the Defias to Agent Kearnen in Westfall.",
        kind = "turnin",
        complete = {
            quest = { id = 2360, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-2359-klavens-tower"] = {
        text = "Accept Klaven's Tower from Agent Kearnen in Westfall.",
        kind = "accept",
        complete = {
            quest = { id = 2359, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2360 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-2359-klavens-tower"] = {
        text = "Pickpocket the Defias Tower Key from a Malformed Defias Drone near the Westfall tower, around 71.63,73.91. Enter the tower and climb to Klaven Mortwake. Defeat him and retrieve his journal from the chest upstairs, around 70.41,73.93. Bring both the journal and key to Master Mathias Shaw.",
        kind = "objective",
        complete = {
            quest = { id = 2359, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2360 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2359-klavens-tower"] = {
        text = "Turn in Klaven's Tower to Master Mathias Shaw in Stormwind City.",
        kind = "turnin",
        complete = {
            quest = { id = 2359, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2360 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2607-the-touch-of-zanzil"] = {
        text = "Accept The Touch of Zanzil from Master Mathias Shaw in Stormwind City.",
        kind = "accept",
        complete = {
            quest = { id = 2607, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2359 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2607-the-touch-of-zanzil"] = {
        text = "Turn in The Touch of Zanzil to Doc Mixilpixil in Stormwind City.",
        kind = "turnin",
        complete = {
            quest = { id = 2607, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2359 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2608-the-touch-of-zanzil"] = {
        text = "Accept The Touch of Zanzil from Doc Mixilpixil in Stormwind City.",
        kind = "accept",
        complete = {
            quest = { id = 2608, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2607 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-2608-reviewed-mechanics"] = {
        text = "Stand beside Doc Mixilpixil and use /lay so he can examine you.",
        kind = "objective",
        complete = {
            quest = { id = 2608, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2607 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2608-the-touch-of-zanzil"] = {
        text = "Turn in The Touch of Zanzil to Doc Mixilpixil in Stormwind City.",
        kind = "turnin",
        complete = {
            quest = { id = 2608, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2607 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2460-the-shattered-salute"] = {
        text = "Accept The Shattered Salute from Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 2460, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-2460-quest-work"] = {
        text = "For The Shattered Salute: Perform the Shattered Salute on Shenthul.",
        kind = "objective",
        complete = {
            quest = { id = 2460, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-2460-the-shattered-salute"] = {
        text = "Turn in The Shattered Salute to Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 2460, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-2458-deep-cover"] = {
        text = "Accept Deep Cover from Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 2458, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2460 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-2458-reviewed-mechanics"] = {
        text = "At the Venture Company tower north of the Sludge Fen, fire the Flare Gun twice before approaching Taskmaster Fizzule. Then target Fizzule and use /salute. Follow this order so he recognizes you.",
        kind = "objective",
        complete = {
            quest = { id = 2458, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2460 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2458-deep-cover"] = {
        text = "Turn in Deep Cover to Taskmaster Fizzule in The Barrens. This step is for Orcs, Undead, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 2458, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2460 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2478-mission-possible-but-not-probable"] = {
        text = "Accept Mission: Possible But Not Probable from Taskmaster Fizzule in The Barrens. This step is for Orcs, Undead, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 2478, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2458 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-2478-mission-possible-but-not-probable"] = {
        text = "Pickpocket Silixiz's Tower Key from Foreman Silixiz beside the Venture Company tower in the northern Barrens. Kill 2 Mutated Venture Co. Drones on the bottom floor, 2 Venture Co. Patrollers on the lower middle floor, and 2 Venture Co. Lookouts on the upper balcony. Defeat Grand Foreman Puzik Gallywix upstairs and collect his head. Open his lockbox for the Cache of Zanzil's Altered Mixture. Return all quest items to Shenthul.",
        kind = "objective",
        complete = {
            quest = { id = 2478, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2458 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2478-mission-possible-but-not-probable"] = {
        text = "Turn in Mission: Possible But Not Probable to Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 2478, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2458 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2479-hinotts-assistance"] = {
        text = "Accept Hinott's Assistance from Shenthul in Orgrimmar. This step is for Orcs, Undead, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 2479, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2478 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2479-hinotts-assistance"] = {
        text = "Turn in Hinott's Assistance to Serge Hinott in Hillsbrad Foothills. This step is for Orcs, Undead, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 2479, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2478 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2480-hinotts-assistance"] = {
        text = "Accept Hinott's Assistance from Serge Hinott in Hillsbrad Foothills. This step is for Orcs, Undead, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 2480, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2479 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-2480-reviewed-mechanics"] = {
        text = "Wait beside Serge Hinott while he prepares the cure, then speak with him.",
        kind = "objective",
        complete = {
            quest = { id = 2480, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2479 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2480-hinotts-assistance"] = {
        text = "Turn in Hinott's Assistance to Serge Hinott in Hillsbrad Foothills. This step is for Orcs, Undead, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 2480, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2479 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2609-the-touch-of-zanzil"] = {
        text = "Accept The Touch of Zanzil from Doc Mixilpixil in Stormwind City.",
        kind = "accept",
        complete = {
            quest = { id = 2609, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2608 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-2609-the-touch-of-zanzil"] = {
        text = "Obtain 1 bundle of Simple Wildflowers, 1 Leaded Vial, 1 Bronze Tube, and 1 Spool of Light Chartreuse Silk Thread for Doc Mixilpixil. Buy the flowers and vial, craft or buy the tube, and collect the thread from its quest object in Stormwind.",
        kind = "objective",
        complete = {
            quest = { id = 2609, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2608 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-2609-the-touch-of-zanzil"] = {
        text = "Turn in The Touch of Zanzil to Doc Mixilpixil in Stormwind City.",
        kind = "turnin",
        complete = {
            quest = { id = 2609, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 2608 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["note-6681-elegant-letter"] = {
        text = "Ask Osborne the Night Man in Stormwind or Miles Dexter in Undercity for the Elegant Letter.",
        kind = "note",
        complete = {
            any = {
                { item = "Elegant Letter" },
                {
                    quest = { id = 6681, state = "activeOrCompleted" },
                },
            },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["loot-starter-before-accept-6681-authored-class-prerequisite"] = {
        text = "Loot Elegant Letter from Master Mathias Shaw, Osborne the Night Man, Syurna, Hulfdan Blackbeard, Fenthwick. Keep it for the next pickup.",
        kind = "note",
        complete = {
            any = {
                {
                    item = { name = "Elegant Letter", minCount = 1 },
                },
                {
                    quest = { id = 6681, state = "activeOrCompleted" },
                },
            },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-6681-authored-class-prerequisite"] = {
        text = "Use the Elegant Letter to accept The Manor, Ravenholdt.",
        kind = "accept",
        complete = {
            quest = { id = 6681, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-6681-authored-class-prerequisite"] = {
        text = "Enter the tunnel on the Ravenholdt path in northeastern Hillsbrad and use Detect Traps to receive your Rite of Cunning. Speak with Fahrad on the upstairs balcony of Ravenholdt Manor.",
        kind = "objective",
        complete = {
            questObjective = { id = 6681, index = 1, text = "Rite of Cunning" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-6681-authored-class-prerequisite"] = {
        text = "Turn in The Manor, Ravenholdt to Fahrad.",
        kind = "turnin",
        complete = {
            quest = { id = 6681, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-6701-syndicate-emblems"] = {
        text = "Accept Syndicate Emblems from Ravenholdt Guard in Hillsbrad Foothills.",
        kind = "accept",
        complete = {
            quest = { id = 6701, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6681 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6701-syndicate-emblems"] = {
        text = "Kill Syndicate in Hillsbrad Foothills and Alterac Mountains and collect Syndicate Emblems.",
        kind = "objective",
        complete = {
            quest = { id = 6701, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6681 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6701-syndicate-emblems"] = {
        text = "Turn in Syndicate Emblems to Ravenholdt Guard in Hillsbrad Foothills.",
        kind = "turnin",
        complete = {
            quest = { id = 6701, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6681 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-8233-a-simple-request"] = {
        text = "Accept A Simple Request from Osborne the Night Man.",
        kind = "accept",
        complete = {
            quest = { id = 8233, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8233-a-simple-request-horde"] = {
        text = "Accept A Simple Request from Miles Dexter.",
        kind = "accept",
        complete = {
            quest = { id = 8233, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-8233-a-simple-request"] = {
        text = "Turn in A Simple Request to Lord Jorach Ravenholdt in Alterac Mountains.",
        kind = "turnin",
        complete = {
            quest = { id = 8233, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8234-sealed-azure-bag"] = {
        text = "Accept Sealed Azure Bag from Lord Jorach Ravenholdt in Alterac Mountains.",
        kind = "accept",
        complete = {
            quest = { id = 8234, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-8234-quest-work"] = {
        text = "For Sealed Azure Bag: Retrieve the Sealed Azure Bag from the Timbermaw Shaman in Azshara. Then take the bag to Archmage Xylem, also found in Azshara.",
        kind = "objective",
        complete = {
            quest = { id = 8234, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-8234-sealed-azure-bag"] = {
        text = "Turn in Sealed Azure Bag to Archmage Xylem in Azshara.",
        kind = "turnin",
        complete = {
            quest = { id = 8234, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["travel-3503-xylem-teleport"] = {
        text = "Speak with Sanath Lim-yo in Azshara and ask to visit Archmage Xylem.",
        kind = "note",
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8235-encoded-fragments"] = {
        text = "Accept Encoded Fragments from Archmage Xylem in Azshara.",
        kind = "accept",
        complete = {
            quest = { id = 8235, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8234 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-8235-encoded-fragments"] = {
        text = "Collect 10 Encoded Fragment for Archmage Xylem in Azshara.",
        kind = "objective",
        complete = {
            quest = { id = 8235, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8234 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-8235-encoded-fragments"] = {
        text = "Turn in Encoded Fragments to Archmage Xylem in Azshara.",
        kind = "turnin",
        complete = {
            quest = { id = 8235, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8234 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["travel-3421-xylem-teleport"] = {
        text = "Speak with Nyrill by Archmage Xylem in Azshara and ask to return to the path below.",
        kind = "note",
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-98574-hallowed-memorandum"] = {
        text = "Accept Hallowed Memorandum from Sten Stoutarm in Dun Morogh. This step is for Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 98574, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98574-hallowed-memorandum"] = {
        text = "Read Hallowed Memorandum in your bags. Turn in Hallowed Memorandum to Branstock Khalder in Dun Morogh. This step is for Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 98574, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-3085-hallowed-tablet"] = {
        text = "Accept Hallowed Tablet from Gornek in Durotar. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 3085, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3085-hallowed-tablet"] = {
        text = "Read Hallowed Tablet in your bags. Turn in Hallowed Tablet to Ken'jai in Durotar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 3085, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3103-hallowed-letter"] = {
        text = "Accept Hallowed Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 3103, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3103-hallowed-letter"] = {
        text = "Read Hallowed Letter in your bags. Turn in Hallowed Letter to Priestess Anetta in Elwynn Forest. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 3103, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3110-hallowed-rune"] = {
        text = "Accept Hallowed Rune from Sten Stoutarm in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 3110, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3110-hallowed-rune"] = {
        text = "Read Hallowed Rune in your bags. Turn in Hallowed Rune to Branstock Khalder in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 3110, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3119-hallowed-sigil"] = {
        text = "Accept Hallowed Sigil from Conservator Ilthalaine in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 3119, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 456 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3119-hallowed-sigil"] = {
        text = "Read Hallowed Sigil in your bags. Turn in Hallowed Sigil to Shanda in Teldrassil. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 3119, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 456 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3097-hallowed-scroll"] = {
        text = "Accept Hallowed Scroll from Shadow Priest Sarvis in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 3097, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 364 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3097-hallowed-scroll"] = {
        text = "Read Hallowed Scroll in your bags. Turn in Hallowed Scroll to Dark Cleric Duesten in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 3097, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 364 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-5622-in-favor-of-elune"] = {
        text = "Accept In Favor of Elune from Shanda in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5622, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-5622-in-favor-of-elune"] = {
        text = "Turn in In Favor of Elune to Laurna Morninglight in Teldrassil. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5622, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5621-garments-of-the-moon"] = {
        text = "Accept Garments of the Moon from Laurna Morninglight in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5621, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-5621-quest-work"] = {
        text = "For Garments of the Moon: Find Sentinel Shaya and heal her wounds using Lesser Heal (Rank 2). Afterwards, grant her Power Word: Fortitude.",
        kind = "objective",
        complete = {
            quest = { id = 5621, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-5621-garments-of-the-moon"] = {
        text = "Turn in Garments of the Moon to Laurna Morninglight in Teldrassil. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5621, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5623-in-favor-of-the-light"] = {
        text = "Accept In Favor of the Light from Priestess Anetta in Elwynn Forest. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 5623, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-5623-in-favor-of-the-light"] = {
        text = "Turn in In Favor of the Light to Priestess Josetta in Elwynn Forest. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 5623, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5624-garments-of-the-light"] = {
        text = "Accept Garments of the Light from Priestess Josetta in Elwynn Forest. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 5624, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-5624-quest-work"] = {
        text = "For Garments of the Light: Find Guard Roberts and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude.",
        kind = "objective",
        complete = {
            quest = { id = 5624, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-5624-garments-of-the-light"] = {
        text = "Turn in Garments of the Light to Priestess Josetta in Elwynn Forest. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 5624, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5626-in-favor-of-the-light"] = {
        text = "Accept In Favor of the Light from Branstock Khalder in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 5626, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-5626-in-favor-of-the-light"] = {
        text = "Turn in In Favor of the Light to Maxan Anvol in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 5626, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5625-garments-of-the-light"] = {
        text = "Accept Garments of the Light from Maxan Anvol in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 5625, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-5625-quest-work"] = {
        text = "For Garments of the Light: Find Mountaineer Dolf and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude.",
        kind = "objective",
        complete = {
            quest = { id = 5625, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-5625-garments-of-the-light"] = {
        text = "Turn in Garments of the Light to Maxan Anvol in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 5625, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5649-in-favor-of-spirituality"] = {
        text = "Accept In Favor of Spirituality from Ken'jai in Durotar. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 5649, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-5649-in-favor-of-spirituality"] = {
        text = "Turn in In Favor of Spirituality to Tai'jin in Durotar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 5649, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5648-garments-of-spirituality"] = {
        text = "Accept Garments of Spirituality from Tai'jin in Durotar. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 5648, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-5648-quest-work"] = {
        text = "For Garments of Spirituality: Find Grunt Kor'ja and heal her wounds using Lesser Heal (Rank 2). Afterwards, grant her Power Word: Fortitude.",
        kind = "objective",
        complete = {
            quest = { id = 5648, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-5648-garments-of-spirituality"] = {
        text = "Turn in Garments of Spirituality to Tai'jin in Durotar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 5648, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5651-in-favor-of-darkness"] = {
        text = "Accept In Favor of Darkness from Dark Cleric Duesten in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 5651, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-5651-in-favor-of-darkness"] = {
        text = "Turn in In Favor of Darkness to Dark Cleric Beryl in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 5651, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5650-garments-of-darkness"] = {
        text = "Accept Garments of Darkness from Dark Cleric Beryl in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 5650, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-5650-quest-work"] = {
        text = "For Garments of Darkness: Find Deathguard Kel and heal his wounds using Lesser Heal (Rank 2). Afterwards, grant him Power Word: Fortitude.",
        kind = "objective",
        complete = {
            quest = { id = 5650, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-5650-garments-of-darkness"] = {
        text = "Turn in Garments of Darkness to Dark Cleric Beryl in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 5650, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-5637-desperate-prayer"] = {
        text = "Accept Desperate Prayer from Maxan Anvol in Dun Morogh. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 5637, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5634, 5635, 5636, 5638, 5639, 5640 },
        useClientText = false,
    },
    ["turnin-5637-desperate-prayer"] = {
        text = "Turn in Desperate Prayer to High Priestess Laurena in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 5637, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5634, 5635, 5636, 5638, 5639, 5640 },
        useClientText = false,
    },
    ["accept-5629-returning-home"] = {
        text = "Accept Returning Home from Laurna Morninglight in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5629, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5627, 5628, 5630, 5631, 5632, 5633 },
        useClientText = false,
    },
    ["turnin-5629-returning-home"] = {
        text = "Turn in Returning Home to Priestess Alathea in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5629, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5627, 5628, 5630, 5631, 5632, 5633 },
        useClientText = false,
    },
    ["accept-94774-divine-grace"] = {
        text = "Accept Divine Grace from Priestess Josetta in Elwynn Forest. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 94774, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94774-divine-grace"] = {
        text = "Turn in Divine Grace to High Priestess Laurena in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 94774, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94773-divine-grace"] = {
        text = "Accept Divine Grace from High Priestess Laurena in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 94773, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94774 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { race = 1 },
                        { class = 5 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94773-divine-grace"] = {
        text = "Speak with High Priestess Laurena in Stormwind and turn in Divine Grace to receive the lesson.",
        kind = "turnin",
        complete = {
            quest = { id = 94773, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94774 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { race = 1 },
                        { class = 5 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-94824-confounding-flash"] = {
        text = "Accept Confounding Flash from Maxan Anvol in Dun Morogh. This step is for Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 94824, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94824-confounding-flash"] = {
        text = "Turn in Confounding Flash to High Priestess Mims in Ironforge. This step is for Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 94824, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94817-confounding-flash"] = {
        text = "Accept Confounding Flash from High Priestess Mims in Ironforge. This step is for Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 94817, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94824 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { race = 7 },
                        { class = 5 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94817-confounding-flash"] = {
        text = "Speak with High Priestess Mims in Ironforge and turn in Confounding Flash to receive the lesson.",
        kind = "turnin",
        complete = {
            quest = { id = 94817, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94824 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { race = 7 },
                        { class = 5 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-5628-returning-home"] = {
        text = "Accept Returning Home from Priestess Josetta in Elwynn Forest. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5628, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5627, 5629, 5630, 5631, 5632, 5633 },
        useClientText = false,
    },
    ["turnin-5628-returning-home"] = {
        text = "Turn in Returning Home to Priestess Alathea in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5628, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5627, 5629, 5630, 5631, 5632, 5633 },
        useClientText = false,
    },
    ["accept-5630-returning-home"] = {
        text = "Accept Returning Home from Maxan Anvol in Dun Morogh. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5630, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5627, 5628, 5629, 5631, 5632, 5633 },
        useClientText = false,
    },
    ["turnin-5630-returning-home"] = {
        text = "Turn in Returning Home to Priestess Alathea in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5630, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5627, 5628, 5629, 5631, 5632, 5633 },
        useClientText = false,
    },
    ["accept-5631-returning-home"] = {
        text = "Accept Returning Home from Brother Joshua in Stormwind City. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5631, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5627, 5628, 5629, 5630, 5632, 5633 },
        useClientText = false,
    },
    ["turnin-5631-returning-home"] = {
        text = "Turn in Returning Home to Priestess Alathea in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5631, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5627, 5628, 5629, 5630, 5632, 5633 },
        useClientText = false,
    },
    ["accept-5632-returning-home"] = {
        text = "Accept Returning Home from Nara Meideros in Stormwind City. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5632, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5627, 5628, 5629, 5630, 5631, 5633 },
        useClientText = false,
    },
    ["turnin-5632-returning-home"] = {
        text = "Turn in Returning Home to Nara Meideros in Stormwind City. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5632, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5627, 5628, 5629, 5630, 5631, 5633 },
        useClientText = false,
    },
    ["accept-5633-returning-home"] = {
        text = "Accept Returning Home from Braenna Flintcrag in Ironforge. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5633, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5627, 5628, 5629, 5630, 5631, 5632 },
        useClientText = false,
    },
    ["turnin-5633-returning-home"] = {
        text = "Turn in Returning Home to Priestess Alathea in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5633, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5627, 5628, 5629, 5630, 5631, 5632 },
        useClientText = false,
    },
    ["accept-5627-stars-of-elune"] = {
        text = "Accept Stars of Elune from Priestess Alathea in Darnassus. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5627, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5628, 5629, 5630, 5631, 5632, 5633 },
                conditions = {},
            },
        },
        alternativeQuests = { 5628, 5629, 5630, 5631, 5632, 5633 },
        useClientText = false,
    },
    ["turnin-5627-stars-of-elune"] = {
        text = "Turn in Stars of Elune to Priestess Alathea in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5627, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 5628, 5629, 5630, 5631, 5632, 5633 },
                conditions = {},
            },
        },
        alternativeQuests = { 5628, 5629, 5630, 5631, 5632, 5633 },
        useClientText = false,
    },
    ["accept-5635-desperate-prayer"] = {
        text = "Accept Desperate Prayer from Priestess Josetta in Elwynn Forest. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 5635, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5634, 5636, 5637, 5638, 5639, 5640 },
        useClientText = false,
    },
    ["turnin-5635-desperate-prayer"] = {
        text = "Turn in Desperate Prayer to High Priestess Laurena in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 5635, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5634, 5636, 5637, 5638, 5639, 5640 },
        useClientText = false,
    },
    ["accept-5636-desperate-prayer"] = {
        text = "Accept Desperate Prayer from Laurna Morninglight in Teldrassil. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 5636, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5634, 5635, 5637, 5638, 5639, 5640 },
        useClientText = false,
    },
    ["turnin-5636-desperate-prayer"] = {
        text = "Turn in Desperate Prayer to High Priestess Laurena in Stormwind City. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 5636, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5634, 5635, 5637, 5638, 5639, 5640 },
        useClientText = false,
    },
    ["accept-5638-desperate-prayer"] = {
        text = "Accept Desperate Prayer from Nara Meideros in Stormwind City. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 5638, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5634, 5635, 5636, 5637, 5639, 5640 },
        useClientText = false,
    },
    ["turnin-5638-desperate-prayer"] = {
        text = "Turn in Desperate Prayer to High Priestess Laurena in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 5638, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5634, 5635, 5636, 5637, 5639, 5640 },
        useClientText = false,
    },
    ["accept-5639-desperate-prayer"] = {
        text = "Accept Desperate Prayer from High Priest Rohan in Ironforge. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 5639, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5634, 5635, 5636, 5637, 5638, 5640 },
        useClientText = false,
    },
    ["turnin-5639-desperate-prayer"] = {
        text = "Turn in Desperate Prayer to High Priestess Laurena in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 5639, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5634, 5635, 5636, 5637, 5638, 5640 },
        useClientText = false,
    },
    ["accept-5640-desperate-prayer"] = {
        text = "Accept Desperate Prayer from Priestess Alathea in Darnassus. This step is for Humans and Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 5640, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5634, 5635, 5636, 5637, 5638, 5639 },
        useClientText = false,
    },
    ["turnin-5640-desperate-prayer"] = {
        text = "Turn in Desperate Prayer to High Priestess Laurena in Stormwind City. This step is for Humans and Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 5640, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5634, 5635, 5636, 5637, 5638, 5639 },
        useClientText = false,
    },
    ["accept-5654-hex-of-weakness"] = {
        text = "Accept Hex of Weakness from Tai'jin in Durotar. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 5654, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5652, 5655, 5656, 5657 },
        useClientText = false,
    },
    ["turnin-5654-hex-of-weakness"] = {
        text = "Turn in Hex of Weakness to Ur'kyo in Orgrimmar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 5654, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5652, 5655, 5656, 5657 },
        useClientText = false,
    },
    ["accept-5655-hex-of-weakness"] = {
        text = "Accept Hex of Weakness from Var'jun in Mulgore. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 5655, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5652, 5654, 5656, 5657 },
        useClientText = false,
    },
    ["turnin-5655-hex-of-weakness"] = {
        text = "Turn in Hex of Weakness to Ur'kyo in Orgrimmar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 5655, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5652, 5654, 5656, 5657 },
        useClientText = false,
    },
    ["accept-5657-hex-of-weakness"] = {
        text = "Accept Hex of Weakness from Aelthalyste in Undercity. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 5657, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5652, 5654, 5655, 5656 },
        useClientText = false,
    },
    ["turnin-5657-hex-of-weakness"] = {
        text = "Turn in Hex of Weakness to Ur'kyo in Orgrimmar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 5657, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5652, 5654, 5655, 5656 },
        useClientText = false,
    },
    ["accept-5660-touch-of-weakness"] = {
        text = "Accept Touch of Weakness from Tai'jin in Durotar. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 5660, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5658, 5661, 5662, 5663 },
        useClientText = false,
    },
    ["turnin-5660-touch-of-weakness"] = {
        text = "Turn in Touch of Weakness to Aelthalyste in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 5660, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5658, 5661, 5662, 5663 },
        useClientText = false,
    },
    ["accept-5661-touch-of-weakness"] = {
        text = "Accept Touch of Weakness from Var'jun in Mulgore. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 5661, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5658, 5660, 5662, 5663 },
        useClientText = false,
    },
    ["turnin-5661-touch-of-weakness"] = {
        text = "Turn in Touch of Weakness to Aelthalyste in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 5661, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5658, 5660, 5662, 5663 },
        useClientText = false,
    },
    ["accept-5662-touch-of-weakness"] = {
        text = "Accept Touch of Weakness from Ur'kyo in Orgrimmar. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 5662, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5658, 5660, 5661, 5663 },
        useClientText = false,
    },
    ["turnin-5662-touch-of-weakness"] = {
        text = "Turn in Touch of Weakness to Aelthalyste in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 5662, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5658, 5660, 5661, 5663 },
        useClientText = false,
    },
    ["accept-5663-touch-of-weakness"] = {
        text = "Accept Touch of Weakness from Miles Welsh in Thunder Bluff. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 5663, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5658, 5660, 5661, 5662 },
        useClientText = false,
    },
    ["turnin-5663-touch-of-weakness"] = {
        text = "Turn in Touch of Weakness to Aelthalyste in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 5663, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5658, 5660, 5661, 5662 },
        useClientText = false,
    },
    ["accept-5641-a-lack-of-fear"] = {
        text = "Accept A Lack of Fear from High Priest Rohan in Ironforge. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 5641, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5645, 5647 },
        useClientText = false,
    },
    ["turnin-5641-a-lack-of-fear"] = {
        text = "Turn in A Lack of Fear to High Priest Rohan in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 5641, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5645, 5647 },
        useClientText = false,
    },
    ["accept-5676-arcane-feedback"] = {
        text = "Accept Arcane Feedback from High Priestess Laurena in Stormwind City. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 5676, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5677, 5678 },
        useClientText = false,
    },
    ["turnin-5676-arcane-feedback"] = {
        text = "Turn in Arcane Feedback to High Priestess Laurena in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 5676, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5677, 5678 },
        useClientText = false,
    },
    ["accept-5672-elunes-grace"] = {
        text = "Accept Elune's Grace from Priestess Alathea in Darnassus. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5672, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5673, 5674, 5675 },
        useClientText = false,
    },
    ["turnin-5672-elunes-grace"] = {
        text = "Turn in Elune's Grace to Priestess Alathea in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5672, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5673, 5674, 5675 },
        useClientText = false,
    },
    ["accept-5643-shadowguard"] = {
        text = "Accept Shadowguard from Aelthalyste in Undercity. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 5643, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5642, 5680 },
        useClientText = false,
    },
    ["turnin-5643-shadowguard"] = {
        text = "Turn in Shadowguard to Ur'kyo in Orgrimmar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 5643, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5642, 5680 },
        useClientText = false,
    },
    ["accept-5644-devouring-plague"] = {
        text = "Accept Devouring Plague from Miles Welsh in Thunder Bluff. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 5644, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5646, 5679 },
        useClientText = false,
    },
    ["turnin-5644-devouring-plague"] = {
        text = "Turn in Devouring Plague to Aelthalyste in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 5644, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5646, 5679 },
        useClientText = false,
    },
    ["accept-5642-shadowguard"] = {
        text = "Accept Shadowguard from Miles Welsh in Thunder Bluff. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 5642, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5643, 5680 },
        useClientText = false,
    },
    ["turnin-5642-shadowguard"] = {
        text = "Turn in Shadowguard to Ur'kyo in Orgrimmar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 5642, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5643, 5680 },
        useClientText = false,
    },
    ["accept-5645-a-lack-of-fear"] = {
        text = "Accept A Lack of Fear from High Priestess Laurena in Stormwind City. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 5645, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5641, 5647 },
        useClientText = false,
    },
    ["turnin-5645-a-lack-of-fear"] = {
        text = "Turn in A Lack of Fear to High Priest Rohan in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 5645, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5641, 5647 },
        useClientText = false,
    },
    ["accept-5646-devouring-plague"] = {
        text = "Accept Devouring Plague from Ur'kyo in Orgrimmar. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 5646, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5644, 5679 },
        useClientText = false,
    },
    ["turnin-5646-devouring-plague"] = {
        text = "Turn in Devouring Plague to Aelthalyste in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 5646, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5644, 5679 },
        useClientText = false,
    },
    ["accept-5647-a-lack-of-fear"] = {
        text = "Accept A Lack of Fear from Priestess Alathea in Darnassus. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 5647, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5641, 5645 },
        useClientText = false,
    },
    ["turnin-5647-a-lack-of-fear"] = {
        text = "Turn in A Lack of Fear to High Priest Rohan in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 5647, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5641, 5645 },
        useClientText = false,
    },
    ["accept-5673-elunes-grace"] = {
        text = "Accept Elune's Grace from High Priestess Laurena in Stormwind City. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5673, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5672, 5674, 5675 },
        useClientText = false,
    },
    ["turnin-5673-elunes-grace"] = {
        text = "Turn in Elune's Grace to Priestess Alathea in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5673, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5672, 5674, 5675 },
        useClientText = false,
    },
    ["accept-5675-elunes-grace"] = {
        text = "Accept Elune's Grace from High Priest Rohan in Ironforge. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 5675, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5672, 5673, 5674 },
        useClientText = false,
    },
    ["turnin-5675-elunes-grace"] = {
        text = "Turn in Elune's Grace to Priestess Alathea in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 5675, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5672, 5673, 5674 },
        useClientText = false,
    },
    ["accept-5677-arcane-feedback"] = {
        text = "Accept Arcane Feedback from High Priest Rohan in Ironforge. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 5677, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5676, 5678 },
        useClientText = false,
    },
    ["turnin-5677-arcane-feedback"] = {
        text = "Turn in Arcane Feedback to High Priestess Laurena in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 5677, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5676, 5678 },
        useClientText = false,
    },
    ["accept-5678-arcane-feedback"] = {
        text = "Accept Arcane Feedback from Priestess Alathea in Darnassus. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 5678, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5676, 5677 },
        useClientText = false,
    },
    ["turnin-5678-arcane-feedback"] = {
        text = "Turn in Arcane Feedback to High Priestess Laurena in Stormwind City. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 5678, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5676, 5677 },
        useClientText = false,
    },
    ["accept-5679-devouring-plague"] = {
        text = "Accept Devouring Plague from Aelthalyste in Undercity. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 5679, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5644, 5646 },
        useClientText = false,
    },
    ["turnin-5679-devouring-plague"] = {
        text = "Turn in Devouring Plague to Aelthalyste in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 5679, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5644, 5646 },
        useClientText = false,
    },
    ["accept-5680-shadowguard"] = {
        text = "Accept Shadowguard from Ur'kyo in Orgrimmar. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 5680, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 5642, 5643 },
        useClientText = false,
    },
    ["turnin-5680-shadowguard"] = {
        text = "Turn in Shadowguard to Ur'kyo in Orgrimmar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 5680, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 5642, 5643 },
        useClientText = false,
    },
    ["accept-8254-cenarion-aid"] = {
        text = "Accept Cenarion Aid from Brother Joshua.",
        kind = "accept",
        complete = {
            quest = { id = 8254, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8254-cenarion-aid-horde"] = {
        text = "Accept Cenarion Aid from Ur'kyo.",
        kind = "accept",
        complete = {
            quest = { id = 8254, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-8254-cenarion-aid"] = {
        text = "Turn in Cenarion Aid to Ogtinc in Azshara.",
        kind = "turnin",
        complete = {
            quest = { id = 8254, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8255-of-coursers-we-know"] = {
        text = "Accept Of Coursers We Know from Ogtinc in Azshara.",
        kind = "accept",
        complete = {
            quest = { id = 8255, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8254 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-8255-of-coursers-we-know"] = {
        text = "Collect 4 Healthy Courser Gland from Mosshoof Coursers in Azshara.",
        kind = "objective",
        complete = {
            quest = { id = 8255, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8254 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-8255-of-coursers-we-know"] = {
        text = "Turn in Of Coursers We Know to Ogtinc in Azshara.",
        kind = "turnin",
        complete = {
            quest = { id = 8255, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8254 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-8256-the-ichor-of-undeath"] = {
        text = "Accept The Ichor of Undeath from Ogtinc in Azshara.",
        kind = "accept",
        complete = {
            quest = { id = 8256, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8255 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-8256-the-ichor-of-undeath"] = {
        text = "Collect Ichor of Undeath from the Highborne undead in Azshara.",
        kind = "objective",
        complete = {
            quest = { id = 8256, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8255 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-8256-the-ichor-of-undeath"] = {
        text = "Turn in The Ichor of Undeath to Ogtinc in Azshara.",
        kind = "turnin",
        complete = {
            quest = { id = 8256, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8255 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7621-a-warning"] = {
        text = "Accept A Warning from Eris Havenfire in Eastern Plaguelands.",
        kind = "accept",
        complete = {
            quest = { id = 7621, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-7621-a-warning"] = {
        text = "Turn in A Warning to Eris Havenfire in Eastern Plaguelands.",
        kind = "turnin",
        complete = {
            quest = { id = 7621, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-7622-the-balance-of-light-and-shadow"] = {
        text = "Accept The Balance of Light and Shadow from Eris Havenfire in Eastern Plaguelands.",
        kind = "accept",
        complete = {
            quest = { id = 7622, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-7622-reviewed-mechanics"] = {
        text = "Complete Eris Havenfire's rescue event in Eastern Plaguelands. Save 50 Peasants before 15 die; heal and protect them as they flee. The Death Post shows the number lost.",
        kind = "objective",
        complete = {
            quest = { id = 7622, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-7622-the-balance-of-light-and-shadow"] = {
        text = "Turn in The Balance of Light and Shadow to Eris Havenfire in Eastern Plaguelands.",
        kind = "turnin",
        complete = {
            quest = { id = 7622, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1598-the-stolen-tome"] = {
        text = "Accept The Stolen Tome from Drusilla La Salle in Elwynn Forest. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1598, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1599 },
        useClientText = false,
    },
    ["objective-1598-quest-work"] = {
        text = "For The Stolen Tome: Retrieve the Powers of the Void for Drusilla La Salle.",
        kind = "objective",
        complete = {
            quest = { id = 1598, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1599 },
        useClientText = false,
    },
    ["turnin-1598-the-stolen-tome"] = {
        text = "Turn in The Stolen Tome to Drusilla La Salle in Elwynn Forest. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1598, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1599 },
        useClientText = false,
    },
    ["accept-1599-beginnings"] = {
        text = "Accept Beginnings from Alamar Grimm in Dun Morogh. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1599, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1598 },
        useClientText = false,
    },
    ["objective-1599-beginnings"] = {
        text = "Kill Frostmane Novice in Coldridge Valley and collect Feather Charm for Beginnings. This step is for Humans and Gnomes.",
        kind = "objective",
        complete = {
            quest = { id = 1599, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1598 },
        useClientText = false,
    },
    ["turnin-1599-beginnings"] = {
        text = "Turn in Beginnings to Alamar Grimm in Dun Morogh. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1599, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1598 },
        useClientText = false,
    },
    ["accept-98575-tainted-tablet"] = {
        text = "Accept Tainted Tablet from Gornek in Durotar. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 98575, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-98575-tainted-tablet"] = {
        text = "Read Tainted Tablet in your bags. Turn in Tainted Tablet to Nartok in Durotar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 98575, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1485-vile-familiars"] = {
        text = "Accept Vile Familiars from Ruzan in Durotar. This step is for Orcs, Undead, and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 1485, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1470 },
        useClientText = false,
    },
    ["objective-1485-vile-familiars"] = {
        text = "Kill Vile Familiar and collect 6 Vile Familiar Head in Valley of Trials. This step is for Orcs, Undead, and Trolls.",
        kind = "objective",
        complete = {
            quest = { id = 1485, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1470 },
        useClientText = false,
    },
    ["turnin-1485-vile-familiars"] = {
        text = "Turn in Vile Familiars to Ruzan in Durotar. This step is for Orcs, Undead, and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 1485, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1470 },
        useClientText = false,
    },
    ["accept-1470-piercing-the-veil"] = {
        text = "Accept Piercing the Veil from Venya Marthand in Tirisfal Glades. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1470, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1485 },
        useClientText = false,
    },
    ["objective-1470-piercing-the-veil"] = {
        text = "Kill Rattlecage Skeleton and collect Rattlecage Skull in Deathknell. This step is for Orcs and Undead.",
        kind = "objective",
        complete = {
            quest = { id = 1470, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 1485 },
        useClientText = false,
    },
    ["turnin-1470-piercing-the-veil"] = {
        text = "Turn in Piercing the Veil to Venya Marthand in Tirisfal Glades. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1470, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1485 },
        useClientText = false,
    },
    ["accept-1499-vile-familiars"] = {
        text = "Accept Vile Familiars from Ruzan in Durotar. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1499, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1470, 1485 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1499-vile-familiars"] = {
        text = "Turn in Vile Familiars to Zureetha Fargaze in Durotar. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1499, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1470, 1485 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3115-tainted-memorandum"] = {
        text = "Accept Tainted Memorandum from Sten Stoutarm in Dun Morogh. This step is for Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 3115, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3115-tainted-memorandum"] = {
        text = "Read Tainted Memorandum in your bags. Turn in Tainted Memorandum to Alamar Grimm in Dun Morogh. This step is for Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 3115, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3105-tainted-letter"] = {
        text = "Accept Tainted Letter from Marshal McBride in Elwynn Forest. This step is for Humans.",
        kind = "accept",
        complete = {
            quest = { id = 3105, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3105-tainted-letter"] = {
        text = "Read Tainted Letter in your bags. Turn in Tainted Letter to Drusilla La Salle in Elwynn Forest. This step is for Humans.",
        kind = "turnin",
        complete = {
            quest = { id = 3105, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3090-tainted-parchment"] = {
        text = "Accept Tainted Parchment from Gornek in Durotar. This step is for Orcs.",
        kind = "accept",
        complete = {
            quest = { id = 3090, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3090-tainted-parchment"] = {
        text = "Read Tainted Parchment in your bags. Turn in Tainted Parchment to Nartok in Durotar. This step is for Orcs.",
        kind = "turnin",
        complete = {
            quest = { id = 3090, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3099-tainted-scroll"] = {
        text = "Accept Tainted Scroll from Shadow Priest Sarvis in Tirisfal Glades. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 3099, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 364 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3099-tainted-scroll"] = {
        text = "Read Tainted Scroll in your bags. Turn in Tainted Scroll to Maximillion in Tirisfal Glades. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 3099, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 364 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1715-the-slaughtered-lamb"] = {
        text = "Accept The Slaughtered Lamb from Lago Blackwrench in Ironforge. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1715, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1688 },
        useClientText = false,
    },
    ["turnin-1715-the-slaughtered-lamb"] = {
        text = "Turn in The Slaughtered Lamb to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1715, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1688 },
        useClientText = false,
    },
    ["accept-1685-gakins-summons"] = {
        text = "Accept Gakin's Summons from Remen Marcot in Elwynn Forest. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1685, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1685-gakins-summons"] = {
        text = "Turn in Gakin's Summons to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1685, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1688-surena-caledon"] = {
        text = "Accept Surena Caledon from Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1688, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1688-quest-work"] = {
        text = "For Surena Caledon: Retrieve Surena's Choker for Gakin the Darkbinder in Stormwind.",
        kind = "objective",
        complete = {
            quest = { id = 1688, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1688-surena-caledon"] = {
        text = "Turn in Surena Caledon to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1688, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1689-the-binding"] = {
        text = "Accept The Binding from Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1689, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1688 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1689-quest-work"] = {
        text = "For The Binding: Using the Bloodstone Choker, summon and subdue a voidwalker.",
        kind = "objective",
        complete = {
            quest = { id = 1689, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1688 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1689-the-binding"] = {
        text = "Turn in The Binding to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1689, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1688 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1478-halgars-summons"] = {
        text = "Accept Halgar's Summons from Ageron Kargal in Tirisfal Glades. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1478, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1478-halgars-summons"] = {
        text = "Turn in Halgar's Summons to Carendin Halgar in Undercity. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1478, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1473-creature-of-the-void"] = {
        text = "Accept Creature of the Void from Carendin Halgar in Undercity. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1473, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1473-quest-work"] = {
        text = "For Creature of the Void: Recover Egalin's Grimoire and bring it to Carendin Halgar in the Temple of the Damned.",
        kind = "objective",
        complete = {
            quest = { id = 1473, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1473-creature-of-the-void"] = {
        text = "Turn in Creature of the Void to Carendin Halgar in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1473, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1506-ganruls-summons"] = {
        text = "Accept Gan'rul's Summons from Ophek in Durotar. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1506, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1506-ganruls-summons"] = {
        text = "Turn in Gan'rul's Summons to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1506, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1501-creature-of-the-void"] = {
        text = "Accept Creature of the Void from Gan'rul Bloodeye in Orgrimmar. This step is for Orcs.",
        kind = "accept",
        complete = {
            quest = { id = 1501, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1501-quest-work"] = {
        text = "For Creature of the Void: Retrieve the Tablet of Verga for Gan'rul Bloodeye in Orgrimmar.",
        kind = "objective",
        complete = {
            quest = { id = 1501, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1501-creature-of-the-void"] = {
        text = "Turn in Creature of the Void to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs.",
        kind = "turnin",
        complete = {
            quest = { id = 1501, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1504-the-binding"] = {
        text = "Accept The Binding from Gan'rul Bloodeye in Orgrimmar. This step is for Orcs.",
        kind = "accept",
        complete = {
            quest = { id = 1504, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1501 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1504-quest-work"] = {
        text = "For The Binding: Using the Glyphs of Summoning, summon and subdue a voidwalker.",
        kind = "objective",
        complete = {
            quest = { id = 1504, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1501 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1504-the-binding"] = {
        text = "Turn in The Binding to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs.",
        kind = "turnin",
        complete = {
            quest = { id = 1504, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1501 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1471-the-binding"] = {
        text = "Accept The Binding from Carendin Halgar in Undercity. This step is for Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1471, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1473 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1471-quest-work"] = {
        text = "For The Binding: Using the Runes of Summoning, summon and subdue a voidwalker.",
        kind = "objective",
        complete = {
            quest = { id = 1471, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1473 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1471-the-binding"] = {
        text = "Turn in The Binding to Carendin Halgar in Undercity. This step is for Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1471, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1473 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1717-gakins-summons"] = {
        text = "Accept Gakin's Summons from Lago Blackwrench in Ironforge. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1717, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1716 },
        useClientText = false,
    },
    ["turnin-1717-gakins-summons"] = {
        text = "Turn in Gakin's Summons to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1717, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1716 },
        useClientText = false,
    },
    ["accept-1716-devourer-of-souls"] = {
        text = "Accept Devourer of Souls from Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1716, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1716-devourer-of-souls"] = {
        text = "Turn in Devourer of Souls to Takar the Seer in The Barrens. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1716, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1738-heartswood"] = {
        text = "Accept Heartswood from Takar the Seer in The Barrens. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1738, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1716 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1738-quest-work"] = {
        text = "For Heartswood: Retrieve the Heartswood from Ashenvale and bring it to Gakin the Darkbinder in the Mage Quarter of Stormwind.",
        kind = "objective",
        complete = {
            quest = { id = 1738, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1716 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1738-heartswood"] = {
        text = "Turn in Heartswood to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1738, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1716 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1739-the-binding"] = {
        text = "Accept The Binding from Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1739, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1738 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1739-quest-work"] = {
        text = "For The Binding: Using the Heartswood Core, summon and subdue a succubus.",
        kind = "objective",
        complete = {
            quest = { id = 1739, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1738 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1739-the-binding"] = {
        text = "Turn in The Binding to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1739, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1738 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-65602-what-is-love"] = {
        text = "Accept What Is Love? from Takar the Seer in The Barrens. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 65602, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1716 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 9 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["objective-65602-quest-work"] = {
        text = "For What Is Love?: Retrieve the Wooden Figurine and bring it to Gakin the Darkbinder in the Mage Quarter of Stormwind.",
        kind = "objective",
        complete = {
            quest = { id = 65602, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1716 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 9 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-65602-what-is-love"] = {
        text = "Turn in What Is Love? to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 65602, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1716 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 9 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-65603-the-binding"] = {
        text = "Accept The Binding from Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 65603, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 65602 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-65603-quest-work"] = {
        text = "For The Binding: Using the Wooden Figurine, summon and subdue an incubus.",
        kind = "objective",
        complete = {
            quest = { id = 65603, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 65602 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-65603-the-binding"] = {
        text = "Turn in The Binding to Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 65603, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 65602 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1507-devourer-of-souls"] = {
        text = "Accept Devourer of Souls from Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1507, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["turnin-1507-devourer-of-souls"] = {
        text = "Turn in Devourer of Souls to Cazul in Orgrimmar. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1507, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["accept-65601-love-hurts"] = {
        text = "Accept Love Hurts from Cazul in Orgrimmar. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 65601, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1507 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { class = 9 },
                    },
                },
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["turnin-65601-love-hurts"] = {
        text = "Turn in Love Hurts to Magar in Orgrimmar. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 65601, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1507 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { class = 9 },
                    },
                },
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["accept-65610-wish-you-were-here"] = {
        text = "Accept Wish You Were Here from Magar in Orgrimmar. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 65610, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 65601 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["objective-65610-quest-work"] = {
        text = "For Wish You Were Here: Investigate Fallen Sky Lake in Ashenvale and report your findings to Gan'rul Bloodeye in Orgrimmar.",
        kind = "objective",
        complete = {
            quest = { id = 65610, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 65601 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["turnin-65610-wish-you-were-here"] = {
        text = "Turn in Wish You Were Here to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 65610, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 65601 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["accept-65604-the-binding"] = {
        text = "Accept The Binding from Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 65604, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 65610 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["objective-65604-quest-work"] = {
        text = "For The Binding: Using the Withered Scarf, summon and subdue an incubus.",
        kind = "objective",
        complete = {
            quest = { id = 65604, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 65610 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["turnin-65604-the-binding"] = {
        text = "Turn in The Binding to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 65604, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 65610 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["accept-1508-blind-cazul"] = {
        text = "Accept Blind Cazul from Cazul in Orgrimmar. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1508, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1507 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["turnin-1508-blind-cazul"] = {
        text = "Turn in Blind Cazul to Zankaja in Orgrimmar. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1508, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1507 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["accept-1509-news-of-dogran"] = {
        text = "Accept News of Dogran from Zankaja in Orgrimmar. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1509, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1508 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["turnin-1509-news-of-dogran"] = {
        text = "Turn in News of Dogran to Gazrog in The Barrens. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1509, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1508 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["accept-1510-news-of-dogran"] = {
        text = "Accept News of Dogran from Gazrog in The Barrens. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1510, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1509 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["turnin-1510-news-of-dogran"] = {
        text = "Turn in News of Dogran to Ken'zigla in Stonetalon Mountains. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1510, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1509 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["accept-1511-kenziglas-draught"] = {
        text = "Accept Ken'zigla's Draught from Ken'zigla in Stonetalon Mountains. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1511, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1510 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["turnin-1511-kenziglas-draught"] = {
        text = "Turn in Ken'zigla's Draught to Grunt Logmar in The Barrens. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1511, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1510 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["accept-1515-dograns-captivity"] = {
        text = "Accept Dogran's Captivity from Grunt Logmar in The Barrens. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1515, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1511 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["turnin-1515-dograns-captivity"] = {
        text = "Turn in Dogran's Captivity to Grunt Dogran in The Barrens. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1515, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1511 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["accept-1512-loves-gift"] = {
        text = "Accept Love's Gift from Grunt Dogran in The Barrens. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1512, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1515 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["turnin-1512-loves-gift"] = {
        text = "Turn in Love's Gift to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1512, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1515 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["accept-1513-the-binding"] = {
        text = "Accept The Binding from Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1513, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1512 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["objective-1513-quest-work"] = {
        text = "For The Binding: Using Dogran's Pendant, summon and subdue a succubus.",
        kind = "objective",
        complete = {
            quest = { id = 1513, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1512 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["turnin-1513-the-binding"] = {
        text = "Turn in The Binding to Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1513, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1512 },
                conditions = {},
            },
        },
        alternativeQuests = { 1472 },
        useClientText = false,
    },
    ["accept-1472-devourer-of-souls"] = {
        text = "Accept Devourer of Souls from Carendin Halgar in Undercity. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1472, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["turnin-1472-devourer-of-souls"] = {
        text = "Turn in Devourer of Souls to Godrick Farsan in Undercity. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1472, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["accept-65593-hearts-of-the-lovers"] = {
        text = "Accept Hearts of the Lovers from Godrick Farsan in Undercity. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 65593, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1472 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { class = 9 },
                    },
                },
            },
        },
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["objective-65593-quest-work"] = {
        text = "For Hearts of the Lovers: Bring the hearts of Avelina Lilly and Isaac Pearson to Carendin Halgar in the Temple of the Damned.",
        kind = "objective",
        complete = {
            quest = { id = 65593, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1472 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { class = 9 },
                    },
                },
            },
        },
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["turnin-65593-hearts-of-the-lovers"] = {
        text = "Turn in Hearts of the Lovers to Carendin Halgar in Undercity. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 65593, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1472 },
                conditions = {
                    all = {
                        { faction = "Horde" },
                        { class = 9 },
                    },
                },
            },
        },
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["accept-65597-the-binding"] = {
        text = "Accept The Binding from Carendin Halgar in Undercity. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 65597, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 65593 },
                conditions = {},
            },
        },
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["objective-65597-quest-work"] = {
        text = "For The Binding: Using the Lovers' Hearts, summon and subdue an incubus.",
        kind = "objective",
        complete = {
            quest = { id = 65597, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 65593 },
                conditions = {},
            },
        },
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["turnin-65597-the-binding"] = {
        text = "Turn in The Binding to Carendin Halgar in Undercity. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 65597, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 65593 },
                conditions = {},
            },
        },
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["accept-1476-hearts-of-the-pure"] = {
        text = "Accept Hearts of the Pure from Godrick Farsan in Undercity. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1476, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1472 },
                conditions = {},
            },
        },
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["objective-1476-quest-work"] = {
        text = "For Hearts of the Pure: Bring the hearts of Dalin Forgewright and Comar Villard to Carendin Halgar in the Temple of the Damned.",
        kind = "objective",
        complete = {
            quest = { id = 1476, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1472 },
                conditions = {},
            },
        },
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["turnin-1476-hearts-of-the-pure"] = {
        text = "Turn in Hearts of the Pure to Carendin Halgar in Undercity. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1476, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1472 },
                conditions = {},
            },
        },
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["accept-1474-the-binding"] = {
        text = "Accept The Binding from Carendin Halgar in Undercity. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1474, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1476 },
                conditions = {},
            },
        },
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["objective-1474-quest-work"] = {
        text = "For The Binding: Using the Pure Hearts, summon and subdue a succubus.",
        kind = "objective",
        complete = {
            quest = { id = 1474, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1476 },
                conditions = {},
            },
        },
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["turnin-1474-the-binding"] = {
        text = "Turn in The Binding to Carendin Halgar in Undercity. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1474, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1476 },
                conditions = {},
            },
        },
        alternativeQuests = { 1507 },
        useClientText = false,
    },
    ["accept-1798-seeking-strahad"] = {
        text = "Accept Seeking Strahad from Gakin the Darkbinder in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1798, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1798-seeking-strahad"] = {
        text = "Turn in Seeking Strahad to Strahad Farsan in The Barrens. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1798, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1758-tome-of-the-cabal"] = {
        text = "Accept Tome of the Cabal from Strahad Farsan in The Barrens. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1758, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1758-tome-of-the-cabal"] = {
        text = "Turn in Tome of the Cabal to Krom Stoutarm in Ironforge. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1758, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1802-tome-of-the-cabal"] = {
        text = "Accept Tome of the Cabal from Krom Stoutarm in Ironforge. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1802, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1758 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1802-book-1"] = {
        text = "Click the Tome of Cabal at the ruined farmhouse on the Hillsbrad coast, around 27.78,72.78, to collect the Moldy Tome.",
        kind = "objective",
        complete = {
            questObjective = { id = 1802, index = 1, text = "Moldy Tome", count = 1 },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1758 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1802-book-2"] = {
        text = "Enter the cave in Thousand Needles at 44.09,37.29. Open the Damaged Chest inside at 43.43,32.69 to collect the Tattered Manuscript.",
        kind = "objective",
        complete = {
            questObjective = { id = 1802, index = 2, text = "Tattered Manuscript", count = 1 },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1758 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1802-tome-of-the-cabal"] = {
        text = "Turn in Tome of the Cabal to Krom Stoutarm in Ironforge. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1802, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1758 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1804-tome-of-the-cabal"] = {
        text = "Accept Tome of the Cabal from Krom Stoutarm in Ironforge. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1804, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1802 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1804-quest-work"] = {
        text = "For Tome of the Cabal: Bring the Reconstructed Tome and 3 Rods of Channeling to Strahad Farsan in Ratchet.",
        kind = "objective",
        complete = {
            quest = { id = 1804, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1802 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1804-tome-of-the-cabal"] = {
        text = "Turn in Tome of the Cabal to Strahad Farsan in The Barrens. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1804, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1802 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-2996-seeking-strahad"] = {
        text = "Accept Seeking Strahad from Gan'rul Bloodeye in Orgrimmar. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 2996, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-2996-seeking-strahad"] = {
        text = "Turn in Seeking Strahad to Strahad Farsan in The Barrens. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 2996, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1801-tome-of-the-cabal"] = {
        text = "Accept Tome of the Cabal from Strahad Farsan in The Barrens. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1801, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1801-tome-of-the-cabal"] = {
        text = "Turn in Tome of the Cabal to Jorah Annison in Undercity. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1801, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-1803-tome-of-the-cabal"] = {
        text = "Accept Tome of the Cabal from Jorah Annison in Undercity. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1803, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1801 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1803-book-1"] = {
        text = "Click the Tome of Cabal at the ruined farmhouse on the Hillsbrad coast, around 27.78,72.78, to collect the Moldy Tome.",
        kind = "objective",
        complete = {
            questObjective = { id = 1803, index = 1, text = "Moldy Tome", count = 1 },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1801 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1803-book-2"] = {
        text = "Enter the cave in Thousand Needles at 44.09,37.29. Open the Damaged Chest inside at 43.43,32.69 to collect the Tattered Manuscript.",
        kind = "objective",
        complete = {
            questObjective = { id = 1803, index = 2, text = "Tattered Manuscript", count = 1 },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1801 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1803-tome-of-the-cabal"] = {
        text = "Turn in Tome of the Cabal to Jorah Annison in Undercity. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1803, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1801 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1805-tome-of-the-cabal"] = {
        text = "Accept Tome of the Cabal from Jorah Annison in Undercity. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 1805, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1803 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1805-quest-work"] = {
        text = "For Tome of the Cabal: Bring the Reconstructed Tome and 3 Rods of Channeling to Strahad Farsan in Ratchet.",
        kind = "objective",
        complete = {
            quest = { id = 1805, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1803 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1805-tome-of-the-cabal"] = {
        text = "Turn in Tome of the Cabal to Strahad Farsan in The Barrens. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 1805, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1803 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-1795-the-binding"] = {
        text = "Accept The Binding from Strahad Farsan in The Barrens. This step is for Humans, Orcs, Undead, and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 1795, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1805, 1804 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-1795-quest-work"] = {
        text = "For The Binding: Using the Tome of the Cabal, summon and subdue a felhunter.",
        kind = "objective",
        complete = {
            quest = { id = 1795, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1805, 1804 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-1795-the-binding"] = {
        text = "Turn in The Binding to Strahad Farsan in The Barrens. This step is for Humans, Orcs, Undead, and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 1795, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1805, 1804 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3001-seeking-strahad"] = {
        text = "Accept Seeking Strahad from Carendin Halgar in Undercity. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 3001, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-3001-seeking-strahad"] = {
        text = "Turn in Seeking Strahad to Strahad Farsan in The Barrens. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 3001, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-4736-in-search-of-menara-voidrender"] = {
        text = "Accept In Search of Menara Voidrender from Briarthorn in Ironforge. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 4736, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 4737, 4738, 4739 },
        useClientText = false,
    },
    ["turnin-4736-in-search-of-menara-voidrender"] = {
        text = "Turn in In Search of Menara Voidrender to Menara Voidrender in The Barrens. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 4736, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 4737, 4738, 4739 },
        useClientText = false,
    },
    ["accept-4737-in-search-of-menara-voidrender"] = {
        text = "Accept In Search of Menara Voidrender from Zevrost in Orgrimmar. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 4737, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 4736, 4738, 4739 },
        useClientText = false,
    },
    ["turnin-4737-in-search-of-menara-voidrender"] = {
        text = "Turn in In Search of Menara Voidrender to Menara Voidrender in The Barrens. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 4737, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 4736, 4738, 4739 },
        useClientText = false,
    },
    ["accept-4738-in-search-of-menara-voidrender"] = {
        text = "Accept In Search of Menara Voidrender from Demisette Cloyce in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 4738, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 4736, 4737, 4739 },
        useClientText = false,
    },
    ["turnin-4738-in-search-of-menara-voidrender"] = {
        text = "Turn in In Search of Menara Voidrender to Menara Voidrender in The Barrens. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 4738, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 4736, 4737, 4739 },
        useClientText = false,
    },
    ["accept-4739-in-search-of-menara-voidrender"] = {
        text = "Accept In Search of Menara Voidrender from Kaal Soulreaper in Undercity. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 4739, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 4736, 4737, 4738 },
        useClientText = false,
    },
    ["turnin-4739-in-search-of-menara-voidrender"] = {
        text = "Turn in In Search of Menara Voidrender to Menara Voidrender in The Barrens. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 4739, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 4736, 4737, 4738 },
        useClientText = false,
    },
    ["accept-1796-components-for-the-enchanted-gold-bloodrobe"] = {
        text = "Accept Components for the Enchanted Gold Bloodrobe from Menara Voidrender in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 1796, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1796-quest-work"] = {
        text = "For Components for the Enchanted Gold Bloodrobe: Bring Robes of the Arcana to Menara Voidrender in the Barrens.",
        kind = "objective",
        complete = {
            quest = { id = 1796, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1796-components-for-the-enchanted-gold-bloodrobe"] = {
        text = "Turn in Components for the Enchanted Gold Bloodrobe to Menara Voidrender in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 1796, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-4781-components-for-the-enchanted-gold-bloodrobe"] = {
        text = "Accept Components for the Enchanted Gold Bloodrobe from Menara Voidrender in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 4781, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1796 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-4781-components-for-the-enchanted-gold-bloodrobe"] = {
        text = "Loot a Gold Bar from solid chests on the route or buy one from the auction house.",
        kind = "objective",
        complete = {
            quest = { id = 4781, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1796 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-4781-components-for-the-enchanted-gold-bloodrobe"] = {
        text = "Turn in Components for the Enchanted Gold Bloodrobe to Xizk Goodstitch in Stranglethorn Vale.",
        kind = "turnin",
        complete = {
            quest = { id = 4781, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 1796 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-4782-components-for-the-enchanted-gold-bloodrobe"] = {
        text = "Accept Components for the Enchanted Gold Bloodrobe from Xizk Goodstitch in Stranglethorn Vale.",
        kind = "accept",
        complete = {
            quest = { id = 4782, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4781 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-4782-components-for-the-enchanted-gold-bloodrobe"] = {
        text = "Turn in Components for the Enchanted Gold Bloodrobe to Menara Voidrender in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 4782, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4781 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-4783-components-for-the-enchanted-gold-bloodrobe"] = {
        text = "Accept Components for the Enchanted Gold Bloodrobe from Menara Voidrender in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 4783, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-4783-quest-work"] = {
        text = "For Components for the Enchanted Gold Bloodrobe: Bring 10 Vials of Hatefury Blood and 1 Lesser Infernal Stone to Menara Voidrender in the Barrens.",
        kind = "objective",
        complete = {
            quest = { id = 4783, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-4783-components-for-the-enchanted-gold-bloodrobe"] = {
        text = "Turn in Components for the Enchanted Gold Bloodrobe to Menara Voidrender in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 4783, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4782 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-4784-components-for-the-enchanted-gold-bloodrobe"] = {
        text = "Accept Components for the Enchanted Gold Bloodrobe from Menara Voidrender in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 4784, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4783 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-4784-quest-work"] = {
        text = "For Components for the Enchanted Gold Bloodrobe: Bring some Fine Gold Thread, 2 Smoldering Coals, and a Soul Shard to Menara Voidrender in the Barrens.",
        kind = "objective",
        complete = {
            quest = { id = 4784, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4783 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-4784-components-for-the-enchanted-gold-bloodrobe"] = {
        text = "Turn in Components for the Enchanted Gold Bloodrobe to Menara Voidrender in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 4784, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4783 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-4785-fine-gold-thread"] = {
        text = "Accept Fine Gold Thread from Xizk Goodstitch in Stranglethorn Vale.",
        kind = "accept",
        complete = {
            quest = { id = 4785, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4783 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-4785-fine-gold-thread"] = {
        text = "Turn in Fine Gold Thread to Xizk Goodstitch in Stranglethorn Vale.",
        kind = "turnin",
        complete = {
            quest = { id = 4785, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4783 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-4786-the-completed-robe"] = {
        text = "Accept The Completed Robe from Menara Voidrender in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 4786, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4784 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-4786-quest-work"] = {
        text = "For The Completed Robe: Wait for Menara Voidrender to complete your robe and then speak to her again.",
        kind = "objective",
        complete = {
            quest = { id = 4786, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4784 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-4786-the-completed-robe"] = {
        text = "Turn in The Completed Robe to Menara Voidrender in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 4786, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4784 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-4962-shard-of-a-felhound"] = {
        text = "Accept Shard of a Felhound from Acolyte Wytula in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 4962, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 4963 },
        useClientText = false,
    },
    ["objective-4962-quest-work"] = {
        text = "For Shard of a Felhound: Take the Felhas Ruby and use it on one of the Felhounds found in Desolace. After successful, bring the Felhas Ruby and the Imprisoned Felhound Spirit back to Menara Voidrender in the Barrens.",
        kind = "objective",
        complete = {
            quest = { id = 4962, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 4963 },
        useClientText = false,
    },
    ["turnin-4962-shard-of-a-felhound"] = {
        text = "Turn in Shard of a Felhound to Menara Voidrender in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 4962, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 4963 },
        useClientText = false,
    },
    ["accept-4963-shard-of-an-infernal"] = {
        text = "Accept Shard of an Infernal from Acolyte Magaz in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 4963, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 4962 },
        useClientText = false,
    },
    ["objective-4963-quest-work"] = {
        text = "For Shard of an Infernal: Take the Infus Emerald and use it on one of the Infernals found in Desolace. After successful, bring the Infus Emerald and the Imprisoned Infernal Spirit back to Menara Voidrender in the Barrens.",
        kind = "objective",
        complete = {
            quest = { id = 4963, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 4962 },
        useClientText = false,
    },
    ["turnin-4963-shard-of-an-infernal"] = {
        text = "Turn in Shard of an Infernal to Menara Voidrender in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 4963, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 4962 },
        useClientText = false,
    },
    ["accept-4965-knowledge-of-the-orb-of-orahil"] = {
        text = "Accept Knowledge of the Orb of Orahil from Briarthorn in Ironforge. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 4965, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 4967, 4968, 4969 },
        useClientText = false,
    },
    ["turnin-4965-knowledge-of-the-orb-of-orahil"] = {
        text = "Turn in Knowledge of the Orb of Orahil to Menara Voidrender in The Barrens. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 4965, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 4967, 4968, 4969 },
        useClientText = false,
    },
    ["accept-4967-knowledge-of-the-orb-of-orahil"] = {
        text = "Accept Knowledge of the Orb of Orahil from Zevrost in Orgrimmar. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 4967, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 4965, 4968, 4969 },
        useClientText = false,
    },
    ["turnin-4967-knowledge-of-the-orb-of-orahil"] = {
        text = "Turn in Knowledge of the Orb of Orahil to Menara Voidrender in The Barrens. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 4967, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 4965, 4968, 4969 },
        useClientText = false,
    },
    ["accept-4968-knowledge-of-the-orb-of-orahil"] = {
        text = "Accept Knowledge of the Orb of Orahil from Demisette Cloyce in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 4968, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 4965, 4967, 4969 },
        useClientText = false,
    },
    ["turnin-4968-knowledge-of-the-orb-of-orahil"] = {
        text = "Turn in Knowledge of the Orb of Orahil to Menara Voidrender in The Barrens. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 4968, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 4965, 4967, 4969 },
        useClientText = false,
    },
    ["accept-4969-knowledge-of-the-orb-of-orahil"] = {
        text = "Accept Knowledge of the Orb of Orahil from Kaal Soulreaper in Undercity. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 4969, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 4965, 4967, 4968 },
        useClientText = false,
    },
    ["turnin-4969-knowledge-of-the-orb-of-orahil"] = {
        text = "Turn in Knowledge of the Orb of Orahil to Menara Voidrender in The Barrens. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 4969, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 4965, 4967, 4968 },
        useClientText = false,
    },
    ["accept-1799-fragments-of-the-orb-of-orahil"] = {
        text = "Accept Fragments of the Orb of Orahil from Menara Voidrender in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 1799, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-1799-quest-work"] = {
        text = "For Fragments of the Orb of Orahil: Speak to Menara's acolytes inside the tower above Ratchet and choose one of their paths to follow. Afterwards, bring an Infernal Orb to Tabetha in Dustwallow Marsh.",
        kind = "objective",
        complete = {
            quest = { id = 1799, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-1799-fragments-of-the-orb-of-orahil"] = {
        text = "Turn in Fragments of the Orb of Orahil to Tabetha in Dustwallow Marsh.",
        kind = "turnin",
        complete = {
            quest = { id = 1799, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-4961-cleansing-of-the-orb-of-orahil"] = {
        text = "Accept Cleansing of the Orb of Orahil from Tabetha in Dustwallow Marsh.",
        kind = "accept",
        complete = {
            quest = { id = 4961, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 1799, 4962 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-4961-quest-work"] = {
        text = "For Cleansing of the Orb of Orahil: Kill the Demon of the Orb, then speak with Tabetha.",
        kind = "objective",
        complete = {
            quest = { id = 4961, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 1799, 4962 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-4961-cleansing-of-the-orb-of-orahil"] = {
        text = "Turn in Cleansing of the Orb of Orahil to Tabetha in Dustwallow Marsh.",
        kind = "turnin",
        complete = {
            quest = { id = 4961, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 1799, 4962 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-4976-returning-the-cleansed-orb"] = {
        text = "Accept Returning the Cleansed Orb from Tabetha in Dustwallow Marsh.",
        kind = "accept",
        complete = {
            quest = { id = 4976, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4961 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-4976-returning-the-cleansed-orb"] = {
        text = "Turn in Returning the Cleansed Orb to Menara Voidrender in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 4976, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 4961 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-4964-the-completed-orb-of-darorahil"] = {
        text = "Accept The Completed Orb of Dar'Orahil from Menara Voidrender in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 4964, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 4976, 4962 },
                conditions = {},
            },
        },
        alternativeQuests = { 4963 },
        useClientText = false,
    },
    ["objective-4964-quest-work"] = {
        text = "For The Completed Orb of Dar'Orahil: Wait for Menara Voidrender to complete the Orb of Dar'Orahil and then speak to her again.",
        kind = "objective",
        complete = {
            quest = { id = 4964, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 4976, 4962 },
                conditions = {},
            },
        },
        alternativeQuests = { 4963 },
        useClientText = false,
    },
    ["turnin-4964-the-completed-orb-of-darorahil"] = {
        text = "Turn in The Completed Orb of Dar'Orahil to Menara Voidrender in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 4964, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 4976, 4962 },
                conditions = {},
            },
        },
        alternativeQuests = { 4963 },
        useClientText = false,
    },
    ["accept-4975-the-completed-orb-of-nohorahil"] = {
        text = "Accept The Completed Orb of Noh'Orahil from Menara Voidrender in The Barrens.",
        kind = "accept",
        complete = {
            quest = { id = 4975, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 4976, 4963 },
                conditions = {},
            },
        },
        alternativeQuests = { 4962 },
        useClientText = false,
    },
    ["objective-4975-quest-work"] = {
        text = "For The Completed Orb of Noh'Orahil: Wait for Menara Voidrender to complete the Orb of Noh'Orahil and then speak to her again.",
        kind = "objective",
        complete = {
            quest = { id = 4975, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 4976, 4963 },
                conditions = {},
            },
        },
        alternativeQuests = { 4962 },
        useClientText = false,
    },
    ["turnin-4975-the-completed-orb-of-nohorahil"] = {
        text = "Turn in The Completed Orb of Noh'Orahil to Menara Voidrender in The Barrens.",
        kind = "turnin",
        complete = {
            quest = { id = 4975, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 4976, 4963 },
                conditions = {},
            },
        },
        alternativeQuests = { 4962 },
        useClientText = false,
    },
    ["accept-4487-summon-felsteed"] = {
        text = "Accept Summon Felsteed from Briarthorn in Ironforge. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 4487, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 3631, 4488, 4489 },
        useClientText = false,
    },
    ["turnin-4487-summon-felsteed"] = {
        text = "Turn in Summon Felsteed to Strahad Farsan in The Barrens. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 4487, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 3631, 4488, 4489 },
        useClientText = false,
    },
    ["accept-4488-summon-felsteed"] = {
        text = "Accept Summon Felsteed from Demisette Cloyce in Stormwind City. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 4488, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 3631, 4487, 4489 },
        useClientText = false,
    },
    ["turnin-4488-summon-felsteed"] = {
        text = "Turn in Summon Felsteed to Strahad Farsan in The Barrens. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 4488, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 3631, 4487, 4489 },
        useClientText = false,
    },
    ["accept-3631-summon-felsteed"] = {
        text = "Accept Summon Felsteed from Zevrost in Orgrimmar. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 3631, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 4487, 4488, 4489 },
        useClientText = false,
    },
    ["turnin-3631-summon-felsteed"] = {
        text = "Turn in Summon Felsteed to Strahad Farsan in The Barrens. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 3631, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 4487, 4488, 4489 },
        useClientText = false,
    },
    ["accept-4489-summon-felsteed"] = {
        text = "Accept Summon Felsteed from Kaal Soulreaper in Undercity. This step is for Orcs and Undead.",
        kind = "accept",
        complete = {
            quest = { id = 4489, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 3631, 4487, 4488 },
        useClientText = false,
    },
    ["turnin-4489-summon-felsteed"] = {
        text = "Turn in Summon Felsteed to Strahad Farsan in The Barrens. This step is for Orcs and Undead.",
        kind = "turnin",
        complete = {
            quest = { id = 4489, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 3631, 4487, 4488 },
        useClientText = false,
    },
    ["accept-4490-summon-felsteed"] = {
        text = "Accept Summon Felsteed from Strahad Farsan in The Barrens. This step is for Humans, Orcs, Undead, and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 4490, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 3631, 4487, 4488, 4489 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-4490-summon-felsteed"] = {
        text = "Turn in Summon Felsteed to Strahad Farsan in The Barrens. This step is for Humans, Orcs, Undead, and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 4490, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 3631, 4487, 4488, 4489 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7601-what-niby-commands"] = {
        text = "Accept What Niby Commands from Niby the Almighty in Felwood.",
        kind = "accept",
        complete = {
            quest = { id = 7601, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-7601-what-niby-commands"] = {
        text = "Turn in What Niby Commands to Impsy in Felwood.",
        kind = "turnin",
        complete = {
            quest = { id = 7601, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-7602-flawless-fel-essence"] = {
        text = "Accept Flawless Fel Essence from Impsy in Felwood.",
        kind = "accept",
        complete = {
            quest = { id = 7602, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7601 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-7602-flawless-fel-essence"] = {
        text = "Collect the three regional Flawless Fel Essences: from Legashi satyrs in Azshara, Jaedenar Legionnaires in Felwood, and Felguard Sentries in the Blasted Lands. Bring all three to Impsy.",
        kind = "objective",
        complete = {
            quest = { id = 7602, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7601 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7602-flawless-fel-essence"] = {
        text = "Turn in Flawless Fel Essence to Impsy in Felwood.",
        kind = "turnin",
        complete = {
            quest = { id = 7602, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7601 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-8419-an-imps-request"] = {
        text = "Accept An Imp's Request from Demisette Cloyce.",
        kind = "accept",
        complete = {
            quest = { id = 8419, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 8420 },
        useClientText = false,
    },
    ["accept-8419-an-imps-request-horde"] = {
        text = "Accept An Imp's Request from Kaal Soulreaper.",
        kind = "accept",
        complete = {
            quest = { id = 8419, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 8420 },
        useClientText = false,
    },
    ["objective-8419-quest-work"] = {
        text = "For An Imp's Request: Bring a piece of felcloth to Impsy in Felwood.",
        kind = "objective",
        complete = {
            quest = { id = 8419, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 8420 },
        useClientText = false,
    },
    ["turnin-8419-an-imps-request"] = {
        text = "Turn in An Imp's Request to Impsy in Felwood.",
        kind = "turnin",
        complete = {
            quest = { id = 8419, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 8420 },
        useClientText = false,
    },
    ["accept-8420-hot-and-itchy"] = {
        text = "Accept Hot and Itchy from Impsy in Felwood.",
        kind = "accept",
        complete = {
            quest = { id = 8420, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 8419 },
        useClientText = false,
    },
    ["objective-8420-hot-and-itchy"] = {
        text = "Collect Felcloth from jadefire satyrs in Felwood.",
        kind = "objective",
        complete = {
            quest = { id = 8420, state = "complete" },
        },
        requiredQuests = {},
        alternativeQuests = { 8419 },
        useClientText = false,
    },
    ["turnin-8420-hot-and-itchy"] = {
        text = "Turn in Hot and Itchy to Impsy in Felwood.",
        kind = "turnin",
        complete = {
            quest = { id = 8420, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 8419 },
        useClientText = false,
    },
    ["accept-8421-the-wrong-stuff"] = {
        text = "Accept The Wrong Stuff from Impsy in Felwood.",
        kind = "accept",
        complete = {
            quest = { id = 8421, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8419, 8420 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-8421-the-wrong-stuff"] = {
        text = "Collect Bloodvenom Essence and Rotting Wood in Felwood.",
        kind = "objective",
        complete = {
            quest = { id = 8421, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8419, 8420 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-8421-the-wrong-stuff"] = {
        text = "Turn in The Wrong Stuff to Impsy in Felwood.",
        kind = "turnin",
        complete = {
            quest = { id = 8421, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8419, 8420 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7603-kroshius-infernal-core"] = {
        text = "Accept Kroshius' Infernal Core from Impsy in Felwood.",
        kind = "accept",
        complete = {
            quest = { id = 7603, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7602 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-7603-kroshius-infernal-core"] = {
        text = "Find Kroshius' remains in Shatter Scar Vale, Felwood. Use Fel Fire beside the remains to awaken him. Defeat Kroshius with your group, loot his Infernal Core, and return to Niby the Almighty.",
        kind = "objective",
        complete = {
            quest = { id = 7603, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7602 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7603-kroshius-infernal-core"] = {
        text = "Turn in Kroshius' Infernal Core to Niby the Almighty in Felwood.",
        kind = "turnin",
        complete = {
            quest = { id = 7603, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7602 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7562-morzul-bloodbringer"] = {
        text = "Accept Mor'zul Bloodbringer from Spackle Thornberry.",
        kind = "accept",
        complete = {
            quest = { id = 7562, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-7562-morzul-bloodbringer-horde"] = {
        text = "Accept Mor'zul Bloodbringer from Martha Strain.",
        kind = "accept",
        complete = {
            quest = { id = 7562, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-7562-morzul-bloodbringer"] = {
        text = "Turn in Mor'zul Bloodbringer to Mor'zul Bloodbringer in Burning Steppes.",
        kind = "turnin",
        complete = {
            quest = { id = 7562, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-7563-rage-of-blood"] = {
        text = "Accept Rage of Blood from Mor'zul Bloodbringer in Burning Steppes.",
        kind = "accept",
        complete = {
            quest = { id = 7563, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-7563-quest-work"] = {
        text = "For Rage of Blood: Bring 30 bottles of Raging Beast's Blood to Mor'zul Bloodbringer in the Burning Steppes.",
        kind = "objective",
        complete = {
            quest = { id = 7563, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-7563-rage-of-blood"] = {
        text = "Turn in Rage of Blood to Mor'zul Bloodbringer in Burning Steppes.",
        kind = "turnin",
        complete = {
            quest = { id = 7563, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-7564-wildeyes"] = {
        text = "Accept Wildeyes from Mor'zul Bloodbringer in Burning Steppes.",
        kind = "accept",
        complete = {
            quest = { id = 7564, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7563 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7564-wildeyes"] = {
        text = "Turn in Wildeyes to Gorzeeki Wildeyes in Burning Steppes.",
        kind = "turnin",
        complete = {
            quest = { id = 7564, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7563 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7623-lord-banehollow"] = {
        text = "Accept Lord Banehollow from Gorzeeki Wildeyes in Burning Steppes.",
        kind = "accept",
        complete = {
            quest = { id = 7623, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-7623-reviewed-mechanics"] = {
        text = "Buy Shadowy Potions from Gorzeeki Wildeyes in the Burning Steppes. Use a potion before entering Jaedenar in Felwood, then speak with Lord Banehollow.",
        kind = "objective",
        complete = {
            quest = { id = 7623, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-7623-lord-banehollow"] = {
        text = "Turn in Lord Banehollow to Lord Banehollow in Felwood.",
        kind = "turnin",
        complete = {
            quest = { id = 7623, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-7626-bell-of-dethmoora"] = {
        text = "Accept Bell of Dethmoora from Mor'zul Bloodbringer in Burning Steppes.",
        kind = "accept",
        complete = {
            quest = { id = 7626, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7564 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-7626-bell-of-dethmoora"] = {
        text = "Craft or buy 10 Elixirs of Shadow Power and bring them to Gorzeeki Wildeyes in the Burning Steppes.",
        kind = "objective",
        complete = {
            quest = { id = 7626, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7564 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7626-bell-of-dethmoora"] = {
        text = "Turn in Bell of Dethmoora to Gorzeeki Wildeyes in Burning Steppes.",
        kind = "turnin",
        complete = {
            quest = { id = 7626, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7564 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7627-wheel-of-the-black-march"] = {
        text = "Accept Wheel of the Black March from Mor'zul Bloodbringer in Burning Steppes.",
        kind = "accept",
        complete = {
            quest = { id = 7627, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7564 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-7627-wheel-of-the-black-march"] = {
        text = "Obtain 6 Large Brilliant Shards and 25 Dark Iron Ore, then bring both materials to Gorzeeki Wildeyes in the Burning Steppes. Buy the materials or obtain shards through disenchanting and ore through mining.",
        kind = "objective",
        complete = {
            quest = { id = 7627, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7564 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7627-wheel-of-the-black-march"] = {
        text = "Turn in Wheel of the Black March to Gorzeeki Wildeyes in Burning Steppes.",
        kind = "turnin",
        complete = {
            quest = { id = 7627, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7564 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7628-doomsday-candle"] = {
        text = "Accept Doomsday Candle from Mor'zul Bloodbringer in Burning Steppes.",
        kind = "accept",
        complete = {
            quest = { id = 7628, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7564 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-7628-doomsday-candle"] = {
        text = "Collect 35 Black Dragonscales from skinning black dragonkin or buy them. Return to Gorzeeki Wildeyes in the Burning Steppes.",
        kind = "objective",
        complete = {
            quest = { id = 7628, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7564 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7628-doomsday-candle"] = {
        text = "Turn in Doomsday Candle to Gorzeeki Wildeyes in Burning Steppes.",
        kind = "turnin",
        complete = {
            quest = { id = 7628, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7564 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7630-arcanite"] = {
        text = "Accept Arcanite from Gorzeeki Wildeyes in Burning Steppes.",
        kind = "accept",
        complete = {
            quest = { id = 7630, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 7626, 7627, 7628 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-7630-quest-work"] = {
        text = "For Arcanite: Bring 3 Arcanite Bar to Gorzeeki in the Burning Steppes.",
        kind = "objective",
        complete = {
            quest = { id = 7630, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 7626, 7627, 7628 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7630-arcanite"] = {
        text = "Turn in Arcanite to Gorzeeki Wildeyes in Burning Steppes.",
        kind = "turnin",
        complete = {
            quest = { id = 7630, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 7626, 7627, 7628 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7624-ulathek-the-traitor"] = {
        text = "Accept Ulathek the Traitor from Lord Banehollow in Felwood.",
        kind = "accept",
        complete = {
            quest = { id = 7624, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7623 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-7624-ulathek-the-traitor"] = {
        text = "Kill Ulathek the Traitor and collect The Traitor's Heart.",
        kind = "objective",
        complete = {
            quest = { id = 7624, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7623 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7624-ulathek-the-traitor"] = {
        text = "Turn in Ulathek the Traitor to Lord Banehollow in Felwood.",
        kind = "turnin",
        complete = {
            quest = { id = 7624, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7623 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7625-xorothian-stardust"] = {
        text = "Accept Xorothian Stardust from Lord Banehollow in Felwood.",
        kind = "accept",
        complete = {
            quest = { id = 7625, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7624 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-7625-quest-work"] = {
        text = "For Xorothian Stardust: Purchase Xorothian Stardust from Ur'dan.",
        kind = "objective",
        complete = {
            quest = { id = 7625, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7624 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7625-xorothian-stardust"] = {
        text = "Turn in Xorothian Stardust to Gorzeeki Wildeyes in Burning Steppes.",
        kind = "turnin",
        complete = {
            quest = { id = 7625, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7624 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7582-the-prisons-casing"] = {
        text = "Accept The Prison's Casing from Daio the Decrepit in Blasted Lands.",
        kind = "accept",
        complete = {
            quest = { id = 7582, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-7582-quest-work"] = {
        text = "For The Prison's Casing: Travel to Darkwhisper Gorge in Winterspring and recover 5 Tears of the Hederine from the Hederine demons that occupy the gorge.",
        kind = "objective",
        complete = {
            quest = { id = 7582, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-7582-the-prisons-casing"] = {
        text = "Turn in The Prison's Casing to Daio the Decrepit in Blasted Lands.",
        kind = "turnin",
        complete = {
            quest = { id = 7582, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["handoff-7581-class-dungeon"] = {
        text = "Open Class Dungeon Prerequisites in the Dungeon library. Enter Dire Maul East, the Warpwood Quarter, with your group. Kill Wildspawn Satyr and collect 15 Satyr Blood. Bring it to Daio the Decrepit in the Tainted Scar, Blasted Lands. Return to this class route after turning in The Prison's Bindings.",
        kind = "note",
        complete = {
            quest = { id = 7581, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-7583-suppression"] = {
        text = "Accept Suppression from Daio the Decrepit in Blasted Lands.",
        kind = "accept",
        complete = {
            quest = { id = 7583, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 7581, 7582 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-7583-quest-work"] = {
        text = "For Suppression: Venture forth into the Tainted Scar and locate a Doomguard Commander. Use the Glowing Crystal Prison on the Doomguard Commander. Be prepared for a ferocious onslaught of attacks, as the demon attempts to escape capture. Should you succeed.",
        kind = "objective",
        complete = {
            quest = { id = 7583, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 7581, 7582 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7583-suppression"] = {
        text = "Turn in Suppression to Daio the Decrepit in Blasted Lands.",
        kind = "turnin",
        complete = {
            quest = { id = 7583, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 7581, 7582 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3108-etched-rune"] = {
        text = "Accept Etched Rune from Sten Stoutarm in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 3108, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3108-etched-rune"] = {
        text = "Read Etched Rune in your bags. Turn in Etched Rune to Thorgas Grimson in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 3108, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 179 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3082-etched-tablet"] = {
        text = "Accept Etched Tablet from Gornek in Durotar. This step is for Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 3082, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3082-etched-tablet"] = {
        text = "Turn in Etched Tablet to Jen'shan in Durotar. This step is for Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 3082, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3087-etched-parchment"] = {
        text = "Accept Etched Parchment from Gornek in Durotar. This step is for Orcs.",
        kind = "accept",
        complete = {
            quest = { id = 3087, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3087-etched-parchment"] = {
        text = "Read Etched Parchment in your bags. Turn in Etched Parchment to Jen'shan in Durotar. This step is for Orcs.",
        kind = "turnin",
        complete = {
            quest = { id = 3087, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 788 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3117-etched-sigil"] = {
        text = "Accept Etched Sigil from Conservator Ilthalaine in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 3117, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 456 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3117-etched-sigil"] = {
        text = "Read Etched Sigil in your bags. Turn in Etched Sigil to Ayanna Everstride in Teldrassil. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 3117, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 456 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-3092-etched-note"] = {
        text = "Accept Etched Note from Grull Hawkwind in Mulgore. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 3092, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 747 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-3092-etched-note"] = {
        text = "Read Etched Note in your bags. Turn in Etched Note to Lanka Farshot in Mulgore. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 3092, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 747 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-92482-the-way-of-the-hunter"] = {
        text = "Accept The Way of the Hunter from Rorian the Dayseeker in Zephras Isle.",
        kind = "accept",
        complete = {
            quest = { id = 92482, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-92482-the-way-of-the-hunter"] = {
        text = "Read Scribbled Note in your bags. Turn in The Way of the Hunter to Tai'ree Farsight in Zephras Isle.",
        kind = "turnin",
        complete = {
            quest = { id = 92482, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 92461 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6063-taming-the-beast"] = {
        text = "Accept Taming the Beast from Dazalar in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 6063, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-6063-quest-work"] = {
        text = "For Taming the Beast: Use the Taming Rod to tame a Webwood Lurker. Practice your skills.",
        kind = "objective",
        complete = {
            quest = { id = 6063, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-6063-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Dazalar in Teldrassil. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 6063, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-6101-taming-the-beast"] = {
        text = "Accept Taming the Beast from Dazalar in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 6101, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6063 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6101-quest-work"] = {
        text = "For Taming the Beast: Use the Taming Rod to tame a Nightsaber Stalker. Practice your skills.",
        kind = "objective",
        complete = {
            quest = { id = 6101, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6063 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6101-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Dazalar in Teldrassil. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 6101, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6063 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6102-taming-the-beast"] = {
        text = "Accept Taming the Beast from Dazalar in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 6102, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6101 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6102-quest-work"] = {
        text = "For Taming the Beast: Use the Taming Rod to tame a Strigid Screecher. Practice your skills.",
        kind = "objective",
        complete = {
            quest = { id = 6102, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6101 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6102-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Dazalar in Teldrassil. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 6102, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6101 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6103-training-the-beast"] = {
        text = "Accept Training the Beast from Dazalar in Teldrassil. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 6103, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6102 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6103-training-the-beast"] = {
        text = "Turn in Training the Beast to Jocaste in Darnassus. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 6103, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6102 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-94007-taming-the-beast"] = {
        text = "Accept Taming the Beast from Elayaa Easewind in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 94007, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94007-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 94007, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94978-taming-the-beast"] = {
        text = "Accept Taming the Beast from Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 94978, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-94978-quest-work"] = {
        text = "For Taming the Beast: Use the Taming Rod to tame a Windsong Crawler found near bodies of water. Practice your skills.",
        kind = "objective",
        complete = {
            quest = { id = 94978, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94978-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 94978, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94979-taming-the-beast"] = {
        text = "Accept Taming the Beast from Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 94979, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 94978 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-94979-quest-work"] = {
        text = "For Taming the Beast: Use the Taming Rod to tame an Ornery Galestrider in the Gustberry Lowlands. Practice your skills.",
        kind = "objective",
        complete = {
            quest = { id = 94979, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 94978 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-94979-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 94979, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 94978 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-94013-taming-the-beast"] = {
        text = "Accept Taming the Beast from Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 94013, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 94979 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-94013-quest-work"] = {
        text = "For Taming the Beast: Use the Taming Rod to tame a Vuldren Alpha in the Gustberry Lowlands. Practice your skills.",
        kind = "objective",
        complete = {
            quest = { id = 94013, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 94979 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-94013-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 94013, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 94979 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-94050-training-the-beast"] = {
        text = "Accept Training the Beast from Quel'ana Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "accept",
        complete = {
            quest = { id = 94050, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 94013 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-94050-training-the-beast"] = {
        text = "Turn in Training the Beast to Quel'dora Quickgale in Zephras Isle. This step is for Alliance Skyborne and Horde Skyborne.",
        kind = "turnin",
        complete = {
            quest = { id = 94050, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 94013 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-94792-taming-the-beast"] = {
        text = "Accept Taming the Beast from Josephine Carson in Elwynn Forest. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 94792, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-94792-reviewed-mechanics"] = {
        text = "Use the Taming Rod on a Rockhide Boar in Elwynn Forest and let the tame finish.",
        kind = "objective",
        complete = {
            quest = { id = 94792, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-94792-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Josephine Carson in Elwynn Forest. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 94792, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-94863-taming-the-beast"] = {
        text = "Accept Taming the Beast from Josephine Carson in Elwynn Forest. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 94863, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94792 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 3 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["objective-94863-reviewed-mechanics"] = {
        text = "Use the Taming Rod on a Gray Forest Wolf in Elwynn Forest and let the tame finish.",
        kind = "objective",
        complete = {
            quest = { id = 94863, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94792 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 3 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94863-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Josephine Carson in Elwynn Forest. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 94863, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94792 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 3 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-94864-taming-the-beast"] = {
        text = "Accept Taming the Beast from Josephine Carson in Elwynn Forest. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 94864, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94863 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 3 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["objective-94864-reviewed-mechanics"] = {
        text = "Use the Taming Rod on a Young Forest Bear in Elwynn Forest and let the tame finish.",
        kind = "objective",
        complete = {
            quest = { id = 94864, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94863 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 3 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94864-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Josephine Carson in Elwynn Forest. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 94864, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94863 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 3 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-94793-training-the-beast"] = {
        text = "Accept Training the Beast from Josephine Carson in Elwynn Forest. This step is for Humans and Gnomes.",
        kind = "accept",
        complete = {
            quest = { id = 94793, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94864 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 3 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["turnin-94793-training-the-beast"] = {
        text = "Turn in Training the Beast to Isaac Chan in Elwynn Forest. This step is for Humans and Gnomes.",
        kind = "turnin",
        complete = {
            quest = { id = 94793, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "all",
                quests = { 94864 },
                conditions = {
                    all = {
                        { faction = "Alliance" },
                        { class = 3 },
                    },
                },
            },
        },
        useClientText = false,
    },
    ["accept-6065-the-hunters-path"] = {
        text = "Accept The Hunter's Path from Kary Thunderhorn in Thunder Bluff. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 6065, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 6066, 6067 },
        useClientText = false,
    },
    ["turnin-6065-the-hunters-path"] = {
        text = "Turn in The Hunter's Path to Yaw Sharpmane in Mulgore. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 6065, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 6066, 6067 },
        useClientText = false,
    },
    ["accept-6066-the-hunters-path"] = {
        text = "Accept The Hunter's Path from Sian'dur in Orgrimmar. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 6066, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 6065, 6067 },
        useClientText = false,
    },
    ["turnin-6066-the-hunters-path"] = {
        text = "Turn in The Hunter's Path to Yaw Sharpmane in Mulgore. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 6066, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 6065, 6067 },
        useClientText = false,
    },
    ["accept-6067-the-hunters-path"] = {
        text = "Accept The Hunter's Path from Thotar in Durotar. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 6067, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 6065, 6066 },
        useClientText = false,
    },
    ["turnin-6067-the-hunters-path"] = {
        text = "Turn in The Hunter's Path to Yaw Sharpmane in Mulgore. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 6067, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 6065, 6066 },
        useClientText = false,
    },
    ["accept-6061-taming-the-beast"] = {
        text = "Accept Taming the Beast from Yaw Sharpmane in Mulgore. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 6061, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-6061-quest-work"] = {
        text = "For Taming the Beast: Use the Taming Rod to tame an Adult Plainstrider. Practice your skills.",
        kind = "objective",
        complete = {
            quest = { id = 6061, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-6061-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Yaw Sharpmane in Mulgore. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 6061, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-6087-taming-the-beast"] = {
        text = "Accept Taming the Beast from Yaw Sharpmane in Mulgore. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 6087, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6061 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6087-quest-work"] = {
        text = "For Taming the Beast: Use the Taming Rod to tame a Prairie Stalker. Practice your skills.",
        kind = "objective",
        complete = {
            quest = { id = 6087, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6061 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6087-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Yaw Sharpmane in Mulgore. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 6087, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6061 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6088-taming-the-beast"] = {
        text = "Accept Taming the Beast from Yaw Sharpmane in Mulgore. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 6088, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6087 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6088-quest-work"] = {
        text = "For Taming the Beast: Use the Taming Rod to tame a Swoop. Practice your skills.",
        kind = "objective",
        complete = {
            quest = { id = 6088, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6087 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6088-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Yaw Sharpmane in Mulgore. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 6088, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6087 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6089-training-the-beast"] = {
        text = "Accept Training the Beast from Yaw Sharpmane in Mulgore. This step is for Tauren.",
        kind = "accept",
        complete = {
            quest = { id = 6089, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6088 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6089-training-the-beast"] = {
        text = "Turn in Training the Beast to Holt Thunderhorn in Thunder Bluff. This step is for Tauren.",
        kind = "turnin",
        complete = {
            quest = { id = 6089, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6088 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6068-the-hunters-path"] = {
        text = "Accept The Hunter's Path from Sian'dur in Orgrimmar. This step is for Orcs and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 6068, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 6069, 6070 },
        useClientText = false,
    },
    ["turnin-6068-the-hunters-path"] = {
        text = "Turn in The Hunter's Path to Thotar in Durotar. This step is for Orcs and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 6068, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 6069, 6070 },
        useClientText = false,
    },
    ["accept-6069-the-hunters-path"] = {
        text = "Accept The Hunter's Path from Kali Remik in Durotar. This step is for Orcs and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 6069, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 6068, 6070 },
        useClientText = false,
    },
    ["turnin-6069-the-hunters-path"] = {
        text = "Turn in The Hunter's Path to Thotar in Durotar. This step is for Orcs and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 6069, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 6068, 6070 },
        useClientText = false,
    },
    ["accept-6070-the-hunters-path"] = {
        text = "Accept The Hunter's Path from Kary Thunderhorn in Thunder Bluff. This step is for Orcs and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 6070, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 6068, 6069 },
        useClientText = false,
    },
    ["turnin-6070-the-hunters-path"] = {
        text = "Turn in The Hunter's Path to Thotar in Durotar. This step is for Orcs and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 6070, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 6068, 6069 },
        useClientText = false,
    },
    ["accept-6062-taming-the-beast"] = {
        text = "Accept Taming the Beast from Thotar in Durotar. This step is for Orcs and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 6062, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-6062-quest-work"] = {
        text = "For Taming the Beast: Use the Taming Rod to tame a Dire Mottled Boar. Practice your skills.",
        kind = "objective",
        complete = {
            quest = { id = 6062, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-6062-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Thotar in Durotar. This step is for Orcs and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 6062, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-6083-taming-the-beast"] = {
        text = "Accept Taming the Beast from Thotar in Durotar. This step is for Orcs and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 6083, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6062 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6083-quest-work"] = {
        text = "For Taming the Beast: Use the Taming Rod to tame a Surf Crawler. Practice your skills.",
        kind = "objective",
        complete = {
            quest = { id = 6083, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6062 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6083-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Thotar in Durotar. This step is for Orcs and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 6083, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6062 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6082-taming-the-beast"] = {
        text = "Accept Taming the Beast from Thotar in Durotar. This step is for Orcs and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 6082, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6083 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6082-quest-work"] = {
        text = "For Taming the Beast: Use the Taming Rod to tame an Armored Scorpid. Practice your skills.",
        kind = "objective",
        complete = {
            quest = { id = 6082, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6083 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6082-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Thotar in Durotar. This step is for Orcs and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 6082, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6083 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6081-training-the-beast"] = {
        text = "Accept Training the Beast from Thotar in Durotar. This step is for Orcs and Trolls.",
        kind = "accept",
        complete = {
            quest = { id = 6081, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6082 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6081-training-the-beast"] = {
        text = "Turn in Training the Beast to Ormak Grimshot in Orgrimmar. This step is for Orcs and Trolls.",
        kind = "turnin",
        complete = {
            quest = { id = 6081, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6082 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6071-the-hunters-path"] = {
        text = "Accept The Hunter's Path from Jocaste in Darnassus. This step is for Night Elves.",
        kind = "accept",
        complete = {
            quest = { id = 6071, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 6072, 6073, 6721, 6722 },
        useClientText = false,
    },
    ["turnin-6071-the-hunters-path"] = {
        text = "Turn in The Hunter's Path to Dazalar in Teldrassil. This step is for Night Elves.",
        kind = "turnin",
        complete = {
            quest = { id = 6071, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 6072, 6073, 6721, 6722 },
        useClientText = false,
    },
    ["accept-6074-the-hunters-path"] = {
        text = "Accept The Hunter's Path from Olmin Burningbeard in Ironforge. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 6074, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 6075, 6076 },
        useClientText = false,
    },
    ["turnin-6074-the-hunters-path"] = {
        text = "Turn in The Hunter's Path to Grif Wildheart in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 6074, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 6075, 6076 },
        useClientText = false,
    },
    ["accept-6075-the-hunters-path"] = {
        text = "Accept The Hunter's Path from Tristane Shadowstone in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 6075, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 6074, 6076 },
        useClientText = false,
    },
    ["turnin-6075-the-hunters-path"] = {
        text = "Turn in The Hunter's Path to Grif Wildheart in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 6075, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 6074, 6076 },
        useClientText = false,
    },
    ["accept-6076-the-hunters-path"] = {
        text = "Accept The Hunter's Path from Einris Brightspear in Stormwind City. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 6076, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        alternativeQuests = { 6074, 6075 },
        useClientText = false,
    },
    ["turnin-6076-the-hunters-path"] = {
        text = "Turn in The Hunter's Path to Grif Wildheart in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 6076, state = "completed" },
        },
        requiredQuests = {},
        alternativeQuests = { 6074, 6075 },
        useClientText = false,
    },
    ["accept-6064-taming-the-beast"] = {
        text = "Accept Taming the Beast from Grif Wildheart in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 6064, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["objective-6064-quest-work"] = {
        text = "Use the Taming Rod on a Large Crag Boar in Dun Morogh. Let the tame finish.",
        kind = "objective",
        complete = {
            quest = { id = 6064, state = "complete" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-6064-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Grif Wildheart in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 6064, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-6084-taming-the-beast"] = {
        text = "Accept Taming the Beast from Grif Wildheart in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 6084, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6064 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6084-quest-work"] = {
        text = "Use the Taming Rod on a Snow Leopard in Dun Morogh. Let the tame finish.",
        kind = "objective",
        complete = {
            quest = { id = 6084, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6064 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6084-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Grif Wildheart in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 6084, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6064 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6085-taming-the-beast"] = {
        text = "Accept Taming the Beast from Grif Wildheart in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 6085, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6084 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-6085-quest-work"] = {
        text = "Use the Taming Rod on an Ice Claw Bear in Dun Morogh. Let the tame finish.",
        kind = "objective",
        complete = {
            quest = { id = 6085, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6084 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6085-taming-the-beast"] = {
        text = "Turn in Taming the Beast to Grif Wildheart in Dun Morogh. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 6085, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6084 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-6086-training-the-beast"] = {
        text = "Accept Training the Beast from Grif Wildheart in Dun Morogh. This step is for Dwarves.",
        kind = "accept",
        complete = {
            quest = { id = 6086, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6085 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-6086-training-the-beast"] = {
        text = "Turn in Training the Beast to Belia Thundergranite in Ironforge. This step is for Dwarves.",
        kind = "turnin",
        complete = {
            quest = { id = 6086, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 6085 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-8151-the-hunters-charm"] = {
        text = "Accept The Hunter's Charm from Ulfir Ironbeard.",
        kind = "accept",
        complete = {
            quest = { id = 8151, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8151-the-hunters-charm-horde"] = {
        text = "Accept The Hunter's Charm from Ormak Grimshot.",
        kind = "accept",
        complete = {
            quest = { id = 8151, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-8151-the-hunters-charm"] = {
        text = "Turn in The Hunter's Charm to Ogtinc in Azshara.",
        kind = "turnin",
        complete = {
            quest = { id = 8151, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-8153-courser-antlers"] = {
        text = "Accept Courser Antlers from Ogtinc in Azshara.",
        kind = "accept",
        complete = {
            quest = { id = 8153, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8151 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-8153-courser-antlers"] = {
        text = "Collect 2 Perfect Courser Antler from Mosshoof Coursers in Azshara.",
        kind = "objective",
        complete = {
            quest = { id = 8153, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8151 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-8153-courser-antlers"] = {
        text = "Turn in Courser Antlers to Ogtinc in Azshara.",
        kind = "turnin",
        complete = {
            quest = { id = 8153, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8151 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-8231-wavethrashing"] = {
        text = "Accept Wavethrashing from Ogtinc in Azshara.",
        kind = "accept",
        complete = {
            quest = { id = 8231, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8153 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-8231-wavethrashing"] = {
        text = "Collect 6 Wavethrasher Scale from wavethrashers in Azshara.",
        kind = "objective",
        complete = {
            quest = { id = 8231, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8153 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-8231-wavethrashing"] = {
        text = "Turn in Wavethrashing to Ogtinc in Azshara.",
        kind = "turnin",
        complete = {
            quest = { id = 8231, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 8153 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["loot-starter-before-accept-7632-the-ancient-leaf"] = {
        text = "Loot Ancient Petrified Leaf from Cache of the Firelord. Keep it for the next pickup.",
        kind = "note",
        complete = {
            any = {
                {
                    item = { name = "Ancient Petrified Leaf", minCount = 1 },
                },
                {
                    quest = { id = 7632, state = "activeOrCompleted" },
                },
            },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-7632-the-ancient-leaf"] = {
        text = "Use the Ancient Petrified Leaf to accept The Ancient Leaf.",
        kind = "accept",
        complete = {
            quest = { id = 7632, state = "activeOrCompleted" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["turnin-7632-the-ancient-leaf"] = {
        text = "Turn in The Ancient Leaf to Vartrus the Ancient in Felwood.",
        kind = "turnin",
        complete = {
            quest = { id = 7632, state = "completed" },
        },
        requiredQuests = {},
        useClientText = false,
    },
    ["accept-7633-an-introduction"] = {
        text = "Accept An Introduction from Vartrus the Ancient in Felwood.",
        kind = "accept",
        complete = {
            quest = { id = 7633, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7632 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7633-an-introduction"] = {
        text = "Turn in An Introduction to Vartrus the Ancient in Felwood.",
        kind = "turnin",
        complete = {
            quest = { id = 7633, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7632 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["accept-7636-stave-of-the-ancients"] = {
        text = "Accept Stave of the Ancients from Vartrus the Ancient in Felwood.",
        kind = "accept",
        complete = {
            quest = { id = 7636, state = "activeOrCompleted" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7632 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["objective-7636-quest-work"] = {
        text = "For Stave of the Ancients: You must find and destroy these four demonic corrupters: Simone the Seductress. Klinfran the Crazed. Solenor the Slayer. Artorius the Doombringer. Destroy these creatures and return to Vartrus the Ancient in Felwood with their heads. Refer to the Petrified Bark in your inventory for clues as to their whereabouts. You MUST complete this task by yourself.",
        kind = "objective",
        complete = {
            quest = { id = 7636, state = "complete" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7632 },
                conditions = {},
            },
        },
        useClientText = false,
    },
    ["turnin-7636-stave-of-the-ancients"] = {
        text = "Turn in Stave of the Ancients to Vartrus the Ancient in Felwood.",
        kind = "turnin",
        complete = {
            quest = { id = 7636, state = "completed" },
        },
        requiredQuests = {
            {
                mode = "any",
                quests = { 7632 },
                conditions = {},
            },
        },
        useClientText = false,
    },
}

function ns:ExpandClassActions(guide)
    for _, goal in ipairs(guide.goals or {}) do
        if goal.classAction then
            local action = self.classActions[goal.classAction]
            assert(action, "Unknown class action: " .. tostring(goal.classAction))
            for key, value in pairs(action) do
                -- Shared quest facts are read-only; itinerary IDs, branches and routes stay on the goal.
                if goal[key] == nil then goal[key] = value end
            end
        end
    end
end
