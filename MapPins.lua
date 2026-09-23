local _, ns = ...

local MapPins = { hooked = false, pin = nil, provider = nil }
ns.MapPins = MapPins

local PIN_TEMPLATE = "ForeverGuideMateMapPinTemplate"
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
    self.pin = nil
    if not pin then return end
    local map = mapCanvas or (pin.GetMap and pin:GetMap()) or WorldMapFrame
    if map and map.RemovePin then pcall(map.RemovePin, map, pin)
    elseif pin.Hide then pin:Hide() end
end

function MapPins:Refresh(mapCanvas)
    mapCanvas = mapCanvas or WorldMapFrame
    self:Clear(mapCanvas)
    if not mapCanvas or not mapCanvas.AcquirePin
        or not ns.db or not ns.db.uiOpen or not ns.Engine.currentGoal
        or (ns.TomTomWaypoints and ns.TomTomWaypoints.waypoint)
        or (mapCanvas.IsShown and not mapCanvas:IsShown()) then return end
    local viewedMapID = mapCanvas.GetMapID and mapCanvas:GetMapID() or nil
    local x, y, leg = self:GetLocation(ns.Engine.currentGoal, ns.Engine.state or {}, viewedMapID, C_Map)
    if not x then return end
    local ok, pin = pcall(mapCanvas.AcquirePin, mapCanvas, PIN_TEMPLATE, x, y,
        leg.label or ns.Engine.currentGoal.text)
    if ok then self.pin = pin end
end

function MapPins:HookMap()
    if self.hooked or not WorldMapFrame then return end
    self.hooked = true
    if WorldMapFrame.AddDataProvider and CreateFromMixins and MapCanvasDataProviderMixin then
        local provider = CreateFromMixins(MapCanvasDataProviderMixin)
        function provider:RefreshAllData()
            MapPins:Refresh(self:GetMap())
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
        WorldMapFrame:HookScript("OnShow", function() MapPins:Refresh() end)
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
