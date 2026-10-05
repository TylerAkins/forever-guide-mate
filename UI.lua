local _, ns = ...

local UI = {
    elapsed = 0,
    browserRows = {},
    browserCategoryButtons = {},
    browserPage = 1,
    browserCategory = "All Guides",
}
ns.UI = UI

local TRACKER_DEFAULTS = {
    point = "LEFT", relativePoint = "LEFT", x = 0, y = 0, scale = 1, scaleMin = 0.5, scaleMax = 1.5,
}
local BROWSER_DEFAULTS = {
    point = "CENTER", relativePoint = "CENTER", x = 0, y = 0, scale = 1, scaleMin = 0.7, scaleMax = 1.4,
}
local MINIMAP_BUTTON_DEFAULTS = { position = 200 }
local GOLD_BORDER = { 0.78, 0.58, 0.16, 0.95 }
local UITheme = ns.UITheme
local OPACITY_MIN = 0.5
local OPACITY_MAX = 1.0
local OPACITY_STEP = 5
local CATEGORY_BUTTON_WIDTH = 138
local BROWSER_SIDEBAR_RIGHT = 158
local BROWSER_CONTENT_LEFT = 168
local SYNC_ICON = "Interface\\Buttons\\UI-RotationRight-Button-Up"
local NAV_PREV_ICON = "Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up"
local NAV_NEXT_ICON = "Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up"

local function Create(kind, name, parent, template)
    if template then
        local ok, frame = pcall(CreateFrame, kind, name, parent, template)
        if ok then return frame end
    end
    return CreateFrame(kind, name, parent)
end

local function SetSolidColor(texture, red, green, blue, alpha)
    if texture.SetColorTexture then texture:SetColorTexture(red, green, blue, alpha)
    else texture:SetTexture(red, green, blue, alpha) end
end

local function ClampNumber(value, minimum, maximum, fallback)
    if type(value) ~= "number" or value ~= value then return fallback end
    return math.max(minimum, math.min(maximum, value))
end

function UI.NormalizePlacement(settings, defaults, screenWidth, screenHeight)
    screenWidth = type(screenWidth) == "number" and screenWidth or 1920
    screenHeight = type(screenHeight) == "number" and screenHeight or 1080
    settings.point = type(settings.point) == "string" and settings.point or defaults.point
    settings.relativePoint = type(settings.relativePoint) == "string" and settings.relativePoint or defaults.relativePoint
    settings.scale = ClampNumber(settings.scale, defaults.scaleMin or 0.5, defaults.scaleMax or 1.5, defaults.scale)
    settings.x = ClampNumber(settings.x, -screenWidth + 32, screenWidth - 32, defaults.x)
    settings.y = ClampNumber(settings.y, -screenHeight + 32, screenHeight - 32, defaults.y)
    return settings
end

function UI.ClampBounds(left, right, bottom, top, screenLeft, screenRight, screenBottom, screenTop, inset)
    inset = inset or 12
    local dx, dy = 0, 0
    if left < screenLeft + inset then dx = screenLeft + inset - left
    elseif right > screenRight - inset then dx = screenRight - inset - right end
    if bottom < screenBottom + inset then dy = screenBottom + inset - bottom
    elseif top > screenTop - inset then dy = screenTop - inset - top end
    return dx, dy
end

local function GetBounds(frame)
    local left, right, bottom, top = frame:GetLeft(), frame:GetRight(), frame:GetBottom(), frame:GetTop()
    if type(left) ~= "number" or type(right) ~= "number"
        or type(bottom) ~= "number" or type(top) ~= "number" then return nil end
    local screenLeft = UIParent.GetLeft and UIParent:GetLeft() or 0
    local screenBottom = UIParent.GetBottom and UIParent:GetBottom() or 0
    local screenRight = UIParent.GetRight and UIParent:GetRight() or (UIParent:GetWidth() or 1920)
    local screenTop = UIParent.GetTop and UIParent:GetTop() or (UIParent:GetHeight() or 1080)
    return left, right, bottom, top, screenLeft, screenRight, screenBottom, screenTop
end

local function CanonicalPosition(frame, defaults)
    local left, right, bottom, top, screenLeft, screenRight, screenBottom, screenTop = GetBounds(frame)
    if not left then return nil, nil end
    if defaults.point == "TOPRIGHT" then return right - screenRight, top - screenTop end
    if defaults.point == "LEFT" then
        return left - screenLeft, ((bottom + top) / 2) - ((screenBottom + screenTop) / 2)
    end
    if defaults.point == "TOP" then
        return ((left + right) / 2) - ((screenLeft + screenRight) / 2), top - screenTop
    end
    return ((left + right) / 2) - ((screenLeft + screenRight) / 2),
        ((bottom + top) / 2) - ((screenBottom + screenTop) / 2)
end

local function ClampAndSave(frame, settings, defaults)
    if frame.SetClampedToScreen then frame:SetClampedToScreen(true) end
    local left, right, bottom, top, screenLeft, screenRight, screenBottom, screenTop = GetBounds(frame)
    if not left then return end
    local dx, dy = UI.ClampBounds(left, right, bottom, top, screenLeft, screenRight, screenBottom, screenTop, 12)
    if dx ~= 0 or dy ~= 0 then
        local point, relativeTo, relativePoint, x, y = frame:GetPoint(1)
        frame:ClearAllPoints()
        frame:SetPoint(point or "CENTER", relativeTo or UIParent, relativePoint or point or "CENTER",
            (tonumber(x) or 0) + dx, (tonumber(y) or 0) + dy)
    end
    local x, y = CanonicalPosition(frame, defaults)
    if x and y then
        settings.point, settings.relativePoint, settings.x, settings.y = defaults.point, defaults.relativePoint, x, y
        frame:ClearAllPoints()
        frame:SetPoint(defaults.point, UIParent, defaults.relativePoint, x, y)
    end
end

local function ConfigureMovement(frame, settings, defaults)
    frame:SetMovable(true)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScript("OnDragStart", function(self)
        if not settings.locked then self:StartMoving() end
    end)
    frame:SetScript("OnDragStop", function(self)
        self:StopMovingOrSizing()
        ClampAndSave(self, settings, defaults)
    end)
end

local function ApplyPlacement(frame, settings, defaults)
    local width = UIParent.GetWidth and UIParent:GetWidth() or 1920
    local height = UIParent.GetHeight and UIParent:GetHeight() or 1080
    UI.NormalizePlacement(settings, defaults, width, height)
    frame:ClearAllPoints()
    frame:SetPoint(settings.point, UIParent, settings.relativePoint, settings.x, settings.y)
    frame:SetScale(settings.scale)
    if frame.SetClampedToScreen then frame:SetClampedToScreen(true) end
    if frame.SetClampRectInsets then pcall(frame.SetClampRectInsets, frame, 0, 0, 0, 0) end
    ClampAndSave(frame, settings, defaults)
end

local function CreatePlainButton(parent, width, label, smallFont)
    return UITheme and UITheme.CreatePanelButton(parent, width, label, smallFont)
        or Create("Button", nil, parent)
end

local function CategoryDisplayName(category)
    if category == "Dungeon Quest Guides" then return "Dungeon Quests" end
    if category == "Leveling Quest Guides" then return "Leveling Quests" end
    if category == "Loremaster Guides" then return "Loremaster" end
    return category
end

local function OpenLibraryEntry(guideID, segment)
    if segment then
        ns.charDB.eraChapterPick = segment.id
        if segment.fork then
            ns.charDB.eraSegment = segment.id
        end
        ns.charDB.eraFloor = segment.id
    end
    ns.Engine:SelectGuide(guideID)
    UI:OpenTracker()
    if UI.browser then UI.browser:Hide() end
