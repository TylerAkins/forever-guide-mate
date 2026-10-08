local _, ns = ...

local Taxi = {}
ns.Taxi = Taxi

local function NormalizeName(value)
    if type(value) ~= "string" then return nil end
    return string.lower((value:gsub("^%s+", ""):gsub("%s+$", "")))
end

local function IsReachable(state)
    -- Only a directly reachable node proves the character has learned that
    -- flight point. A DISTANT node is ambiguous: the client lists it for
    -- flight masters that cannot fly there, which includes paths the
    -- character has never discovered. Treating it as learned is what sent
    -- players to a flight master for a route they did not have.
    if state == "REACHABLE" then return true end
    local flightPathState = Enum and Enum.FlightPathState
    return flightPathState and state == flightPathState.Reachable
end

local function IsCurrent(state)
    if state == "CURRENT" or state == 0 then return true end
    local flightPathState = Enum and Enum.FlightPathState
    return flightPathState and state == flightPathState.Current
end

local function AddDestination(destinations, name, state)
    local normalized = NormalizeName(name)
    if normalized and IsReachable(state) then destinations[normalized] = name end
end

local function AddKnown(known, name, state)
    local normalized = NormalizeName(name)
    if normalized and (IsReachable(state) or IsCurrent(state)) then known[normalized] = name end
end

local function ReadNode(api, name, state, slotIndex, reachable, known)
    if slotIndex and type(api.TaxiNodeGetType) == "function" then
        local typeOK, nodeType = pcall(api.TaxiNodeGetType, slotIndex)
        if typeOK then state = nodeType end
    end
    AddDestination(reachable, name, state)
    AddKnown(known, name, state)
end

function Taxi:ReadDestinations(api, mapID)
    api = api or _G
    local reachable, known = {}, {}
    local taxiMap = api.C_TaxiMap
    local reader = taxiMap and (taxiMap.GetAllTaxiNodes or taxiMap.GetTaxiNodesForMap)
    if type(reader) == "function" and mapID then
        local ok, nodes = pcall(reader, mapID)
        if ok and type(nodes) == "table" then
            for _, node in ipairs(nodes) do
                if type(node) == "table" then
                    ReadNode(api, node.name, node.state, node.slotIndex, reachable, known)
                end
            end
        end
    end
    if next(known) == nil and type(api.NumTaxiNodes) == "function"
        and type(api.TaxiNodeName) == "function" and type(api.TaxiNodeGetType) == "function" then
        local countOK, count = pcall(api.NumTaxiNodes)
        if countOK then
            for index = 1, tonumber(count) or 0 do
                local nameOK, name = pcall(api.TaxiNodeName, index)
                local typeOK, nodeType = pcall(api.TaxiNodeGetType, index)
                if nameOK and typeOK then ReadNode(api, name, nodeType, nil, reachable, known) end
            end
        end
    end
    return reachable, known
end

function Taxi:Remember(known, continent)
    if not ns.charDB or type(known) ~= "table" then return end
    if type(ns.charDB.taxiNodes) ~= "table" then ns.charDB.taxiNodes = {} end
    -- One known set per land mass (Kalimdor, Eastern Kingdoms, ...). Opening
    -- any flight master refreshes only that land mass, so a Kalimdor visit
    -- never clobbers what is known on the Eastern Kingdoms. Entries merge:
    -- flight points are never unlearned, and a single opening may list only
    -- part of the land mass.
    if type(ns.charDB.taxiNodesByContinent) ~= "table" then ns.charDB.taxiNodesByContinent = {} end
    local key = type(continent) == "string" and continent ~= "" and continent or "Unknown"
    if type(ns.charDB.taxiNodesByContinent[key]) ~= "table" then ns.charDB.taxiNodesByContinent[key] = {} end
    local scoped = ns.charDB.taxiNodesByContinent[key]
    for normalized, displayName in pairs(known) do
        if type(normalized) == "string" and type(displayName) == "string" then
            ns.charDB.taxiNodes[normalized] = displayName
            scoped[normalized] = displayName
        end
    end
end

