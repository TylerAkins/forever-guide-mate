local _, ns = ...

local Waypoints = { waypoint = nil, key = nil }
ns.TomTomWaypoints = Waypoints

function Waypoints:Available(api)
    api = api or TomTom
    return type(api) == "table" and type(api.AddWaypoint) == "function"
        and type(api.RemoveWaypoint) == "function"
end

function Waypoints:Clear(api)
    api = api or TomTom
    if self.waypoint and self:Available(api) then
        pcall(api.RemoveWaypoint, api, self.waypoint)
    end
    self.waypoint = nil
    self.key = nil
end

function Waypoints:Sync(goal, state, api)
    api = api or TomTom
    if not ns.db or not ns.db.uiOpen or not goal then
        self:Clear(api)
        return
    end
    local leg = ns.Navigation:GetActiveLeg(goal, state or {})
    if not leg or not self:Available(api) then
        self:Clear(api)
        return
    end
    local mapID, x, y = leg.mapID, leg.x, leg.y
    if state.mapID and state.mapID ~= mapID and ns.Navigation then
        local projectedX, projectedY = ns.Navigation:ProjectToMap(mapID, x, y, state.mapID)
        if projectedX and projectedY and projectedX >= 0 and projectedX <= 1
            and projectedY >= 0 and projectedY <= 1 then
            mapID, x, y = state.mapID, projectedX, projectedY
        end
    end
    local key = table.concat({
        tostring(mapID), tostring(x), tostring(y), tostring(leg.label),
    }, ":")
    if key == self.key then return end
    self:Clear(api)
    local title = leg.label or goal.text or "Forever GuideMate"
    local ok, uid = pcall(api.AddWaypoint, api, mapID, x, y, {
        title = title,
        persistent = false,
        minimap = true,
        world = true,
        crazy = true,
        silent = true,
        from = "ForeverGuideMate",
    })
    if not ok or not uid then return end
    self.waypoint = uid
    self.key = key
    if type(api.SetCrazyArrow) == "function" then
        pcall(api.SetCrazyArrow, api, uid, 15, title)
    end
end
