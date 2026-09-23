local _, ns = ...

local UI = {
    elapsed = 0,
    browserRows = {},
    browserCategoryButtons = {},
    browserPage = 1,
    browserCategory = "All Guides",
}
ns.UI = UI

local TRACKER_DEFAULTS = { point = "LEFT", relativePoint = "LEFT", x = 0, y = 0, scale = 1 }
local BROWSER_DEFAULTS = { point = "CENTER", relativePoint = "CENTER", x = 0, y = 0, scale = 1 }
local GOLD_BORDER = { 0.78, 0.58, 0.16, 0.95 }

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

local function AddPanelBackground(frame, alpha)
    local background = frame:CreateTexture(nil, "BACKGROUND")
    background:SetAllPoints()
    SetSolidColor(background, 0.018, 0.027, 0.04, alpha or 0.94)
    local topLine = frame:CreateTexture(nil, "BORDER")
    topLine:SetPoint("TOPLEFT", 1, -1)
    topLine:SetPoint("TOPRIGHT", -1, -1)
    topLine:SetHeight(1)
    SetSolidColor(topLine, 0.73, 0.55, 0.18, 0.8)
    local edge = frame:CreateTexture(nil, "BORDER")
    edge:SetPoint("BOTTOMLEFT", 1, 1)
    edge:SetPoint("BOTTOMRIGHT", -1, 1)
    edge:SetHeight(1)
    SetSolidColor(edge, 0.2, 0.25, 0.3, 0.8)
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
    settings.scale = ClampNumber(settings.scale, 0.7, 1.4, defaults.scale)
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

local function CreatePlainButton(parent, width, label)
    local button = Create("Button", nil, parent)
    button:SetSize(width, 22)
    local background = button:CreateTexture(nil, "BACKGROUND")
    background:SetAllPoints()
    SetSolidColor(background, 0.09, 0.12, 0.16, 0.9)
    local highlight = button:CreateTexture(nil, "HIGHLIGHT")
    highlight:SetAllPoints()
    SetSolidColor(highlight, 0.34, 0.45, 0.58, 0.3)
    local text = button:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    text:SetPoint("CENTER")
    text:SetText(label)
    button.label = text
    button.SetText = function(_, value) text:SetText(value) end
    return button
end

local function CreateIconButton(parent, texturePath, tooltip)
    local button = CreatePlainButton(parent, 25, "")
    button:SetSize(25, 22)
    local icon = button:CreateTexture(nil, "ARTWORK")
    icon:SetSize(15, 15)
    icon:SetPoint("CENTER")
    icon:SetTexture(texturePath)
    button:SetScript("OnEnter", function(self)
        if GameTooltip then
            GameTooltip:SetOwner(self, "ANCHOR_TOP")
            GameTooltip:SetText(tooltip)
            GameTooltip:Show()
        end
    end)
    button:SetScript("OnLeave", function() if GameTooltip then GameTooltip:Hide() end end)
    return button
end

local function CreateProgressBar(parent, height)
    local bar = Create("StatusBar", nil, parent)
    bar:SetHeight(height or 7)
    bar:SetMinMaxValues(0, 100)
    bar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
    bar:SetStatusBarColor(0.78, 0.58, 0.16, 0.95)
    local background = bar:CreateTexture(nil, "BACKGROUND")
    background:SetAllPoints()
    SetSolidColor(background, 0.08, 0.1, 0.13, 0.95)
    return bar
end

