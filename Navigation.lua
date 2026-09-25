local _, ns = ...

local Navigation = {}
ns.Navigation = Navigation

local TWO_PI = math.pi * 2

local function Atan2(y, x)
    if math.atan2 then
        return math.atan2(y, x)
    end
    if x > 0 then
        return math.atan(y / x)
    elseif x < 0 and y >= 0 then
        return math.atan(y / x) + math.pi
    elseif x < 0 then
        return math.atan(y / x) - math.pi
    elseif y > 0 then
        return math.pi / 2
    elseif y < 0 then
        return -math.pi / 2
    end
    return 0
end

function Navigation.Distance(x1, y1, x2, y2)
    if not x1 or not y1 or not x2 or not y2 then
        return nil
    end
    local dx = x2 - x1
    local dy = y2 - y1
    return math.sqrt(dx * dx + dy * dy)
end

function Navigation.Bearing(x1, y1, x2, y2)
    if not x1 or not y1 or not x2 or not y2 then
        return nil
    end
    local angle = Atan2(y1 - y2, x2 - x1)
    if angle < 0 then
        angle = angle + TWO_PI
    end
    return angle
end

function Navigation:ProjectToMap(sourceMapID, x, y, destinationMapID, api)
    api = api or C_Map
    if not api or not api.GetMapRectOnMap or not sourceMapID or not destinationMapID then
        return nil
    end
    local ok, minX, maxX, minY, maxY = pcall(api.GetMapRectOnMap, sourceMapID, destinationMapID)
    if not ok or type(minX) ~= "number" or type(maxX) ~= "number"
        or type(minY) ~= "number" or type(maxY) ~= "number"
        or minX == maxX or minY == maxY then
        return nil
    end
    return minX + ((maxX - minX) * x), minY + ((maxY - minY) * y)
end

function Navigation:SameZone(first, second, api)
    if first == second then return true end
    if type(first) ~= "number" or type(second) ~= "number" then return false end
    api = api or C_Map
    if not api or type(api.GetMapInfo) ~= "function" then return false end
    local function ZoneName(mapID)
        local ok, info = pcall(api.GetMapInfo, mapID)
        if ok and type(info) == "table" and type(info.name) == "string" and info.name ~= "" then
            return info.name
        end
    end
    local left, right = ZoneName(first), ZoneName(second)
    return left ~= nil and left == right
end

function Navigation:OnMap(stateMap, legMap)
    if stateMap == legMap then return true end
    if self:SameZone(stateMap, legMap) then return true end
    if not ns.Travel or not ns.Travel.MapName then return false end
    local left = ns.Travel:MapName(stateMap)
    local right = ns.Travel:MapName(legMap)
    return type(left) == "string" and left ~= "the next zone" and left == right
end

function Navigation:TransportLeg(leg, state)
    if not ns.Travel or not leg or not state or not state.mapID or self:OnMap(state.mapID, leg.mapID) then return nil end
    return ns.Travel:Departure(state, leg.mapID, leg.label)
end

local function PlainCoord(value)
    if type(value) ~= "number" or value < 0 or value > 1 then
        return nil
    end
    if type(issecretvalue) == "function" then
        local ok, secret = pcall(issecretvalue, value)
        if ok and secret then
            return nil
        end
    end
    return value
end

local function QuestID(goal)
    local complete = goal and goal.complete
    if type(complete) ~= "table" then
        return nil
    end
    local quest = complete.quest
    if type(quest) == "table" and type(quest.id) == "number" then
        return quest.id
    end
    local objective = complete.questObjective
    if type(objective) == "table" and type(objective.id) == "number" then
        return objective.id
    end
end

function Navigation:ClientPin(goal, mapID, api)
    if not goal or goal.useClientPin ~= true then
        return nil
    end
    local questID = QuestID(goal)
    if not questID then
        return nil
    end
    local questLog = api
    if questLog == nil then
        questLog = C_QuestLog
    end
    if type(questLog) ~= "table" or type(questLog.GetQuestsOnMap) ~= "function" then
        return nil
    end
    local function OnMap(uiMapID)
        if type(uiMapID) ~= "number" then
            return nil
        end
        local ok, quests = pcall(questLog.GetQuestsOnMap, uiMapID)
        if not ok or type(quests) ~= "table" then
            return nil
        end
        for _, info in ipairs(quests) do
            if type(info) == "table" and info.questID == questID and not info.isMapIndicatorQuest then
                local x, y = PlainCoord(info.x), PlainCoord(info.y)
                if x and y then
                    return uiMapID, x, y
                end
            end
        end
    end
    local pinMap, x, y = OnMap(mapID)
    if x then
        return pinMap, x, y
    end
    if type(questLog.GetMapForQuestPOIs) == "function" then
        local ok, poiMap = pcall(questLog.GetMapForQuestPOIs)
        if ok then
            return OnMap(poiMap)
        end
    end
