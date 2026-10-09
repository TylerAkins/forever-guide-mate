local failures = 0
local assertions = 0

local function Check(value, message)
    assertions = assertions + 1
    if not value then failures = failures + 1; io.stderr:write("FAIL: " .. message .. "\n") end
end

local function Equal(actual, expected, message)
    Check(actual == expected, message .. " (expected " .. tostring(expected) .. ", got " .. tostring(actual) .. ")")
end

local function NewRegion(parent)
    local region = { shown = true, points = {}, text = "", parent = parent }
    local methods = {}
    function methods:SetPoint(...) self.points[#self.points + 1] = { ... } end
    function methods:ClearAllPoints() self.points = {} end
    function methods:GetPoint() local point = self.points[1] or {}; return (table.unpack or unpack)(point) end
    function methods:SetText(value) self.text = value end
    function methods:GetText() return self.text end
    function methods:Show() self.shown = true end
    function methods:Hide() self.shown = false end
    function methods:SetShown(value) self.shown = not not value end
    function methods:IsShown() return self.shown end
    function methods:SetScript(name, callback)
        local scripts = rawget(self, "scripts") or {}
        rawset(self, "scripts", scripts)
        scripts[name] = callback
    end
    function methods:CreateTexture(_, layer)
        local child = NewRegion(self)
        child.layer = layer
        self.textures = rawget(self, "textures") or {}
        self.textures[#self.textures + 1] = child
        self.lastTexture = child
        return child
    end
    function methods:CreateFontString() local child = NewRegion(self); self.lastFontString = child; return child end
    function methods:CreateLine() local child = NewRegion(self); self.lastLine = child; return child end
    function methods:GetParent() return rawget(self, "parent") end
    function methods:SetStartPoint(...) self.startPoint = { ... } end
    function methods:SetEndPoint(...) self.endPoint = { ... } end
    function methods:SetClampedToScreen(value) self.clamped = value end
    function methods:SetScale(value) self.scale = value end
    function methods:SetSize(width, height) self.width, self.height = width, height end
    function methods:SetHeight(height) self.height = height end
    function methods:SetTexture(value) self.texturePath = value end
    function methods:SetColorTexture(red, green, blue, alpha) self.color = { red, green, blue, alpha } end
    function methods:GetStringHeight()
        if self.text == "" then return 0 end
        return math.ceil(#self.text / 42) * 14
    end
    function methods:SetRotation(value) self.rotation = value end
    function methods:SetAlpha(value) self.alpha = value end
    function methods:GetAlpha() return rawget(self, "alpha") or 1 end
    function methods:SetBackdrop(value) self.backdrop = value end
    function methods:GetBackdrop() return rawget(self, "backdrop") end
    function methods:SetValue(value) self.value = value end
    function methods:GetCenter() return 100, 100 end
    function methods:GetEffectiveScale() return 1 end
    function methods:HookScript(name, callback)
        local hooks = rawget(self, "hookScripts") or {}
        rawset(self, "hookScripts", hooks)
        hooks[name] = callback
    end
    function methods:SetChecked(value) self.checked = value end
    function methods:GetChecked() return self.checked end
    function methods:GetWidth() return rawget(self, "width") or 1920 end
    function methods:GetHeight() return rawget(self, "height") or 1080 end
    setmetatable(region, { __index = function(_, key) return methods[key] or function() end end })
    return region
end

UIParent = NewRegion()
UIParent.width, UIParent.height = 1920, 1080
Minimap = NewRegion()
Minimap.width, Minimap.height = 140, 140
Minimap.GetWidth = function(self) return self.width end
Minimap.GetHeight = function(self) return self.height end
Minimap.GetEffectiveScale = function() return 1 end
GetCursorPosition = function() return 100, 170 end
local createdFrames = {}
local createFrameTemplates = {}
CreateFrame = function(kind, _, parent, template)
    local frame = NewRegion(parent)
    frame.template = template
    if template then createFrameTemplates[#createFrameTemplates + 1] = template end
    if template == "ForeverGuideMateMapPinTemplate" then
        frame.Texture = frame:CreateTexture(nil, "OVERLAY")
        frame.UseFrameLevelType = function(self, frameLevelType) self.frameLevelType = frameLevelType end
        frame.SetScalingLimits = function(self, ...) self.scalingLimits = { ... } end
    end
    createdFrames[#createdFrames + 1] = frame
    if kind == "CheckButton" then
        frame.Text = NewRegion()
        frame.GetChecked = function(self) return rawget(self, "checked") end
        frame.SetChecked = function(self, value) self.checked = not not value end
    end
    if template == "BackdropTemplate" then
        frame.SetBackdrop = function(self, value) self.backdrop = value end
        frame.GetBackdrop = function(self) return rawget(self, "backdrop") end
    end
    if template == "UIPanelButtonTemplate" then
        local label = NewRegion()
        frame.fontString = label
        frame.SetText = function(self, value)
            self.text = value
            label.text = value
        end
        frame.GetText = function(self) return rawget(self, "text") or "" end
        frame.GetFontString = function(self) return self.fontString end
        frame.label = label
    end
    if kind == "Slider" then
        frame.value = 100
        frame.SetOrientation = function() end
        frame.SetMinMaxValues = function(self, minimum, maximum) self.minimum, self.maximum = minimum, maximum end
        frame.SetValueStep = function() end
        frame.SetObeyStepOnDrag = function() end
        frame.SetValue = function(self, value) self.value = value end
        frame.GetValue = function(self) return self.value end
    end
    return frame
end
UnitAffectingCombat = function() return false end
C_Timer = nil
Settings = nil
InterfaceOptions_AddCategory = nil
AddonCompartmentFrame = nil

local ns = {}
local function Load(path)
    local chunk, reason = loadfile(path)
    Check(chunk ~= nil, "load " .. path .. ": " .. tostring(reason))
    if chunk then chunk("ForeverGuideMate", ns) end
end

Load("Core.lua")
Load("PlayerState.lua")
Load("Travel.lua")
Load("Taxi.lua")
Load("GuideEngine.lua")
Load("SkipLineage.lua")
Load("Navigation.lua")
Load("TomTomWaypoints.lua")
Load("MapPins.lua")
Load("MinimapButton.lua")
Load("UITheme.lua")
Load("UI.lua")
Load("Guides/Dungeons/RagefireChasm.lua")

ForeverGuideMateDB = nil
ForeverGuideMateCharDB = nil
local markerValue, markerWrites = "1", 0
C_CVar = {
    GetCVar = function() return markerValue end,
    SetCVar = function(_, value) markerValue = value; markerWrites = markerWrites + 1 end,
}
ns.InitializeStorage()
ns.UI:Initialize()
Equal(ns.db.waypointProvider, "blizzard", "Blizzard is the default provider")
Equal(markerWrites, 0, "login does not overwrite the shared navigation CVar")
for _, frame in ipairs(createdFrames) do
    if rawget(frame, "Text") and frame.Text:GetText() == "Show in-world destination marker" then
        Equal(frame.checked, true, "marker checkbox reads the current game setting")
        frame:SetChecked(false)
        frame.scripts.OnClick(frame)
        Equal(markerValue, "0", "marker checkbox writes the shared game setting")
        markerValue = "1"
        frame.scripts.OnShow(frame)
        Equal(frame.checked, true, "marker checkbox reflects external CVar changes")
    end
end

Equal(ns.UI.tracker.clamped, true, "tracker is clamped to the screen")
local trackerPoint, _, trackerRelative, trackerX, trackerY = ns.UI.tracker:GetPoint()
Equal(trackerPoint, "LEFT", "tracker defaults to the left edge")
Equal(trackerRelative, "LEFT", "tracker anchors against the left edge")
Equal(trackerX, 0, "tracker starts flush with the left edge")
Equal(trackerY, 0, "tracker starts vertically centered")
Equal(ns.charDB.selectedGuide, nil, "no guide is selected until the player chooses one")
Equal(ns.UI.browser.shown, true, "startup opens the guide library until a guide is chosen")
Equal(ns.UI.browser.clamped, true, "browser is clamped to the screen")
Equal(ns.db.browser.hideIneligible, false, "hide ineligible defaults off")
Equal(ns.UI.browser.hideIneligible.checked, false, "the browser checkbox starts unchecked")
Equal(ns.db.hideInCombat, false, "hide in combat defaults off")
Equal(ns.db.showMinimapButton ~= false, true, "show minimap button defaults on")
Check(ns.UI.minimapButton ~= nil, "minimap button is created")
Equal(ns.db.minimapButton.position, 200, "minimap button default angle is 200 degrees")
Equal(ns.UI.minimapButton.width, 31, "minimap button matches LFG Forever size")
Equal(ns.UI.minimapButton.height, 31, "minimap button matches LFG Forever size")
Equal(ns.UI.minimapButton.points[1][2], Minimap, "minimap button anchors to the minimap")
local minimapTextures = ns.UI.minimapButton.textures
local disc, icon, border = minimapTextures[1], minimapTextures[2], minimapTextures[3]
Equal(disc.texturePath, "Interface\\Minimap\\UI-Minimap-Background", "minimap uses LFG's black backing")
Equal(disc.width, 24, "black backing matches LFG size")
Equal(disc.height, 24, "black backing is square")
Equal(icon.width, 18, "quest icon matches LFG icon size")
Equal(icon.height, 18, "quest icon is square")
for _, texture in ipairs({ disc, icon }) do
    Equal(texture.points[1][1], "CENTER", "backing and icon are centered")
    Equal(texture.points[1][2], ns.UI.minimapButton, "texture anchors to the button")
    Equal(texture.points[1][3], "CENTER", "texture aligns with button center")
    Equal(texture.points[1][4], 0, "texture has no horizontal offset")
    Equal(texture.points[1][5], 0, "texture has no vertical offset")
end
Equal(border.width, 50, "border matches LFG size")
Equal(border.height, 50, "border is square")
Equal(border.points[1][1], "TOPLEFT", "border retains its texture art alignment")
Equal(disc.layer, "BACKGROUND", "black backing sits behind the icon")
Equal(icon.layer, "ARTWORK", "quest icon sits above the backing")
Equal(border.layer, "OVERLAY", "ring sits above the icon")
ns.UI.minimapButton.isDragging = true
ns.UI.minimapButton.scripts.OnUpdate(ns.UI.minimapButton, 0)
local draggedAngle = ns.db.minimapButton.position
ns.UI.minimapButton.scripts.OnUpdate(ns.UI.minimapButton, 0)
Equal(ns.db.minimapButton.position, draggedAngle, "drag angle stays stable for a fixed cursor")
ns.UI.minimapButton.isDragging = false
ns.UI.minimapButton.scripts.OnUpdate(ns.UI.minimapButton, 0)
Equal(ns.db.minimapButton.position, draggedAngle, "drag angle does not change after drag stops")
ns.db.uiOpen = true
ns.UI.minimapButton.scripts.OnClick(ns.UI.minimapButton, "LeftButton")
Equal(ns.db.uiOpen, false, "minimap left click hides the guide tracker")
ns.UI.minimapButton.scripts.OnClick(ns.UI.minimapButton, "LeftButton")
Equal(ns.db.uiOpen, true, "minimap left click shows the guide tracker again")
local settingsOpened = false
local settingsCategoryID
Settings = {
    OpenToCategory = function(categoryID)
        settingsOpened = true
        settingsCategoryID = categoryID
    end,
}
ns.UI.settingsCategory = { ID = 42 }
ns.UI.minimapButton.scripts.OnClick(ns.UI.minimapButton, "RightButton")
Equal(settingsOpened, true, "minimap right click opens the options panel")
Equal(settingsCategoryID, 42, "minimap right click passes the settings category id")
settingsOpened = false
ns.UI.tracker.library.scripts.OnClick(ns.UI.tracker.library, "RightButton")
Equal(settingsOpened, true, "tracker cog right click opens the options panel")
Equal(settingsCategoryID, 42, "tracker cog right click passes the settings category id")
UnitAffectingCombat = function() return true end
settingsOpened = false
ns.UI:OpenSettings()
Equal(settingsOpened, false, "settings do not open while in combat")
UnitAffectingCombat = function() return false end
Settings = nil
ns.db.showMinimapButton = false
ns.UI:ApplySettings()
Equal(ns.UI.minimapButton.shown, false, "show minimap button off hides the minimap button")
ns.db.showMinimapButton = true
ns.UI:ApplySettings()
Equal(ns.UI.minimapButton.shown, true, "show minimap button on restores the minimap button")
Equal(ns.db.guideOpacity, 1, "guide opacity defaults to 100%")
Equal(ns.UI.tracker.alpha, 1, "guide opacity applies to the tracker")
ns.db.guideOpacity = 0.45
ns.UI:ApplySettings()
Equal(ns.db.guideOpacity, 0.5, "guide opacity clamps to 50%")
Equal(ns.UI.tracker.alpha, 0.5, "the tracker honors the opacity clamp")
ns.db.guideOpacity = 1.2
ns.UI:ApplySettings()
Equal(ns.db.guideOpacity, 1, "guide opacity clamps to 100%")
ns.db.guideOpacity = 1
ns.UI:ApplySettings()
Check(ns.UITheme ~= nil, "UI theme module is loaded")
Check(rawget(ns.UI.tracker, "themePanelBackground") ~= nil or rawget(ns.UI.tracker, "themeBackdropFrame") ~= nil
    or rawget(ns.UI.tracker, "usedNineSlice"),
    "tracker uses Blizzard-style panel chrome")
Equal(ns.db.guideScale, 1, "guide scale defaults to 100%")
Equal(ns.UI.tracker.scale, 1, "guide scale applies to the tracker")
ns.db.guideScale = 1.6
ns.UI:ApplySettings()
Equal(ns.db.guideScale, 1.5, "guide scale clamps to 150%")
Equal(ns.UI.tracker.scale, 1.5, "the tracker honors the guide scale clamp")
ns.db.guideScale = 0.4
ns.UI:ApplySettings()
Equal(ns.db.guideScale, 0.5, "guide scale clamps to 50%")
UnitAffectingCombat = function() return true end
ns.db.hideInCombat = true
ns.UI:ApplySettings()
Equal(ns.UI.tracker.shown, false, "hide in combat hides the tracker while fighting")
ns.db.hideInCombat = false
ns.UI:ApplySettings()
Equal(ns.UI.tracker.shown, true, "the tracker returns when hide in combat is off")
UnitAffectingCombat = function() return false end
ns.db.guideScale = 1
ns.UI:ApplySettings()
ns.UI.tracker.instruction:SetText(string.rep("A longer guide instruction needs room. ", 8))
ns.UI.tracker.nextStep:SetText("")
ns.UI:ResizeTracker()
Check(ns.UI.tracker.height > 178, "tracker grows to fit a longer instruction")

WorldMapFrame = NewRegion()
WorldMapFrame.AddDataProvider = function(_, provider) WorldMapFrame.provider = provider end
WorldMapFrame.GetMapID = function() return 1456 end
MapCanvasDataProviderMixin = { GetMap = function() return WorldMapFrame end }
CreateFromMixins = function(mixin)
    local result = {}
    for key, value in pairs(mixin) do result[key] = value end
    return result
end
ns.eventFrame.scripts.OnEvent(nil, "ADDON_LOADED", "Blizzard_WorldMap")
Check(WorldMapFrame.provider ~= nil, "late world-map loading attaches the guide pin provider")
WorldMapFrame, MapCanvasDataProviderMixin, CreateFromMixins = nil, nil, nil
ns.MapPins.hooked, ns.MapPins.provider = false, nil

ns.db.waypointProvider = "tomtom"
local addedWaypoints = {}
TomTom = {
    AddWaypoint = function(_, mapID, x, y, options)
        local uid = { mapID = mapID, x = x, y = y, title = options.title }
        addedWaypoints[#addedWaypoints + 1] = uid
        return uid
    end,
    RemoveWaypoint = function(_, uid) uid.removed = true end,
    SetCrazyArrow = function(_, uid) uid.arrow = true end,
}
ns.Engine.currentGoal = { id = "test", kind = "travel", text = "Travel", route = {
    { mapID = 1454, x = 0.5, y = 0.5, label = "Destination" },
} }
ns.Engine.state = { mapID = 1454, x = 0.4, y = 0.4, faction = "Horde" }
ns.PlayerState.CapturePosition = function() return 1454, 0.4, 0.4 end
ns.UI:UpdateArrow()
Equal(addedWaypoints[1].mapID, 1454, "TomTom receives the same-map guide waypoint")
Equal(addedWaypoints[1].title, "Destination", "TomTom waypoint uses the route label")
Equal(addedWaypoints[1].arrow, true, "TomTom crazy arrow is aimed at the waypoint")

ns.PlayerState.CapturePosition = function() return 1453, 0.4, 0.4 end
ns.Engine.state.faction = "Horde"
ns.Engine.state.mapID = 1453
ns.UI:UpdateArrow()
Equal(addedWaypoints[2].mapID, 1434, "a southern Eastern Kingdoms Horde player is sent to the Grom'gol zeppelin")
Equal(addedWaypoints[1].removed, true, "the previous TomTom waypoint is removed")

ns.Engine.currentGoal = { id = "missing", kind = "note", text = "Read this" }
ns.UI:UpdateArrow()
Equal(addedWaypoints[2].removed, true, "a step without a route clears the TomTom waypoint")

ns.UI:CloseTracker()
Equal(ns.db.uiOpen, false, "closing persists the hidden state")
Equal(ns.UI.tracker.shown, false, "closing hides the tracker")
ns.UI:OpenTracker()
Equal(ns.db.uiOpen, true, "reopening persists the open state")
Equal(ns.UI.tracker.shown, true, "reopening shows the tracker")
ns:RegisterGuide({
    id = "second-guide", title = "Second Guide", category = "Other Guides", revision = 1,
    goals = { { id = "second-step", kind = "note", text = "Second step" } },
})
ns.UI:OpenGuideBrowser()
Equal(ns.UI.browser.shown, true, "the shared browser path opens the guide library")
Equal(#ns.UI.browserRows, 2, "the browser renders multiple guide choices")
Equal(#ns.UI.browserCategoryButtons, 3, "the browser builds category choices from registered guides")
Equal(ns.UI.browserCategoryButtons[1].categorySelected, true, "All Guides is the selected category")
ns.UI.browserCategoryButtons[2].scripts.OnClick()
Equal(#ns.UI.browserRows, 2, "category filtering reuses browser rows")
Equal(ns.UI.browserRows[1].title.text, "Ragefire Chasm", "dungeon category shows the RFC guide")
Equal(ns.UI.browserCategoryButtons[2].categorySelected, true, "the active category is marked selected")
ns.UI.browserCategoryButtons[1].scripts.OnClick()
Equal(ns.UI.browserRows[1].shown, true, "All Guides restores the dungeon guide")
Check(string.find(ns.UI.browserRows[1].eligibility.text, "Dungeon  •  ", 1, true) == 1,
    "all guides shows the dungeon type before eligibility")
Check(string.find(ns.UI.browserRows[2].eligibility.text, "Dungeon", 1, true) == nil,
    "guides outside dungeon quest guides do not use the dungeon tag")
Equal(ns.UI.browserRows[1].title.text, "Ragefire Chasm", "leveled guides stay ahead of guides without a level")
Equal(ns.UI.browserRows[1].divider.shown, true, "a divider separates the first guide row")
Equal(ns.UI.browserRows[2].divider.shown, false, "the last visible guide row has no trailing divider")
Equal(ns.UI.browserRows[1].divider.color[1], 0.78, "guide dividers use gold accents")
ns:RegisterGuide({
    id = "early-guide", title = "Early Guide", category = "Dungeon Quest Guides", revision = 1,
    conditions = { all = { { level = { min = 8 } } } },
    goals = { { id = "early-step", kind = "note", text = "Early step" } },
})
ns:RegisterGuide({
    id = "late-guide", title = "Late Guide", category = "Dungeon Quest Guides", revision = 1,
    conditions = { all = { { level = { min = 20 } } } },
    goals = { { id = "late-step", kind = "note", text = "Late step" } },
})
ns.UI.browserCategory = "All Guides"
ns.UI.browserPage = 1
ns.UI:RefreshGuideBrowser()
Equal(ns.UI.browserRows[1].title.text, "Early Guide", "the lowest level guide is first")
Equal(ns.UI.browserRows[2].title.text, "Ragefire Chasm", "level 9 follows level 8")
Equal(ns.UI.browserRows[3].title.text, "Late Guide", "level 20 follows level 9")
Equal(ns.UI.browserRows[2].divider.shown, true, "dividers continue between guides on the page")
Equal(ns.UI.browserRows[3].divider.shown, false, "the last row on a full page has no trailing divider")
ns.UI.browserPage = 2
ns.UI:RefreshGuideBrowser()
Equal(ns.UI.browserRows[1].title.text, "Second Guide", "a guide without a level follows leveled guides")
Equal(ns.UI.browserRows[1].divider.shown, false, "a single guide on a page has no divider")

ns:RegisterGuide({
    id = "alliance-only-leveling", title = "Alliance Only Leveling", category = "Leveling Quest Guides", revision = 1,
    conditions = { all = { { faction = "Alliance" }, { level = { min = 1 } } } },
    goals = { { id = "level-step", kind = "note", text = "Level step" } },
})

local function GuideRow(title)
    for index = 1, #ns.UI.browserRows do
        local row = ns.UI.browserRows[index]
        if row.shown and row.title.text == title then return row end
    end
end

local RFC_REQUIREMENTS = "  •  Horde  •  Level 9+"

ns.UI.browserCategory = "All Guides"
ns.UI.browserPage = 1
ns.UI.browser.search:SetText("ragefire")
ns.Engine.state = { faction = "Alliance", level = 20 }
ns.UI:RefreshGuideBrowser()
Equal(GuideRow("Ragefire Chasm").eligibility.text, "Dungeon  •  Ineligible" .. RFC_REQUIREMENTS,
    "an ineligible dungeon guide still lists faction and level")
ns.db.browser.hideIneligible = true
ns.UI:RefreshGuideBrowser()
Check(GuideRow("Ragefire Chasm") == nil, "hide ineligible removes ineligible guides from the browser")
ns.db.browser.hideIneligible = false
ns.UI:RefreshGuideBrowser()
Check(GuideRow("Ragefire Chasm") ~= nil, "turning hide ineligible off restores filtered guides")
ns.Engine.state = { faction = "Horde", level = 1 }
ns.UI:RefreshGuideBrowser()
Equal(GuideRow("Ragefire Chasm").eligibility.text, "Dungeon  •  Ineligible" .. RFC_REQUIREMENTS,
    "a low-level dungeon guide still lists faction and level")
local hidePoint = ns.UI.browser.hideIneligible.points[#ns.UI.browser.hideIneligible.points]
local labelPoint = ns.UI.browser.hideIneligibleLabel.points[1]
Equal(hidePoint[1], "RIGHT", "hide ineligible sits in the title bar")
Equal(hidePoint[2], ns.UI.browser.hideIneligibleLabel, "hide ineligible stays left of its label")
Equal(labelPoint[1], "RIGHT", "hide ineligible label aligns toward the close button")
Equal(labelPoint[2], ns.UI.browser.close, "hide ineligible label anchors to the close button")
Equal(ns.db.browser.hideIneligible, false, "ineligible guides stay visible until hidden")
ns.db.browser.hideIneligible = true
ns.UI.browser.hideIneligible.scripts.OnShow()
Equal(ns.UI.browser.hideIneligible.checked, true, "the title-bar box is checked when hiding ineligible guides")
ns.UI:RefreshGuideBrowser()
Equal(GuideRow("Ragefire Chasm"), nil, "hide ineligible removes an ineligible dungeon guide")
ns.db.browser.hideIneligible = false
ns.UI:RefreshGuideBrowser()
ns.Engine.state = { faction = "Horde", level = 9 }
ns.UI:RefreshGuideBrowser()
Equal(GuideRow("Ragefire Chasm").eligibility.text, "Dungeon  •  Eligible" .. RFC_REQUIREMENTS,
    "an eligible dungeon guide still lists faction and level")
ns.Engine.state = { faction = "Horde" }
ns.UI:RefreshGuideBrowser()
Equal(GuideRow("Ragefire Chasm").eligibility.text,
    "Dungeon  •  Level is unavailable." .. RFC_REQUIREMENTS,
    "unknown dungeon eligibility stays detailed")

ns.UI.browser.search:SetText("alliance only")
ns.Engine.state = { faction = "Horde", level = 10 }
ns.UI:RefreshGuideBrowser()
Equal(GuideRow("Alliance Only Leveling").eligibility.text, "Leveling  •  Ineligible  •  Alliance  •  Level 1+",
    "an ineligible leveling guide names the faction without a step reason")

ns:RegisterGuide({
    id = "zone-loremaster", title = "Zone Loremaster", category = "Loremaster Guides", revision = 1,
    conditions = { all = { { faction = "Horde" }, { level = { min = 1 } } } },
    goals = { { id = "zone-step", kind = "note", text = "Zone step" } },
})
ns.UI.browser.search:SetText("zone loremaster")
ns.Engine.state = { faction = "Horde", level = 10 }
ns.UI:RefreshGuideBrowser()
Equal(GuideRow("Zone Loremaster").eligibility.text, "Loremaster  •  Eligible  •  Horde  •  Level 1+",
    "zone guides use the Loremaster tag")
local sawLoremasterCategory = false
for index = 1, #ns.UI.browserCategoryButtons do
    local button = ns.UI.browserCategoryButtons[index]
    if button.shown and button.label.text == "Loremaster" then sawLoremasterCategory = true end
end
Check(sawLoremasterCategory, "the library lists Loremaster as its own category")

ns.charDB.selectedGuide = "dungeons-ragefire-chasm-horde"
ns.Engine:Refresh({ faction = "Alliance", level = 20 })
Equal(ns.UI.tracker.instruction.text, "Ineligible", "the tracker says Ineligible for an Alliance dungeon guide")
ns.Engine:Refresh({ faction = "Horde", level = 1 })
Equal(ns.UI.tracker.instruction.text, "Ineligible", "the tracker says Ineligible when the dungeon level is not met")
ns.Engine:Refresh({ faction = "Horde", level = 9 })
Equal(ns.UI.tracker.instruction.text, "Accept The Power to Destroy... from Varimathras in the Undercity.",
    "an eligible dungeon guide still shows its step")
ns.charDB.activeGoal = nil
ns.Engine.currentGoal = nil
ns.Engine:Refresh({ faction = "Horde", level = 13 })
Equal(ns.UI.tracker.instruction.text, "Accept Searching for the Lost Satchel from Rahauro on Elder Rise.",
    "at level 13 the satchel accept is ready")
ns.charDB.selectedGuide = "alliance-only-leveling"
ns.Engine:Refresh({ faction = "Horde", level = 10 })
Equal(ns.UI.tracker.instruction.text, "Ineligible", "the tracker says Ineligible for an Alliance leveling guide")

Check(ns.UI:HasStartedGuide(), "a selected guide counts as started")
do
    local captured = { title = nil, lines = {} }
    GameTooltip = {
        SetOwner = function() end,
        SetText = function(_, text) captured.title = text end,
        AddLine = function(_, text) table.insert(captured.lines, text) end,
        Show = function() end,
        Hide = function() end,
    }
    ns.UI.tracker.sync.scripts.OnEnter(ns.UI.tracker.sync)
    Equal(captured.title, "Resync guide from your quest log and completed quests. Skipped steps stay skipped.",
        "the Sync button tooltip uses only its resync text")
    Equal(#captured.lines, 0, "tracker buttons do not append minimap tooltip lines")
end
ns.UI.browser:Hide()
ns.UI:Initialize()
Equal(ns.UI.browser.shown, false, "login with a started guide keeps the library closed")
ns.charDB.selectedGuide = nil
ns.UI.browser:Hide()
ns.UI:Initialize()
Equal(ns.UI.browser.shown, true, "login without a started guide still opens the library")

local tooltipOwner
GameTooltip = {
    SetOwner = function(_, owner) tooltipOwner = owner end,
    SetText = function() end,
    AddLine = function() end,
    Show = function() end,
    Hide = function() end,
}
AddonCompartmentFrame = NewRegion()
ForeverGuideMate_OnAddonCompartmentEnter("ForeverGuideMate")
Equal(tooltipOwner, AddonCompartmentFrame, "the addon menu tooltip anchors to the compartment button")
local dropdownButton = NewRegion()
ForeverGuideMate_OnAddonCompartmentEnter(dropdownButton)
Equal(tooltipOwner, dropdownButton, "a compartment frame owner is used when one is passed")

do
    local savedQuestLog = C_QuestLog
    C_QuestLog = { GetQuestsOnMap = function() return {} end }
    local viewedMapID = 1454
    local map = {
        IsShown = function() return true end,
        GetMapID = function() return viewedMapID end,
        SetMapID = function(_, mapID) viewedMapID = mapID end,
        GetWidth = function() return 1000 end,
        GetHeight = function() return 800 end,
        AcquirePin = function() error("AcquirePin calls SetPassThroughButtons") end,
    }
    ns.db.uiOpen, ns.db.waypointProvider = true, "blizzard"
    ns.Engine.state = { mapID = 1454, x = 0.4, y = 0.4 }
    ns.Engine.currentGoal = { kind = "travel", complete = { quest = { id = 870, state = "complete" } },
        route = { { mapID = 1454, x = 0.5, y = 0.5 } } }
    ns.MapPins:Refresh(map)
    Equal(ns.MapPins.pin.shown, true, "quest-linked travel keeps its route pin when Blizzard has no POI")
    Equal(ns.MapPins.pin.template, "ForeverGuideMateMapPinTemplate", "the route pin uses the Blizzard map pin template")
    Equal(ns.MapPins.pin.frameLevelType, "PIN_FRAME_LEVEL_AREA_POI", "the route pin uses the map POI frame level")
    ns.Engine.currentGoal.kind = "objective"
    ns.Engine.currentGoal.useClientPin = true
    ns.Engine.currentGoal.complete = { questObjective = { id = 870, index = 1 } }
    ns.MapPins:Refresh(map)
    Equal(ns.MapPins.pin.shown, true, "objectives keep their route pin when Blizzard has no POI")
    ns.Engine.currentGoal.kind = "turnin"
    ns.Engine.currentGoal.complete = { quest = { id = 870, state = "completed" } }
    ns.MapPins:Refresh(map)
    Equal(ns.MapPins.pin.shown, true, "turn-ins keep their route pin when Blizzard has no POI")
    C_QuestLog = { GetQuestsOnMap = function() return { { questID = 870, x = 0.6, y = 0.6 } } end }
    ns.MapPins:Refresh(map)
    Equal(ns.MapPins.pin.shown, false, "a real Blizzard quest POI replaces the guide route marker")
    C_QuestLog = { GetQuestsOnMap = function() return {} end }
    local savedMapAPI = C_Map
    C_Map = { GetMapRectOnMap = function() return nil end }
    ns.Engine.currentGoal = { kind = "objective", useClientPin = true,
        complete = { questObjective = { id = 870, index = 1 } },
        route = { { mapID = 1442, x = 0.6652, y = 0.4548, label = "Toxic Fogger" } } }
    ns.Engine.state = { mapID = 1442, x = 0.5, y = 0.5 }
    viewedMapID = 1454
    ns.MapPins:Refresh(map)
    Equal(viewedMapID, 1442, "a pinless quest opens the saved route map when its pin cannot project here")
    ns.MapPins:Refresh(map)
    Equal(ns.MapPins.pin.shown, true, "the saved route pin appears after switching to its map")
    C_Map = savedMapAPI
    ns.Engine.currentGoal = { kind = "travel", route = { { mapID = 1454, x = 0.5, y = 0.5 } } }
    ns.Engine.state = { mapID = 1454, x = 0.4, y = 0.4 }
    viewedMapID = 1454
    ns.MapPins:Refresh(map)
    Equal(ns.MapPins.pin.shown, true, "ordinary travel retains the guide route marker")
    local savedInstance = IsInInstance
    IsInInstance = function() return true, "party" end
    ns.MapPins:Refresh(map)
    Equal(ns.MapPins.pin.shown, false, "the world map does not add a guide pin inside an instance")
    IsInInstance = savedInstance
    C_QuestLog = savedQuestLog
end

function TestFlightLandingRefreshesGuide()
    local savedCapture = ns.PlayerState.Capture
    local savedGuide = ns.charDB.selectedGuide
    local state = { mapID = 1413, x = 0.4, y = 0.4, quests = {}, completedQuests = {},
        questLogKnown = true, questCompletionKnown = true }
    local captures = 0
    ns.PlayerState.Capture = function() captures = captures + 1; return state end
    ns:RegisterGuide({ id = "landing-test", title = "Landing test", category = "Other Guides", revision = 1,
        goals = {
        { id = "landing-travel", kind = "travel", text = "Fly to Thunder Bluff",
            complete = { map = 1456 } },
        { id = "landing-next", kind = "note", text = "Continue after landing" },
    } })
    ns.charDB.selectedGuide, ns.charDB.activeGoal = "landing-test", nil
    ns.db.autoAdvance = true
    ns.Engine:Refresh(state)
    Equal(ns.Engine.currentGoal.id, "landing-travel", "travel waits before the flight")
    local onTaxi, reads = false, 0
    UnitOnTaxi = function(unit)
        Equal(unit, "player", "landing detection observes the player")
        reads = reads + 1
        return onTaxi
    end
    local pulse = ns.eventFrame.scripts.OnUpdate
    pulse(nil, 0.1)
    Equal(reads, 0, "taxi state is throttled instead of read every frame")
    pulse(nil, 0.4)
    Equal(captures, 0, "standing on the ground does not read the quest catalog")
    onTaxi = true
    pulse(nil, 0.5)
    Equal(captures, 1, "takeoff refreshes the guide once")
    pulse(nil, 0.5)
    Equal(captures, 1, "flying does not repeatedly refresh the guide")
    state.mapID = 1456
    onTaxi = false
    pulse(nil, 0.5)
    Equal(captures, 2, "landing captures fresh player state once")
    Equal(ns.Engine.currentGoal.id, "landing-next", "landing clears completed travel without Sync")
    pulse(nil, 0.5)
    Equal(captures, 2, "remaining on the ground does not refresh again")
    UnitOnTaxi = nil
    pulse(nil, 0.5)
    Equal(captures, 2, "clients without the optional taxi API do not refresh")
    ns.PlayerState.Capture = savedCapture
    ns.charDB.selectedGuide = savedGuide
end
TestFlightLandingRefreshesGuide()

function TestLootOnlyRefreshesForWatchedItems()
    local savedSchedule, savedBagsChanged = ns.ScheduleRefresh, ns.PlayerState.BagsChanged
    local scheduled, routeItemChanged = 0, false
    ns.ScheduleRefresh = function() scheduled = scheduled + 1 end
    ns.PlayerState.BagsChanged = function() return routeItemChanged end
    ns.eventFrame.scripts.OnEvent(nil, "BAG_UPDATE_DELAYED")
    Equal(scheduled, 0, "ordinary loot does not rebuild the route")
    routeItemChanged = true
    ns.eventFrame.scripts.OnEvent(nil, "BAG_UPDATE_DELAYED")
    Equal(scheduled, 1, "looting a starter item rebuilds the route once")
    ns.ScheduleRefresh, ns.PlayerState.BagsChanged = savedSchedule, savedBagsChanged
end
TestLootOnlyRefreshesForWatchedItems()

ns:RegisterGuide({
    id = "raid-category-probe",
    title = "Raid Category Probe",
    category = "Raid Quests",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 60 } },
            { any = { { faction = "Alliance" }, { faction = "Horde" } } },
        },
    },
    goals = { { id = "raid-step", kind = "note", text = "Raid step" } },
})
ns.UI.browserCategory = "Raid Quests"
ns.UI.browserPage = 1
ns.UI.browser.search:SetText("raid category")
ns.Engine.state = { faction = "Horde", level = 60 }
ns.UI:RefreshGuideBrowser()
Equal(GuideRow("Raid Category Probe").eligibility.text, "Raid  •  Eligible  •  Both  •  Level 60+",
    "raid quest guides use the Raid tag and both-faction label")
local sawRaidCategory = false
for index = 1, #ns.UI.browserCategoryButtons do
    local button = ns.UI.browserCategoryButtons[index]
    if button.shown and button.label.text == "Raid Quests" then sawRaidCategory = true end
end
Check(sawRaidCategory, "the library lists Raid Quests as its own category")

ns:RegisterGuide({
    id = "misc-category-probe",
    title = "Library Books",
    category = "Miscellaneous Guides",
    revision = 1,
    conditions = {
        all = {
            { level = { min = 1 } },
            { any = { { faction = "Alliance" }, { faction = "Horde" } } },
        },
    },
    goals = { { id = "misc-step", kind = "note", text = "Misc step" } },
})
ns.UI.browserCategory = "Miscellaneous Guides"
ns.UI.browserPage = 1
ns.UI.browser.search:SetText("library books")
ns.Engine.state = { faction = "Horde", level = 10 }
ns.UI:RefreshGuideBrowser()
Equal(GuideRow("Library Books").eligibility.text, "Miscellaneous  •  Eligible  •  Alliance and Horde  •  Level 1+",
    "library books uses the Miscellaneous tag")
local sawMiscCategory = false
for index = 1, #ns.UI.browserCategoryButtons do
    local button = ns.UI.browserCategoryButtons[index]
    if button.shown and button.label.text == "Miscellaneous" then sawMiscCategory = true end
end
Check(sawMiscCategory, "the library lists Miscellaneous as its own category")

do
    ns.Engine.currentGoal = {
        kind = "objective",
        text = "Kill Thule Ravenclaw. This is an elite. Bring a group.",
        useClientText = true,
        complete = { quest = { id = 442 } },
    }
    ns.Engine.state = {
        quests = { [442] = { objectives = { { text = "0/1 Thule's Head" } } } },
    }
    Equal(ns.UI:GoalInstruction(ns.Engine),
        "0/1 Thule's Head. This is an elite. Bring a group.",
        "client quest objective text preserves the authored elite warning")
end

if failures > 0 then
    io.stderr:write(("%d of %d assertions failed\n"):format(failures, assertions))
    os.exit(1)
end
print(("Lua UI tests passed: %d assertions"):format(assertions))
