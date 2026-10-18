local guides = {
    {
        zone = "alterac-mountains",
        title = "Explore Alterac Mountains",
        achievementID = 760,
        mapID = 1416,
        locations = {
            { "Chillwind Point", 80, 64, "chillwind-point" },
            { "Corrahn's Dagger", 48, 82, "corrahn-s-dagger" },
            { "Crushridge Hold", 50, 45, "crushridge-hold" },
            { "Dalaran", 15, 65, "dalaran" },
            { "Dandred's Fold", 40, 18, "dandred-s-fold" },
            { "Gallows' Corner", 49, 57, "gallows-corner" },
            { "Gavin's Naze", 31, 83, "gavin-s-naze" },
            { "Growless Cave", 37, 69, "growless-cave" },
            { "Lordamere Internment Camp", 20, 85, "lordamere-internment-camp" },
            { "Misty Shore", 27, 43, "misty-shore" },
            { "Ruins of Alterac", 36, 54, "ruins-of-alterac" },
            { "Sofera's Naze", 58, 67, "sofera-s-naze" },
            { "Strahnbrad", 62, 43, "strahnbrad" },
            { "The Headland", 38, 87, "the-headland" },
            { "The Uplands", 58, 31, "the-uplands" },
        },
    },
    {
        zone = "arathi-highlands",
        title = "Explore Arathi Highlands",
        achievementID = 761,
        mapID = 1417,
        locations = {
            { "Circle of West Binding", 25, 31, "circle-of-west-binding" },
            { "Northfold Manor", 32, 27, "northfold-manor" },
            { "Bouldergor", 39, 36, "bouldergor" },
            { "Thoradin's Wall", 18, 40, "thoradin-s-wall" },
            { "Stromgarde Keep", 25, 57, "stromgarde-keep" },
            { "Faldir's Cove", 24, 81, "faldir-s-cove" },
            { "Circle of Inner Binding", 35, 58, "circle-of-inner-binding" },
            { "Thandol Span", 44, 87, "thandol-span" },
            { "Boulderfist Hall", 53, 73, "boulderfist-hall" },
            { "Refuge Pointe", 45, 47, "refuge-pointe" },
            { "Circle of Outer Binding", 52, 50, "circle-of-outer-binding" },
            { "Witherbark Village", 65, 68, "witherbark-village" },
            { "Go'Shek Farm", 61, 58, "go-shek-farm" },
            { "Dabyrie's Farmstead", 55, 39, "dabyrie-s-farmstead" },
            { "Circle of East Binding", 66, 29, "circle-of-east-binding" },
            { "Hammerfall", 74, 38, "hammerfall" },
        },
    },
}

return function(ns, Check, Equal)
    for _, expected in ipairs(guides) do
        local guideID = "legacy-explore-" .. expected.zone
        local guide = ns.guides[guideID]
        Check(guide ~= nil, expected.title .. " is registered")
        if guide then
            Equal(guide.title, expected.title, guideID .. " has the achievement title")
            Equal(guide.category, "Miscellaneous Guides", guideID .. " belongs in Miscellaneous")
            Equal(guide.routeMode, nil, guideID .. " retains the priority scheduler")
            Equal(#guide.goals, #expected.locations, guideID .. " includes every supplied location")
            local ids, pins = {}, {}
            for index, location in ipairs(expected.locations) do
                local goal = guide.goals[index]
                Check(goal ~= nil, guideID .. " includes " .. location[1])
                if goal then
                    local context = guideID .. ": " .. location[1]
                    Equal(goal.id, "explore-" .. expected.zone .. "-" .. location[4], context .. " has a stable goal ID")
                    Check(not ids[goal.id], context .. " has a unique goal ID")
                    ids[goal.id] = true
                    Equal(goal.kind, "travel", context .. " is a travel goal")
                    Equal(goal.priority, index * 10, context .. " follows the supplied order")
                    if index == 1 then
                        Equal(goal.dependsOn, nil, context .. " starts without a dependency")
                    else
                        Equal(#goal.dependsOn, 1, context .. " has one dependency")
                        Equal(goal.dependsOn[1], guide.goals[index - 1].id, context .. " follows the preceding location")
                    end
                    Equal(#goal.route, 1, context .. " has one waypoint")
                    local point = goal.route[1]
                    Equal(point.mapID, expected.mapID, context .. " uses the zone map")
                    Check(math.abs(point.x - location[2] / 100) < 0.0000001, context .. " uses the supplied X coordinate")
                    Check(math.abs(point.y - location[3] / 100) < 0.0000001, context .. " uses the supplied Y coordinate")
                    Equal(point.label, location[1], context .. " labels the destination")
                    local pin = point.mapID .. ":" .. point.x .. ":" .. point.y
                    Check(not pins[pin], context .. " has a unique waypoint")
                    pins[pin] = true
                    local condition = goal.complete
                    if index == #expected.locations then
                        Equal(#condition.all, 2, context .. " requires both final discovery and achievement")
                        Equal(condition.all[2].achievement.id, expected.achievementID, context .. " checks the overall achievement")
                        condition = condition.all[1]
                    end
                    Equal(condition.achievementCriterion.id, expected.achievementID, context .. " checks the zone achievement")
                    Equal(condition.achievementCriterion.name, location[1], context .. " checks its discovery criterion")
                    local achievement = { completed = false, criteriaByName = {} }
                    local state = { achievements = { [expected.achievementID] = achievement } }
                    Equal(ns.EvaluateCondition(condition, state), nil, context .. " stays unknown without client criterion data")
                    achievement.criteriaByName[string.lower(location[1])] = false
                    Equal(ns.EvaluateCondition(goal.complete, state), false, context .. " waits for discovery")
                    achievement.criteriaByName[string.lower(location[1])] = true
                    if index == #expected.locations then
                        Equal(ns.EvaluateCondition(goal.complete, state), false, context .. " waits for the overall achievement")
                        achievement.completed = true
                    end
                    Equal(ns.EvaluateCondition(goal.complete, state), true, context .. " completes from observed achievement data")
                    if location[1] == "Garrison Armory" then
                        Check(string.find(goal.text, "mine", 1, true) ~= nil, context .. " directs the player into the mine")
                        Check(string.find(goal.text, "few steps", 1, true) ~= nil, context .. " explains the discovery trigger")
                    end
                end
            end
        end
    end
end
