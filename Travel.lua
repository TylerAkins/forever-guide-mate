local _, ns = ...

local Travel = {}
ns.Travel = Travel

-- City maps and the outdoor zone that contains their gate.
local PAIRED = {
    [1454] = 1411, [1411] = 1454,
    [1456] = 1412, [1412] = 1456,
    [1458] = 1420, [1420] = 1458,
    [1453] = 1429, [1429] = 1453,
    [1455] = 1426, [1426] = 1455,
    [1457] = 1438, [1438] = 1457,
}

local KALIMDOR = {
    [1411] = true, [1412] = true, [1413] = true, [1438] = true, [1439] = true,
    [1440] = true, [1441] = true, [1442] = true, [1443] = true, [1444] = true,
    [1445] = true, [1446] = true, [1447] = true, [1448] = true, [1449] = true,
    [1450] = true, [1451] = true, [1452] = true, [1454] = true, [1456] = true,
    [1457] = true, [2652] = true,
}

local EASTERN_KINGDOMS = {
    [1416] = true, [1417] = true, [1418] = true, [1419] = true, [1420] = true,
    [1421] = true, [1422] = true, [1423] = true, [1424] = true, [1425] = true,
    [1426] = true, [1427] = true, [1428] = true, [1429] = true, [1430] = true,
    [1431] = true, [1432] = true, [1433] = true, [1434] = true, [1435] = true,
    [1436] = true, [1437] = true, [1453] = true, [1455] = true, [1458] = true,
    [2548] = true,
}

local ZEPHRAS = { [2521] = true }

local MAP_NAMES = {
    [1411] = "Durotar", [1412] = "Mulgore", [1413] = "the Barrens", [1416] = "Alterac Mountains",
    [1417] = "Arathi Highlands", [1418] = "the Badlands", [1419] = "the Blasted Lands",
    [1420] = "Tirisfal Glades", [1421] = "Silverpine Forest", [1422] = "Western Plaguelands",
    [1423] = "Eastern Plaguelands", [1424] = "Hillsbrad Foothills", [1425] = "the Hinterlands",
    [1426] = "Dun Morogh", [1427] = "Searing Gorge", [1428] = "Burning Steppes",
    [1429] = "Elwynn Forest", [1430] = "Deadwind Pass", [1431] = "Duskwood",
    [1432] = "Loch Modan", [1433] = "Redridge Mountains", [1434] = "Stranglethorn Vale",
    [1435] = "Swamp of Sorrows", [1436] = "Westfall", [1437] = "the Wetlands",
    [1438] = "Teldrassil", [1439] = "Darkshore", [1440] = "Ashenvale",
    [1441] = "Thousand Needles", [1442] = "Stonetalon Mountains", [1443] = "Desolace",
    [1444] = "Feralas", [1445] = "Dustwallow Marsh", [1446] = "Tanaris",
    [1447] = "Azshara", [1448] = "Felwood", [1449] = "Un'Goro Crater",
    [1450] = "Moonglade", [1451] = "Silithus", [1452] = "Winterspring",
    [1453] = "Stormwind", [1454] = "Orgrimmar", [1455] = "Ironforge",
    [1456] = "Thunder Bluff", [1457] = "Darnassus", [1458] = "the Undercity",
    [2521] = "Zephras Isle", [2548] = "the Riverglades", [2652] = "Shen'dralas",
}

local function Set(...)
    local values = {}
    for index = 1, select("#", ...) do
        values[select(index, ...)] = true
    end
    return values
end

local function Dock(mapID, x, y, name, serves)
    return {
        mapID = mapID, x = x, y = y, name = name, serves = serves,
        radius = 0.02, transport = true,
    }
end

-- Wowhead Forever world-map docks. Each link is one boat or zeppelin in both directions.
local NORTH_EK = Set(1420, 1458, 1421, 1422, 1423, 1424, 1416, 1425, 1417, 1437, 1432)
local SOUTH_EK = Set(1434, 1431, 1435, 1436, 1429, 1453, 1433, 1430, 1419, 1428, 1418, 1427, 2548)
local NORTH_KALIMDOR = Set(1439, 1438, 1457, 1440, 1448, 1450, 1452, 1447, 2652, 1411, 1454)
local SOUTH_KALIMDOR = Set(1413, 1446, 1441, 1444, 1445, 1449, 1451, 1443, 1412, 1456, 1442)
local HORDE_KALIMDOR = Set(1411, 1454, 1413, 1412, 1456, 1440, 1442, 1443, 1447, 1448, 1452, 1450, 2652)