end

function Navigation:ApplyClientPin(goal, leg, api)
    if not leg then
        return nil
    end
    local pinMap, x, y = self:ClientPin(goal, leg.mapID, api)
    if not x or (pinMap == leg.mapID and x == leg.x and y == leg.y) then
        return leg
    end
    local copy = {}
    for key, value in pairs(leg) do
        copy[key] = value
    end
    copy.mapID = pinMap
    copy.x = x
    copy.y = y
    return copy
end

local function BreadcrumbPassed(route, index, state)
    local leg = route[index]
    if type(leg) ~= "table" or type(state) ~= "table" then
        return false
    end
    if type(leg.label) ~= "string" or string.find(leg.label, "Continue toward", 1, true) ~= 1 then
        return false
    end
    if not Navigation:OnMap(state.mapID, leg.mapID) or not state.x or not state.y then
        return false
    end
    local here = Navigation.Distance(state.x, state.y, leg.x, leg.y)
    if not here then
        return false
    end
    for later = index + 1, #route do
        local nextLeg = route[later]
        if nextLeg.mapID == leg.mapID then
            local there = Navigation.Distance(state.x, state.y, nextLeg.x, nextLeg.y)
            if there and there < here then
                return true
            end
        end
    end
    return false
end

function Navigation:GetActiveLeg(goal, state, api)
    if goal and goal.useClientPin == true and (type(goal.route) ~= "table" or #goal.route == 0) then
        local pinMap, x, y = self:ClientPin(goal, state and state.mapID, api)
        if x then
            return {
                mapID = pinMap,
                x = x,
                y = y,
                label = "Quest log pin",
                offMapText = "Travel to the pin in your quest log.",
            }, "Quest log pin"
        end
    end
    if not goal or not goal.route then
        return nil, "No waypoint for this step."
    end
    for index, leg in ipairs(goal.route) do
        local complete = false
        if leg.complete then
            complete = ns.EvaluateCondition(leg.complete, state) == true
        elseif index < #goal.route and self:OnMap(state.mapID, leg.mapID) then
            local distance = self.Distance(state.x, state.y, leg.x, leg.y)
            complete = distance and distance <= (leg.radius or 0.015) or false
        end
        if not complete and BreadcrumbPassed(goal.route, index, state) then
            complete = true
        end
        if not complete then
            if leg.flightTo then
                local hop = ns.Travel and ns.Travel:FlightPoint(state, leg.flightTo)
                if hop then return hop, hop.label end
            else
                if self:OnMap(state.mapID, leg.mapID) then
                    if not state.x or not state.y then
                        return self:ApplyClientPin(goal, leg, api), "Waiting for a reliable player position."
                    end
                    return self:ApplyClientPin(goal, leg, api), leg.label
                end
                local arrived = ns.Taxi and ns.Taxi.AtDestination and ns.Taxi:AtDestination(goal, state)
                if not arrived then
                    local learnedLeg = ns.Taxi and ns.Taxi.GetLearnedLeg and ns.Taxi:GetLearnedLeg(goal, state)
                    if learnedLeg then return learnedLeg, learnedLeg.label end
                end
                local transport = self:TransportLeg(leg, state)
                if transport and transport.transport then return transport, transport.label end
                if transport then return transport, transport.label end
                return self:ApplyClientPin(goal, leg, api), leg.offMapText or ("Travel to " .. (leg.label or "the marked area") .. ".")
            end
        end
    end
    return nil, "Destination reached."
end

function Navigation:GetDirection(goal, state, facing)
    local leg, status = self:GetActiveLeg(goal, state)
    if not leg then
        return nil, nil, status or "No waypoint for this step.", nil, "unavailable"
    end
    if not state.x or not state.y then
        return nil, nil, status or "Waiting for a reliable player position.", leg, "instruction"
    end
    local targetX, targetY = leg.x, leg.y
    if not self:OnMap(state.mapID, leg.mapID) then
        targetX, targetY = self:ProjectToMap(leg.mapID, leg.x, leg.y, state.mapID)
        if not targetX then
            return nil, nil, status or leg.offMapText or "Continue toward the next route transition.", leg,
                "instruction"
        end
    end
    local bearing = self.Bearing(state.x, state.y, targetX, targetY)
    if type(facing) ~= "number" then
        return nil, nil, status or "Waiting for player facing.", leg, "instruction"
    end
    local rotation = (facing - bearing) % TWO_PI
    return rotation, nil, status or leg.label or "Destination", leg, "bearing"
end
