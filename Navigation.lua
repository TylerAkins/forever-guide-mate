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

-- A micro map or dungeon interior is not the zone map the entrance pin uses.
-- UiMap 11 is the Wailing Caverns cave (Ebru and Nalpak). UiMap 279 is the instance.
-- Both sit on the Barrens entrance. Without this, that cave routes a boat to Ratchet.
local MICRO_ENTRANCE = {
    [11] = { mapID = 1413, x = 0.460, y = 0.364, radius = 0.05 },
    [279] = { mapID = 1413, x = 0.460, y = 0.364, radius = 0.05 },
}

function Navigation:OnMap(stateMap, legMap)
    if stateMap == legMap then return true end
    if self:SameZone(stateMap, legMap) then return true end
    if not ns.Travel or not ns.Travel.MapName then return false end
    local left = ns.Travel:MapName(stateMap)
    local right = ns.Travel:MapName(legMap)
    return type(left) == "string" and left ~= "the next zone" and left == right
end

function Navigation:InsidePin(state, leg)
    local entrance = type(state) == "table" and MICRO_ENTRANCE[state.mapID]
    if not entrance or type(leg) ~= "table" or leg.mapID ~= entrance.mapID then return false end
    if type(leg.x) ~= "number" or type(leg.y) ~= "number" then return false end
    local dx = leg.x - entrance.x
    local dy = leg.y - entrance.y
    return (dx * dx) + (dy * dy) <= (entrance.radius * entrance.radius)
end

local function PickupStep(goal)
    return type(goal) == "table"
        and (goal.kind == "accept" or goal.kind == "turnin" or goal.kind == "gossip")
end

local function WithinRadius(leg, x, y, radius)
    if type(leg) ~= "table" or type(leg.x) ~= "number" or type(leg.y) ~= "number"
        or type(x) ~= "number" or type(y) ~= "number" then
        return false
    end
    local limit = radius or leg.radius or 0.05
    local dx, dy = leg.x - x, leg.y - y
    return (dx * dx) + (dy * dy) <= (limit * limit)
end

-- Player is within walking distance of the authored coordinates.
function Navigation:AtRoutePin(state, leg, api)
    if type(state) ~= "table" or type(leg) ~= "table" or not state.mapID then return false end
    if self:InsidePin(state, leg) then return true end
    if not state.x or not state.y then
        return self:InZone(state.mapID, leg.mapID, api) and state.mapID ~= leg.mapID
    end
    if self:OnMap(state.mapID, leg.mapID) or self:InZone(state.mapID, leg.mapID, api) then
        local pinX, pinY = state.x, state.y
        if state.mapID ~= leg.mapID then
            pinX, pinY = self:ProjectToMap(state.mapID, state.x, state.y, leg.mapID, api)
        end
        if WithinRadius(leg, pinX, pinY) then return true end
    end
    local projectedX, projectedY = self:ProjectToMap(leg.mapID, leg.x, leg.y, state.mapID, api)
    if projectedX and projectedY then
        local dx, dy = projectedX - state.x, projectedY - state.y
        if (dx * dx) + (dy * dy) <= 0.05 * 0.05 then return true end
    end
    return false
end

-- Player is at the authored pin: same map, child map, known micro entrance, or
-- the client can project the player position onto the pin map near the NPC.
function Navigation:NearPin(state, leg, api)
    if type(state) ~= "table" or type(leg) ~= "table" or not state.mapID then return false end
    if self:OnMap(state.mapID, leg.mapID) or self:InsidePin(state, leg)
        or self:InZone(state.mapID, leg.mapID, api) then
        return true
    end
    return self:AtRoutePin(state, leg, api)
end

