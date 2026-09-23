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

-- Public Classic transport pins. A leg on another continent is replaced by the
-- boat or zeppelin that actually reaches that continent.
local KALIMDOR = {
    [1411] = true, [1412] = true, [1413] = true, [1438] = true, [1439] = true,
    [1440] = true, [1441] = true, [1442] = true, [1443] = true, [1444] = true,
    [1445] = true, [1446] = true, [1447] = true, [1448] = true, [1449] = true,
    [1450] = true, [1451] = true, [1452] = true, [1454] = true, [1456] = true,
    [1457] = true,
}

local EASTERN_KINGDOMS = {
    [1416] = true, [1417] = true, [1418] = true, [1419] = true, [1420] = true,
    [1421] = true, [1422] = true, [1423] = true, [1424] = true, [1425] = true,
    [1426] = true, [1427] = true, [1428] = true, [1429] = true, [1430] = true,
    [1431] = true, [1432] = true, [1433] = true, [1434] = true, [1435] = true,
    [1436] = true, [1437] = true, [1453] = true, [1455] = true, [1458] = true,
}

local SOUTH_EASTERN = {
    [1419] = true, [1429] = true, [1430] = true, [1431] = true, [1433] = true,
    [1434] = true, [1435] = true, [1436] = true, [1453] = true,
}

local NORTH_KALIMDOR = {
    [1438] = true, [1439] = true, [1440] = true, [1448] = true, [1450] = true, [1457] = true,
}

local function Continent(mapID)
    if KALIMDOR[mapID] then return "Kalimdor" end
    if EASTERN_KINGDOMS[mapID] then return "Eastern Kingdoms" end
end

local function TransportPoint(mapID, x, y, label)
    return { mapID = mapID, x = x, y = y, radius = 0.02, label = label, transport = true }
end

local TRANSPORTS = {
    {
        faction = "Horde", fromContinent = "Kalimdor", toContinent = "Eastern Kingdoms",
        prefer = { [1420] = true, [1421] = true, [1458] = true },
        from = TransportPoint(1411, 0.506, 0.124, "Board the zeppelin to Tirisfal Glades."),
    },
    {
        faction = "Horde", fromContinent = "Eastern Kingdoms", toContinent = "Kalimdor",
        from = TransportPoint(1420, 0.607, 0.586, "Board the zeppelin to Orgrimmar."),
    },
    {
        fromContinent = "Kalimdor", toContinent = "Eastern Kingdoms",
        prefer = SOUTH_EASTERN,
        from = TransportPoint(1413, 0.638, 0.388, "Board the Ratchet boat to Booty Bay."),
    },
    {
        fromContinent = "Eastern Kingdoms", toContinent = "Kalimdor",
        from = TransportPoint(1434, 0.260, 0.732, "Board the Booty Bay boat to Ratchet."),
    },
    {
        faction = "Alliance", fromContinent = "Kalimdor", toContinent = "Eastern Kingdoms",
        from = TransportPoint(1439, 0.332, 0.401, "Board the Auberdine boat to Menethil Harbor."),
    },
    {
        faction = "Alliance", fromContinent = "Eastern Kingdoms", toContinent = "Kalimdor",
        prefer = NORTH_KALIMDOR,
        from = TransportPoint(1437, 0.046, 0.572, "Board the Menethil boat to Auberdine."),
    },
    {
        faction = "Alliance", fromContinent = "Eastern Kingdoms", toContinent = "Kalimdor",
        from = TransportPoint(1437, 0.050, 0.635, "Board the Menethil boat to Theramore."),
    },
    {
        faction = "Alliance", fromContinent = "Kalimdor", toContinent = "Eastern Kingdoms",
        prefer = SOUTH_EASTERN,
        from = TransportPoint(1445, 0.716, 0.564, "Board the Theramore boat to Menethil Harbor."),
    },
}

function Navigation:TransportLeg(leg, state)
    if not leg or not state or not state.mapID or state.mapID == leg.mapID then return nil end
    local origin = Continent(state.mapID)
    local destination = Continent(leg.mapID)
    if not origin or not destination or origin == destination then return nil end
    local best, bestScore
    for _, transport in ipairs(TRANSPORTS) do
        if transport.fromContinent == origin and transport.toContinent == destination
            and (not transport.faction or transport.faction == state.faction) then
            -- Standing at a dock outranks every other route. A faction boat
            -- outranks the neutral Ratchet line unless that neutral dock is
            -- the one the player is already standing on.
            local score = transport.from.mapID == state.mapID and 100 or 0
            if transport.faction then score = score + 15 end
            if transport.prefer then
                score = transport.prefer[leg.mapID] and (score + 25) or (score - 10)
            end
            if not best or score > bestScore then
                best, bestScore = transport, score
            end
        end
    end
    return best and best.from or nil
end

function Navigation:GetActiveLeg(goal, state)
    if not goal or not goal.route then
        return nil, "No waypoint for this step."
    end
    local taxiLeg = ns.Taxi and ns.Taxi:GetSuggestedLeg(goal, state)
    if taxiLeg then return taxiLeg, taxiLeg.label end
    for _, leg in ipairs(goal.route) do
        local complete = false
        if leg.complete then
            complete = ns.EvaluateCondition(leg.complete, state) == true
        elseif state.mapID == leg.mapID then
            local distance = self.Distance(state.x, state.y, leg.x, leg.y)
            complete = distance and distance <= (leg.radius or 0.015) or false
        end
        if not complete then
            local transport = self:TransportLeg(leg, state)
            if transport then return transport, transport.label end
            if state.mapID ~= leg.mapID then
                return leg, leg.offMapText or ("Travel to " .. (leg.label or "the marked area") .. ".")
            end
            if not state.x or not state.y then
                return leg, "Waiting for a reliable player position."
            end
            return leg, leg.label
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
    if state.mapID ~= leg.mapID then
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
