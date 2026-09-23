local _, ns = ...

local Taxi = {}
ns.Taxi = Taxi

local RFC_TAXI_FALLBACKS = {
    [1413] = { x = 0.515, y = 0.303, name = "Devark, the Crossroads flight master" },
}

local function NormalizeName(value)
    if type(value) ~= "string" then return nil end
    return string.lower((value:gsub("^%s+", ""):gsub("%s+$", "")))
end

local function IsReachable(state)
    if state == "REACHABLE" or state == "DISTANT" then return true end
    local flightPathState = Enum and Enum.FlightPathState
    return flightPathState and state == flightPathState.Reachable
end

local function AddDestination(destinations, name, state)
    local normalized = NormalizeName(name)
    if normalized and IsReachable(state) then destinations[normalized] = name end
end

function Taxi:ReadDestinations(api, mapID)
    api = api or _G
    local destinations = {}
    local taxiMap = api.C_TaxiMap
    local reader = taxiMap and (taxiMap.GetAllTaxiNodes or taxiMap.GetTaxiNodesForMap)
    if type(reader) == "function" and mapID then
        local ok, nodes = pcall(reader, mapID)
        if ok and type(nodes) == "table" then
            for _, node in ipairs(nodes) do
                if type(node) == "table" then
                    local state = node.state
                    if node.slotIndex and type(api.TaxiNodeGetType) == "function" then
                        local typeOK, nodeType = pcall(api.TaxiNodeGetType, node.slotIndex)
                        if typeOK then state = nodeType end
                    end
                    AddDestination(destinations, node.name, state)
                end
            end
        end
    end
    if next(destinations) == nil and type(api.NumTaxiNodes) == "function"
        and type(api.TaxiNodeName) == "function" and type(api.TaxiNodeGetType) == "function" then
        local countOK, count = pcall(api.NumTaxiNodes)
        if countOK then
            for index = 1, tonumber(count) or 0 do
                local nameOK, name = pcall(api.TaxiNodeName, index)
                local typeOK, nodeType = pcall(api.TaxiNodeGetType, index)
                if nameOK and typeOK then AddDestination(destinations, name, nodeType) end
            end
        end
    end
    return destinations
end

function Taxi:Capture(api)
    if not ns.charDB then return false end
    local mapID, x, y = ns.PlayerState:CapturePosition(api)
    if not mapID or not x or not y then return false end
    local destinations = self:ReadDestinations(api, mapID)
    if next(destinations) == nil then return false end
    ns.charDB.taxiRoutes[mapID] = { x = x, y = y, destinations = destinations }
    return true
end

function Taxi:GetSuggestedLeg(goal, state)
    if not goal or type(goal.taxiDestination) ~= "string" or not state or not state.mapID
        or not ns.charDB or type(ns.charDB.taxiRoutes) ~= "table" then return nil end
    local route = ns.charDB.taxiRoutes[state.mapID]
    local wanted = NormalizeName(goal.taxiDestination)
    local matched
    if route and type(route.destinations) == "table" then
        for normalized, displayName in pairs(route.destinations) do
            if normalized == wanted or string.find(normalized, wanted, 1, true) then
                matched = displayName
                break
            end
        end
    end
    if not matched then
        local fallback = RFC_TAXI_FALLBACKS[state.mapID]
        if not fallback then return nil end
        return {
            mapID = state.mapID,
            x = fallback.x,
            y = fallback.y,
            radius = 0.02,
            label = "Speak to " .. fallback.name .. " and check flights to " .. goal.taxiDestination .. ".",
            fallbackTaxi = true,
        }
    end
    return {
        mapID = state.mapID,
        x = route.x,
        y = route.y,
        radius = 0.02,
        label = "Speak to the flight master and fly directly to " .. matched .. ".",
        learnedTaxi = true,
    }
end
