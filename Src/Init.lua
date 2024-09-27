local function registerLockTable()
    DivineWindow.ConfigurationScreen.addToLockTable(
        "Enemies", "Enemies of Warcraft windows installed"
    );
end;

local function registerToAvailableWindowMenu()
    DivineWindow.Support.AvailableWindows.Enemies.SallyWhitemane = {};
end

local function registerHints()
    DivineWindow.ConfigurationScreen.HintsTable["cactuar"] = "??? What's this? This is going to hurt"
    DivineWindow.ConfigurationScreen.HintsTable["thousand"] = "A thousand stabs from the Cactuar. Ouch!"
end

local function registerToWindowIndex()
    DivineWindow.Windows.Enemies = {
        SallyWhitemane = {
            Directory = "Interface\\AddOns\\DivineWindow_Enemies\\Src\\Windows\\SallyWhitemane",
            FacetCount = {
                PART_1 = 67,
                PART_2 = 12,
                PART_3 = 14,
                PART_4 = 15,
                PART_5 = 15,
                PART_6 = 7,
                PART_7 = 4,
                PART_8 = 3,
                PART_9 = 9,
                FX_1 = 4,
                FX_2 = 12,
            }
        }
    }

    if (DivineWindow.Utilities.tableContainsKey(DivineWindowGlobalVars.unlockTable, 7397856691)) then
        DivineWindow.Support.AvailableWindows.Enemies.Cactuar = {};

        DivineWindow.Windows.Enemies["Cactuar"] = {
            Directory = "Interface\\AddOns\\DivineWindow_Enemies\\Src\\Windows\\Cactuar",
            FacetCount = {
                PART_1 = 16,
                PART_2 = 10,
                PART_3 = 5,
                PART_4 = 3,
                PART_5 = 13,
                PART_6 = 36,
                PART_7 = 36,
                PART_8 = 15,
                PART_9 = 15,
                FX_1 = 2,
                FX_2 = 6,
            }
        }

        table.insert(DivineWindow.Windows.Enemies, "");
    end
end

local function addToMenu()
    -- If no other enemies are registered, register them.
    if (not DivineWindow.ConfigurationScreen.AvailableWindows.Enemies) then
        DivineWindow.ConfigurationScreen.AvailableWindows.Enemies = {}
    end

    DivineWindow.ConfigurationScreen.AvailableWindows.Enemies["SallyWhitemane"] =
    { "Enemies", "SallyWhitemane" }

    if (DivineWindow.Utilities.tableContainsKey(DivineWindowGlobalVars.unlockTable, 7397856691)) then
        DivineWindow.ConfigurationScreen.AvailableWindows.Enemies["Cactuar"] = { "Enemies", "Cactuar" }
    end
end

local function eventHandler(self, event, ...)
    if (event == "ADDON_LOADED") then
        local addonName = ...;
        if (addonName == "DivineWindow_Enemies") then
            registerToWindowIndex();
            registerToAvailableWindowMenu();
            registerLockTable();
            registerHints();
            addToMenu();
        end
    end
end

local function registerEvents()
    local frame = CreateFrame("FRAME", "DivineWindow_Init");
    frame:RegisterEvent("ADDON_LOADED");

    return frame;
end

local function init()
    DivineWindow.frame = registerEvents();
    DivineWindow.frame:SetScript("OnEvent", eventHandler);
end

-- Manual debug print before utilites are loaded.
if (DivineWindow.debugMode) then
    print("[DW loaded file]: init.lua");
end

init();
