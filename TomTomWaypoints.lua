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

function Waypoints:SyncTomTom(goal, state, api)
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
        elseif ns.Navigation:OnMap(state.mapID, mapID) then
            mapID = state.mapID
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
    if not ok or not uid then
        self:Report("TomTom could not create this waypoint: " .. tostring(uid))
        return
    end
    self.waypoint = uid
    self.key = key
    if type(api.SetCrazyArrow) == "function" then
        pcall(api.SetCrazyArrow, api, uid, 15, title)
    end
end

local function ValidPoint(mapID, x, y)
    return type(mapID) == "number" and mapID > 0 and type(x) == "number" and type(y) == "number"
        and x >= 0 and x <= 1 and y >= 0 and y <= 1
end

function Waypoints:Report(message)
    if self.status ~= message then
        self.status = message
        if message then print("|cff33ff99Forever GuideMate:|r " .. message) end
    end
end

function Waypoints:OwnsPin()
    if not self.point or not C_Map or type(C_Map.GetUserWaypoint) ~= "function" then return false end
    local point = C_Map.GetUserWaypoint()
    return point and point.position and point.uiMapID == self.point.uiMapID
        and point.position.x == self.point.position.x and point.position.y == self.point.position.y
end

local ClearTomTom = Waypoints.Clear
function Waypoints:Clear(api)
    local applying = self.applying
    self.applying = true
    ClearTomTom(self, self.owner or api)
    self.applying = applying
    self.owner = nil
    if self.questID and C_SuperTrack and type(C_SuperTrack.GetSuperTrackedQuestID) == "function"
        and type(C_SuperTrack.SetSuperTrackedQuestID) == "function"
        and C_SuperTrack.GetSuperTrackedQuestID() == self.questID then
        C_SuperTrack.SetSuperTrackedQuestID(0)
    end
    if self:OwnsPin() and type(C_Map.ClearUserWaypoint) == "function" then C_Map.ClearUserWaypoint() end
    self.questID, self.point = nil, nil
end

function Waypoints:Sync(goal, state, api)
    state = state or {}
    local provider = api and "tomtom" or (ns.db and ns.db.waypointProvider or "blizzard")
    local selection = goal and (tostring(goal) .. ":" .. provider)
    if selection ~= self.selection then
        self:Clear(api)
        self.selection, self.suspended = selection, false
        self:Report(nil)
    end
    if not ns.db or not ns.db.uiOpen or not goal then self:Clear(api); return end
    if self.point and (not self:OwnsPin() or (C_SuperTrack
        and type(C_SuperTrack.IsSuperTrackingUserWaypoint) == "function"
        and not C_SuperTrack.IsSuperTrackingUserWaypoint())) then
        self.suspended = true
    end
    if self.questID and C_SuperTrack.GetSuperTrackedQuestID() ~= self.questID then self.suspended = true end
    if self.suspended then return end
    local questID = ns.Navigation:QuestDestinationID(goal)
    local nativeQuest = questID ~= nil
    if nativeQuest and provider == "blizzard" then
        if not C_SuperTrack or type(C_SuperTrack.SetSuperTrackedQuestID) ~= "function"
            or type(C_SuperTrack.GetSuperTrackedQuestID) ~= "function" then
            self:Report("Blizzard quest super-tracking is unavailable on this client."); return
        end
        if self.questID ~= questID then
            self:Clear()
            C_SuperTrack.SetSuperTrackedQuestID(questID)
            self.questID = questID
        end

        self:Report(nil)
        return
    end
    local leg
    if nativeQuest then
        local mapID, x, y
        if C_QuestLog and type(C_QuestLog.GetNextWaypoint) == "function" then
            mapID, x, y = C_QuestLog.GetNextWaypoint(questID)
        end
        if not ValidPoint(mapID, x, y) then
            local pinGoal = { useClientPin = true, complete = goal.complete }
            local route = goal.route
            local destination = route and route[#route]
            mapID, x, y = ns.Navigation:ClientPin(pinGoal, destination and destination.mapID or state.mapID, nil, state)
        end
        if not ValidPoint(mapID, x, y) then
            self:Clear(api)
            self:Report("No Blizzard quest location is available for this step.")
            return
        end
        leg = { mapID = mapID, x = x, y = y, label = goal.text }
    elseif goal.kind == "accept" and provider == "blizzard" then
        leg = goal.route and goal.route[#goal.route]
    else
        leg = ns.Navigation:GetActiveLeg(goal, state)
    end
    if not leg or not ValidPoint(leg.mapID, leg.x, leg.y) then
        self:Clear(api); self:Report("No waypoint location is available for this step."); return
    end
    if provider == "tomtom" then
        api = api or TomTom
        if not self:Available(api) then self:Clear(); self:Report("TomTom is unavailable. Select Blizzard Map Pins in Navigation."); return end
        -- Quest destinations must come from the client, never the authored objective fallback.
        local target = { text = goal.text, route = { leg } }
        if type(hooksecurefunc) == "function" and type(api.SetCrazyArrow) == "function"
            and self.hookedOwner ~= api then
            -- Observe TomTom's unprotected addon method without replacing it.
            hooksecurefunc(api, "SetCrazyArrow", function(_, uid)
                if not self.applying and self.owner == api and self.waypoint and uid ~= self.waypoint then
                    self.suspended = true
                end
            end)
            self.hookedOwner = api
        end
        self.applying = true
        self:SyncTomTom(target, state, api)
        self.applying = false
        self.owner = api
        if self.waypoint then self:Report(nil) end
        return
    end
    do
        if not C_Map or type(C_Map.SetUserWaypoint) ~= "function" or type(C_Map.GetUserWaypoint) ~= "function"
            or type(C_Map.ClearUserWaypoint) ~= "function" or type(C_Map.CanSetUserWaypointOnMap) ~= "function"
            or not UiMapPoint or type(UiMapPoint.CreateFromCoordinates) ~= "function" then
            self:Report("Blizzard Map Pins are unavailable on this client."); return
        end
        if not C_Map.CanSetUserWaypointOnMap(leg.mapID) then
            self:Clear(); self:Report("Blizzard does not allow a map pin in this zone."); return
        end
        if not self.point or self.point.uiMapID ~= leg.mapID or self.point.position.x ~= leg.x
            or self.point.position.y ~= leg.y then
            self:Clear()
            self.point = UiMapPoint.CreateFromCoordinates(leg.mapID, leg.x, leg.y)
            C_Map.SetUserWaypoint(self.point)
            if C_SuperTrack and type(C_SuperTrack.SetSuperTrackedUserWaypoint) == "function" then
                C_SuperTrack.SetSuperTrackedUserWaypoint(true)
            end
        end
    end
    self:Report(nil)
end
