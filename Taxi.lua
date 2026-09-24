local _, ns = ...

local Taxi = {}
ns.Taxi = Taxi

local function NormalizeName(value)
    if type(value) ~= "string" then return nil end
    return string.lower((value:gsub("^%s+", ""):gsub("%s+$", "")))
end

local function IsReachable(state)
    if state == "REACHABLE" or state == "DISTANT" then return true end
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

function Taxi:Remember(known)
    if not ns.charDB or type(known) ~= "table" then return end
    if type(ns.charDB.taxiNodes) ~= "table" then ns.charDB.taxiNodes = {} end
    for normalized, displayName in pairs(known) do
        if type(normalized) == "string" and type(displayName) == "string" then
            ns.charDB.taxiNodes[normalized] = displayName
        end
    end
end

function Taxi:Capture(api)
    if not ns.charDB then return false end
    local mapID, x, y = ns.PlayerState:CapturePosition(api)
    local reachable, known = self:ReadDestinations(api, mapID)
    if next(known) == nil then return false end
    self:Remember(known)
    if mapID and x and y and next(reachable) ~= nil then
        if type(ns.charDB.taxiRoutes) ~= "table" then ns.charDB.taxiRoutes = {} end
        ns.charDB.taxiRoutes[mapID] = { x = x, y = y, destinations = reachable }
    end
    return true
end

function Taxi:AtDestination(goal, state)
    if not goal or type(goal.taxiDestination) ~= "string" or not state or not state.mapID or not ns.Travel then
        return false
    end
    local wanted = NormalizeName(goal.taxiDestination)
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

local function NamesMatch(wanted, node)
    if not wanted or not node or wanted == "" or node == "" then return false end
    if node == wanted or string.find(node, wanted, 1, true) or string.find(wanted, node, 1, true) then
        return true
    end
    for word in string.gmatch(wanted, "%a+") do
        if string.len(word) >= 6 and string.find(node, string.lower(word), 1, true) then
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

function Taxi:LearnedDestination(state, destinationName)
    if not state or not state.mapID or type(destinationName) ~= "string" or not ns.charDB then return nil end
    local wanted = NormalizeName(destinationName)
    if not wanted or wanted == "" then return nil end
    local routes = ns.charDB.taxiRoutes
    local route = type(routes) == "table" and routes[state.mapID] or nil
    local found = route and FindDestination(route.destinations, wanted)
    if found then return found end
    return FindDestination(ns.charDB.taxiNodes, wanted)
end

function Taxi:GetLearnedLeg(goal, state)
    if self:AtDestination(goal, state) then return nil end
    if not goal or type(goal.taxiDestination) ~= "string" or not state or not state.mapID then return nil end
    if not self:LearnedDestination(state, goal.taxiDestination) then return nil end
    local routes = ns.charDB.taxiRoutes
    local route = type(routes) == "table" and routes[state.mapID] or nil
    local mapID, x, y = state.mapID, route and route.x, route and route.y
    if not x or not y then
        local master = ns.Travel and ns.Travel.FlightMaster and ns.Travel:FlightMaster(state)
        if not master then return nil end
        mapID, x, y = master.mapID, master.x, master.y
    end
    return {
        mapID = mapID,
        x = x,
        y = y,
        radius = 0.02,
        label = "Take the flight path to " .. goal.taxiDestination .. ".",
        learnedTaxi = true,
        flight = true,
    }
end

function Taxi:GetSuggestedLeg(goal, state)
    return self:GetLearnedLeg(goal, state)
end
