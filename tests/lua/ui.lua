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
    function methods:GetPoint() local point = self.points[1] or {}; return unpack(point) end
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
    function methods:CreateTexture() local child = NewRegion(self); self.lastTexture = child; return child end
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
    function methods:SetValue(value) self.value = value end
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
CreateFrame = function(kind, _, parent)
    local frame = NewRegion(parent)
    if kind == "CheckButton" then frame.Text = NewRegion() end
    return frame
end
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
Load("Navigation.lua")
Load("TomTomWaypoints.lua")
Load("MapPins.lua")
Load("UI.lua")
Load("Guides/Dungeons/RagefireChasm.lua")

ForeverGuideMateDB = nil
ForeverGuideMateCharDB = nil
ns.InitializeStorage()
ns.UI:Initialize()

Equal(ns.UI.tracker.clamped, true, "tracker is clamped to the screen")
local trackerPoint, _, trackerRelative, trackerX, trackerY = ns.UI.tracker:GetPoint()
Equal(trackerPoint, "LEFT", "tracker defaults to the left edge")
Equal(trackerRelative, "LEFT", "tracker anchors against the left edge")
Equal(trackerX, 0, "tracker starts flush with the left edge")
Equal(trackerY, 0, "tracker starts vertically centered")
Equal(ns.charDB.selectedGuide, nil, "no guide is selected until the player chooses one")
Equal(ns.UI.browser.shown, true, "startup opens the guide library until a guide is chosen")
Equal(ns.UI.browser.clamped, true, "browser is clamped to the screen")
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
Equal(ns.UI.browserCategoryButtons[1].selectionBorder[1].shown, true, "All Guides has a selected gold border")
ns.UI.browserCategoryButtons[2].scripts.OnClick()
Equal(#ns.UI.browserRows, 2, "category filtering reuses browser rows")
Equal(ns.UI.browserRows[1].title.text, "Ragefire Chasm", "dungeon category shows the RFC guide")
Equal(ns.UI.browserCategoryButtons[2].selectionBorder[1].shown, true, "selected category has a gold border")
ns.UI.browserCategoryButtons[1].scripts.OnClick()
Equal(ns.UI.browserRows[1].shown, true, "All Guides restores the dungeon guide")
Check(string.find(ns.UI.browserRows[1].eligibility.text, "Dungeon  •  ", 1, true) == 1,
    "all guides shows the dungeon type before eligibility")
Check(string.find(ns.UI.browserRows[2].eligibility.text, "Dungeon", 1, true) == nil,
    "guides outside dungeon quest guides do not use the dungeon tag")
Equal(ns.UI.browserRows[1].title.text, "Ragefire Chasm", "leveled guides stay ahead of guides without a level")
Equal(ns.UI.browserRows[1].divider.shown, true, "a divider separates the first guide row")
Equal(ns.UI.browserRows[2].divider.shown, false, "the last visible guide row has no trailing divider")
Equal(ns.UI.browserRows[1].divider.color[1], ns.UI.browserCategoryButtons[1].selectionBorder[1].color[1],
    "guide dividers use the category gold border")
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
ns.Engine.state = { faction = "Horde", level = 1 }
ns.UI:RefreshGuideBrowser()
Equal(GuideRow("Ragefire Chasm").eligibility.text, "Dungeon  •  Ineligible" .. RFC_REQUIREMENTS,
    "a low-level dungeon guide still lists faction and level")
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
Equal(GuideRow("Alliance Only Leveling").eligibility.text, "Leveling  •  This step is for Alliance.  •  Alliance  •  Level 1+",
    "leveling guides keep the faction reason")

ns.charDB.selectedGuide = "dungeons-ragefire-chasm-horde"
ns.Engine:Refresh({ faction = "Alliance", level = 20 })
Equal(ns.UI.tracker.instruction.text, "Ineligible", "the tracker says Ineligible for an Alliance dungeon guide")
ns.Engine:Refresh({ faction = "Horde", level = 1 })
Equal(ns.UI.tracker.instruction.text, "Ineligible", "the tracker says Ineligible when the dungeon level is not met")
ns.Engine:Refresh({ faction = "Horde", level = 9 })
Equal(ns.UI.tracker.instruction.text, "Accept Searching for the Lost Satchel from Rahauro on Elder Rise.",
    "an eligible dungeon guide still shows its step")
ns.charDB.selectedGuide = "alliance-only-leveling"
ns.Engine:Refresh({ faction = "Horde", level = 10 })
Equal(ns.UI.tracker.instruction.text, "This step is for Alliance.", "the tracker keeps a leveling guide's faction reason")

if failures > 0 then
    io.stderr:write(("%d of %d assertions failed\n"):format(failures, assertions))
    os.exit(1)
end
print(("Lua UI tests passed: %d assertions"):format(assertions))