function UI:CreateTracker()
    local frame = Create("Frame", "ForeverGuideMateTracker", UIParent)
    frame:SetSize(350, 178)
    frame:SetFrameStrata("MEDIUM")
    AddPanelBackground(frame)
    ConfigureMovement(frame, ns.db.tracker, TRACKER_DEFAULTS)
    local library = CreatePlainButton(frame, 46, "Guides")
    library:SetPoint("TOPLEFT", 10, -8)
    library:SetScript("OnClick", function() UI:ToggleGuideBrowser() end)
    local titleButton = Create("Button", nil, frame)
    titleButton:SetPoint("TOPLEFT", library, "TOPRIGHT", 7, 0)
    titleButton:SetPoint("TOPRIGHT", -89, -8)
    titleButton:SetHeight(22)
    local title = titleButton:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    title:SetPoint("LEFT")
    title:SetPoint("RIGHT")
    title:SetJustifyH("LEFT")
    titleButton:SetScript("OnClick", function() UI:ToggleGuideBrowser() end)
    local close = CreatePlainButton(frame, 26, "×")
    close:SetPoint("TOPRIGHT", -9, -8)
    close:SetScript("OnClick", function() UI:CloseTracker() end)
    local percent = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    percent:SetPoint("RIGHT", close, "LEFT", -8, 0)
    percent:SetWidth(38)
    percent:SetJustifyH("RIGHT")
    local progress = CreateProgressBar(frame, 7)
    progress:SetPoint("TOPLEFT", 10, -39)
    progress:SetPoint("TOPRIGHT", -10, -39)
    local typeLabel = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    typeLabel:SetPoint("TOPLEFT", 27, -56)
    local typeIcon = frame:CreateTexture(nil, "ARTWORK")
    typeIcon:SetSize(10, 10)
    typeIcon:SetPoint("RIGHT", typeLabel, "LEFT", -5, 0)
    SetSolidColor(typeIcon, 0.78, 0.58, 0.16, 1)
    local instruction = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    instruction:SetPoint("TOPLEFT", frame, "TOPLEFT", 11, -75)
    instruction:SetPoint("RIGHT", -11, 0)
    instruction:SetHeight(42)
    instruction:SetJustifyH("LEFT")
    instruction:SetJustifyV("TOP")
    instruction:SetWordWrap(true)
    local nextStep = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    nextStep:SetPoint("TOPLEFT", instruction, "BOTTOMLEFT", 0, -4)
    nextStep:SetPoint("RIGHT", -11, 0)
    nextStep:SetHeight(28)
    nextStep:SetJustifyH("LEFT")
    nextStep:SetJustifyV("TOP")
    nextStep:SetWordWrap(true)
    local status = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    status:SetPoint("BOTTOMLEFT", 11, 11)
    status:SetWidth(112)
    status:SetJustifyH("LEFT")
    local previous = CreateIconButton(frame, "Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up", "Back")
    previous:SetPoint("BOTTOMRIGHT", -73, 7)
    previous:SetScript("OnClick", function() ns.Engine:Previous() end)
    local skip = CreateIconButton(frame, "Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up", "Skip for now")
    skip:SetPoint("LEFT", previous, "RIGHT", 4, 0)
    skip:SetScript("OnClick", function() ns.Engine:SkipCurrent() end)
    local complete = CreateIconButton(frame, "Interface\\Buttons\\UI-CheckBox-Check", "Mark complete")
    complete:SetPoint("LEFT", skip, "RIGHT", 4, 0)
    complete:SetScript("OnClick", function() ns.Engine:CompleteCurrent() end)
    frame.title, frame.percent, frame.progress = title, percent, progress
    frame.typeIcon, frame.typeLabel = typeIcon, typeLabel
    frame.instruction, frame.nextStep, frame.status = instruction, nextStep, status
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
    self.tracker:SetHeight(math.max(178, 126 + instructionHeight + nextHeight))
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
    if not engine.currentGuide or not engine.currentGoal then return nil end
    for _, goal in ipairs(engine:CandidateGoals(engine.currentGuide, engine.state)) do
        if goal.id ~= engine.currentGoal.id then return goal.text end
    end
end

local function GuideTypeLabel(guide)
    local category = type(guide) == "table" and guide.category or nil
    if type(category) ~= "string" then return nil end
    local label = category:match("^(.-) Quest Guides$")
    if label and label ~= "" then return label end
    return nil
end

local FACTION_DISPLAY_ORDER = { "Alliance", "Horde" }

