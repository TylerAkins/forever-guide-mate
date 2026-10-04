local _, ns = ...

local MapPins = { hooked = false, pin = nil, provider = nil }
ns.MapPins = MapPins

local PIN_ATLASES = { "Waypoint-MapPin-Tracked", "waypoint-mappin-minimap-tracked", "QuestNormal" }

local function ApplyPinVisual(texture)
    if not texture then return end
    local applied = false
    for _, atlas in ipairs(PIN_ATLASES) do
        if type(texture.SetAtlas) == "function" and pcall(texture.SetAtlas, texture, atlas, false) then
            applied = type(texture.GetAtlas) ~= "function" or texture:GetAtlas() == atlas
            if applied then break end
        end
    end
    if not applied and texture.SetTexture then
        texture:SetTexture("Interface\\WorldMap\\UI-QuestPoi-NumberIcons")
        if texture.SetTexCoord then texture:SetTexCoord(0, 0.125, 0, 0.25) end
    end
    if texture.SetDesaturated then pcall(texture.SetDesaturated, texture, true) end
    if texture.SetVertexColor then texture:SetVertexColor(0.25, 0.75, 1, 1) end
    texture:SetAllPoints()
end

function MapPins:GetLocation(goal, state, viewedMapID, mapAPI)
    local leg = ns.Navigation:GetActiveLeg(goal, state)
    if not leg or not viewedMapID then return nil end
    if leg.mapID == viewedMapID then return leg.x, leg.y, leg end
    local x, y = ns.Navigation:ProjectToMap(leg.mapID, leg.x, leg.y, viewedMapID, mapAPI)
    if x and y and x >= 0 and x <= 1 and y >= 0 and y <= 1 then return x, y, leg end
    return nil
end

function MapPins:Clear(mapCanvas)
    local pin = self.pin
    if not pin then return end
    if pin.Hide then pin:Hide() end
end

-- The map pin pool calls SetPassThroughButtons. That function is protected,
-- and the client records ADDON_ACTION_BLOCKED when addon code reaches it,
-- including from a frame queued after the map's own refresh.
-- This pin is an ordinary frame on the map canvas.
function MapPins:Canvas(mapCanvas)
    if mapCanvas and mapCanvas.GetCanvas then
        local ok, canvas = pcall(mapCanvas.GetCanvas, mapCanvas)
        if ok and canvas then return canvas end
    end
    return mapCanvas
end

function MapPins:EnsurePin(canvas)
    local pin = self.pin
    if pin then
        if pin.SetParent and pin.GetParent and pin:GetParent() ~= canvas then
            pin:SetParent(canvas)
        end
        return pin
    end
    if type(CreateFrame) ~= "function" or not canvas then return nil end
    pin = CreateFrame("Frame", nil, canvas)
    pin:SetSize(28, 28)
    if pin.EnableMouse then pin:EnableMouse(true) end
    pin:SetScript("OnEnter", function(self) ForeverGuideMateMapPinMixin.OnMouseEnter(self) end)
    pin:SetScript("OnLeave", function(self) ForeverGuideMateMapPinMixin.OnMouseLeave(self) end)
    pin.Texture = pin:CreateTexture(nil, "OVERLAY")
    ApplyPinVisual(pin.Texture)
    self.pin = pin
    return pin
end

function MapPins:Place(mapCanvas, x, y, label)
    local canvas = self:Canvas(mapCanvas)
    local pin = self:EnsurePin(canvas)
    if not pin then return end
    local width = canvas and canvas.GetWidth and canvas:GetWidth() or 0
    local height = canvas and canvas.GetHeight and canvas:GetHeight() or 0
    if width > 0 and height > 0 and pin.ClearAllPoints and pin.SetPoint then
        pin:ClearAllPoints()
        pin:SetPoint("CENTER", canvas, "TOPLEFT", x * width, -y * height)
    end
    pin.label = label
    if pin.Show then pin:Show() end
end

function MapPins:ScheduleRefresh(mapCanvas)
    if mapCanvas then self.pendingCanvas = mapCanvas end
    if self.refreshQueued then return end
    self.refreshQueued = true
    local function run()
        self.refreshQueued = false
        local canvas = self.pendingCanvas
        self.pendingCanvas = nil
        self:Refresh(canvas)
    end
    if type(C_Timer) == "table" and type(C_Timer.After) == "function" then
        C_Timer.After(0, run)
    else
        run()
    end
end

function MapPins:Refresh(mapCanvas)
    mapCanvas = mapCanvas or WorldMapFrame
    self:Clear(mapCanvas)
    if ns.PlayerState and ns.PlayerState:InInstance(ns.Engine and ns.Engine.state) then return end
    if not mapCanvas or not ns.db or not ns.db.uiOpen or not ns.Engine.currentGoal
        or ((ns.db.waypointProvider or "blizzard") == "blizzard"
            and ns.Navigation:QuestDestinationID(ns.Engine.currentGoal))
        or (ns.TomTomWaypoints and ns.TomTomWaypoints.waypoint)
        or (mapCanvas.IsShown and not mapCanvas:IsShown()) then return end
    local viewedMapID = mapCanvas.GetMapID and mapCanvas:GetMapID() or nil
    local x, y, leg = self:GetLocation(ns.Engine.currentGoal, ns.Engine.state or {}, viewedMapID, C_Map)
    if not x then return end
    self:Place(mapCanvas, x, y, leg.label or ns.Engine.currentGoal.text)
end

function MapPins:HookMap()
    if self.hooked or not WorldMapFrame then return end
    self.hooked = true
    if WorldMapFrame.AddDataProvider and CreateFromMixins and MapCanvasDataProviderMixin then
        local provider = CreateFromMixins(MapCanvasDataProviderMixin)
        function provider:RefreshAllData()
            MapPins:ScheduleRefresh(self:GetMap())
        end
        function provider:RemoveAllData()
            MapPins:Clear(self:GetMap())
        end
        WorldMapFrame:AddDataProvider(provider)
        self.provider = provider
    elseif WorldMapFrame.OnMapChanged and hooksecurefunc then
        hooksecurefunc(WorldMapFrame, "OnMapChanged", function() MapPins:Refresh() end)
    end
    if WorldMapFrame.HookScript then
        WorldMapFrame:HookScript("OnShow", function() MapPins:ScheduleRefresh() end)
        WorldMapFrame:HookScript("OnHide", function() MapPins:Clear() end)
    end
end

ForeverGuideMateMapPinMixin = {}

function ForeverGuideMateMapPinMixin:OnLoad()
    self:SetSize(28, 28)
    if self.UseFrameLevelType then self:UseFrameLevelType("PIN_FRAME_LEVEL_AREA_POI") end
    if self.SetScalingLimits then self:SetScalingLimits(1, 1, 1) end
    ApplyPinVisual(self.Texture)
end

function ForeverGuideMateMapPinMixin:OnAcquired(x, y, label)
    self.label = label
    self:SetPosition(x, y)
    ApplyPinVisual(self.Texture)
    self:Show()
end

function ForeverGuideMateMapPinMixin:OnMouseEnter()
    if not GameTooltip then return end
    GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
    GameTooltip:SetText("Forever GuideMate")
    GameTooltip:AddLine(self.label or "Guide waypoint", 1, 1, 1, true)
    GameTooltip:Show()
end

function ForeverGuideMateMapPinMixin:OnMouseLeave()
    if GameTooltip then GameTooltip:Hide() end
end
