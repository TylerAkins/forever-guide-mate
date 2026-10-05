local _, ns = ...

local UITheme = {}
ns.UITheme = UITheme

local PANEL_LAYOUT = "ButtonFrameTemplateNoPortrait"
local DIALOG_BACKDROP = {
    bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background-Dark",
    edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
    tile = true,
    tileSize = 32,
    edgeSize = 32,
    insets = { left = 11, right = 12, top = 12, bottom = 11 },
}

local ROW_HIGHLIGHT = "Interface\\QuestFrame\\UI-QuestLogTitleHighlight"
local ROW_BACKGROUND = "Interface\\Buttons\\WHITE8x8"
local ICON_BUTTON_HIGHLIGHT = "Interface\\Buttons\\ButtonHilight-Square"
local NAV_BUTTON_SIZE = 26
local CHROME_BUTTON_UP = "Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up"
local CHROME_BUTTON_DOWN = "Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Down"

local function ApplyChromeButtonTextures(button)
    if not button.SetNormalTexture then return end
    button:SetNormalTexture(CHROME_BUTTON_UP)
    pcall(function() button:SetPushedTexture(CHROME_BUTTON_DOWN) end)
    pcall(function() button:SetHighlightTexture(ICON_BUTTON_HIGHLIGHT, "ADD") end)
    local normal = button.GetNormalTexture and button:GetNormalTexture()
    if normal and normal.SetAllPoints then normal:SetAllPoints() end
end

local function Create(kind, name, parent, template)
    if template then
        local ok, frame = pcall(CreateFrame, kind, name, parent, template)
        if ok and frame then return frame end
    end
    return CreateFrame(kind, name, parent)
end

local function SetSolidColor(texture, red, green, blue, alpha)
    if texture.SetColorTexture then
        texture:SetColorTexture(red, green, blue, alpha)
    else
        texture:SetTexture(red, green, blue, alpha)
    end
end

local function TryApplyNineSlice(frame, layoutKey)
    if type(NineSliceUtil) ~= "table" or type(NineSliceUtil.ApplyLayout) ~= "function" then
        return false
    end
    local layouts = NineSliceLayouts
    if type(layouts) ~= "table" then return false end
    local layout = layouts[layoutKey] or layouts[PANEL_LAYOUT]
    if type(layout) ~= "table" then return false end
    if not frame.NineSlice then
        local nineSlice = CreateFrame("Frame", nil, frame)
        nineSlice:SetAllPoints()
        frame.NineSlice = nineSlice
    end
    return pcall(NineSliceUtil.ApplyLayout, frame.NineSlice, layout)
end

local function ApplyBackdrop(frame)
    if type(frame.SetBackdrop) ~= "function" then return false end
    local ok = pcall(function()
        frame:SetBackdrop(DIALOG_BACKDROP)
    end)
    return ok
end

function UITheme.ApplyPanelBackground(frame, variant)
    variant = variant or "panel"
    if not rawget(frame, "themePanelBackground") then
        local background = frame:CreateTexture(nil, "BACKGROUND")
        background:SetAllPoints()
        rawset(frame, "themePanelBackground", background)
    end
    local background = rawget(frame, "themePanelBackground")
    SetSolidColor(background, 0.11, 0.08, 0.05, 1)
    if background.SetAlpha then background:SetAlpha(1) end
    if TryApplyNineSlice(frame, PANEL_LAYOUT) then
        rawset(frame, "usedNineSlice", true)
        background:ClearAllPoints()
        -- Inset left to avoid bleeding past the chamfered metal edge,
        -- and tuck slightly under the top, right, and bottom borders without leaving gaps.
        background:SetPoint("TOPLEFT", frame, "TOPLEFT", 6, -2)
        background:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -2, 2)
        return
    end
    if not rawget(frame, "themeBackdropFrame") then
        local backdropFrame = Create("Frame", nil, frame, "BackdropTemplate")
        backdropFrame:SetAllPoints()
        rawset(frame, "themeBackdropFrame", backdropFrame)
    end
    if ApplyBackdrop(rawget(frame, "themeBackdropFrame")) then
        rawset(frame, "usedBackdrop", true)
    end
end

function UITheme.CreatePanel(parent, name, options)
    options = type(options) == "table" and options or {}
    local variant = options.variant or "panel"
    local topInset = options.topInset
    if type(topInset) ~= "number" then
        topInset = variant == "compact" and 28 or 36
    end

    local frame = Create("Frame", name, parent)
    UITheme.ApplyPanelBackground(frame, variant)

    rawset(frame, "contentTopInset", topInset)
    rawset(frame, "contentSideInset", variant == "compact" and 12 or 14)

    return frame
end

