local _, ns = ...

-- Forever minimap button (Vampify / BulwarkFrame recipe, verified on Forever 1.12).
local MinimapButton = {}
ns.MinimapButton = MinimapButton

local BUTTON_SIZE = 33
local BORDER_SIZE = 54
local ICON_SIZE = 20
local ICON_CROP = { 0.08, 0.92, 0.08, 0.92 }

local button
local getAngle
local setAngle
local onLeftClick
local onRightClick

local MINIMAP_ICON_ATLASES = { "QuestNormal", "quest-normal" }
local MINIMAP_ICON_TEXTURES = {
    "Interface\\Minimap\\Tracking\\QuestBlob",
    "Interface\\Icons\\INV_Misc_QuestionMark",
}

local function SetQuestIcon(texture)
    if not texture then return false end
    if type(texture.SetAtlas) == "function" then
        for _, atlas in ipairs(MINIMAP_ICON_ATLASES) do
            if pcall(texture.SetAtlas, texture, atlas, false) then
                if type(texture.GetAtlas) ~= "function" or texture:GetAtlas() == atlas then
                    return true
                end
            end
        end
    end
    if texture.SetTexture then
        for _, path in ipairs(MINIMAP_ICON_TEXTURES) do
            texture:SetTexture(path)
            return false
        end
    end
    return false
end

local function PlaceButton(angleDeg)
    if not button or not Minimap then return end
    local radius = (Minimap:GetWidth() / 2) + 5
    local radians = (angleDeg or 0) * math.pi / 180
    button:ClearAllPoints()
    button:SetPoint("CENTER", Minimap, "CENTER", math.cos(radians) * radius, math.sin(radians) * radius)
end

local function ShowTooltip(self)
    if not GameTooltip then return end
    GameTooltip:SetOwner(self, "ANCHOR_LEFT")
    GameTooltip:SetText("Forever GuideMate")
    if GameTooltip.AddLine then
        GameTooltip:AddLine("Left-click to show or hide the guide.", 1, 1, 1)
        GameTooltip:AddLine("Right-click for options.", 1, 1, 1)
        GameTooltip:AddLine("Drag to move around the minimap.", 0.8, 0.8, 0.8)
    end
    GameTooltip:Show()
end

function MinimapButton:GetButton()
    return button
end

function MinimapButton:UpdatePosition()
    if getAngle then PlaceButton(getAngle()) end
end

function MinimapButton:SetShown(shown)
    if button then button:SetShown(shown) end
end

function MinimapButton:Create(hooks)
    if button or not Minimap or not CreateFrame then return end
    getAngle = hooks and hooks.getAngle
    setAngle = hooks and hooks.setAngle
    onLeftClick = hooks and hooks.onLeftClick
    onRightClick = hooks and hooks.onRightClick
    if not getAngle or not setAngle then return end

    local btn = CreateFrame("Button", "ForeverGuideMateMinimapButton", Minimap)
    if btn.SetSize then
        btn:SetSize(BUTTON_SIZE, BUTTON_SIZE)
    else
        btn:SetWidth(BUTTON_SIZE)
        btn:SetHeight(BUTTON_SIZE)
    end
    btn:SetFrameStrata("HIGH")
    btn:SetFrameLevel(9)
    btn:EnableMouse(true)
    btn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    btn:RegisterForDrag("LeftButton")

    local disc = btn:CreateTexture(nil, "BACKGROUND")
    disc:SetSize(ICON_SIZE, ICON_SIZE)
    disc:SetPoint("CENTER", btn, "CENTER", 0, 0)
    disc:SetTexture("Interface\\Minimap\\MiniMap-TrackingBackground")
    if disc.SetVertexColor then disc:SetVertexColor(0, 0, 0, 1) end

    local icon = btn:CreateTexture(nil, "ARTWORK")
    icon:SetSize(ICON_SIZE, ICON_SIZE)
    icon:SetPoint("CENTER", btn, "CENTER", 0, 0)
    local iconIsAtlas = SetQuestIcon(icon)
    if not iconIsAtlas and icon.SetTexCoord then
        icon:SetTexCoord(ICON_CROP[1], ICON_CROP[2], ICON_CROP[3], ICON_CROP[4])
    end

    local border = btn:CreateTexture(nil, "OVERLAY")
    border:SetSize(BORDER_SIZE, BORDER_SIZE)
    border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
    border:SetPoint("TOPLEFT", btn, "TOPLEFT", 0, 0)

    btn:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

    btn:SetScript("OnClick", function(_, mouseButton)
        if mouseButton == "RightButton" then
            if onRightClick then onRightClick() end
        elseif onLeftClick then
            onLeftClick()
        end
    end)
    btn:SetScript("OnDragStart", function(self)
        self.isDragging = true
    end)
    btn:SetScript("OnDragStop", function(self)
        self.isDragging = false
    end)
    btn:SetScript("OnUpdate", function(self)
        if not self.isDragging then return end
        local centerX, centerY = Minimap:GetCenter()
        local cursorX, cursorY = GetCursorPosition()
        local scale = Minimap:GetEffectiveScale()
        cursorX, cursorY = cursorX / scale, cursorY / scale
        local angle = math.deg(math.atan2(cursorY - centerY, cursorX - centerX))
        setAngle(angle)
        PlaceButton(angle)
    end)
    btn:SetScript("OnEnter", ShowTooltip)
    btn:SetScript("OnLeave", function()
        if GameTooltip then GameTooltip:Hide() end
    end)
    if Minimap.HookScript then
        Minimap:HookScript("OnSizeChanged", function() PlaceButton(getAngle()) end)
    end

    button = btn
    PlaceButton(getAngle())
end
