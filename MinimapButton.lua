local _, ns = ...

-- Native minimap button (SmartLFG / LibDBIcon-style placement, no libraries).
local MinimapButton = {}
ns.MinimapButton = MinimapButton

local button
local getAngle
local setAngle
local onLeftClick
local onRightClick

local MINIMAP_ICON_ANCHOR = { x = 7, y = -5, size = 20 }
local MINIMAP_ICON_ATLASES = { "QuestNormal", "quest-normal" }
local MINIMAP_ICON_TEXTURES = {
    "Interface\\Minimap\\Tracking\\QuestBlob",
    "Interface\\Icons\\INV_Misc_QuestionMark",
    "Interface\\Icons\\INV_Misc_Map_01",
}

local MINIMAP_SHAPES = {
    ["ROUND"] = { true, true, true, true },
    ["SQUARE"] = { false, false, false, false },
    ["CORNER-TOPLEFT"] = { false, false, false, true },
    ["CORNER-TOPRIGHT"] = { false, false, true, false },
    ["CORNER-BOTTOMLEFT"] = { false, true, false, false },
    ["CORNER-BOTTOMRIGHT"] = { true, false, false, false },
    ["SIDE-LEFT"] = { false, true, false, true },
    ["SIDE-RIGHT"] = { true, false, true, false },
    ["SIDE-TOP"] = { false, false, true, true },
    ["SIDE-BOTTOM"] = { true, true, false, false },
    ["TRICORNER-TOPLEFT"] = { false, true, true, true },
    ["TRICORNER-TOPRIGHT"] = { true, false, true, true },
    ["TRICORNER-BOTTOMLEFT"] = { true, true, false, true },
    ["TRICORNER-BOTTOMRIGHT"] = { true, true, true, false },
}

local function SetSolidColor(texture, red, green, blue, alpha)
    if texture.SetColorTexture then
        texture:SetColorTexture(red, green, blue, alpha)
    elseif texture.SetTexture then
        texture:SetTexture(red, green, blue, alpha)
    end
end

local function SetQuestIcon(texture)
    if not texture then return end
    if type(texture.SetAtlas) == "function" then
        for _, atlas in ipairs(MINIMAP_ICON_ATLASES) do
            if pcall(texture.SetAtlas, texture, atlas, false) then
                if type(texture.GetAtlas) ~= "function" or texture:GetAtlas() == atlas then
                    return
                end
            end
        end
    end
    if texture.SetTexture then
        for _, path in ipairs(MINIMAP_ICON_TEXTURES) do
            texture:SetTexture(path)
            return
        end
    end
end

local function UpdatePosition()
    if not button or not Minimap or not getAngle then return end
    local angle = math.rad(getAngle())
    local x, y, quadrant = math.cos(angle), math.sin(angle), 1
    if x < 0 then quadrant = quadrant + 1 end
    if y > 0 then quadrant = quadrant + 2 end
    local shape = (GetMinimapShape and GetMinimapShape()) or "ROUND"
    local rounded = MINIMAP_SHAPES[shape] or MINIMAP_SHAPES["ROUND"]
    local halfWidth = (Minimap:GetWidth() / 2) + 5
    local halfHeight = (Minimap:GetHeight() / 2) + 5
    if rounded[quadrant] then
        x, y = x * halfWidth, y * halfHeight
    else
        x = math.max(-halfWidth, math.min(x * math.sqrt(2 * halfWidth * halfWidth) - 10, halfWidth))
        y = math.max(-halfHeight, math.min(y * math.sqrt(2 * halfHeight * halfHeight) - 10, halfHeight))
    end
    button:ClearAllPoints()
    button:SetPoint("CENTER", Minimap, "CENTER", x, y)
end

local function DragUpdate()
    if not button or not Minimap or not setAngle then return end
    local centerX, centerY = Minimap:GetCenter()
    local scale = Minimap:GetEffectiveScale()
    local cursorX, cursorY = GetCursorPosition()
    cursorX, cursorY = cursorX / scale, cursorY / scale
    setAngle(math.deg(math.atan2(cursorY - centerY, cursorX - centerX)))
    UpdatePosition()
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
    UpdatePosition()
end

function MinimapButton:SetShown(shown)
    if button then button:SetShown(shown) end
end

function MinimapButton:Create(hooks)
    if button or not Minimap then return end
    getAngle = hooks and hooks.getAngle
    setAngle = hooks and hooks.setAngle
    onLeftClick = hooks and hooks.onLeftClick
    onRightClick = hooks and hooks.onRightClick
    if not getAngle or not setAngle then return end

    local anchor = MINIMAP_ICON_ANCHOR
    button = CreateFrame("Button", "ForeverGuideMateMinimapButton", Minimap)
    button:SetSize(31, 31)
    button:SetFrameStrata("MEDIUM")
    button:SetFrameLevel(8)
    button:EnableMouse(true)
    button:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    button:RegisterForDrag("LeftButton")

    local fill = button:CreateTexture(nil, "BACKGROUND")
    fill:SetSize(anchor.size, anchor.size)
    fill:SetPoint("TOPLEFT", button, "TOPLEFT", anchor.x, anchor.y)
    SetSolidColor(fill, 0, 0, 0, 1)

    local disc = button:CreateTexture(nil, "BACKGROUND")
    disc:SetSize(anchor.size, anchor.size)
    disc:SetPoint("TOPLEFT", button, "TOPLEFT", anchor.x, anchor.y)
    disc:SetTexture("Interface\\Minimap\\MiniMap-TrackingBackground")
    if disc.SetVertexColor then disc:SetVertexColor(0, 0, 0, 1) end

    local icon = button:CreateTexture(nil, "ARTWORK")
    icon:SetSize(anchor.size, anchor.size)
    icon:SetPoint("TOPLEFT", button, "TOPLEFT", anchor.x, anchor.y)
    SetQuestIcon(icon)

    local border = button:CreateTexture(nil, "OVERLAY")
    border:SetSize(53, 53)
    border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
    border:SetPoint("TOPLEFT")

    button:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

    button:SetScript("OnClick", function(_, mouseButton)
        if mouseButton == "RightButton" then
            if onRightClick then onRightClick() end
        elseif onLeftClick then
            onLeftClick()
        end
    end)
    button:SetScript("OnDragStart", function(self)
        self:SetScript("OnUpdate", DragUpdate)
    end)
    button:SetScript("OnDragStop", function(self)
        self:SetScript("OnUpdate", nil)
    end)
    button:SetScript("OnEnter", ShowTooltip)
    button:SetScript("OnLeave", function()
        if GameTooltip then GameTooltip:Hide() end
    end)
    if Minimap.HookScript then
        Minimap:HookScript("OnSizeChanged", UpdatePosition)
    end
    UpdatePosition()
end