-- Cog/gear icon button for opening settings / guide library.
function UITheme.CreateCogButton(parent, size)
    size = type(size) == "number" and size or 20
    local button = Create("Button", nil, parent)
    if button.SetSize then
        button:SetSize(size, size)
    else
        button:SetWidth(size)
        button:SetHeight(size)
    end

    local texture = button:CreateTexture(nil, "ARTWORK")
    texture:SetAllPoints()
    texture:SetTexture("Interface\\WorldMap\\Gear_64")
    if texture.SetTexCoord then
        texture:SetTexCoord(0, 0.50, 0, 0.50)
    end
    if texture.SetVertexColor then
        texture:SetVertexColor(1.0, 0.82, 0, 1.0)
    end
    button.icon = texture

    if button.SetHighlightTexture then
        button:SetHighlightTexture("Interface\\WorldMap\\Gear_64")
        local highlight = button:GetHighlightTexture()
        if highlight then
            if highlight.SetTexCoord then
                highlight:SetTexCoord(0, 0.50, 0, 0.50)
            end
            if highlight.SetAlpha then
                highlight:SetAlpha(0.65)
            end
        end
    end

    button:SetScript("OnMouseDown", function()
        texture:SetPoint("TOPLEFT", 1, -1)
        texture:SetPoint("BOTTOMRIGHT", 1, -1)
    end)
    button:SetScript("OnMouseUp", function()
        texture:SetAllPoints()
    end)

    return button
end

function UITheme.CreateNavIconButton(parent, texturePath, options)
    options = type(options) == "table" and options or {}
    local size = type(options.size) == "number" and options.size or NAV_BUTTON_SIZE
    local overlayIcon = options.overlayIcon == true
    local button = Create("Button", nil, parent)
    if button.SetSize then
        button:SetSize(size, size)
    else
        button:SetWidth(size)
        button:SetHeight(size)
    end
    if overlayIcon then
        ApplyChromeButtonTextures(button)
        local icon = button:CreateTexture(nil, "ARTWORK")
        icon:SetTexture(texturePath)
        local iconSize = math.max(12, size - 8)
        icon:SetSize(iconSize, iconSize)
        icon:SetPoint("CENTER")
        local rotation = options.iconRotation
        if type(rotation) == "number" and icon.SetRotation then
            icon:SetRotation(rotation)
        end
        rawset(button, "navIcon", icon)
    elseif button.SetNormalTexture then
        button:SetNormalTexture(texturePath)
        local pushed = texturePath:gsub("-Up", "-Down")
        if pushed == texturePath then
            pushed = texturePath:gsub("-Button-Up", "-Button-Down")
        end
        pcall(function() button:SetPushedTexture(pushed) end)
        pcall(function() button:SetHighlightTexture(ICON_BUTTON_HIGHLIGHT, "ADD") end)
        local normal = button:GetNormalTexture()
        if normal then
            if options.fillIcon == true and normal.SetTexCoord then
                normal:SetTexCoord(0.08, 0.92, 0.08, 0.92)
            end
            if normal.SetAllPoints then normal:SetAllPoints() end
        end
    else
        local icon = button:CreateTexture(nil, "ARTWORK")
        icon:SetSize(size - 4, size - 4)
        icon:SetPoint("CENTER")
        icon:SetTexture(texturePath)
    end
    return button
end

function UITheme.CreateChromeTextButton(parent, width, label)
    local button = Create("Button", nil, parent)
    if button.SetSize then
        button:SetSize(width or 52, NAV_BUTTON_SIZE)
    else
        button:SetWidth(width or 52)
        button:SetHeight(NAV_BUTTON_SIZE)
    end
    ApplyChromeButtonTextures(button)
    local text = button:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    text:SetPoint("CENTER", 0, 1)
    text:SetText(label or "")
    if text.SetTextColor then text:SetTextColor(1, 0.82, 0, 1) end
    button.label = text
    button.SetText = function(self, value)
        text:SetText(value or "")
        self.label.text = value or ""
    end
    button.GetText = function() return text:GetText() or "" end
    return button
end

function UITheme.CreatePanelButton(parent, width, label, smallFont)
    local button = Create("Button", nil, parent, "UIPanelButtonTemplate")
    if button.SetSize then
        button:SetSize(width or 80, 22)
    else
        button:SetWidth(width or 80)
        button:SetHeight(22)
    end
    if smallFont and button.GetFontString then
        local fontString = button:GetFontString()
        if fontString and fontString.SetFontObject then
            fontString:SetFontObject(GameFontHighlightSmall)
        end
    end
    button.label = { text = label or "" }
    if button.SetText then
        local setText = button.SetText
        button.SetText = function(self, value)
            self.label.text = value or ""
            setText(self, value)
        end
        button:SetText(label or "")
    else
        local text = button:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
        text:SetPoint("CENTER")
        text:SetText(label or "")
        button.label = text
        button.SetText = function(_, value)
            text:SetText(value)
            button.label.text = value
        end
    end
    return button