function Navigation:PendingTaxiTravel(goal, state, leg)
    if type(goal) ~= "table" or type(goal.taxiDestination) ~= "string" or type(state) ~= "table" then
        return false
    end
    if ns.Taxi and ns.Taxi.AtDestination and ns.Taxi:AtDestination(goal, state) then
        return false
    end
    local finalLeg = goal.route and goal.route[#goal.route]
    if finalLeg and self:AtRoutePin(state, finalLeg) then
        return false
    end
    if leg and (leg.flight or leg.learnedTaxi or leg.fallbackTaxi) then
        return true
    end
    if not finalLeg or not state.x or not finalLeg.x or not finalLeg.y then
        return true
    end
    if finalLeg.mapID ~= state.mapID and not (ns.Travel and ns.Travel.Paired and ns.Travel:Paired(state.mapID, finalLeg.mapID)) then
        return false
    end
    local distance = self.Distance(state.x, state.y, finalLeg.x, finalLeg.y)
    return distance and distance > 0.06
end

function Navigation:TaxiInstruction(goal, state, leg, status)
    if not self:PendingTaxiTravel(goal, state, leg) then
        return nil
    end
    if type(status) == "string" and status ~= "" then
        return status
    end
    if leg and type(leg.label) == "string" and leg.label ~= "" then
        return leg.label
    end
    return "Take the flight path to " .. goal.taxiDestination .. "."
end

function Navigation:TransportLeg(leg, state)
    if not ns.Travel or not leg or not state or not state.mapID or self:OnMap(state.mapID, leg.mapID) then return nil end
    if self:InZone(state.mapID, leg.mapID) or self:InsidePin(state, leg) then return nil end
    return ns.Travel:Departure(state, leg.mapID, leg.label)
end

local function MapAncestors(mapID, api)
    local ancestors = {}
    local seen = {}
    while type(mapID) == "number" and not seen[mapID] do
        ancestors[#ancestors + 1] = mapID
        seen[mapID] = true
        if not api or type(api.GetMapInfo) ~= "function" then break end
        local ok, info = pcall(api.GetMapInfo, mapID)
        mapID = ok and type(info) == "table" and info.parentMapID or nil
    end
    return ancestors
end

local function ZoneKey(name)
    if type(name) ~= "string" then return nil end
    name = string.lower(name)
    name = string.gsub(name, "^the ", "")
    name = string.gsub(name, "^northern ", "")
    name = string.gsub(name, "^southern ", "")
    if name == "" then return nil end
    return name
end

local function ClientZoneName(mapID, api)
    if not api or type(api.GetMapInfo) ~= "function" or type(mapID) ~= "number" then return nil end
    local ok, info = pcall(api.GetMapInfo, mapID)
    if ok and type(info) == "table" and type(info.name) == "string" and info.name ~= "" then
        return info.name
    end
end

-- True when the player map is the pin's zone or a cave, dungeon, or building
-- inside it. Classic reports the Wailing Caverns mouth as its own map, and
-- that id is not stable across clients. The parent chain is what Zygor-style
-- map libraries use, so a new cave id still counts as the Barrens.
function Navigation:InZone(stateMap, legMap, api)
    if type(stateMap) ~= "number" or type(legMap) ~= "number" then return false end
    if stateMap == legMap then return true end
    api = api or C_Map
    local legName = ClientZoneName(legMap, api)
    if not legName and ns.Travel and ns.Travel.MapName then
        local known = ns.Travel:MapName(legMap)
        if known ~= "the next zone" then legName = known end
    end
    local legKey = ZoneKey(legName)
    for _, ancestor in ipairs(MapAncestors(stateMap, api)) do
        if ancestor ~= stateMap and ancestor == legMap then return true end
        local ancestorKey = ZoneKey(ClientZoneName(ancestor, api))
        if ancestor ~= stateMap and legKey and ancestorKey == legKey then return true end
    end
    return false
end

local function CommonMap(first, second, api)
    local firstAncestors = {}
    for _, mapID in ipairs(MapAncestors(first, api)) do
        firstAncestors[mapID] = true
    end
    for _, mapID in ipairs(MapAncestors(second, api)) do
        if firstAncestors[mapID] then return mapID end
    end
end

local function PointOnMap(mapID, x, y, destinationMapID, api)
    if mapID == destinationMapID then return x, y end
    return Navigation:ProjectToMap(mapID, x, y, destinationMapID, api)
end

function Navigation:DistanceToLeg(state, leg, api)
    if not state or not leg or not state.mapID or not leg.mapID then return nil end
    if not state.x or not state.y or not leg.x or not leg.y then return nil end
    if self:OnMap(state.mapID, leg.mapID) then
        return self.Distance(state.x, state.y, leg.x, leg.y)
    end
    api = api or C_Map
    local commonMap = CommonMap(state.mapID, leg.mapID, api)
    if not commonMap then return nil end
    local stateX, stateY = PointOnMap(state.mapID, state.x, state.y, commonMap, api)
    local legX, legY = PointOnMap(leg.mapID, leg.x, leg.y, commonMap, api)
    return self.Distance(stateX, stateY, legX, legY)
end

function Navigation:PreferDirectWalk(destination, flight, state, api)
    if not flight or not flight.flight then return false end
    if not state or not destination or not state.mapID or not destination.mapID or not flight.mapID then return false end
    if not state.x or not state.y or not destination.x or not destination.y or not flight.x or not flight.y then
        return false
    end
    api = api or C_Map
    local commonMap = CommonMap(state.mapID, destination.mapID, api)
    if not commonMap then return false end
    local stateX, stateY = PointOnMap(state.mapID, state.x, state.y, commonMap, api)
    local destinationX, destinationY = PointOnMap(destination.mapID, destination.x, destination.y, commonMap, api)
    local flightX, flightY = PointOnMap(flight.mapID, flight.x, flight.y, commonMap, api)
    local directDistance = self.Distance(stateX, stateY, destinationX, destinationY)
    local boardingDistance = self.Distance(stateX, stateY, flightX, flightY)
    return directDistance ~= nil and boardingDistance ~= nil and directDistance < boardingDistance
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

function Navigation:QuestDestinationID(goal)
    if type(goal) ~= "table" or goal.useClientPin == false then
        return nil
    end
    local questID = QuestID(goal)
    if not questID then return nil end
    if goal.kind == "objective" or goal.kind == "turnin" then return questID end
    if goal.kind == "travel" then
        local complete = goal.complete
        local quest = complete.quest
        if complete.questObjective or (quest and (quest.state == "complete" or quest.state == "completed")) then
            return questID
        end
    end
end

local pinCache = {}
local pinCacheCount = 0
local pinTokens = {}
local nextPinToken = 0

local function PinToken(questLog)
    if type(questLog) ~= "table" then
        return 0
    end
    local token = pinTokens[questLog]
    if not token then
        nextPinToken = nextPinToken + 1
        token = nextPinToken
        pinTokens[questLog] = token
    end
    return token
end

local function ObjectiveKey(state, questID)
    local entry = state and state.quests and state.quests[questID]
    if type(entry) ~= "table" then
        return tostring(questID)
    end
    local parts = { tostring(questID), entry.complete and "1" or "0" }
    if type(entry.objectives) == "table" then
        for index, objective in ipairs(entry.objectives) do
            if type(objective) == "table" then
                parts[#parts + 1] = tostring(index)
                parts[#parts + 1] = (objective.finished == true or (type(objective.finished) == "number" and objective.finished > 0)) and "1" or "0"
            end
        end
    end
    return table.concat(parts, ":")
end

function Navigation:InvalidateClientPins()
    pinCache = {}
    pinCacheCount = 0
end

function Navigation:ClientPin(goal, mapID, api, state)
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
    local cacheKey = PinToken(questLog) .. ":" .. tostring(mapID) .. ":" .. ObjectiveKey(state, questID)
    local cached = pinCache[cacheKey]
    if cached ~= nil then
        if cached == false then
            return nil
        end
        return cached.mapID, cached.x, cached.y
    end
    if self.deferClientPins then
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
    if not x and type(questLog.GetMapForQuestPOIs) == "function" then
        local poiOK, poiMap = pcall(questLog.GetMapForQuestPOIs)
        if poiOK then
            pinMap, x, y = OnMap(poiMap)
        end
    end
    if x then
        if pinCacheCount > 32 then
            pinCache = {}
            pinCacheCount = 0
        end
        pinCache[cacheKey] = { mapID = pinMap, x = x, y = y }
        pinCacheCount = pinCacheCount + 1
        return pinMap, x, y
    end
    if pinCacheCount > 32 then
        pinCache = {}
        pinCacheCount = 0
    end
    pinCache[cacheKey] = false
    pinCacheCount = pinCacheCount + 1
end

function Navigation:ApplyClientPin(goal, leg, api, state)
    if not leg then
        return nil
    end
    local pinMap, x, y = self:ClientPin(goal, leg.mapID, api, state)
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
        local pinMap, x, y = self:ClientPin(goal, state and state.mapID, api, state)
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
            if leg.flightTo and (self:OnMap(state.mapID, leg.mapID) or self:AtRoutePin(state, leg, api)) then
                local hop = ns.Travel and ns.Travel:FlightPoint(state, leg.flightTo)
                if hop then return hop, hop.label end
            end
            if leg.flightTo and #goal.route > 1 then
                -- Fly-only hops on multi-leg routes defer to later legs when boarding is unavailable.
            else
                local sameZone = ns.Travel and ns.Travel.SameZoneFlight and ns.Travel:SameZoneFlight(state, leg)
                if sameZone and not self:PreferDirectWalk(leg, sameZone, state) then
                    return sameZone, sameZone.label
                end
                -- Single-leg camp accepts use only the authored pin. The global
                -- boat graph sent Ebru to Ratchet. Keep taxi when the step names
                -- a flight destination.
                local campPickup = PickupStep(goal) and #goal.route == 1
                    and type(goal.taxiDestination) ~= "string"
                if not campPickup then
                    local arrived = ns.Taxi and ns.Taxi.AtDestination and ns.Taxi:AtDestination(goal, state)
                    if not arrived then
                        local taxiLeg = ns.Taxi and ns.Taxi.GetSuggestedLeg and ns.Taxi:GetSuggestedLeg(goal, state, leg)
                        if taxiLeg and not self:PreferDirectWalk(leg, taxiLeg, state) then
                            return taxiLeg, taxiLeg.label
                        end
                    end
                    local transport = self:TransportLeg(leg, state)
                    if transport and not self:PreferDirectWalk(leg, transport, state) then
                        return transport, transport.label
                    end
                end
                if self:NearPin(state, leg, api) then
                    if not state.x or not state.y then
                        return self:ApplyClientPin(goal, leg, api, state), "Waiting for a reliable player position."
                    end
                    return self:ApplyClientPin(goal, leg, api, state), leg.label
                end
                return self:ApplyClientPin(goal, leg, api, state), leg.offMapText or ("Travel to " .. (leg.label or "the marked area") .. ".")
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