Travel.flightMasters = {
    { mapID = 1413, x = 0.630, y = 0.372, name = "Bragok", },
    { mapID = 1413, x = 0.515, y = 0.303, name = "Devrak", faction = "Horde", },
    { mapID = 1413, x = 0.444, y = 0.590, name = "Omusa Thunderhorn", faction = "Horde", },
    { mapID = 1417, x = 0.456, y = 0.460, name = "Cedrik Prose", faction = "Alliance", },
    { mapID = 1417, x = 0.730, y = 0.326, name = "Urda", faction = "Horde", },
    { mapID = 1418, x = 0.040, y = 0.448, name = "Gorrik", faction = "Horde", },
    { mapID = 1419, x = 0.655, y = 0.244, name = "Alexandra Constantine", faction = "Alliance", },
    { mapID = 1421, x = 0.455, y = 0.425, name = "Karos Razok", faction = "Horde", },
    { mapID = 1422, x = 0.428, y = 0.850, name = "Bibilfaz Featherwhistle", faction = "Alliance", },
    { mapID = 1423, x = 0.802, y = 0.570, name = "Georgia", faction = "Horde", },
    { mapID = 1423, x = 0.815, y = 0.592, name = "Khaelyn Steelwing", faction = "Alliance", },
    { mapID = 1424, x = 0.494, y = 0.524, name = "Darla Harris", faction = "Alliance", },
    { mapID = 1424, x = 0.602, y = 0.185, name = "Zarise", faction = "Horde", },
    { mapID = 1425, x = 0.816, y = 0.818, name = "Gorkas", faction = "Horde", },
    { mapID = 1425, x = 0.110, y = 0.460, name = "Guthrum Thunderfist", faction = "Alliance", },
    { mapID = 1427, x = 0.348, y = 0.305, name = "Grisha", faction = "Horde", },
    { mapID = 1427, x = 0.378, y = 0.305, name = "Lanie Reed", faction = "Alliance", },
    { mapID = 1428, x = 0.844, y = 0.682, name = "Borgus Stoutarm", faction = "Alliance", },
    { mapID = 1428, x = 0.655, y = 0.241, name = "Vahgruk", faction = "Horde", },
    { mapID = 1431, x = 0.775, y = 0.445, name = "Felicia Maline", faction = "Alliance", },
    { mapID = 1432, x = 0.338, y = 0.506, name = "Thorgrum Borrelson", faction = "Alliance", },
    { mapID = 1433, x = 0.305, y = 0.594, name = "Ariena Stormfeather", faction = "Alliance", },
    { mapID = 1434, x = 0.268, y = 0.770, name = "Gringer", faction = "Horde", },
    { mapID = 1434, x = 0.275, y = 0.777, name = "Gyll", faction = "Alliance", },
    { mapID = 1434, x = 0.325, y = 0.292, name = "Thysta", faction = "Horde", },
    { mapID = 1435, x = 0.460, y = 0.545, name = "Breyk", faction = "Horde", },
    { mapID = 1436, x = 0.565, y = 0.525, name = "Thor", faction = "Alliance", },
    { mapID = 1437, x = 0.095, y = 0.595, name = "Shellei Brondir", faction = "Alliance", },
    { mapID = 1438, x = 0.584, y = 0.940, name = "Vesprystus", faction = "Alliance", },
    { mapID = 1439, x = 0.364, y = 0.455, name = "Caylais Moonfeather", faction = "Alliance", },
    { mapID = 1440, x = 0.122, y = 0.338, name = "Andruk", faction = "Horde", },
    { mapID = 1440, x = 0.344, y = 0.480, name = "Daelyshia", faction = "Alliance", },
    { mapID = 1440, x = 0.732, y = 0.615, name = "Vhulgra", faction = "Horde", },
    { mapID = 1441, x = 0.450, y = 0.492, name = "Nyse", faction = "Horde", },
    { mapID = 1442, x = 0.365, y = 0.072, name = "Teloren", faction = "Alliance", },
    { mapID = 1442, x = 0.452, y = 0.598, name = "Tharm", faction = "Horde", },
    { mapID = 1443, x = 0.646, y = 0.105, name = "Baritanas Skyriver", faction = "Alliance", },
    { mapID = 1443, x = 0.215, y = 0.740, name = "Thalon", faction = "Horde", },
    { mapID = 1444, x = 0.302, y = 0.432, name = "Fyldren Moonfeather", faction = "Alliance", },
    { mapID = 1444, x = 0.754, y = 0.442, name = "Shyn", faction = "Horde", },
    { mapID = 1444, x = 0.895, y = 0.458, name = "Thyssiana", faction = "Alliance", },
    { mapID = 1445, x = 0.675, y = 0.513, name = "Baldruc", faction = "Alliance", },
    { mapID = 1445, x = 0.355, y = 0.318, name = "Shardi", faction = "Horde", },
    { mapID = 1446, x = 0.510, y = 0.292, name = "Bera Stonehammer", faction = "Alliance", },
    { mapID = 1446, x = 0.516, y = 0.255, name = "Bulkrek Ragefist", faction = "Horde", },
    { mapID = 1447, x = 0.118, y = 0.775, name = "Jarrodenus", faction = "Alliance", },
    { mapID = 1447, x = 0.220, y = 0.496, name = "Kroum", faction = "Horde", },
    { mapID = 1448, x = 0.344, y = 0.538, name = "Brakkar", faction = "Horde", },
    { mapID = 1448, x = 0.625, y = 0.241, name = "Mishellena", faction = "Alliance", },
    { mapID = 1449, x = 0.452, y = 0.058, name = "Gryfe", },
    { mapID = 1450, x = 0.322, y = 0.665, name = "Faustron", faction = "Horde", },
    { mapID = 1450, x = 0.480, y = 0.672, name = "Sindrayl", faction = "Alliance", },
    { mapID = 1451, x = 0.506, y = 0.345, name = "Cloud Skydancer", faction = "Alliance", },
    { mapID = 1451, x = 0.488, y = 0.366, name = "Runk Windtamer", faction = "Horde", },
    { mapID = 1452, x = 0.622, y = 0.365, name = "Maethrya", faction = "Alliance", },
    { mapID = 1452, x = 0.604, y = 0.364, name = "Yugrek", faction = "Horde", },
    { mapID = 1453, x = 0.661, y = 0.625, name = "Dungar Longdrink", faction = "Alliance", },
    { mapID = 1454, x = 0.454, y = 0.639, name = "Doras", faction = "Horde", },
    { mapID = 1455, x = 0.557, y = 0.480, name = "Gryth Thurden", faction = "Alliance", },
    { mapID = 1456, x = 0.468, y = 0.497, name = "Tal", faction = "Horde", },
    { mapID = 1458, x = 0.634, y = 0.482, name = "Michael Garrett", faction = "Horde", },
    { mapID = 2548, x = 0.596, y = 0.452, name = "Grakna", faction = "Horde", },
    { mapID = 2548, x = 0.606, y = 0.814, name = "Gretchen Mayberry", faction = "Alliance", },

}

