local language = 'English';

local function addLocales()
    DivineWindow.Locales[language].AvailableWindows.Enemies = "Enemies";
    DivineWindow.Locales[language].AvailableWindows.SallyWhitemane = "Sally Whitemane";
    DivineWindow.Locales[language].AvailableWindows.Cactuar = "Cactuar";

    DivineWindow.Locales[language].Enemies = {
        SallyWhitemane = {
            WindowPart = {
                PART_1 = "Glass (67)",
                PART_2 = "Glass Arrows (12)",
                PART_3 = "Glass Moon: Top (14)",
                PART_4 = "Glass Moon: Left (15)",
                PART_5 = "Glass Moon: Right (15)",
                PART_6 = "Whitemane's Chapeau (7)",
                PART_7 = "Face (3)",
                PART_8 = "Arms (3)",
                PART_9 = "Torso (9)",
                FX_1 = "Whitemane's manes (4)",
                FX_2 = "Divine Reckoning (12)",
            }
        },
        Cactuar = {
            WindowPart = {
                PART_1 = "Cactuar (16)",
                PART_2 = "Dunes (10)",
                PART_3 = "Sword (5)",
                PART_4 = "Couds (3)",
                PART_5 = "Sun (13)",
                PART_6 = "Sun's Corona (36)",
                PART_7 = "Sun's Halo (36)",
                PART_8 = "Sky 1 (15)",
                PART_9 = "Sky 2 (15)",
                FX_1 = "1000 Needles! (2)",
                FX_2 = "Flower hat (6)",
            }
        },
    }
end

local function addToMenu()
    -- If no other enemies are registered, register them.
    if (not DivineWindow.ConfigurationScreen.AvailableWindows.Enemies) then
        DivineWindow.ConfigurationScreen.AvailableWindows.Enemies = {}
    end

    DivineWindow.ConfigurationScreen.AvailableWindows.Enemies["SallyWhitemane"] =
    { "Enemies", "SallyWhitemane" }

    DivineWindow.ConfigurationScreen.AvailableWindows.Enemies["Cactuar"] =
    { "Enemies", "Cactuar" }
end

addLocales();
addToMenu();
