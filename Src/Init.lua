local function registerLockTable()
    DivineWindow.ConfigurationScreen.addToLockTable(
        "Enemies", "Enemies of Warcraft windows installed"
    );
end;

local function registerToAvailableWindowMenu()
    DivineWindow.Support.AvailableWindows.Enemies.SallyWhitemane = {};
    DivineWindow.Support.AvailableWindows.Enemies.Cactuar = {};
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
        },
        Cactuar = {
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
    }
end


local function eventHandler(self, event, ...)
    if (event == "ADDON_LOADED") then
        local addonName = ...;
        if (addonName == "DivineWindow_Enemies") then
            print("[DW]: DivineWindow: Enemy windows loaded");
            -- let the addon know you can set-up Enemies of WOW Divine Windows now.
            registerToWindowIndex();
            registerToAvailableWindowMenu();
            registerLockTable();
        end
    end
end

local function registerEvents()
    local frame = CreateFrame("FRAME", "DivineWindow_Init");
    frame:RegisterEvent("ADDON_LOADED");

    return frame;
end

local function init()
    if (DivineWindow) then
        print("[DW]: Initializing DivineWindow");
    end
    DivineWindow.frame = registerEvents();
    DivineWindow.frame:SetScript("OnEvent", eventHandler);
end

-- Manual debug print before utilites are loaded.
if (DivineWindow.debugMode) then
    print("[DW loaded file]: init.lua");
end

init();
