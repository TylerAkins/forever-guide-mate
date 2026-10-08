local _, ns = ...

-- Match LFG Forever's LibDBIcon mainline minimap button layout.
local MinimapButton = {}
ns.MinimapButton = MinimapButton

local BUTTON_SIZE = 31
local BORDER_SIZE = 50
local BACKGROUND_SIZE = 24
local ICON_SIZE = 18
local ICON_TEXTURE = "Interface\\GossipFrame\\AvailableQuestIcon"
local TRACKING_BACKGROUND = "Interface\\Minimap\\UI-Minimap-Background"
local TRACKING_BORDER = "Interface\\Minimap\\MiniMap-TrackingBorder"

local button
local getAngle
local setAngle
local onLeftClick
local onRightClick

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

    -- The border art is offset within its texture; the backing and icon are centered.
    local disc = btn:CreateTexture(nil, "BACKGROUND")
    disc:SetSize(BACKGROUND_SIZE, BACKGROUND_SIZE)
    disc:SetPoint("CENTER", btn, "CENTER", 0, 0)
    disc:SetTexture(TRACKING_BACKGROUND)

    local icon = btn:CreateTexture(nil, "ARTWORK")
    icon:SetSize(ICON_SIZE, ICON_SIZE)
    icon:SetPoint("CENTER", btn, "CENTER", 0, 0)
    icon:SetTexture(ICON_TEXTURE)

    local border = btn:CreateTexture(nil, "OVERLAY")
    border:SetSize(BORDER_SIZE, BORDER_SIZE)
    border:SetTexture(TRACKING_BORDER)
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
        local atan2 = math.atan2 or function(y, x) return math.atan(y, x) end
        local angle = math.deg(atan2(cursorY - centerY, cursorX - centerX))
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