local function GuideFactions(guide)
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
    if type(guide) == "table" then
        walk(guide.conditions)
        if GuideTypeLabel(guide) == "Dungeon" and type(guide.goals) == "table" then
            for _, goal in ipairs(guide.goals) do
                if type(goal.conditions) == "table" then walk(goal.conditions) end
            end
        end
    end
    local factions = {}
    for _, faction in ipairs(FACTION_DISPLAY_ORDER) do
        if seen[faction] then factions[#factions + 1] = faction end
    end
    return factions
end

local function DungeonFactionLabel(guide)
    local factions = GuideFactions(guide)
    if #factions == 0 then return nil end
    if #factions >= 2 then return "Both" end
    return factions[1]
end

local function EligibilityText(guide, state)
    local eligible, reason = ns.EvaluateCondition(guide.conditions, state or {})
    local isDungeon = GuideTypeLabel(guide) == "Dungeon"
    local requirements = {}
    local levelRequirements = {}
    local function Collect(condition)
        if type(condition) ~= "table" then return end
        if condition.all then for _, child in ipairs(condition.all) do Collect(child) end end
        if condition.any then for _, child in ipairs(condition.any) do Collect(child) end end
        if not isDungeon and type(condition.faction) == "string" then
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
    end
    for _, levelText in ipairs(levelRequirements) do requirements[#requirements + 1] = levelText end
    local suffix = #requirements > 0 and ("  •  " .. table.concat(requirements, "  •  ")) or ""
    local text
    if eligible == false and isDungeon then text = "Ineligible" .. suffix
    elseif eligible == false then text = (reason or "Not eligible") .. suffix
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

local function GuideComesBefore(left, right)
    local leftLevel, rightLevel = GuideMinimumLevel(left), GuideMinimumLevel(right)
    if leftLevel and rightLevel and leftLevel ~= rightLevel then return leftLevel < rightLevel end
    if leftLevel and not rightLevel then return true end
    if rightLevel and not leftLevel then return false end
    return (left.title or "") < (right.title or "")
end

function UI:CreateGuideBrowser()
    local frame = Create("Frame", "ForeverGuideMateBrowser", UIParent)
    frame:SetSize(560, 370)
    frame:SetFrameStrata("DIALOG")
    AddPanelBackground(frame, 0.97)
    ConfigureMovement(frame, ns.db.browser, BROWSER_DEFAULTS)
    local title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    title:SetPoint("TOPLEFT", 14, -14)
    title:SetText("Guide Library")
    local close = CreatePlainButton(frame, 26, "×")
    close:SetPoint("TOPRIGHT", -12, -10)
    close:SetScript("OnClick", function() frame:Hide() end)
    local search = Create("EditBox", nil, frame, "InputBoxTemplate")
    search:SetHeight(24)
    search:SetPoint("TOPLEFT", 174, -42)
    search:SetPoint("TOPRIGHT", -14, -42)
    search:SetAutoFocus(false)
    search:SetTextInsets(8, 8, 0, 0)
    search:SetScript("OnTextChanged", function() UI.browserPage = 1; UI:RefreshGuideBrowser() end)
    local categoryTitle = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    categoryTitle:SetPoint("TOPLEFT", 16, -52)
    categoryTitle:SetText("CATEGORIES")
    local separator = frame:CreateTexture(nil, "ARTWORK")
    separator:SetPoint("TOPLEFT", 160, -42)
    separator:SetPoint("BOTTOMLEFT", 160, 14)
    separator:SetWidth(1)
    SetSolidColor(separator, 0.2, 0.25, 0.3, 0.7)
    local empty = frame:CreateFontString(nil, "OVERLAY", "GameFontDisable")
    empty:SetPoint("CENTER", 78, -10)
    empty:SetText("No guides match this search.")
    empty:Hide()
    local resultCount = frame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    resultCount:SetPoint("BOTTOMLEFT", 174, 17)
    local previousPage = CreatePlainButton(frame, 28, "‹")
    previousPage:SetPoint("BOTTOMRIGHT", -86, 10)
    previousPage:SetScript("OnClick", function()
        UI.browserPage = math.max(1, UI.browserPage - 1)
        UI:RefreshGuideBrowser()
    end)
    local page = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    page:SetPoint("LEFT", previousPage, "RIGHT", 7, 0)
    page:SetWidth(34)
    page:SetJustifyH("CENTER")
    local nextPage = CreatePlainButton(frame, 28, "›")
    nextPage:SetPoint("LEFT", page, "RIGHT", 7, 0)
    nextPage:SetScript("OnClick", function()
        UI.browserPage = UI.browserPage + 1
        UI:RefreshGuideBrowser()
    end)
    frame.search, frame.empty, frame.resultCount = search, empty, resultCount
    frame.previousPage, frame.page, frame.nextPage = previousPage, page, nextPage
    self.browser = frame
    frame:Hide()
end

function UI:CreateBrowserRow(index)
    local row = Create("Frame", nil, self.browser)
    row:SetSize(374, 78)
    row:SetPoint("TOPLEFT", 172, -76 - ((index - 1) * 84))
    local background = row:CreateTexture(nil, "BACKGROUND")
    background:SetAllPoints()
    SetSolidColor(background, 0.045, 0.065, 0.09, 0.8)
    local title = row:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    title:SetPoint("TOPLEFT", 10, -9)
    title:SetPoint("RIGHT", -86, 0)
    title:SetJustifyH("LEFT")
    local eligibility = row:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
    eligibility:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -5)
    local counts = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
    counts:SetPoint("TOPRIGHT", -10, -10)
    counts:SetJustifyH("RIGHT")
    local progress = CreateProgressBar(row, 7)
    progress:SetPoint("BOTTOMLEFT", 10, 12)
    progress:SetPoint("RIGHT", -92, 0)
    local open = CreatePlainButton(row, 70, "Open")
    open:SetPoint("BOTTOMRIGHT", -10, 5)
    local divider = row:CreateTexture(nil, "ARTWORK")
    divider:SetPoint("TOPLEFT", row, "BOTTOMLEFT", 0, -3)
    divider:SetPoint("TOPRIGHT", row, "BOTTOMRIGHT", 0, -3)
    divider:SetHeight(1)
    SetSolidColor(divider, GOLD_BORDER[1], GOLD_BORDER[2], GOLD_BORDER[3], GOLD_BORDER[4])
    divider:Hide()
    row.title, row.eligibility, row.counts, row.progress, row.open, row.divider = title, eligibility, counts, progress, open, divider
    self.browserRows[index] = row
    return row
end

function UI:CreateBrowserCategory(index, name)
    local button = self.browserCategoryButtons[index] or CreatePlainButton(self.browser, 132, "")
    if not rawget(button, "selectionBorder") then
        local border = {}
        local function Edge(point, relativePoint, width, height, x, y)
            local texture = button:CreateTexture(nil, "BORDER")
            texture:SetPoint(point, button, relativePoint, x, y)
            texture:SetSize(width, height)
            SetSolidColor(texture, GOLD_BORDER[1], GOLD_BORDER[2], GOLD_BORDER[3], GOLD_BORDER[4])
            texture:Hide()
            border[#border + 1] = texture
        end
        Edge("TOPLEFT", "TOPLEFT", 132, 1, 0, 0)
        Edge("BOTTOMLEFT", "BOTTOMLEFT", 132, 1, 0, 0)
        Edge("TOPLEFT", "TOPLEFT", 1, 22, 0, 0)
        Edge("TOPRIGHT", "TOPRIGHT", 1, 22, 0, 0)
        button.selectionBorder = border
    end
    button:ClearAllPoints()
    button:SetPoint("TOPLEFT", 14, -70 - ((index - 1) * 28))
    button:SetText(name)
    button:SetScript("OnClick", function()
        UI.browserCategory = name
        UI.browserPage = 1
        UI:RefreshGuideBrowser()
    end)
    button:Show()
    self.browserCategoryButtons[index] = button
    return button
end

local function SetCategorySelected(button, selected)
    for _, texture in ipairs(rawget(button, "selectionBorder") or {}) do texture:SetShown(selected) end
end

function UI:RefreshGuideBrowser()
    if not self.browser then return end
    local query = self.browser.search:GetText()
    query = type(query) == "string" and string.lower(query) or ""
    local categories, categorySeen = {}, {}
    for _, guideID in ipairs(ns.guideOrder) do
        local category = ns.guides[guideID].category
        if not categorySeen[category] then categories[#categories + 1], categorySeen[category] = category, true end
    end
    table.sort(categories)
    local allGuides = self:CreateBrowserCategory(1, "All Guides")
    allGuides:SetText(self.browserCategory == "All Guides" and "› All Guides" or "All Guides")
    SetCategorySelected(allGuides, self.browserCategory == "All Guides")
    for index, category in ipairs(categories) do
        local button = self:CreateBrowserCategory(index + 1, category)
        button:SetText(self.browserCategory == category and ("› " .. category) or category)
        SetCategorySelected(button, self.browserCategory == category)
    end
    for index = #categories + 2, #self.browserCategoryButtons do self.browserCategoryButtons[index]:Hide() end

    local matches = {}
    for _, guideID in ipairs(ns.guideOrder) do
        local guide = ns.guides[guideID]
        local haystack = string.lower(guide.title .. " " .. guide.category)
        if (self.browserCategory == "All Guides" or guide.category == self.browserCategory)
            and (query == "" or string.find(haystack, query, 1, true)) then
            matches[#matches + 1] = guide
        end
    end
    table.sort(matches, GuideComesBefore)
    local pageSize = 3
    local pageCount = math.max(1, math.ceil(#matches / pageSize))
    self.browserPage = math.max(1, math.min(self.browserPage, pageCount))
    local visible = 0
    for matchIndex = ((self.browserPage - 1) * pageSize) + 1,
        math.min(self.browserPage * pageSize, #matches) do
            visible = visible + 1
            local guide = matches[matchIndex]
            local row = self.browserRows[visible] or self:CreateBrowserRow(visible)
            local progress = ns.Engine:GetGuideProgress(guide, ns.Engine.state or {})
            row.title:SetText(guide.title)
            row.eligibility:SetText(EligibilityText(guide, ns.Engine.state))
            row.counts:SetText(("%d/%d  %d%%"):format(progress.completed, progress.eligible, progress.percentage))
            row.progress:SetValue(progress.percentage)
            row.open:SetText(ns.charDB.selectedGuide == guide.id and "Continue" or "Open")
            local selectedGuideID = guide.id
            row.open:SetScript("OnClick", function()
                ns.Engine:SelectGuide(selectedGuideID)
                UI:OpenTracker()
                UI.browser:Hide()
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

function UI:CreateLauncher()
    if not Minimap then return end
    local button = CreatePlainButton(Minimap, 30, "FG")
    button:SetSize(30, 30)
    button:SetPoint("TOPLEFT", Minimap, "TOPLEFT", -5, 5)
    if button.SetClampedToScreen then button:SetClampedToScreen(true) end
    button:SetScript("OnClick", function() UI:OpenGuideBrowser() end)
    self.launcher = button
end

function UI:Update(engine)
    if not self.tracker then return end
    self:ApplySettings()
    local guide = engine.currentGuide
    local progress = guide and engine:GetGuideProgress(guide, engine.state) or
        { completed = 0, eligible = 0, percentage = 0 }
    self.tracker.title:SetText(guide and guide.title or "No guide selected")
    self.tracker.percent:SetText(progress.percentage .. "%")
    self.tracker.progress:SetValue(progress.percentage)
    if engine.currentGoal then
        self.tracker.typeLabel:SetText(string.upper(engine.currentGoal.kind or "step"))
        local colors = {
            accept = { 0.2, 0.75, 0.35 }, objective = { 0.92, 0.72, 0.2 }, turnin = { 0.25, 0.65, 1 },
            travel = { 0.7, 0.45, 0.95 }, note = { 0.65, 0.7, 0.75 },
        }
        local color = colors[engine.currentGoal.kind] or colors.note
        SetSolidColor(self.tracker.typeIcon, color[1], color[2], color[3], 1)
        self.tracker.typeIcon:Show()
        self.tracker.instruction:SetText(engine.currentGoal.text)
        local nextText = self:NextGoalText(engine)
        self.tracker.nextStep:SetText(nextText and ("Next: " .. nextText) or "")
        self.tracker.status:SetText(("%d/%d complete"):format(progress.completed, progress.eligible))
    else
        self.tracker.typeLabel:SetText("")
        self.tracker.typeIcon:Hide()
        local instruction = engine.status or "No active step."
        local guideEligible = guide and ns.EvaluateCondition(guide.conditions, engine.state or {})
        if guideEligible == false and GuideTypeLabel(guide) == "Dungeon" then
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
    ApplyPlacement(self.tracker, ns.db.tracker, TRACKER_DEFAULTS)
    if self.browser then ApplyPlacement(self.browser, ns.db.browser, BROWSER_DEFAULTS) end
    if ns.db.uiOpen and ns.db.tracker.enabled then self.tracker:Show() else self.tracker:Hide() end
    if self.launcher then
        if AddonCompartmentFrame then self.launcher:Hide() else self.launcher:Show() end
    end
end

function UI:ValidatePositions()
    if self.tracker then self:ApplySettings() end
end

function UI:ResetPositions()
    for key, value in pairs(TRACKER_DEFAULTS) do ns.db.tracker[key] = value end
    for key, value in pairs(BROWSER_DEFAULTS) do ns.db.browser[key] = value end
    self:ApplySettings()
end

local function CreateCheckbox(parent, label, getter, setter)
    local box = Create("CheckButton", nil, parent, "UICheckButtonTemplate")
    box:SetSize(26, 26)
    local text = box.Text or box:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    if not box.Text then text:SetPoint("LEFT", box, "RIGHT", 4, 0) end
    text:SetText(label)
    box:SetChecked(getter())
    box:SetScript("OnClick", function(self) setter(not not self:GetChecked()); UI:ApplySettings() end)
    box:SetScript("OnShow", function(self) self:SetChecked(getter()) end)
    return box
end

function UI:RegisterSettings()
    local panel = Create("Frame", "ForeverGuideMateSettingsPanel")
    panel.name = "Forever GuideMate"
    local title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    title:SetPoint("TOPLEFT", 16, -16)
    title:SetText("Forever GuideMate")
    local help = panel:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
    help:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -8)
    help:SetText("Guide tracker and navigation preferences.")
    local trackerEnabled = CreateCheckbox(panel, "Enable guide tracker", function() return ns.db.tracker.enabled end,
        function(value) ns.db.tracker.enabled = value end)
    trackerEnabled:SetPoint("TOPLEFT", help, "BOTTOMLEFT", -4, -14)
    local trackerLocked = CreateCheckbox(panel, "Lock guide tracker", function() return ns.db.tracker.locked end,
        function(value) ns.db.tracker.locked = value end)
    trackerLocked:SetPoint("TOPLEFT", trackerEnabled, "BOTTOMLEFT", 0, -4)
    local autoAdvance = CreateCheckbox(panel, "Advance observable steps automatically", function() return ns.db.autoAdvance end,
        function(value) ns.db.autoAdvance = value; ns.ScheduleRefresh() end)
    autoAdvance:SetPoint("TOPLEFT", trackerLocked, "BOTTOMLEFT", 0, -4)
    local open = CreatePlainButton(panel, 180, "Open guide browser")
    open:SetPoint("TOPLEFT", autoAdvance, "BOTTOMLEFT", 4, -14)
    open:SetScript("OnClick", function() UI:OpenGuideBrowser() end)
    local trackerScale = CreatePlainButton(panel, 180, "Cycle tracker scale")
    trackerScale:SetPoint("TOPLEFT", open, "BOTTOMLEFT", 0, -6)
    trackerScale:SetScript("OnClick", function()
        ns.db.tracker.scale = ns.db.tracker.scale >= 1.2 and 0.8 or ns.db.tracker.scale + 0.1
        UI:ApplySettings()
    end)
    local reset = CreatePlainButton(panel, 180, "Reset frame positions")
    reset:SetPoint("TOPLEFT", trackerScale, "BOTTOMLEFT", 0, -6)
    reset:SetScript("OnClick", function() UI:ResetPositions() end)
    if Settings and Settings.RegisterCanvasLayoutCategory and Settings.RegisterAddOnCategory then
        local category = Settings.RegisterCanvasLayoutCategory(panel, "Forever GuideMate")
        if category then Settings.RegisterAddOnCategory(category) end
    elseif InterfaceOptions_AddCategory then InterfaceOptions_AddCategory(panel) end
    self.settingsPanel = panel
end

function UI:Initialize()
    self:CreateTracker()
    self:CreateGuideBrowser()
    self:CreateLauncher()
    self:RegisterSettings()
    self:ApplySettings()
    if not ns.guides[ns.charDB.selectedGuide] then
        self:OpenGuideBrowser()
    end
end

function ForeverGuideMate_OnAddonCompartmentClick() UI:OpenGuideBrowser() end

function ForeverGuideMate_OnAddonCompartmentEnter(button)
    if GameTooltip then
        GameTooltip:SetOwner(button, "ANCHOR_LEFT")
        GameTooltip:SetText("Forever GuideMate")
        GameTooltip:AddLine("Open the guide library.", 1, 1, 1)
        GameTooltip:Show()
    end
end

function ForeverGuideMate_OnAddonCompartmentLeave()
    if GameTooltip then GameTooltip:Hide() end
end