Travel.links = {
    { faction = nil, vessel = "boat",
        a = Dock(1413, 0.638, 0.388, "Booty Bay", SOUTH_KALIMDOR),
        b = Dock(1434, 0.257, 0.731, "Ratchet", SOUTH_EK) },
    { faction = "Horde", vessel = "zeppelin",
        a = Dock(1411, 0.505, 0.127, "Grom'gol Base Camp", HORDE_KALIMDOR),
        b = Dock(1434, 0.312, 0.304, "Orgrimmar", SOUTH_EK) },
    { faction = "Horde", vessel = "zeppelin",
        a = Dock(1411, 0.510, 0.139, "the Undercity", HORDE_KALIMDOR),
        b = Dock(1420, 0.606, 0.589, "Orgrimmar", NORTH_EK) },
    { faction = "Horde", vessel = "zeppelin",
        a = Dock(1434, 0.315, 0.291, "the Undercity", SOUTH_EK),
        b = Dock(1420, 0.619, 0.589, "Grom'gol Base Camp", NORTH_EK) },
    { faction = "Alliance", vessel = "boat",
        a = Dock(1445, 0.717, 0.567, "Menethil Harbor", SOUTH_KALIMDOR),
        b = Dock(1437, 0.047, 0.638, "Theramore Isle", NORTH_EK) },
    { faction = "Alliance", vessel = "boat",
        a = Dock(1438, 0.548, 0.972, "Auberdine", Set(1438, 1457)),
        b = Dock(1439, 0.333, 0.398, "Rut'theran Village", NORTH_KALIMDOR) },
    { faction = "Alliance", vessel = "boat",
        a = Dock(1439, 0.323, 0.441, "Menethil Harbor", NORTH_KALIMDOR),
        b = Dock(1437, 0.045, 0.567, "Auberdine", NORTH_EK) },
    { faction = "Alliance", vessel = "boat",
        a = Dock(1439, 0.323, 0.441, "Southshore", NORTH_KALIMDOR),
        b = Dock(1424, 0.507, 0.704, "Auberdine", Set(1424, 1416, 1417, 1425)) },
    { faction = "Alliance", vessel = "boat",
        a = Dock(1424, 0.507, 0.704, "Menethil Harbor", Set(1424, 1416, 1417, 1425)),
        b = Dock(1437, 0.045, 0.567, "Southshore", NORTH_EK) },
    { faction = "Alliance", vessel = "boat",
        a = Dock(1453, 0.216, 0.574, "Auberdine", Set(1453, 1429)),
        b = Dock(1439, 0.305, 0.409, "Stormwind Harbor", NORTH_KALIMDOR) },
    { faction = nil, vessel = "boat",
        a = Dock(1446, 0.686, 0.230, "Powderfuse Port", SOUTH_KALIMDOR),
        b = Dock(2548, 0.806, 0.546, "Gadgetzan", Set(2548)) },
    { faction = "Horde", vessel = "zeppelin",
        a = Dock(1412, 0.343, 0.263, "Valanaar", Set(1412, 1456, 2652)),
        b = Dock(2521, 0.577, 0.810, "Thunder Bluff", Set(2521)) },
    { faction = nil, vessel = "zeppelin",
        a = Dock(1416, 0.128, 0.512, "Valanaar", Set(1416, 1424)),
        b = Dock(2521, 0.658, 0.838, "Alterac Mountains", Set(2521)) },
}