end

local function SetButtonTooltip(button, tooltip)
    button:SetScript("OnEnter", function(self)
        if GameTooltip then
            GameTooltip:SetOwner(self, "ANCHOR_LEFT")
            GameTooltip:SetText(tooltip)
            GameTooltip:Show()
        end
    end)
    button:SetScript("OnLeave", function() if GameTooltip then GameTooltip:Hide() end end)
end

local function NormalizeMinimapAngle(angle)
    if type(angle) ~= "number" or angle ~= angle then
        angle = MINIMAP_BUTTON_DEFAULTS.position
    end
    angle = angle % 360
    if angle < 0 then angle = angle + 360 end
    return angle
end

local function MinimapButtonAngle()
    local settings = ns.db and ns.db.minimapButton
    return NormalizeMinimapAngle(settings and settings.position)
end

local function SetMinimapButtonAngle(angle)
    ns.db.minimapButton = type(ns.db.minimapButton) == "table" and ns.db.minimapButton or {}
    ns.db.minimapButton.position = NormalizeMinimapAngle(angle)
end

local function CreateIconButton(parent, texturePath, tooltip, options)
    local button
    if UITheme and UITheme.CreateNavIconButton then
        button = UITheme.CreateNavIconButton(parent, texturePath, options)
    else
        button = Create("Button", nil, parent)
        button:SetSize(26, 26)
        local icon = button:CreateTexture(nil, "ARTWORK")
        icon:SetSize(18, 18)
        icon:SetPoint("CENTER")
        icon:SetTexture(texturePath)
    end
    SetButtonTooltip(button, tooltip)
    return button
end

local function CreateCheckbox(parent, label, getter, setter)
    local box = Create("CheckButton", nil, parent, "UICheckButtonTemplate")
    box:SetSize(26, 26)
    local text = box.Text or box:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    if not box.Text then text:SetPoint("LEFT", box, "RIGHT", 4, 0) end
    text:SetText(label)
    box:SetChecked(getter())
    box:SetScript("OnClick", function(self)
        setter(not not self:GetChecked())
        UI:ApplySettings()
    end)
    box:SetScript("OnShow", function(self) self:SetChecked(getter()) end)
    return box
end

local function CreateSlider(parent, label, minimum, maximum, step, getter, setter, formatValue)
    local slider = Create("Slider", nil, parent, "OptionsSliderTemplate")
    slider:SetOrientation("HORIZONTAL")
    slider:SetWidth(200)
    slider:SetHeight(17)
    slider:SetMinMaxValues(minimum, maximum)
    slider:SetValueStep(step)
    if slider.SetObeyStepOnDrag then slider:SetObeyStepOnDrag(true) end
    local title = parent:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    title:SetPoint("BOTTOMLEFT", slider, "TOPLEFT", 0, 4)
    title:SetText(label)
    local valueText = parent:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    valueText:SetPoint("LEFT", slider, "RIGHT", 8, 0)
    local function Sync()
        local value = getter()
        slider:SetValue(value)
        valueText:SetText(formatValue(value))
    end
    slider:SetScript("OnValueChanged", function(self, value)
        setter(value)
        valueText:SetText(formatValue(value))
        UI:ApplySettings()
    end)
    slider:SetScript("OnShow", Sync)
    Sync()
    slider.valueText = valueText
    return slider
end

function UI.PlayerInCombat()
    return UnitAffectingCombat and UnitAffectingCombat("player")
end

function UI.HideGuideForCombat()
    return ns.db.hideInCombat == true and UI.PlayerInCombat()
end

function UI.NormalizeGuideScale(scale)
    return ClampNumber(scale, 0.5, 1.5, 1)
end

function UI.NormalizeGuideOpacity(opacity)
    return ClampNumber(opacity, OPACITY_MIN, OPACITY_MAX, 1)
end

function UI.GuideOpacityPercent()
    return math.floor(UI.NormalizeGuideOpacity(ns.db.guideOpacity) * 100 + 0.5)
end

local function CreateProgressBar(parent, height)
    local bar = Create("StatusBar", nil, parent)
    bar:SetHeight(height or 7)
    bar:SetMinMaxValues(0, 100)
    bar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
    bar:SetStatusBarColor(0.2, 0.7, 0.2, 0.95)
    local background = bar:CreateTexture(nil, "BACKGROUND")
    background:SetAllPoints()
    SetSolidColor(background, 0.08, 0.1, 0.13, 0.95)
    return bar
end

function UI:CreateTracker()
    local frame = UITheme.CreatePanel(UIParent, "ForeverGuideMateTracker", {
        variant = "panel",
        topInset = 34,
    })
    frame:SetSize(350, 172)
    frame:SetFrameStrata("MEDIUM")
    ConfigureMovement(frame, ns.db.tracker, TRACKER_DEFAULTS)

    local close = UITheme.CreateCloseButton(frame)
    UITheme.PlaceCloseButton(frame, close)
    close:SetScript("OnClick", function() UI:CloseTracker() end)

    local library = (UITheme and UITheme.CreateCogButton)
        and UITheme.CreateCogButton(frame, 18)
        or CreateIconButton(frame, "Interface\\WorldMap\\Gear_64", "Open guide library")
    library:SetPoint("TOPLEFT", frame, "TOPLEFT", 12, -1)
    SetButtonTooltip(library, "Open guide library")
    library:SetScript("OnClick", function() UI:ToggleGuideBrowser() end)
    if library.SetFrameLevel and frame.GetFrameLevel then
        local level = frame:GetFrameLevel()
        if type(level) == "number" then library:SetFrameLevel(level + 10) end
    end

    local percent = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    percent:SetPoint("RIGHT", close, "LEFT", -8, 0)
    percent:SetWidth(38)
    percent:SetJustifyH("RIGHT")

    local titleButton = Create("Button", nil, frame)
    titleButton:SetPoint("TOP", library, "TOP", 0, 0)
    titleButton:SetPoint("BOTTOM", library, "BOTTOM", 0, 0)
    titleButton:SetPoint("LEFT", library, "RIGHT", 6, 0)
    titleButton:SetPoint("RIGHT", percent, "LEFT", -6, 0)
    if titleButton.SetFrameLevel and frame.GetFrameLevel then
        local level = frame:GetFrameLevel()
        if type(level) == "number" then titleButton:SetFrameLevel(level + 5) end
    end
    titleButton:SetScript("OnClick", function() UI:ToggleGuideBrowser() end)

    local title = titleButton:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    title:SetPoint("LEFT", 0, 0)
    title:SetPoint("RIGHT", 0, 0)
    title:SetJustifyH("LEFT")
    if title.SetMaxLines then title:SetMaxLines(1) end

    local progress = CreateProgressBar(frame, 7)
    progress:SetPoint("TOPLEFT", 12, -28)
    progress:SetPoint("TOPRIGHT", -12, -28)

    local typeLabel = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    typeLabel:SetPoint("TOPLEFT", 29, -44)
    local typeIcon = frame:CreateTexture(nil, "ARTWORK")
    typeIcon:SetSize(10, 10)
    typeIcon:SetPoint("RIGHT", typeLabel, "LEFT", -5, 0)
    SetSolidColor(typeIcon, 0.78, 0.58, 0.16, 1)

    local instruction = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    instruction:SetPoint("TOPLEFT", frame, "TOPLEFT", 12, -62)
    instruction:SetPoint("RIGHT", -12, 0)
    instruction:SetHeight(42)
    instruction:SetJustifyH("LEFT")
    instruction:SetJustifyV("TOP")
    instruction:SetWordWrap(true)

    local nextStep = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    nextStep:SetPoint("TOPLEFT", instruction, "BOTTOMLEFT", 0, -4)
    nextStep:SetPoint("RIGHT", -12, 0)
    nextStep:SetHeight(28)
    nextStep:SetJustifyH("LEFT")
    nextStep:SetJustifyV("TOP")
    nextStep:SetWordWrap(true)

    local status = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    status:SetPoint("BOTTOMLEFT", 12, 11)
    status:SetWidth(112)
    status:SetJustifyH("LEFT")

    local previous = CreateIconButton(frame, NAV_PREV_ICON, "Back")
    previous:SetPoint("BOTTOMRIGHT", -73, 7)
    previous:SetScript("OnClick", function() ns.Engine:Previous() end)

    local sync = CreateIconButton(frame, SYNC_ICON, "Resync guide from your quest log and completed quests")
    sync:SetPoint("RIGHT", previous, "LEFT", -4, 0)
    sync:SetScript("OnClick", function() ns.Engine:ResyncCurrent() end)

    local skip = CreateIconButton(frame, NAV_NEXT_ICON, "Skip for now")
    skip:SetPoint("LEFT", previous, "RIGHT", 4, 0)
    skip:SetScript("OnClick", function() ns.Engine:SkipCurrent() end)

    local complete = CreateIconButton(frame, "Interface\\Buttons\\UI-CheckBox-Check", "Mark complete")
    complete:SetPoint("LEFT", skip, "RIGHT", 4, 0)
    complete:SetScript("OnClick", function() ns.Engine:CompleteCurrent() end)

    frame.library, frame.title, frame.percent, frame.progress = library, title, percent, progress
    frame.typeIcon, frame.typeLabel = typeIcon, typeLabel
    frame.instruction, frame.nextStep, frame.status, frame.sync = instruction, nextStep, status, sync
    self.tracker = frame