function Taxi:ContinentFor(mapID)
    if ns.Travel and type(ns.Travel.Continent) == "function" and type(mapID) == "number" then
        local ok, continent = pcall(ns.Travel.Continent, ns.Travel, mapID)
        if ok and type(continent) == "string" and continent ~= "" then return continent end
    end
    return nil
end

-- Zone suffixes shared by many places. Matching on one of these alone made
-- "Stonetalon Mountains" match any known "... Mountains" flight point.
local GENERIC_WORDS = {
    mountains = true, forest = true, highlands = true, plaguelands = true,
    foothills = true, glades = true, marsh = true, crater = true, village = true,
    retreat = true, harbor = true, island = true, valley = true,
}

local function NamesMatch(wanted, node)
    if not wanted or not node or wanted == "" or node == "" then return false end
    if node == wanted or string.find(node, wanted, 1, true) or string.find(wanted, node, 1, true) then
        return true
    end
    for word in string.gmatch(wanted, "%a+") do
        if string.len(word) >= 6 and not GENERIC_WORDS[word]
            and string.find(node, word, 1, true) then
            return true
        end
    end
    return false
end

local function FindDestination(destinations, wanted)
    if type(destinations) ~= "table" then return nil end
    for normalized, displayName in pairs(destinations) do
        if NamesMatch(wanted, normalized) then return displayName end
    end
end

local function RememberBoarding(mapID, x, y, destinations, state)
    if not ns.charDB or not ns.Travel or not ns.Travel.CampFlightMaster then return end
    if type(ns.charDB.taxiBoarding) ~= "table" then ns.charDB.taxiBoarding = {} end
    local master = ns.Travel:CampFlightMaster(mapID, x, y, state or {})
    if not master or type(master.node) ~= "string" then return end
    local key = NormalizeName(master.node)
    if not key or key == "" then return end
    ns.charDB.taxiBoarding[key] = {
        mapID = master.mapID,
        x = master.x,
        y = master.y,
        node = master.node,
        destinations = destinations,
    }
end

function Taxi:BoardingForNode(nodeName)
    if type(nodeName) ~= "string" or not ns.charDB then return nil end
    local board = ns.charDB.taxiBoarding
    local key = NormalizeName(nodeName)
    return type(board) == "table" and key and board[key] or nil
end

function Taxi:ReachableFromMaster(master, destinationName)
    if not master or type(destinationName) ~= "string" then return nil end
    local wanted = NormalizeName(destinationName)
    if not wanted or wanted == "" then return nil end
    local board = type(master.node) == "string" and self:BoardingForNode(master.node) or nil
    if board and type(board.destinations) == "table" then
        return FindDestination(board.destinations, wanted)
    end
    local routes = ns.charDB and ns.charDB.taxiRoutes
    local route = type(routes) == "table" and routes[master.mapID]
    if type(route) == "table" and type(route.destinations) == "table"
        and type(route.x) == "number" and type(master.x) == "number" and ns.Navigation then
        local dist = ns.Navigation.Distance(route.x, route.y, master.x, master.y)
        if dist and dist <= 0.03 then
            return FindDestination(route.destinations, wanted)
        end
    end
    return nil
end

local function SameContinentMaps(first, second)
    if not ns.Travel or type(first) ~= "number" or type(second) ~= "number" then
        return false
    end
    local a = ns.Travel:Continent(first)
    local b = ns.Travel:Continent(second)
    return type(a) == "string" and a == b
end

local function BoardingSavesWalk(state, master, destinationLeg)
    if not state or not master or not ns.Navigation then return true end
    if type(destinationLeg) ~= "table" or not destinationLeg.x or not destinationLeg.y then
        return true
    end
    if not state.x or not state.y then return true end
    local direct = ns.Navigation:DistanceToLeg(state, destinationLeg)
    local toMaster = ns.Navigation.Distance(state.x, state.y, master.x, master.y)
    if not direct or not toMaster then return true end
    if direct <= toMaster then return false end
    if state.mapID == destinationLeg.mapID and master.mapID == destinationLeg.mapID then
        local tail = ns.Navigation.Distance(master.x, master.y, destinationLeg.x, destinationLeg.y)
        if tail then
            return toMaster + tail * 0.35 < direct
        end
    end
    return true