end

function UITheme.CreateCategoryListButton(parent, width, height)
    height = type(height) == "number" and height or 24
    local button = Create("Button", nil, parent)
    if button.SetSize then
        button:SetSize(width or 138, height)
    else
        button:SetWidth(width or 138)
        button:SetHeight(height)
    end
    local highlight = button:CreateTexture(nil, "ARTWORK")
    highlight:SetAllPoints()
    highlight:SetTexture(ROW_HIGHLIGHT)
    if highlight.SetBlendMode then highlight:SetBlendMode("ADD") end
    highlight:SetAlpha(0)
    rawset(button, "categoryHighlight", highlight)
    if button.SetHighlightTexture then
        button:SetHighlightTexture(ROW_HIGHLIGHT, "ADD")
        local hover = button.GetHighlightTexture and button:GetHighlightTexture()
        if hover and hover.SetAlpha then hover:SetAlpha(0.45) end
    end
    if button.EnableMouse then button:EnableMouse(true) end

    local text = button:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    text:SetPoint("LEFT", 6, 0)
    text:SetPoint("RIGHT", -4, 0)
    text:SetJustifyH("LEFT")
    rawset(button, "categoryFontString", text)
    button.label = text
    button.GetFontString = function() return text end
    button.SetText = function(self, value)
        local labelText = value or ""
        text:SetText(labelText)
        self.label.text = labelText
    end
    button.GetText = function() return text:GetText() or "" end
    return button
end

function UITheme.CreateCloseButton(parent)
    local button = Create("Button", nil, parent, "UIPanelCloseButton")
    if not button then
        button = Create("Button", nil, parent, "UIPanelCloseButtonDefaultAnchors")
    end
    if not button.GetText and not button.SetText then
        button.SetText = function() end
    end
    return button
end

function UITheme.PlaceCloseButton(frame, button)
    if button.SetFrameLevel and frame.GetFrameLevel then
        local level = frame:GetFrameLevel()
        if type(level) == "number" then
            button:SetFrameLevel(level + 20)
        end
    end
    if button.SetPoint then
        button:ClearAllPoints()
        local anchor = rawget(frame, "NineSlice") or frame
        -- Slight outward nudge so the red cap sits on the metal corner like stock frames.
        button:SetPoint("TOPRIGHT", anchor, "TOPRIGHT", -2, 2)
    end
    if button.Raise then
        button:Raise()
    end
end

function UITheme.ApplyListRow(row, selected)
    if not rawget(row, "themeRowBackground") then
        local background = row:CreateTexture(nil, "BACKGROUND")
        background:SetAllPoints()
        background:SetTexture(ROW_BACKGROUND)
        SetSolidColor(background, 0.12, 0.09, 0.06, 0.92)
        rawset(row, "themeRowBackground", background)
    end
    if not rawget(row, "themeRowHighlight") then
        local highlight = row:CreateTexture(nil, "ARTWORK")
        highlight:SetAllPoints()
        highlight:SetTexture(ROW_HIGHLIGHT)
        if highlight.SetBlendMode then highlight:SetBlendMode("ADD") end
        rawset(row, "themeRowHighlight", highlight)
    end
    local highlight = rawget(row, "themeRowHighlight")
    highlight:SetShown(selected == true)
    if selected then
        highlight:SetAlpha(0.35)
    end
end

function UITheme.SetListRowHover(row, hovered)
    local highlight = rawget(row, "themeRowHighlight")
    if not highlight then return end
    if hovered then
        highlight:SetShown(true)
        highlight:SetAlpha(0.3)
    else
        highlight:SetShown(false)
    end
end

function UITheme.CreatePercentStepper(parent, label, minimum, maximum, step, getter, setter)
    local container = Create("Frame", nil, parent)
    container:SetHeight(44)

    local title = parent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    title:SetPoint("TOPLEFT", container, "TOPLEFT", 0, 0)
    title:SetText(label)

    local minus = UITheme.CreatePanelButton(container, 28, "-")
    minus:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -6)

    local valueText = parent:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    valueText:SetPoint("LEFT", minus, "RIGHT", 8, 0)
    valueText:SetWidth(44)
    valueText:SetJustifyH("CENTER")

    local plus = UITheme.CreatePanelButton(container, 28, "+")
    plus:SetPoint("LEFT", valueText, "RIGHT", 8, 0)

    local function Sync()
        local value = getter()
        valueText:SetText(value .. "%")
    end

    local function Adjust(delta)
        local value = getter() + delta
        value = math.max(minimum, math.min(maximum, value))
        setter(value)
        Sync()
    end

    minus:SetScript("OnClick", function() Adjust(-step) end)
    plus:SetScript("OnClick", function() Adjust(step) end)
    container:SetScript("OnShow", Sync)
    Sync()

    return container
end