end

local function MeasuredTextHeight(region, minimum, maximum)
    region:SetHeight(maximum)
    local measured = region.GetStringHeight and region:GetStringHeight() or minimum
    if type(measured) ~= "number" or measured <= 0 then measured = minimum end
    measured = math.max(minimum, math.min(maximum, math.ceil(measured)))
    region:SetHeight(measured)
    return measured
end

function UI:ResizeTracker()
    local instructionHeight = MeasuredTextHeight(self.tracker.instruction, 38, 230)
    local nextHeight = self.tracker.nextStep:GetText() ~= ""
        and MeasuredTextHeight(self.tracker.nextStep, 18, 96) or 0
    self.tracker.nextStep:SetHeight(nextHeight)
    self.tracker:SetHeight(math.max(172, 114 + instructionHeight + nextHeight))
    ClampAndSave(self.tracker, ns.db.tracker, TRACKER_DEFAULTS)
end

function UI:UpdateArrow()
    if not ns.TomTomWaypoints then return end
    local mapID, x, y = ns.PlayerState:CapturePosition()
    local state = ns.Engine.state or {}
    if mapID then
        state.mapID, state.x, state.y = mapID, x, y
    end
    ns.TomTomWaypoints:Sync(ns.db.uiOpen and ns.Engine.currentGoal or nil, state)
end

function UI:NextGoalText(engine)
    if not engine.currentGuide or not engine.currentGoal or type(engine.NextRouteGoal) ~= "function" then
        return nil
    end
    local goal = engine:NextRouteGoal(engine.currentGuide, engine.currentGoal, engine.state)
    return goal and goal.text or nil
end

local function GuideTypeLabel(guide)
    local category = type(guide) == "table" and guide.category or nil
    if type(category) ~= "string" then return nil end
    if category == "Loremaster Guides" then return "Loremaster" end
    if category == "Class Quests" then return "Class" end
    if category == "Raid Quests" then return "Raid" end
    local label = category:match("^(.-) Quest Guides$")
    if label and label ~= "" then return label end
    return nil
end

local FACTION_DISPLAY_ORDER = { "Alliance", "Horde" }