end

function Taxi:ChooseFlightMaster(state, destinationName, destinationLeg)
    if not state or not state.mapID or type(destinationName) ~= "string" or not ns.Travel then
        return nil
    end
    local nearest = ns.Travel:FlightMaster(state)
    local best, bestWalk

    local function consider(master)
        if not master or not ns.Travel:Allows(master.faction, state) then return end
        if not SameContinentMaps(state.mapID, master.mapID) then return end
        if not self:ReachableFromMaster(master, destinationName) then return end
        if not BoardingSavesWalk(state, master, destinationLeg) then return end
        if not state.x or not state.y then
            best = master
            return
        end
        local walk = ns.Navigation and ns.Navigation.Distance(state.x, state.y, master.x, master.y)
        if not walk then return end
        if not bestWalk or walk < bestWalk then
            best, bestWalk = master, walk
        end
    end

    if nearest and self:ReachableFromMaster(nearest, destinationName)
        and BoardingSavesWalk(state, nearest, destinationLeg) then
        return nearest
    end

    consider(nearest)
    for _, master in ipairs(ns.Travel.flightMasters) do
        if master ~= nearest then consider(master) end
    end

    if best then return best end

    if nearest and self:LearnedDestination(state, destinationName) then
        return nearest
    end
    return nil
end

function Taxi:FlightLeg(state, destinationName, followUp, destinationLeg)
    if type(destinationName) ~= "string" or destinationName == "" then return nil end
    if not self:LearnedDestination(state, destinationName) then return nil end
    local master = self:ChooseFlightMaster(state, destinationName, destinationLeg)
    if not master then return nil end
    local label = "Take the flight path to " .. destinationName .. "."
    if followUp then
        label = "Take the flight path to " .. destinationName .. ", then " .. followUp .. "."
    end
    return {
        mapID = master.mapID,
        x = master.x,
        y = master.y,
        radius = 0.02,
        flight = true,
        learnedTaxi = true,
        label = label,
    }
end

function Taxi:Capture(api)
    if not ns.charDB then return false end
    api = api or _G
    local mapID, x, y = ns.PlayerState:CapturePosition(api)
    local reachable, known = self:ReadDestinations(api, mapID)
    if next(known) == nil then return false end
    self:Remember(known, self:ContinentFor(mapID))
    local faction = type(api.UnitFactionGroup) == "function" and api.UnitFactionGroup("player")
    local state = { faction = faction == "Alliance" and "Alliance" or faction == "Horde" and "Horde" or nil }
    if mapID and x and y and next(reachable) ~= nil then
        if type(ns.charDB.taxiRoutes) ~= "table" then ns.charDB.taxiRoutes = {} end
        ns.charDB.taxiRoutes[mapID] = { x = x, y = y, destinations = reachable }
        RememberBoarding(mapID, x, y, reachable, state)
    end
    return true
end

function Taxi:ResolveDestinationName(goal, destinationLeg, state)
    if type(goal) ~= "table" then return nil end
    if type(goal.taxiDestination) == "string" then return goal.taxiDestination end
    if ns.Travel and type(ns.Travel.FlightNodeForLeg) == "function" then
        return ns.Travel:FlightNodeForLeg(destinationLeg, state)
    end
end

