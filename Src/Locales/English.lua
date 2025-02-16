local language = 'English';

local function addLocales()
    DivineWindow.Locales[language].AvailableWindows.Enemies = "Enemies";
    DivineWindow.Locales[language].AvailableWindows.SallyWhitemane = "Sally Whitemane";
    DivineWindow.Locales[language].AvailableWindows.Cactuar = "Cactuar";
    DivineWindow.Locales[language].AvailableWindows.MrBigglesworth = "Mr. Bigglesworth";
    DivineWindow.Locales[language].AvailableWindows.Xalatath = "Xal'atath";

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
                PART_4 = "Clouds (3)",
                PART_5 = "The sun (13)",
                PART_6 = "Sun's Corona (36)",
                PART_7 = "Sun's Halo (36)",
                PART_8 = "Sky 1 (15)",
                PART_9 = "Sky 2 (15)",
                FX_1 = "1000 Needles! (2)",
                FX_2 = "Flower hat (6)",
            }
        },
        MrBigglesworth = {
            WindowPart = {
                PART_1 = "Window of the Necropolis (33)",
                PART_2 = "Candle (10)",
                PART_3 = "Evil potion (15)",
                PART_4 = "Kitty's favourite table (11)",
                PART_5 = "Chains (14)",
                PART_6 = "Mr. Bigglesworth (14)",
                PART_7 = "Fish bones (13)",
                PART_8 = "Kel'Thuzad (26)",
                FX_1 = "The Lich Lord's frost gaze (6)",
                FX_2 = "Mr Biggles' bones (126)",
            }
        },
        Xalatath = {
            WindowPart = {
                PART_1 = "Endless void (92)",
                PART_2 = "Azeroth imploding (22)",
                PART_3 = "Face of evil (6)",
                PART_4 = "Left shoulder armor (3)",
                PART_5 = "Right shoulder armor (3)",
                PART_6 = "Left arm (7)",
                PART_7 = "Right arm (7)",
                PART_8 = "Bandaged legs (2)",
                PART_9 = "Void's cape (3)",
                PART_10 = "Xal'atath's fragile body (7)",
                PART_11 = "Galaxy gems (5)",
                PART_12 = "Blade of the Black Empire (8)",
                FX_1 = "Void energy (16)",
                FX_2 = "Strange markings (15)",
            }
        },
    }
end

addLocales();