local function BuildGraph(links)
    local docks, edges = {}, {}
    local function Index(dock)
        docks[#docks + 1] = dock
        edges[#docks] = {}
        return #docks
    end
    for _, link in ipairs(links) do
        local fromIndex = Index(link.a)
        local toIndex = Index(link.b)
        -- A dock's name is the destination printed on that departure pin.
        edges[fromIndex][#edges[fromIndex] + 1] = {
            to = toIndex, faction = link.faction,
            label = "Board the " .. link.vessel .. " to " .. link.a.name .. ".",
        }
        edges[toIndex][#edges[toIndex] + 1] = {
            to = fromIndex, faction = link.faction,
            label = "Board the " .. link.vessel .. " to " .. link.b.name .. ".",
        }
    end
    for left = 1, #docks do
        for right = left + 1, #docks do
            if docks[left].mapID == docks[right].mapID then
                edges[left][#edges[left] + 1] = { to = right, walk = true }
                edges[right][#edges[right] + 1] = { to = left, walk = true }
            end
        end
    end
    return docks, edges
end

Travel.docks, Travel.edges = BuildGraph(Travel.links)

function Travel:Paired(first, second)
    return PAIRED[first] == second
end

function Travel:Continent(mapID)
    if KALIMDOR[mapID] then return "Kalimdor" end
    if EASTERN_KINGDOMS[mapID] then return "Eastern Kingdoms" end
    if ZEPHRAS[mapID] then return "Zephras" end
end

function Travel:SameContinent(first, second)
    local continent = self:Continent(first)
    return continent ~= nil and continent == self:Continent(second)
end

function Travel:Allows(faction, state)
    if not faction or not state or not state.faction then return true end
    return faction == state.faction
end

function Travel:Nearby(origin, mapID)
    return origin == mapID or self:Paired(origin, mapID)
end

function Travel:MapName(mapID)
    return MAP_NAMES[mapID] or "the next zone"
end

function Travel:FlightMaster(state)
    if not state or not state.mapID then return nil end
    local best, bestDistance
    for _, master in ipairs(self.flightMasters) do
        if master.mapID == state.mapID and self:Allows(master.faction, state) then
            local distance = ns.Navigation and ns.Navigation.Distance(state.x, state.y, master.x, master.y)
            if not best or (distance and bestDistance and distance < bestDistance) or (distance and not bestDistance) then
                best, bestDistance = master, distance
            end
        end
    end
    return best
end

function Travel:FlightPoint(state, destination)
    local master = self:FlightMaster(state)
    if not master then return nil end
    return {
        mapID = master.mapID, x = master.x, y = master.y, radius = 0.02, flight = true,
        label = "Speak to " .. master.name .. " and fly toward " .. (destination or self:MapName(state.mapID)) .. ".",
    }
end

local function Tier(travel, dock, destination)
    if dock.mapID == destination or travel:Paired(dock.mapID, destination) then return 0 end
    if dock.serves and dock.serves[destination] then return 2 end
    if travel:SameContinent(dock.mapID, destination) then return 5 end
end

local TIER_PENALTY = { [0] = 0, [2] = 3, [5] = 30 }

local function GatewayBonus(dock, origin, paired)
    if dock.serves and (dock.serves[origin] or (paired and dock.serves[paired])) then
        return 0.5
    end
    return 0
end

local function Waypoint(dock, label)
    return {
        mapID = dock.mapID, x = dock.x, y = dock.y, radius = dock.radius or 0.02,
        transport = true, label = label,
    }
end

function Travel:BestDock(state, destination)
    local best
    local seen = {}
    local queue = {}
    for index, dock in ipairs(self.docks) do
        local nearby = self:Nearby(state.mapID, dock.mapID)
        queue[#queue + 1] = {
            node = index, cost = nearby and 0.2 or 4,
            first = dock, label = nil, nearby = nearby, hops = 0,
        }
    end
    while queue[1] do
        local pick = 1
        for index = 2, #queue do
            if queue[index].cost < queue[pick].cost then pick = index end
        end
        local item = table.remove(queue, pick)
        local seenKey = item.hops > 0 and "travel" or "start"
        local seenNode = seen[item.node]
        if not seenNode then
            seenNode = {}
            seen[item.node] = seenNode
        end
        local seenCost = seenNode[seenKey]
        if not seenCost or item.cost < seenCost then
            seenNode[seenKey] = item.cost
            local tier = Tier(self, self.docks[item.node], destination)
            if item.hops > 0 and tier and item.label then
                local total = item.cost + (TIER_PENALTY[tier] or 30)
                    - GatewayBonus(item.first, state.mapID, PAIRED[state.mapID])
                if not best or total < best.total then
                    best = {
                        dock = item.first, label = item.label, nearby = item.nearby,
                        firstHop = item.firstHop, total = total, tier = tier,
                    }
                end
            end
            if item.hops < 4 then
                for _, edge in ipairs(self.edges[item.node]) do
                    if edge.walk or self:Allows(edge.faction, state) then
                        local factionBonus = edge.faction and state.faction == edge.faction and 0.3 or 0
                        local added = edge.walk and 0.05 or (1 - factionBonus)
                        local hops = edge.walk and item.hops or (item.hops + 1)
                        queue[#queue + 1] = {
                            node = edge.to, cost = item.cost + added,
                            first = item.first, label = item.label or edge.label,
                            nearby = item.nearby, hops = hops,
                            firstHop = item.firstHop or (hops > 0 and self.docks[edge.to].mapID or nil),
                        }
                    end
                end
            end
        end
    end
    if best and best.tier >= 5 and self:SameContinent(state.mapID, destination) then
        return nil
    end
    return best
end

function Travel:Departure(state, destination, destinationLabel)
    if not state or not state.mapID or not destination or state.mapID == destination then return nil end
    if self:Paired(state.mapID, destination) then return nil end
    local route = self:BestDock(state, destination)
    local same = self:SameContinent(state.mapID, destination)
    local localBoat = route and route.nearby and route.dock.mapID ~= destination
        and (not same or self:SameContinent(state.mapID, route.firstHop))
    if localBoat then
        return Waypoint(route.dock, route.label)
    end
    if route and not same then
        if not route.nearby then
            local point = self:FlightPoint(state, self:MapName(route.dock.mapID))
            if point then return point end
        end
        return Waypoint(route.dock, route.label)
    end
    if same then
        return self:FlightPoint(state, destinationLabel or self:MapName(destination))
    end
end