function Taxi:AtDestination(goal, state)
    if not goal or not state or not state.mapID or not ns.Travel then
        return false
    end
    local finalLeg = type(goal.route) == "table" and goal.route[#goal.route] or nil
    local destinationName = self:ResolveDestinationName(goal, finalLeg, state)
    if type(destinationName) ~= "string" then return false end
    local wanted = NormalizeName(destinationName)
    if not wanted or wanted == "" then return false end
    local function Matches(mapID)
        if not mapID then return false end
        local name = NormalizeName(ns.Travel:MapName(mapID))
        if not name or name == "the next zone" then return false end
        return name == wanted or string.find(name, wanted, 1, true) or string.find(wanted, name, 1, true)
    end
    if Matches(state.mapID) then return true end
    return ns.Travel.PairedMap and Matches(ns.Travel:PairedMap(state.mapID)) or false
end

function Taxi:LearnedDestination(state, destinationName)
    if not state or not state.mapID or type(destinationName) ~= "string" or not ns.charDB then return nil end
    local wanted = NormalizeName(destinationName)
    if not wanted or wanted == "" then return nil end
    local routes = ns.charDB.taxiRoutes
    local route = type(routes) == "table" and routes[state.mapID] or nil
    local found = route and FindDestination(route.destinations, wanted)
    if found then return found end
    local continent = self:ContinentFor(state.mapID)
    local byContinent = ns.charDB.taxiNodesByContinent
    if continent and type(byContinent) == "table" and type(byContinent[continent]) == "table" then
        -- Flights never cross land masses, so another continent's nodes are
        -- not evidence for this one.
        return FindDestination(byContinent[continent], wanted)
    end
    if continent then return nil end
    return FindDestination(ns.charDB.taxiNodes, wanted)
end

local function SameTravelMap(stateMap, legMap)
    if type(stateMap) ~= "number" or type(legMap) ~= "number" then
        return false
    end
    if stateMap == legMap then
        return true
    end
    return ns.Travel and ns.Travel.Paired and ns.Travel:Paired(stateMap, legMap) or false
end

function Taxi:GetLearnedLeg(goal, state)
    if self:AtDestination(goal, state) then return nil end
    if not goal or not state or not state.mapID then return nil end
    local finalLeg = type(goal.route) == "table" and goal.route[#goal.route] or nil
    if type(goal.taxiDestination) ~= "string" then
        if goal.kind ~= "accept" and goal.kind ~= "turnin" and goal.kind ~= "travel" then
            return nil
        end
        if finalLeg and SameTravelMap(state.mapID, finalLeg.mapID) then
            return nil
        end
    end
    local destinationName = self:ResolveDestinationName(goal, finalLeg, state)
    if type(destinationName) ~= "string" then return nil end
    if finalLeg and ns.Navigation and ns.Navigation.NearPin and ns.Navigation:NearPin(state, finalLeg) then
        return nil
    end
    return self:FlightLeg(state, destinationName, nil, finalLeg)
end

function Taxi:GetSuggestedLeg(goal, state, destinationLeg)
    local learned = self:GetLearnedLeg(goal, state)
    if learned then
        return learned
    end
    if not goal or not state or not state.mapID then
        return nil
    end
    local finalLeg = type(goal.route) == "table" and goal.route[#goal.route] or destinationLeg
    if type(goal.taxiDestination) ~= "string" then
        if goal.kind ~= "accept" and goal.kind ~= "turnin" and goal.kind ~= "travel" then
            return nil
        end
    end
    local destinationName = self:ResolveDestinationName(goal, finalLeg, state)
    if type(destinationName) ~= "string" then
        return nil
    end
    if self:AtDestination(goal, state) then
        return nil
    end
    if type(destinationLeg) ~= "table" or type(destinationLeg.mapID) ~= "number" then
        return nil
    end
    if ns.Navigation and ns.Navigation.AtRoutePin and ns.Navigation:AtRoutePin(state, destinationLeg) then
        return nil
    end
    if type(goal.route) ~= "table" or #goal.route ~= 1 then
        return nil
    end
    -- Unknown cross-map flights keep the authored walking route.
    if not SameTravelMap(state.mapID, destinationLeg.mapID) then
        return nil
    end
    if state.x and state.y and destinationLeg.x and destinationLeg.y then
        local distance = ns.Navigation.Distance(state.x, state.y, destinationLeg.x, destinationLeg.y)
        if not distance or distance < 0.06 then
            return nil
        end
    end
    local leg = self:FlightLeg(state, destinationName, nil, finalLeg)
    if leg then
        leg.fallbackTaxi = true
        leg.learnedTaxi = nil
        return leg
    end
    local master = ns.Travel and ns.Travel.FlightMaster and ns.Travel:FlightMaster(state)
    if not master then
        return nil
    end
    return {
        mapID = master.mapID,
        x = master.x,
        y = master.y,
        radius = 0.02,
        label = "Take the flight path to " .. destinationName .. ".",
        flight = true,
        fallbackTaxi = true,
    }
end
