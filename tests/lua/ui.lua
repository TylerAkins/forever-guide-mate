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
Load("Taxi.lua")
Load("GuideEngine.lua")
Load("Navigation.lua")
Load("MapPins.lua")
Load("UI.lua")
Load("Guides/Dungeons/RagefireChasm.lua")

ForeverGuideMateDB = nil
ForeverGuideMateCharDB = nil
ns.InitializeStorage()
ns.UI:Initialize()

Equal(ns.UI.arrow.points[1][1], "TOP", "arrow uses a top-relative anchor")
Equal(ns.UI.arrow.points[1][5], -90, "arrow uses the requested top offset")
Equal(ns.UI.tracker.clamped, true, "tracker is clamped to the screen")
Equal(ns.UI.arrow.clamped, true, "arrow is clamped to the screen")
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

ns.Engine.currentGoal = { id = "test", kind = "travel", text = "Travel", route = {
    { mapID = 1454, x = 0.5, y = 0.5, label = "Destination" },
} }
ns.Engine.state = { mapID = 1454, x = 0.4, y = 0.4 }
ns.PlayerState.CapturePosition = function() return 1454, 0.4, 0.4 end
GetPlayerFacing = function() return 0 end
ns.UI:UpdateArrow()
Equal(ns.UI.arrow.shown, true, "same-map navigation shows the arrow")
Equal(ns.UI.arrow.texture.width, 64, "arrow asset renders at the intended size")
Check(type(ns.UI.arrow.texture.rotation) == "number", "same-map navigation rotates the arrow texture")

ns.PlayerState.CapturePosition = function() return 1456, 0.4, 0.4 end
ns.UI:UpdateArrow()
Equal(ns.UI.arrow.shown, true, "off-map navigation keeps the navigation surface visible")
Check(ns.UI.arrow.texture.alpha ~= 0, "off-map navigation keeps the indicator visible")

ns.Engine.currentGoal = { id = "missing", kind = "note", text = "Read this" }
ns.UI:UpdateArrow()
Equal(ns.UI.arrow.status.text, "No waypoint for this step.", "missing coordinates show a clear fallback")

ns.UI:CloseTracker()
Equal(ns.db.uiOpen, false, "closing persists the hidden state")
Equal(ns.UI.tracker.shown, false, "closing hides the tracker")
Equal(ns.UI.arrow.shown, false, "closing hides the arrow")
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
Equal(ns.UI.browserRows[1].title.text, "Ragefire Chasm (Horde)", "dungeon category shows the RFC guide")
Equal(ns.UI.browserCategoryButtons[2].selectionBorder[1].shown, true, "selected category has a gold border")
ns.UI.browserCategoryButtons[1].scripts.OnClick()
Equal(ns.UI.browserRows[1].shown, true, "All Guides restores the dungeon guide")

if failures > 0 then
    io.stderr:write(("%d of %d assertions failed\n"):format(failures, assertions))
    os.exit(1)
end
print(("Lua UI tests passed: %d assertions"):format(assertions))
