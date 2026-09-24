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

function Navigation:GetActiveLeg(goal, state)
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
        if not complete then
            if self:OnMap(state.mapID, leg.mapID) then
                if not state.x or not state.y then
                    return leg, "Waiting for a reliable player position."
                end
                return leg, leg.label
            end
            local arrived = ns.Taxi and ns.Taxi.AtDestination and ns.Taxi:AtDestination(goal, state)
            if not arrived then
                local learnedLeg = ns.Taxi and ns.Taxi.GetLearnedLeg and ns.Taxi:GetLearnedLeg(goal, state)
                if learnedLeg then return learnedLeg, learnedLeg.label end
            end
            local transport = self:TransportLeg(leg, state)
            if transport and transport.transport then return transport, transport.label end
            if not arrived then
                local taxiLeg = ns.Taxi and ns.Taxi:GetSuggestedLeg(goal, state)
                if taxiLeg then return taxiLeg, taxiLeg.label end
            end
            if transport then return transport, transport.label end
            return leg, leg.offMapText or ("Travel to " .. (leg.label or "the marked area") .. ".")
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