local function GuideConditionFactions(guide)
    local seen = {}
    local function note(faction)
        if faction == "Alliance" or faction == "Horde" then seen[faction] = true end
    end
    local function walk(condition)
        if type(condition) ~= "table" then return end
        note(condition.faction)
        if condition.all then for _, child in ipairs(condition.all) do walk(child) end end
        if condition.any then for _, child in ipairs(condition.any) do walk(child) end end
    end
    if type(guide) == "table" then walk(guide.conditions) end
    local factions = {}
    for _, faction in ipairs(FACTION_DISPLAY_ORDER) do
        if seen[faction] then factions[#factions + 1] = faction end
    end
    return factions
end

local function DungeonFactionLabel(guide)
    local factions = GuideConditionFactions(guide)
    if #factions == 0 then return nil end
    if #factions >= 2 then return "Both" end
    return factions[1]
end

local function EligibilityText(guide, state)
    local eligible, reason = ns.EvaluateCondition(guide.conditions, state or {})
    local typeLabel = GuideTypeLabel(guide)
    local isDungeon = typeLabel == "Dungeon" or typeLabel == "Raid"
    local requirements = {}
    local levelRequirements = {}
    local function Collect(condition)
        if type(condition) ~= "table" then return end
        if condition.all then for _, child in ipairs(condition.all) do Collect(child) end end
        if condition.any then for _, child in ipairs(condition.any) do Collect(child) end end
        if not isDungeon and (condition.faction == "Alliance" or condition.faction == "Horde") then
            requirements[#requirements + 1] = condition.faction
        end
        if condition.level then
            local minimum, maximum = condition.level.min, condition.level.max
            if minimum and maximum then
                levelRequirements[#levelRequirements + 1] = ("Level %d-%d"):format(minimum, maximum)
            elseif minimum then
                levelRequirements[#levelRequirements + 1] = ("Level %d+"):format(minimum)
            elseif maximum then
                levelRequirements[#levelRequirements + 1] = ("Level %d or below"):format(maximum)
            end
        end
    end
    Collect(guide.conditions)
    if isDungeon then
        local factionLabel = DungeonFactionLabel(guide)
        if factionLabel then requirements[#requirements + 1] = factionLabel end
    else
        local alliance, horde, others = false, false, {}
        for _, requirement in ipairs(requirements) do
            if requirement == "Alliance" then alliance = true
            elseif requirement == "Horde" then horde = true
            else others[#others + 1] = requirement end
        end
        requirements = others
        if alliance and horde then
            table.insert(requirements, 1, "Alliance and Horde")
        elseif alliance then
            table.insert(requirements, 1, "Alliance")
        elseif horde then
            table.insert(requirements, 1, "Horde")
        end
    end
    for _, levelText in ipairs(levelRequirements) do requirements[#requirements + 1] = levelText end
    local suffix = #requirements > 0 and ("  •  " .. table.concat(requirements, "  •  ")) or ""
    local text
    if eligible == false then text = "Ineligible" .. suffix
    elseif eligible == nil then text = (reason or "Eligibility pending") .. suffix
    else text = "Eligible" .. suffix end
    local label = GuideTypeLabel(guide)
    if label then return label .. "  •  " .. text end
    return text
end

local function GuideMinimumLevel(guide)
    local level
    local function Collect(condition)
        if type(condition) ~= "table" then return end
        if condition.all then
            for _, child in ipairs(condition.all) do Collect(child) end
        end
        if condition.any then
            for _, child in ipairs(condition.any) do Collect(child) end
        end
        if condition.level and type(condition.level.min) == "number" then
            level = condition.level.min
        end
    end
    if type(guide) == "table" then Collect(guide.conditions) end
    return level
end

local function EntryComesBefore(left, right)
    local leftLevel, rightLevel = left.levelMin, right.levelMin
    if leftLevel and rightLevel and leftLevel ~= rightLevel then return leftLevel < rightLevel end
    if leftLevel and not rightLevel then return true end
    if rightLevel and not leftLevel then return false end
    return (left.title or "") < (right.title or "")
end

local function SegmentIsIneligible(segment, state)
    state = state or {}
    if segment.faction and state.faction and segment.faction ~= state.faction then
        return true
    end
    if type(state.level) == "number" and segment.levelMin and state.level < segment.levelMin then
        return true
    end
    return false
end

local function SegmentEligibilityText(guide, segment, state)
    state = state or {}
    local eligible, reason
    if segment.faction and state.faction and segment.faction ~= state.faction then
        eligible = false
    elseif type(state.level) ~= "number" then
        eligible, reason = nil, "Level is unavailable."
    elseif segment.levelMin and state.level < segment.levelMin then
        eligible = false
    else
        eligible = true
    end
    local requirements = {}
    if segment.faction == "Alliance" or segment.faction == "Horde" then
        requirements[#requirements + 1] = segment.faction
    end
    if segment.levelMin then
        requirements[#requirements + 1] = ("Level %d+"):format(segment.levelMin)
    end
    local suffix = #requirements > 0 and ("  •  " .. table.concat(requirements, "  •  ")) or ""
    local text
    if eligible == false then text = "Ineligible" .. suffix
    elseif eligible == nil then text = (reason or "Eligibility pending") .. suffix
    else text = "Eligible" .. suffix end
    local label = GuideTypeLabel(guide)
    if label then return label .. "  •  " .. text end
    return text
end

function ns.LibraryEntries(state, query, category, hideIneligible)
    ns:FinalizeGuides()
    state = state or {}
    query = type(query) == "string" and string.lower(query) or ""
    category = category or "All Guides"
    local entries = {}
    for _, guideID in ipairs(ns.guideOrder) do
        local guide = ns.guides[guideID]
        if category == "All Guides" or guide.category == category then
            local route = guide.segments and ns.Engine:RouteSegments(guide, state) or nil
            if route and #route > 0 then
                for _, segment in ipairs(route) do
                    local haystack = string.lower(table.concat({
                        segment.title or "", guide.title or "", guide.category or "",
                    }, " "))
                    if (query == "" or string.find(haystack, query, 1, true))
                        and not (hideIneligible and SegmentIsIneligible(segment, state)) then
                        entries[#entries + 1] = {
                            guide = guide,
                            segment = segment,
                            title = segment.title,
                            levelMin = segment.levelMin,
                        }
                    end
                end
            else
                local haystack = string.lower((guide.title or "") .. " " .. (guide.category or ""))
                local ineligible = ns.EvaluateCondition(guide.conditions, state) == false
                if (query == "" or string.find(haystack, query, 1, true))
                    and not (hideIneligible and ineligible) then
                    entries[#entries + 1] = {
                        guide = guide,
                        title = guide.title,
                        levelMin = GuideMinimumLevel(guide),
                    }
                end
            end
        end
    end
    table.sort(entries, EntryComesBefore)
    return entries
end

function UI:CreateGuideBrowser()
    local frame = UITheme.CreatePanel(UIParent, "ForeverGuideMateBrowser", {
        variant = "panel",
        topInset = 40,
    })
    local title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    title:SetPoint("TOP", 0, -8)
    title:SetText("Guide Library")
    frame.panelTitle = title
    frame:SetSize(560, 370)
    frame:SetFrameStrata("DIALOG")
    ConfigureMovement(frame, ns.db.browser, BROWSER_DEFAULTS)
    local close = UITheme.CreateCloseButton(frame)
    UITheme.PlaceCloseButton(frame, close)
    close:SetScript("OnClick", function() frame:Hide() end)
    local hideIneligible = Create("CheckButton", nil, frame, "UICheckButtonTemplate")
    hideIneligible:SetSize(24, 24)
    local hideIneligibleLabel = hideIneligible.Text
    if not hideIneligibleLabel or not hideIneligibleLabel.SetText then
        hideIneligibleLabel = hideIneligible:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    end
    hideIneligibleLabel:SetText("Hide Ineligible")
    hideIneligibleLabel:SetJustifyH("RIGHT")
    if hideIneligibleLabel.SetFontObject then
        hideIneligibleLabel:SetFontObject(GameFontNormal)
    end
    if hideIneligibleLabel.SetTextColor then
        hideIneligibleLabel:SetTextColor(1, 0.82, 0, 1)
    end
    hideIneligibleLabel:ClearAllPoints()
    hideIneligibleLabel:SetPoint("RIGHT", close, "LEFT", -12, -2)
    hideIneligible:SetPoint("RIGHT", hideIneligibleLabel, "LEFT", -6, 0)
    if hideIneligible.SetFrameLevel and frame.GetFrameLevel then
        local level = frame:GetFrameLevel()
        if type(level) == "number" then
            hideIneligible:SetFrameLevel(level + 25)
        end
    end
    hideIneligible:SetScript("OnClick", function(self)
        ns.db.browser.hideIneligible = not not self:GetChecked()
        UI.browserPage = 1
        UI:RefreshGuideBrowser()
    end)
    local function SyncHideIneligible()
        hideIneligible:SetChecked(ns.db.browser.hideIneligible == true)
    end
    hideIneligible:SetScript("OnShow", SyncHideIneligible)
    SyncHideIneligible()
    local search = Create("EditBox", nil, frame, "InputBoxTemplate")
    search:SetHeight(24)
    search:SetPoint("TOPLEFT", BROWSER_CONTENT_LEFT, -42)
    search:SetPoint("TOPRIGHT", -14, -42)
    search:SetAutoFocus(false)
    search:SetTextInsets(8, 8, 0, 0)
    search:SetScript("OnTextChanged", function() UI.browserPage = 1; UI:RefreshGuideBrowser() end)
    local categoryTitle = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    categoryTitle:SetPoint("TOPLEFT", 16, -52)
    categoryTitle:SetText("CATEGORIES")
    local separator = frame:CreateTexture(nil, "ARTWORK")
    separator:SetPoint("TOPLEFT", BROWSER_SIDEBAR_RIGHT, -42)
    separator:SetPoint("BOTTOMLEFT", BROWSER_SIDEBAR_RIGHT, 14)
    separator:SetWidth(1)
    SetSolidColor(separator, 0.2, 0.25, 0.3, 0.7)
    local empty = frame:CreateFontString(nil, "OVERLAY", "GameFontDisable")
    empty:SetPoint("CENTER", 78, -10)
    empty:SetText("No guides match this search.")
    empty:Hide()
    local resultCount = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    resultCount:SetPoint("BOTTOMLEFT", BROWSER_CONTENT_LEFT, 17)
    local previousPage = CreateIconButton(frame, NAV_PREV_ICON, "Previous page")
    previousPage:SetPoint("BOTTOMRIGHT", -92, 10)
    previousPage:SetScript("OnClick", function()
        UI.browserPage = math.max(1, UI.browserPage - 1)
        UI:RefreshGuideBrowser()
    end)
    local page = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    page:SetPoint("LEFT", previousPage, "RIGHT", 6, 0)
    page:SetWidth(34)
    page:SetJustifyH("CENTER")
    local nextPage = CreateIconButton(frame, NAV_NEXT_ICON, "Next page")
    nextPage:SetPoint("LEFT", page, "RIGHT", 6, 0)
    nextPage:SetScript("OnClick", function()
        UI.browserPage = UI.browserPage + 1
        UI:RefreshGuideBrowser()
    end)
    frame.search, frame.empty, frame.resultCount = search, empty, resultCount
    frame.close, frame.hideIneligible, frame.hideIneligibleLabel = close, hideIneligible, hideIneligibleLabel
    frame.previousPage, frame.page, frame.nextPage = previousPage, page, nextPage
    self.browser = frame
    frame:Hide()
end

function UI:CreateBrowserRow(index)
    local row = Create("Frame", nil, self.browser)
    row:SetSize(374, 78)
    row:SetPoint("TOPLEFT", BROWSER_CONTENT_LEFT - 2, -76 - ((index - 1) * 84))
    if UITheme and UITheme.ApplyListRow then UITheme.ApplyListRow(row, false) end
    if row.EnableMouse then row:EnableMouse(true) end
    if row.RegisterForClicks then row:RegisterForClicks("LeftButtonUp") end
    row:SetScript("OnEnter", function(self)
        if UITheme and UITheme.SetListRowHover then UITheme.SetListRowHover(self, true) end
        if SetCursor then SetCursor("Interface\\CURSOR\\Point") end
        local tip = rawget(self, "libraryTooltip")
        if tip and GameTooltip then
            GameTooltip:SetOwner(self, "ANCHOR_LEFT")
            GameTooltip:SetText(tip)
            GameTooltip:Show()
        end
    end)
    row:SetScript("OnLeave", function(self)
        if UITheme and UITheme.SetListRowHover then UITheme.SetListRowHover(self, false) end
        if SetCursor then SetCursor(nil) end
        if GameTooltip then GameTooltip:Hide() end
    end)
    local title = row:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    title:SetPoint("TOPLEFT", 10, -9)
    title:SetPoint("RIGHT", -10, 0)
    title:SetJustifyH("LEFT")
    local eligibility = row:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    eligibility:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -5)
    eligibility:SetPoint("RIGHT", -10, 0)
    eligibility:SetJustifyH("LEFT")
    eligibility:SetJustifyV("TOP")
    local counts = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    counts:SetPoint("TOPRIGHT", -10, -10)
    counts:SetJustifyH("RIGHT")
    local progress = CreateProgressBar(row, 7)
    progress:SetPoint("BOTTOMLEFT", 10, 12)
    progress:SetPoint("RIGHT", -10, 0)
    local divider = row:CreateTexture(nil, "ARTWORK")
    divider:SetPoint("TOPLEFT", row, "BOTTOMLEFT", 0, -3)
    divider:SetPoint("TOPRIGHT", row, "BOTTOMRIGHT", 0, -3)
    divider:SetHeight(1)
    SetSolidColor(divider, GOLD_BORDER[1], GOLD_BORDER[2], GOLD_BORDER[3], GOLD_BORDER[4])
    divider:Hide()
    row.title, row.eligibility, row.counts, row.progress, row.divider = title, eligibility, counts, progress, divider
    self.browserRows[index] = row
    return row
end

local function PaintCategoryButton(button)
    local selected = rawget(button, "categorySelected") == true
    local displayText = rawget(button, "categoryDisplayText") or ""
    if button.SetText then button:SetText(displayText) end
    local fontString = button.GetFontString and button:GetFontString()
    if not fontString and button.label and button.label.SetText then
        fontString = button.label
    end
    if fontString then
        if fontString.SetFontObject then fontString:SetFontObject(GameFontHighlightSmall) end
        if fontString.SetTextColor then
            local hover = rawget(button, "categoryHover") == true
            if selected then
                if hover then
                    fontString:SetTextColor(1, 0.92, 0.45, 1)
                else
                    fontString:SetTextColor(1, 0.82, 0, 1)
                end
            elseif hover then
                fontString:SetTextColor(1, 1, 1, 1)
            else
                fontString:SetTextColor(0.78, 0.78, 0.78, 1)
            end
        end
    end
    local highlight = rawget(button, "categoryHighlight")
    if highlight and highlight.SetAlpha then
        local hover = rawget(button, "categoryHover") == true
        if selected then
            highlight:SetAlpha(hover and 0.5 or 0.38)
        elseif hover then
            highlight:SetAlpha(0.35)
        else
            highlight:SetAlpha(0)
        end
    end
end

local function ApplyCategoryAppearance(button, selected, displayText)
    rawset(button, "categorySelected", selected == true)
    rawset(button, "categoryDisplayText", displayText or "")
    PaintCategoryButton(button)
end

function UI:CreateBrowserCategory(index, name)
    local button = self.browserCategoryButtons[index]
    if not button and UITheme and UITheme.CreateCategoryListButton then
        button = UITheme.CreateCategoryListButton(self.browser, CATEGORY_BUTTON_WIDTH)
        button:SetScript("OnEnter", function(self)
            rawset(self, "categoryHover", true)
            PaintCategoryButton(self)
        end)
        button:SetScript("OnLeave", function(self)
            rawset(self, "categoryHover", false)
            PaintCategoryButton(self)
        end)
    end
    button = button or CreatePlainButton(self.browser, CATEGORY_BUTTON_WIDTH, "", true)
    button:ClearAllPoints()
    button:SetPoint("TOPLEFT", 14, -70 - ((index - 1) * 28))
    button:SetText(CategoryDisplayName(name))
    button:SetScript("OnClick", function()
        UI.browserCategory = name
        UI.browserPage = 1
        UI:RefreshGuideBrowser()
    end)
    button:Show()
    self.browserCategoryButtons[index] = button
    return button
end

function UI:RefreshGuideBrowser()
    if not self.browser then return end
    ns:FinalizeGuides()
    local query = self.browser.search:GetText()
    query = type(query) == "string" and string.lower(query) or ""
    local categories, categorySeen = {}, {}
    for _, guideID in ipairs(ns.guideOrder) do
        local category = ns.guides[guideID].category
        if not categorySeen[category] then categories[#categories + 1], categorySeen[category] = category, true end
    end
    table.sort(categories)
    local allGuides = self:CreateBrowserCategory(1, "All Guides")
    ApplyCategoryAppearance(allGuides, self.browserCategory == "All Guides", "All Guides")
    for index, category in ipairs(categories) do
        local button = self:CreateBrowserCategory(index + 1, category)
        local displayName = CategoryDisplayName(category)
        ApplyCategoryAppearance(button, self.browserCategory == category, displayName)
    end
    for index = #categories + 2, #self.browserCategoryButtons do self.browserCategoryButtons[index]:Hide() end

    local matches = ns.LibraryEntries(ns.Engine.state or {}, query, self.browserCategory, ns.db.browser.hideIneligible)
    local pageSize = 3
    local pageCount = math.max(1, math.ceil(#matches / pageSize))
    self.browserPage = math.max(1, math.min(self.browserPage, pageCount))
    local visible = 0
    for matchIndex = ((self.browserPage - 1) * pageSize) + 1,
        math.min(self.browserPage * pageSize, #matches) do
            visible = visible + 1
            local entry = matches[matchIndex]
            local guide = entry.guide
            local segment = entry.segment
            local row = self.browserRows[visible] or self:CreateBrowserRow(visible)
            local browserState = ns.Engine.state or {}
            ns.PlayerState:FillCompletion(browserState, ns.QuestIDsForGuide(guide))
            local progress = ns.Engine:GetGuideProgress(guide, browserState, segment)
            row.title:SetText(entry.title)
            if segment then
                row.eligibility:SetText(SegmentEligibilityText(guide, segment, browserState))
            else
                row.eligibility:SetText(EligibilityText(guide, browserState))
            end
            row.counts:SetText(("%d/%d  %d%%"):format(progress.completed, progress.eligible, progress.percentage))
            row.progress:SetValue(progress.percentage)
            local selectedGuideID = guide.id
            local chosenSegment = segment
            local rowTitle = entry.title or guide.title or ""
            rawset(row, "libraryTooltip", rowTitle)
            row:SetScript("OnMouseUp", function(_, mouseButton)
                if mouseButton == "LeftButton" then
                    OpenLibraryEntry(selectedGuideID, chosenSegment)
                end
            end)
            row.divider:SetShown(matchIndex < math.min(self.browserPage * pageSize, #matches))
            row:Show()
    end
    for index = visible + 1, #self.browserRows do self.browserRows[index]:Hide() end
    if visible == 0 then self.browser.empty:Show() else self.browser.empty:Hide() end
    self.browser.resultCount:SetText((#matches == 1 and "1 guide" or (#matches .. " guides")))
    self.browser.page:SetText(self.browserPage .. "/" .. pageCount)
    self.browser.previousPage:SetShown(pageCount > 1)
    self.browser.page:SetShown(pageCount > 1)
    self.browser.nextPage:SetShown(pageCount > 1)
end

function UI:OpenTracker()
    ns.db.uiOpen = true
    self:ApplySettings()
    if ns.MapPins then ns.MapPins:Refresh() end
end

function UI:CloseTracker()
    ns.db.uiOpen = false
    if self.browser then self.browser:Hide() end
    if ns.TomTomWaypoints then ns.TomTomWaypoints:Clear() end
    if ns.MapPins then ns.MapPins:Clear() end
    self:ApplySettings()
end

function UI:OpenGuideBrowser()
    self:OpenTracker()
    self:RefreshGuideBrowser()
    self.browser:Show()
end

function UI:ToggleGuideBrowser()
    if self.browser and self.browser:IsShown() then self.browser:Hide() else self:OpenGuideBrowser() end
end

function UI:ToggleGuideTracker()
    if ns.db.uiOpen then self:CloseTracker() else self:OpenTracker() end
end

function UI:OpenSettings()
    if UI.PlayerInCombat() then return end
    if Settings and Settings.OpenToCategory and self.settingsCategory then
        local categoryID = self.settingsCategory
        if type(categoryID) == "table" and type(categoryID.ID) == "number" then
            categoryID = categoryID.ID
        end
        Settings.OpenToCategory(categoryID)
        return
    end
    if InterfaceOptionsFrame_OpenToCategory and self.settingsPanel then
        InterfaceOptionsFrame_OpenToCategory(self.settingsPanel)
        InterfaceOptionsFrame_OpenToCategory(self.settingsPanel)
    end
end

function UI:CloseSettingsIfOpen()
    if Settings and Settings.CloseSettings then
        Settings.CloseSettings()
        return
    end
    if SettingsPanel and SettingsPanel.IsShown and SettingsPanel:IsShown() and SettingsPanel.Hide then
        SettingsPanel:Hide()
        return
    end
    if InterfaceOptionsFrame and InterfaceOptionsFrame.IsShown
        and InterfaceOptionsFrame:IsShown() and InterfaceOptionsFrame.Hide then
        InterfaceOptionsFrame:Hide()
    end
end

function UI:CreateLauncher()
    if not Minimap or self.minimapButton or not ns.MinimapButton then return end
    ns.MinimapButton:Create({
        getAngle = MinimapButtonAngle,
        setAngle = SetMinimapButtonAngle,
        onLeftClick = function() UI:ToggleGuideTracker() end,
        onRightClick = function() UI:OpenSettings() end,
    })
    self.minimapButton = ns.MinimapButton:GetButton()
    self.launcher = self.minimapButton
end

local function PathDot(leg)
    return type(leg) == "table" and type(leg.label) == "string"
        and string.find(leg.label, "Continue toward", 1, true) == 1
end

local function GoalQuestID(goal)
    local complete = goal and goal.complete
    if type(complete) ~= "table" then
        return nil
    end
    local quest = complete.quest
    if type(quest) == "table" and type(quest.id) == "number" then
        return quest.id
    end
    local objective = complete.questObjective
    if type(objective) == "table" and type(objective.id) == "number" then
        return objective.id
    end
end

local function ObjectiveFinished(objective)
    if type(objective) ~= "table" then return false end
    if type(objective.numRequired) == "number" and objective.numRequired > 0
        and type(objective.numFulfilled) == "number" then
        return objective.numFulfilled >= objective.numRequired
    end
    return objective.finished == true
        or (type(objective.finished) == "number" and objective.finished > 0)
end

local function ObjectiveForGoal(goal, objectives)
    if type(objectives) ~= "table" then return nil end
    local complete = type(goal.complete) == "table" and goal.complete or nil
    local spec = type(complete) == "table" and complete.questObjective or nil
    if type(spec) == "table" and type(spec.text) == "string" and spec.text ~= "" then
        local needle = string.lower(spec.text)
        for _, objective in ipairs(objectives) do
            if type(objective) == "table" and type(objective.text) == "string"
                and string.find(string.lower(objective.text), needle, 1, true) then
                return objective
            end
        end
    end
    if type(spec) == "table" and type(spec.index) == "number" then
        return objectives[spec.index]
    end
    for _, objective in ipairs(objectives) do
        if not ObjectiveFinished(objective) then return objective end
    end
end

-- Navigation labels describe the route, not the work. Show the current
-- unfinished objective row from the quest log, then fall back to the quest
-- summary and finally the authored step text.
local ELITE_NOTE = "This is an elite. Bring a group."

local function PreserveEliteNote(goal, text)
    if type(text) ~= "string" or type(goal.text) ~= "string"
        or not goal.text:find(ELITE_NOTE, 1, true)
        or text:lower():find("elite", 1, true) then
        return text
    end
    return text .. (text:match("[%p]$") and " " or ". ") .. ELITE_NOTE
end

local function ClientObjective(goal, state)
    if not goal or (goal.useClientText ~= true and goal.useClientPin ~= true)
        or (goal.kind ~= "objective" and goal.kind ~= "gossip") then
        return nil
    end
    local quests = state and state.quests
    local entry = type(quests) == "table" and quests[GoalQuestID(goal)]
    local objective = type(entry) == "table" and ObjectiveForGoal(goal, entry.objectives)
    if type(objective) == "table" and type(objective.text) == "string" and objective.text ~= "" then
        return PreserveEliteNote(goal, objective.text)
    end
    local summary = type(entry) == "table" and entry.summary
    if type(summary) == "string" and summary ~= "" then
        return PreserveEliteNote(goal, summary)
    end
    return goal.text
end

local function TurnInInstruction(goal, state)
    if not goal or goal.kind ~= "turnin" then return nil end
    local quests = state and state.quests
    local entry = type(quests) == "table" and quests[GoalQuestID(goal)]
    local title = type(entry) == "table" and entry.title
    local route = goal.route
    local destination = type(route) == "table" and route[#route]
    destination = type(destination) == "table" and destination.label
    if type(title) == "string" and title ~= ""
        and type(destination) == "string" and destination ~= "" then
        return title .. " @ " .. destination
    end
    return goal.text
end

function UI:GoalInstruction(engine)
    local goal = engine.currentGoal
    if not goal then
        return ""
    end
    local state = engine.state or {}
    local leg, status = ns.Navigation:GetActiveLeg(goal, state)
    local taxiInstruction = ns.Navigation:TaxiInstruction(goal, state, leg, status)
    if taxiInstruction then
        return taxiInstruction
    end
    if goal.kind == "accept" then
        if leg and (leg.transport or leg.flight or leg.learnedTaxi or leg.fallbackTaxi) then
            return status or leg.label or goal.text
        end
        if not state.mapID or not state.x or not state.y then
            return goal.text
        end
    end
    -- Era routes keep their path dots. On the map the step reads as the
    -- objective. Off the map the travel text still has to point the way.
    if PathDot(leg) and leg and state.mapID and ns.Navigation:OnMap(state.mapID, leg.mapID) then
        if goal.kind == "objective" or goal.kind == "gossip" then
            return ClientObjective(goal, state)
        end
        return goal.text
    end
    local finalLeg = goal.route and goal.route[#goal.route]
    local pickup = goal.kind == "accept" or goal.kind == "turnin" or goal.kind == "gossip"
    if pickup and finalLeg and ns.Navigation:NearPin(state, finalLeg) then
        if goal.kind == "gossip" and (goal.useClientText == true or goal.useClientPin == true) then
            return ClientObjective(goal, state)
        end
        if goal.kind == "turnin" and goal.useClientPin == true
            and not (ns.Navigation.PendingTaxiTravel and ns.Navigation:PendingTaxiTravel(goal, state, leg)) then
            return TurnInInstruction(goal, state)
        end
        if goal.kind == "accept" then
            return goal.text
        end
        return goal.text
    end
    if leg and state.mapID and not ns.Navigation:OnMap(state.mapID, leg.mapID)
        and not ns.Navigation:InsidePin(state, leg)
        and not ns.Navigation:InZone(state.mapID, leg.mapID)
        and not (pickup and finalLeg and ns.Navigation:NearPin(state, finalLeg)) then
        return status or leg.offMapText or leg.label or goal.text
    end
    if leg and (leg.transport or leg.flight or leg.learnedTaxi or leg.fallbackTaxi) then
        if pickup then
            return status or leg.label or leg.offMapText or goal.text
        end
        return status or leg.label or goal.text
    end
    if leg and finalLeg and state.mapID and (leg.mapID ~= finalLeg.mapID or leg.x ~= finalLeg.x or leg.y ~= finalLeg.y) then
        if (goal.useClientText == true or goal.useClientPin == true)
            and (goal.kind == "objective" or goal.kind == "gossip")
            and (not status or status == leg.label) then
            return ClientObjective(goal, state)
        end
        return status or leg.label or goal.text
    end
    if (goal.useClientText == true or goal.useClientPin == true)
        and (goal.kind == "objective" or goal.kind == "gossip") then
        return ClientObjective(goal, state)
    end
    if (goal.useClientText == true or goal.useClientPin == true) and goal.kind == "turnin" then
        return TurnInInstruction(goal, state)
    end
    return goal.text
end

function UI:Update(engine)
    if not self.tracker then return end
    self:ApplySettings()
    local guide = engine.currentGuide
    local progress = guide and engine:GetGuideProgress(guide, engine.state) or
        { completed = 0, eligible = 0, percentage = 0 }
    local title = guide and guide.title or "No guide selected"
    if engine.currentSegment and engine.currentSegment.title then
        title = engine.currentSegment.title
    end
    self.tracker.title:SetText(title)
    self.tracker.percent:SetText(progress.percentage .. "%")
    self.tracker.progress:SetValue(progress.percentage)
    if engine.currentGoal then
        local kindLabels = { turnin = "TURN IN" }
        self.tracker.typeLabel:SetText(kindLabels[engine.currentGoal.kind]
            or string.upper(engine.currentGoal.kind or "step"))
        local colors = {
            accept = { 0.2, 0.75, 0.35 }, objective = { 0.92, 0.72, 0.2 }, turnin = { 0.25, 0.65, 1 },
            gossip = { 0.9, 0.5, 0.9 }, travel = { 0.7, 0.45, 0.95 }, note = { 0.65, 0.7, 0.75 },
        }
        local color = colors[engine.currentGoal.kind] or colors.note
        SetSolidColor(self.tracker.typeIcon, color[1], color[2], color[3], 1)
        self.tracker.typeIcon:Show()
        local instruction = self:GoalInstruction(engine)
        if type(engine.status) == "string" and string.sub(engine.status, 1, 8) == "Blocked:" then
            instruction = engine.status
        end
        self.tracker.instruction:SetText(instruction)
        local nextText = self:NextGoalText(engine)
        self.tracker.nextStep:SetText(nextText and ("Next: " .. nextText) or "")
        self.tracker.status:SetText(("%d/%d complete"):format(progress.completed, progress.eligible))
    else
        self.tracker.typeLabel:SetText("")
        self.tracker.typeIcon:Hide()
        local instruction = engine.status or "No active step."
        local guideEligible = guide and ns.EvaluateCondition(guide.conditions, engine.state or {})
        if guideEligible == false then
            instruction = "Ineligible"
        end
        self.tracker.instruction:SetText(instruction)
        self.tracker.nextStep:SetText("")
        self.tracker.status:SetText("")
    end
    self:ResizeTracker()
    if self.browser and self.browser:IsShown() then self:RefreshGuideBrowser() end
    self:UpdateArrow()
end

function UI:ApplySettings()
    ns.db.guideScale = UI.NormalizeGuideScale(ns.db.guideScale)
    ns.db.guideOpacity = UI.NormalizeGuideOpacity(ns.db.guideOpacity)
    ns.db.tracker.scale = ns.db.guideScale
    local opacity = ns.db.guideOpacity
    ApplyPlacement(self.tracker, ns.db.tracker, TRACKER_DEFAULTS)
    if self.tracker and self.tracker.SetAlpha then self.tracker:SetAlpha(opacity) end
    if self.browser then
        ApplyPlacement(self.browser, ns.db.browser, BROWSER_DEFAULTS)
        if self.browser.SetAlpha then self.browser:SetAlpha(opacity) end
    end
    if ns.db.uiOpen and ns.db.tracker.enabled and not UI.HideGuideForCombat() then
        self.tracker:Show()
    else
        self.tracker:Hide()
    end
    if ns.MinimapButton then
        if ns.db.showMinimapButton ~= false then
            ns.MinimapButton:UpdatePosition()
            ns.MinimapButton:SetShown(true)
        else
            ns.MinimapButton:SetShown(false)
        end
    end
end

function UI:ValidatePositions()
    if self.tracker then self:ApplySettings() end
end

function UI:ResetPositions()
    for key, value in pairs(TRACKER_DEFAULTS) do ns.db.tracker[key] = value end
    for key, value in pairs(BROWSER_DEFAULTS) do ns.db.browser[key] = value end
    ns.db.guideScale = 1
    ns.db.minimapButton = ns.db.minimapButton or {}
    ns.db.minimapButton.position = MINIMAP_BUTTON_DEFAULTS.position
    self:ApplySettings()
end

function UI:RegisterSettings()
    local panel = Create("Frame", "ForeverGuideMateSettingsPanel")
    panel.name = "Forever GuideMate"
    if panel.SetSize then
        panel:SetSize(420, 520)
    end
    local title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText("Forever GuideMate")
    local help = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    help:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
    help:SetText("Guide tracker and navigation preferences.")
    local trackerEnabled = CreateCheckbox(panel, "Enable guide tracker", function() return ns.db.tracker.enabled end,
        function(value) ns.db.tracker.enabled = value end)
    trackerEnabled:SetPoint("TOPLEFT", help, "BOTTOMLEFT", -4, -14)
    local showMinimapButton = CreateCheckbox(panel, "Show minimap button",
        function() return ns.db.showMinimapButton ~= false end,
        function(value) ns.db.showMinimapButton = value end)
    showMinimapButton:SetPoint("TOPLEFT", trackerEnabled, "BOTTOMLEFT", 0, -4)
    local trackerLocked = CreateCheckbox(panel, "Lock guide tracker", function() return ns.db.tracker.locked end,
        function(value) ns.db.tracker.locked = value end)
    trackerLocked:SetPoint("TOPLEFT", showMinimapButton, "BOTTOMLEFT", 0, -4)
    local autoAdvance = CreateCheckbox(panel, "Advance observable steps automatically", function() return ns.db.autoAdvance end,
        function(value) ns.db.autoAdvance = value; ns.ScheduleRefresh() end)
    local autoQuest = CreateCheckbox(panel, "Automatically accept the current step and turn in guide quests", function() return ns.db.autoQuest end,
        function(value) ns.db.autoQuest = value end)
    autoAdvance:SetPoint("TOPLEFT", trackerLocked, "BOTTOMLEFT", 0, -4)
    autoQuest:SetPoint("TOPLEFT", autoAdvance, "BOTTOMLEFT", 0, -4)
    local hideIneligible = CreateCheckbox(panel, "Hide ineligible guides in the library",
        function() return not not ns.db.browser.hideIneligible end,
        function(value)
            ns.db.browser.hideIneligible = value
            UI.browserPage = 1
            if UI.browser and UI.browser:IsShown() then UI:RefreshGuideBrowser() end
        end)
    hideIneligible:SetPoint("TOPLEFT", autoQuest, "BOTTOMLEFT", 0, -4)
    local hideInCombat = CreateCheckbox(panel, "Hide in Combat",
        function() return not not ns.db.hideInCombat end,
        function(value) ns.db.hideInCombat = value end)
    hideInCombat:SetPoint("TOPLEFT", hideIneligible, "BOTTOMLEFT", 0, -4)
    local guideScale = CreateSlider(panel, "Guide scale", 50, 150, 5,
        function() return math.floor(UI.NormalizeGuideScale(ns.db.guideScale) * 100 + 0.5) end,
        function(value) ns.db.guideScale = value / 100 end,
        function(value) return value .. "%" end)
    guideScale:SetPoint("TOPLEFT", hideInCombat, "BOTTOMLEFT", 0, -28)
    local guideOpacity = CreateSlider(panel, "Guide opacity", 50, 100, OPACITY_STEP,
        function() return UI.GuideOpacityPercent() end,
        function(value)
            ns.db.guideOpacity = value / 100
            UI:ApplySettings()
        end,
        function(value) return value .. "%" end)
    guideOpacity:SetPoint("TOPLEFT", guideScale, "BOTTOMLEFT", 0, -36)
    local heading = panel:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    heading:SetPoint("TOPLEFT", guideOpacity, "BOTTOMLEFT", 6, -20)
    heading:SetText("Navigation")
    local providerLabel = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    providerLabel:SetPoint("TOPLEFT", heading, "BOTTOMLEFT", 0, -8)
    providerLabel:SetText("Waypoint provider")
    local provider = Create("DropdownButton", nil, panel, "WowStyle1DropdownTemplate")
    provider:SetPoint("TOPLEFT", providerLabel, "BOTTOMLEFT", 0, -4)
    provider:SetSize(240, 24)
    if provider.SetupMenu then
        provider:SetDefaultText("Blizzard Map Pins")
        provider:SetupMenu(function(_, root)
            local function Selected(value) return ns.db.waypointProvider == value end
            local function Select(value)
                ns.db.waypointProvider = value
                UI:UpdateArrow()
            end
            root:CreateRadio("Blizzard Map Pins", Selected, Select, "blizzard")
            root:CreateRadio("TomTom (optional addon)", Selected, Select, "tomtom")
        end)
        provider:SetScript("OnShow", function(control) control:GenerateMenu() end)
    end
    local marker = CreateCheckbox(panel, "Show in-world destination marker",
        function()
            return C_CVar and type(C_CVar.GetCVar) == "function"
                and C_CVar.GetCVar("showInGameNavigation") == "1" or false
        end,
        function(value)
            if C_CVar and type(C_CVar.GetCVar) == "function" and type(C_CVar.SetCVar) == "function"
                and C_CVar.GetCVar("showInGameNavigation") ~= nil then
                C_CVar.SetCVar("showInGameNavigation", value and "1" or "0")
            else
                ns.TomTomWaypoints:Report("In-world navigation is unavailable on this client.")
            end
        end)
    marker:SetPoint("TOPLEFT", provider, "BOTTOMLEFT", -4, -4)
    local open = CreatePlainButton(panel, 180, "Open guide browser")
    open:SetPoint("TOPLEFT", marker, "BOTTOMLEFT", 4, -10)
    open:SetScript("OnClick", function() UI:OpenGuideBrowser() end)
    local reset = CreatePlainButton(panel, 180, "Reset frame positions")
    reset:SetPoint("TOPLEFT", open, "BOTTOMLEFT", 0, -6)
    reset:SetScript("OnClick", function() UI:ResetPositions() end)
    if Settings and Settings.RegisterCanvasLayoutCategory and Settings.RegisterAddOnCategory then
        local category = Settings.RegisterCanvasLayoutCategory(panel, "Forever GuideMate")
        if category then
            Settings.RegisterAddOnCategory(category)
            self.settingsCategory = category
        end
    elseif InterfaceOptions_AddCategory then InterfaceOptions_AddCategory(panel) end
    self.settingsPanel = panel
end

function UI:HasStartedGuide()
    local selected = ns.charDB and ns.charDB.selectedGuide
    if type(selected) ~= "string" or selected == "" then return false end
    if ns.guides[selected] then return true end
    if ns.retiredEraGuides and ns.retiredEraGuides[selected] then return true end
    return false
end

function UI:Initialize()
    self:CreateTracker()
    self:CreateGuideBrowser()
    self:CreateLauncher()
    self:RegisterSettings()
    self:ApplySettings()
    if ns.FinalizeGuides then ns:FinalizeGuides() end
    if not self:HasStartedGuide() then
        self:OpenGuideBrowser()
    end
end

function ForeverGuideMate_OnAddonCompartmentClick() UI:OpenGuideBrowser() end

function ForeverGuideMate_OnAddonCompartmentEnter(owner)
    if not GameTooltip or not GameTooltip.SetOwner then return end
    -- The compartment menu passes the addon name string, not a frame.
    if type(owner) ~= "table" then
        owner = AddonCompartmentFrame
    end
    if type(owner) ~= "table" then return end
    GameTooltip:SetOwner(owner, "ANCHOR_LEFT")
    GameTooltip:SetText("Forever GuideMate")
    if GameTooltip.AddLine then
        GameTooltip:AddLine("Open the guide library.", 1, 1, 1)
    end
    GameTooltip:Show()
end

function ForeverGuideMate_OnAddonCompartmentLeave()
    if GameTooltip then GameTooltip:Hide() end
end
