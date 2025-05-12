return function(ReGui)
    ReGui:DefineTheme("Dracula", {
        TitleAlign = Enum.TextXAlignment.Center,

        Text = Color3.fromRGB(248, 248, 242),
        TextDisabled = Color3.fromRGB(92, 107, 153),
        CollapsingHeaderText = Color3.fromRGB(248, 248, 242),

        FrameBg = Color3.fromRGB(31, 31, 43),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(68, 71, 90),
        FrameBgTransparencyActive = 0.1,

        CheckMark = Color3.fromRGB(139, 233, 253),
        SliderGrab = Color3.fromRGB(189, 147, 249),
        ButtonsBg = Color3.fromRGB(255, 121, 198),
        CollapsingHeaderBg = Color3.fromRGB(68, 71, 90),
        RadioButtonHoveredBg = Color3.fromRGB(255, 184, 108),

        WindowBg = Color3.fromRGB(40, 42, 54),
        TitleBarBg = Color3.fromRGB(40, 42, 54),    
        TitleBarBgActive = Color3.fromRGB(68, 71, 90),
        Border = Color3.fromRGB(98, 114, 164),
        ResizeGrab = Color3.fromRGB(189, 147, 249),
        RegionBgTransparency = 1
    })

    
    ReGui:DefineTheme("Forest", {
        TitleAlign = Enum.TextXAlignment.Left,

        Text = Color3.fromRGB(34, 49, 34),
        TextDisabled = Color3.fromRGB(120, 150, 120),
        CollapsingHeaderText = Color3.fromRGB(42, 59, 42),

        FrameBg = Color3.fromRGB(220, 235, 220),
        FrameBgTransparency = 0.05,
        FrameBgActive = Color3.fromRGB(190, 210, 190),
        FrameBgTransparencyActive = 0,

        CheckMark = Color3.fromRGB(67, 160, 71),
        SliderGrab = Color3.fromRGB(104, 159, 56),
        ButtonsBg = Color3.fromRGB(56, 142, 60),
        CollapsingHeaderBg = Color3.fromRGB(200, 220, 200),
        RadioButtonHoveredBg = Color3.fromRGB(165, 214, 167),

        WindowBg = Color3.fromRGB(245, 255, 245),
        TitleBarBg = Color3.fromRGB(220, 240, 220),
        TitleBarBgActive = Color3.fromRGB(180, 210, 180),
        Border = Color3.fromRGB(120, 144, 120),
        ResizeGrab = Color3.fromRGB(56, 142, 60),
        RegionBgTransparency = 0.9
    })

    
    
    
    ReGui:DefineTheme("Nord", {
        TitleAlign = Enum.TextXAlignment.Center,
        
        Text = Color3.fromRGB(236, 239, 244),
        TextDisabled = Color3.fromRGB(131, 148, 170),
        CollapsingHeaderText = Color3.fromRGB(236, 239, 244),
        
        FrameBg = Color3.fromRGB(67, 76, 94),
        FrameBgTransparency = 0.1,
        FrameBgActive = Color3.fromRGB(76, 86, 106),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(143, 188, 187),
        SliderGrab = Color3.fromRGB(136, 192, 208),
        ButtonsBg = Color3.fromRGB(94, 129, 172),
        CollapsingHeaderBg = Color3.fromRGB(67, 76, 94),
        RadioButtonHoveredBg = Color3.fromRGB(129, 161, 193),
        
        WindowBg = Color3.fromRGB(46, 52, 64),
        TitleBarBg = Color3.fromRGB(59, 66, 82),
        TitleBarBgActive = Color3.fromRGB(67, 76, 94),
        Border = Color3.fromRGB(76, 86, 106),
        ResizeGrab = Color3.fromRGB(136, 192, 208),
        RegionBgTransparency = 0.05
    })
    
    
    ReGui:DefineTheme("SolarizedDark", {
        TitleAlign = Enum.TextXAlignment.Left,
        
        Text = Color3.fromRGB(253, 246, 227),
        TextDisabled = Color3.fromRGB(131, 148, 150),
        CollapsingHeaderText = Color3.fromRGB(253, 246, 227),
        
        FrameBg = Color3.fromRGB(7, 54, 66),
        FrameBgTransparency = 0.1,
        FrameBgActive = Color3.fromRGB(0, 43, 54),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(38, 139, 210),
        SliderGrab = Color3.fromRGB(42, 161, 152),
        ButtonsBg = Color3.fromRGB(38, 139, 210),
        CollapsingHeaderBg = Color3.fromRGB(7, 54, 66),
        RadioButtonHoveredBg = Color3.fromRGB(42, 161, 152),
        
        WindowBg = Color3.fromRGB(0, 43, 54),
        TitleBarBg = Color3.fromRGB(7, 54, 66),
        TitleBarBgActive = Color3.fromRGB(7, 54, 66),
        Border = Color3.fromRGB(101, 123, 131),
        ResizeGrab = Color3.fromRGB(42, 161, 152),
        RegionBgTransparency = 0.05
    })
    
    
    ReGui:DefineTheme("SolarizedLight", {
        TitleAlign = Enum.TextXAlignment.Left,
        
        Text = Color3.fromRGB(101, 123, 131),
        TextDisabled = Color3.fromRGB(147, 161, 161),
        CollapsingHeaderText = Color3.fromRGB(88, 110, 117),
        
        FrameBg = Color3.fromRGB(238, 232, 213),
        FrameBgTransparency = 0,
        FrameBgActive = Color3.fromRGB(253, 246, 227),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(38, 139, 210),
        SliderGrab = Color3.fromRGB(42, 161, 152),
        ButtonsBg = Color3.fromRGB(38, 139, 210),
        CollapsingHeaderBg = Color3.fromRGB(238, 232, 213),
        RadioButtonHoveredBg = Color3.fromRGB(42, 161, 152),
        
        WindowBg = Color3.fromRGB(253, 246, 227),
        TitleBarBg = Color3.fromRGB(238, 232, 213),
        TitleBarBgActive = Color3.fromRGB(238, 232, 213),
        Border = Color3.fromRGB(181, 137, 0),
        ResizeGrab = Color3.fromRGB(42, 161, 152),
        RegionBgTransparency = 0
    })
    
    
    ReGui:DefineTheme("GruvboxDark", {
        TitleAlign = Enum.TextXAlignment.Center,
        
        Text = Color3.fromRGB(235, 219, 178),
        TextDisabled = Color3.fromRGB(168, 153, 132),
        CollapsingHeaderText = Color3.fromRGB(235, 219, 178),
        
        FrameBg = Color3.fromRGB(60, 56, 54),
        FrameBgTransparency = 0,
        FrameBgActive = Color3.fromRGB(80, 73, 69),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(184, 187, 38),
        SliderGrab = Color3.fromRGB(250, 189, 47),
        ButtonsBg = Color3.fromRGB(204, 36, 29),
        CollapsingHeaderBg = Color3.fromRGB(60, 56, 54),
        RadioButtonHoveredBg = Color3.fromRGB(184, 187, 38),
        
        WindowBg = Color3.fromRGB(40, 40, 40),
        TitleBarBg = Color3.fromRGB(50, 48, 47),
        TitleBarBgActive = Color3.fromRGB(60, 56, 54),
        Border = Color3.fromRGB(124, 111, 100),
        ResizeGrab = Color3.fromRGB(250, 189, 47),
        RegionBgTransparency = 0.1
    })
    
    
    ReGui:DefineTheme("TokyoNight", {
        TitleAlign = Enum.TextXAlignment.Center,
        
        Text = Color3.fromRGB(169, 177, 214),
        TextDisabled = Color3.fromRGB(113, 128, 150),
        CollapsingHeaderText = Color3.fromRGB(169, 177, 214),
        
        FrameBg = Color3.fromRGB(32, 34, 51),
        FrameBgTransparency = 0,
        FrameBgActive = Color3.fromRGB(41, 46, 66),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(125, 207, 255),
        SliderGrab = Color3.fromRGB(187, 154, 247),
        ButtonsBg = Color3.fromRGB(90, 117, 242),
        CollapsingHeaderBg = Color3.fromRGB(41, 46, 66),
        RadioButtonHoveredBg = Color3.fromRGB(125, 207, 255),
        
        WindowBg = Color3.fromRGB(26, 27, 38),
        TitleBarBg = Color3.fromRGB(24, 25, 35),
        TitleBarBgActive = Color3.fromRGB(32, 34, 51),
        Border = Color3.fromRGB(65, 72, 104),
        ResizeGrab = Color3.fromRGB(187, 154, 247),
        RegionBgTransparency = 0.05
    })
    
    
    ReGui:DefineTheme("Material", {
        TitleAlign = Enum.TextXAlignment.Left,
        
        Text = Color3.fromRGB(236, 239, 241),
        TextDisabled = Color3.fromRGB(176, 190, 197),
        CollapsingHeaderText = Color3.fromRGB(236, 239, 241),
        
        FrameBg = Color3.fromRGB(38, 50, 56),
        FrameBgTransparency = 0.1,
        FrameBgActive = Color3.fromRGB(55, 71, 79),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(77, 182, 172),
        SliderGrab = Color3.fromRGB(0, 188, 212),
        ButtonsBg = Color3.fromRGB(33, 150, 243),
        CollapsingHeaderBg = Color3.fromRGB(38, 50, 56),
        RadioButtonHoveredBg = Color3.fromRGB(77, 182, 172),
        
        WindowBg = Color3.fromRGB(26, 32, 38),
        TitleBarBg = Color3.fromRGB(38, 50, 56),
        TitleBarBgActive = Color3.fromRGB(55, 71, 79),
        Border = Color3.fromRGB(69, 90, 100),
        ResizeGrab = Color3.fromRGB(0, 188, 212),
        RegionBgTransparency = 0.1
    })
    
    
    ReGui:DefineTheme("CyberPunk", {
        TitleAlign = Enum.TextXAlignment.Center,
        
        Text = Color3.fromRGB(0, 255, 196),
        TextDisabled = Color3.fromRGB(80, 130, 120),
        CollapsingHeaderText = Color3.fromRGB(0, 255, 196),
        
        FrameBg = Color3.fromRGB(15, 4, 76),
        FrameBgTransparency = 0.1,
        FrameBgActive = Color3.fromRGB(45, 15, 90),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(255, 0, 133),
        SliderGrab = Color3.fromRGB(255, 0, 255),
        ButtonsBg = Color3.fromRGB(0, 80, 255),
        CollapsingHeaderBg = Color3.fromRGB(45, 15, 90),
        RadioButtonHoveredBg = Color3.fromRGB(255, 0, 133),
        
        WindowBg = Color3.fromRGB(13, 2, 33),
        TitleBarBg = Color3.fromRGB(15, 4, 76),
        TitleBarBgActive = Color3.fromRGB(45, 15, 90),
        Border = Color3.fromRGB(0, 255, 255),
        ResizeGrab = Color3.fromRGB(255, 0, 255),
        RegionBgTransparency = 0.15
    })
    
    
    ReGui:DefineTheme("MonokaiPro", {
        TitleAlign = Enum.TextXAlignment.Left,
        
        Text = Color3.fromRGB(252, 252, 250),
        TextDisabled = Color3.fromRGB(120, 120, 120),
        CollapsingHeaderText = Color3.fromRGB(252, 252, 250),
        
        FrameBg = Color3.fromRGB(42, 43, 53),
        FrameBgTransparency = 0,
        FrameBgActive = Color3.fromRGB(57, 59, 70),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(162, 217, 175),
        SliderGrab = Color3.fromRGB(255, 204, 153),
        ButtonsBg = Color3.fromRGB(72, 130, 218),
        CollapsingHeaderBg = Color3.fromRGB(42, 43, 53),
        RadioButtonHoveredBg = Color3.fromRGB(162, 217, 175),
        
        WindowBg = Color3.fromRGB(32, 33, 42),
        TitleBarBg = Color3.fromRGB(32, 33, 42),
        TitleBarBgActive = Color3.fromRGB(42, 43, 53),
        Border = Color3.fromRGB(72, 75, 94),
        ResizeGrab = Color3.fromRGB(255, 204, 153),
        RegionBgTransparency = 0.1
    })
    
    
    ReGui:DefineTheme("NordLight", {
        TitleAlign = Enum.TextXAlignment.Center,
        
        Text = Color3.fromRGB(46, 52, 64),
        TextDisabled = Color3.fromRGB(94, 129, 172),
        CollapsingHeaderText = Color3.fromRGB(46, 52, 64),
        
        FrameBg = Color3.fromRGB(229, 233, 240),
        FrameBgTransparency = 0,
        FrameBgActive = Color3.fromRGB(216, 222, 233),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(94, 129, 172),
        SliderGrab = Color3.fromRGB(129, 161, 193),
        ButtonsBg = Color3.fromRGB(136, 192, 208),
        CollapsingHeaderBg = Color3.fromRGB(229, 233, 240),
        RadioButtonHoveredBg = Color3.fromRGB(94, 129, 172),
        
        WindowBg = Color3.fromRGB(236, 239, 244),
        TitleBarBg = Color3.fromRGB(229, 233, 240),
        TitleBarBgActive = Color3.fromRGB(216, 222, 233),
        Border = Color3.fromRGB(180, 192, 209),
        ResizeGrab = Color3.fromRGB(129, 161, 193),
        RegionBgTransparency = 0
    })

    
    ReGui:DefineTheme("Catppuccin", {
        TitleAlign = Enum.TextXAlignment.Center,
        
        Text = Color3.fromRGB(205, 214, 244),
        TextDisabled = Color3.fromRGB(127, 132, 156),
        CollapsingHeaderText = Color3.fromRGB(205, 214, 244),
        
        FrameBg = Color3.fromRGB(49, 50, 68),
        FrameBgTransparency = 0.1,
        FrameBgActive = Color3.fromRGB(65, 69, 89),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(243, 139, 168),
        SliderGrab = Color3.fromRGB(203, 166, 247),
        ButtonsBg = Color3.fromRGB(137, 180, 250),
        CollapsingHeaderBg = Color3.fromRGB(49, 50, 68),
        RadioButtonHoveredBg = Color3.fromRGB(249, 226, 175),
        
        WindowBg = Color3.fromRGB(30, 30, 46),
        TitleBarBg = Color3.fromRGB(24, 24, 37),
        TitleBarBgActive = Color3.fromRGB(49, 50, 68),
        Border = Color3.fromRGB(87, 89, 116),
        ResizeGrab = Color3.fromRGB(203, 166, 247),
        RegionBgTransparency = 0.05
    })
    
    
    ReGui:DefineTheme("OneDark", {
        TitleAlign = Enum.TextXAlignment.Left,
        
        Text = Color3.fromRGB(171, 178, 191),
        TextDisabled = Color3.fromRGB(92, 99, 112),
        CollapsingHeaderText = Color3.fromRGB(171, 178, 191),
        
        FrameBg = Color3.fromRGB(40, 44, 52),
        FrameBgTransparency = 0,
        FrameBgActive = Color3.fromRGB(48, 54, 64),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(98, 174, 239),
        SliderGrab = Color3.fromRGB(229, 192, 123),
        ButtonsBg = Color3.fromRGB(224, 108, 117),
        CollapsingHeaderBg = Color3.fromRGB(40, 44, 52),
        RadioButtonHoveredBg = Color3.fromRGB(152, 195, 121),
        
        WindowBg = Color3.fromRGB(33, 37, 43),
        TitleBarBg = Color3.fromRGB(33, 37, 43),
        TitleBarBgActive = Color3.fromRGB(40, 44, 52),
        Border = Color3.fromRGB(50, 56, 66),
        ResizeGrab = Color3.fromRGB(229, 192, 123),
        RegionBgTransparency = 0.1
    })
    
    
    ReGui:DefineTheme("Ayu", {
        TitleAlign = Enum.TextXAlignment.Center,
        
        Text = Color3.fromRGB(230, 225, 207),
        TextDisabled = Color3.fromRGB(142, 144, 140),
        CollapsingHeaderText = Color3.fromRGB(230, 225, 207),
        
        FrameBg = Color3.fromRGB(14, 17, 26),
        FrameBgTransparency = 0.1,
        FrameBgActive = Color3.fromRGB(25, 30, 42),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(242, 151, 24),
        SliderGrab = Color3.fromRGB(255, 106, 0),
        ButtonsBg = Color3.fromRGB(57, 186, 230),
        CollapsingHeaderBg = Color3.fromRGB(14, 17, 26),
        RadioButtonHoveredBg = Color3.fromRGB(242, 151, 24),
        
        WindowBg = Color3.fromRGB(10, 14, 20),
        TitleBarBg = Color3.fromRGB(14, 17, 26),
        TitleBarBgActive = Color3.fromRGB(25, 30, 42),
        Border = Color3.fromRGB(38, 46, 63),
        ResizeGrab = Color3.fromRGB(255, 106, 0),
        RegionBgTransparency = 0.05
    })
    
    
    ReGui:DefineTheme("GitHub", {
        TitleAlign = Enum.TextXAlignment.Left,
        
        Text = Color3.fromRGB(36, 41, 47),
        TextDisabled = Color3.fromRGB(106, 115, 125),
        CollapsingHeaderText = Color3.fromRGB(36, 41, 47),
        
        FrameBg = Color3.fromRGB(246, 248, 250),
        FrameBgTransparency = 0,
        FrameBgActive = Color3.fromRGB(241, 243, 245),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(34, 134, 58),
        SliderGrab = Color3.fromRGB(3, 102, 214),
        ButtonsBg = Color3.fromRGB(3, 102, 214),
        CollapsingHeaderBg = Color3.fromRGB(246, 248, 250),
        RadioButtonHoveredBg = Color3.fromRGB(34, 134, 58),
        
        WindowBg = Color3.fromRGB(255, 255, 255),
        TitleBarBg = Color3.fromRGB(246, 248, 250),
        TitleBarBgActive = Color3.fromRGB(241, 243, 245),
        Border = Color3.fromRGB(225, 228, 232),
        ResizeGrab = Color3.fromRGB(3, 102, 214),
        RegionBgTransparency = 0
    })
    
    
    ReGui:DefineTheme("GitHubDark", {
        TitleAlign = Enum.TextXAlignment.Left,
        
        Text = Color3.fromRGB(201, 209, 217),
        TextDisabled = Color3.fromRGB(139, 148, 158),
        CollapsingHeaderText = Color3.fromRGB(201, 209, 217),
        
        FrameBg = Color3.fromRGB(33, 38, 45),
        FrameBgTransparency = 0,
        FrameBgActive = Color3.fromRGB(48, 54, 61),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(46, 160, 67),
        SliderGrab = Color3.fromRGB(88, 166, 255),
        ButtonsBg = Color3.fromRGB(88, 166, 255),
        CollapsingHeaderBg = Color3.fromRGB(33, 38, 45),
        RadioButtonHoveredBg = Color3.fromRGB(46, 160, 67),
        
        WindowBg = Color3.fromRGB(22, 27, 34),
        TitleBarBg = Color3.fromRGB(33, 38, 45),
        TitleBarBgActive = Color3.fromRGB(48, 54, 61),
        Border = Color3.fromRGB(48, 54, 61),
        ResizeGrab = Color3.fromRGB(88, 166, 255),
        RegionBgTransparency = 0.05
    })
    
    
    ReGui:DefineTheme("Synthwave", {
        TitleAlign = Enum.TextXAlignment.Center,
        
        Text = Color3.fromRGB(248, 248, 242),
        TextDisabled = Color3.fromRGB(127, 107, 170),
        CollapsingHeaderText = Color3.fromRGB(248, 248, 242),
        
        FrameBg = Color3.fromRGB(41, 15, 66),
        FrameBgTransparency = 0.1,
        FrameBgActive = Color3.fromRGB(66, 24, 107),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(255, 66, 169),
        SliderGrab = Color3.fromRGB(36, 209, 240),
        ButtonsBg = Color3.fromRGB(245, 42, 144),
        CollapsingHeaderBg = Color3.fromRGB(41, 15, 66),
        RadioButtonHoveredBg = Color3.fromRGB(36, 209, 240),
        
        WindowBg = Color3.fromRGB(25, 8, 43),
        TitleBarBg = Color3.fromRGB(41, 15, 66),
        TitleBarBgActive = Color3.fromRGB(66, 24, 107),
        Border = Color3.fromRGB(83, 43, 129),
        ResizeGrab = Color3.fromRGB(36, 209, 240),
        RegionBgTransparency = 0.05
    })
    
    
    ReGui:DefineTheme("Everforest", {
        TitleAlign = Enum.TextXAlignment.Left,
        
        Text = Color3.fromRGB(211, 198, 170),
        TextDisabled = Color3.fromRGB(127, 132, 127),
        CollapsingHeaderText = Color3.fromRGB(211, 198, 170),
        
        FrameBg = Color3.fromRGB(55, 66, 66),
        FrameBgTransparency = 0,
        FrameBgActive = Color3.fromRGB(67, 80, 80),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(169, 182, 101),
        SliderGrab = Color3.fromRGB(184, 157, 79),
        ButtonsBg = Color3.fromRGB(127, 187, 179),
        CollapsingHeaderBg = Color3.fromRGB(55, 66, 66),
        RadioButtonHoveredBg = Color3.fromRGB(169, 182, 101),
        
        WindowBg = Color3.fromRGB(45, 53, 53),
        TitleBarBg = Color3.fromRGB(45, 53, 53),
        TitleBarBgActive = Color3.fromRGB(55, 66, 66),
        Border = Color3.fromRGB(77, 92, 92),
        ResizeGrab = Color3.fromRGB(184, 157, 79),
        RegionBgTransparency = 0.1
    })
    
    
    ReGui:DefineTheme("RosePine", {
        TitleAlign = Enum.TextXAlignment.Center,
        
        Text = Color3.fromRGB(224, 222, 244),
        TextDisabled = Color3.fromRGB(110, 106, 134),
        CollapsingHeaderText = Color3.fromRGB(224, 222, 244),
        
        FrameBg = Color3.fromRGB(25, 23, 36),
        FrameBgTransparency = 0.1,
        FrameBgActive = Color3.fromRGB(33, 32, 46),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(235, 188, 186),
        SliderGrab = Color3.fromRGB(196, 167, 231),
        ButtonsBg = Color3.fromRGB(234, 154, 151),
        CollapsingHeaderBg = Color3.fromRGB(25, 23, 36),
        RadioButtonHoveredBg = Color3.fromRGB(235, 188, 186),
        
        WindowBg = Color3.fromRGB(25, 23, 36),
        TitleBarBg = Color3.fromRGB(25, 23, 36),
        TitleBarBgActive = Color3.fromRGB(33, 32, 46),
        Border = Color3.fromRGB(64, 61, 82),
        ResizeGrab = Color3.fromRGB(196, 167, 231),
        RegionBgTransparency = 0.05
    })
    
    
    ReGui:DefineTheme("Horizon", {
        TitleAlign = Enum.TextXAlignment.Left,
        
        Text = Color3.fromRGB(203, 214, 226),
        TextDisabled = Color3.fromRGB(124, 131, 143),
        CollapsingHeaderText = Color3.fromRGB(203, 214, 226),
        
        FrameBg = Color3.fromRGB(42, 47, 56),
        FrameBgTransparency = 0,
        FrameBgActive = Color3.fromRGB(54, 58, 69),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(233, 86, 120),
        SliderGrab = Color3.fromRGB(250, 183, 149),
        ButtonsBg = Color3.fromRGB(38, 187, 217),
        CollapsingHeaderBg = Color3.fromRGB(42, 47, 56),
        RadioButtonHoveredBg = Color3.fromRGB(233, 86, 120),
        
        WindowBg = Color3.fromRGB(28, 30, 38),
        TitleBarBg = Color3.fromRGB(28, 30, 38),
        TitleBarBgActive = Color3.fromRGB(42, 47, 56),
        Border = Color3.fromRGB(58, 63, 77),
        ResizeGrab = Color3.fromRGB(250, 183, 149),
        RegionBgTransparency = 0.1
    })
    
    
    ReGui:DefineTheme("PaperWhite", {
        TitleAlign = Enum.TextXAlignment.Center,
        
        Text = Color3.fromRGB(60, 60, 60),
        TextDisabled = Color3.fromRGB(150, 150, 150),
        CollapsingHeaderText = Color3.fromRGB(40, 40, 40),
        
        FrameBg = Color3.fromRGB(240, 240, 240),
        FrameBgTransparency = 0,
        FrameBgActive = Color3.fromRGB(230, 230, 230),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(66, 133, 244),
        SliderGrab = Color3.fromRGB(66, 133, 244),
        ButtonsBg = Color3.fromRGB(66, 133, 244),
        CollapsingHeaderBg = Color3.fromRGB(240, 240, 240),
        RadioButtonHoveredBg = Color3.fromRGB(66, 133, 244),
        
        WindowBg = Color3.fromRGB(255, 255, 255),
        TitleBarBg = Color3.fromRGB(245, 245, 245),
        TitleBarBgActive = Color3.fromRGB(235, 235, 235),
        Border = Color3.fromRGB(200, 200, 200),
        ResizeGrab = Color3.fromRGB(66, 133, 244),
        RegionBgTransparency = 0
    })
    
    
    ReGui:DefineTheme("DeepOcean", {
        TitleAlign = Enum.TextXAlignment.Left,
        
        Text = Color3.fromRGB(238, 255, 255),
        TextDisabled = Color3.fromRGB(128, 151, 172),
        CollapsingHeaderText = Color3.fromRGB(238, 255, 255),
        
        FrameBg = Color3.fromRGB(16, 32, 56),
        FrameBgTransparency = 0.1,
        FrameBgActive = Color3.fromRGB(23, 44, 76),
        FrameBgTransparencyActive = 0,
        
        CheckMark = Color3.fromRGB(0, 255, 209),
        SliderGrab = Color3.fromRGB(46, 144, 255),
        ButtonsBg = Color3.fromRGB(0, 119, 182),
        CollapsingHeaderBg = Color3.fromRGB(16, 32, 56),
        RadioButtonHoveredBg = Color3.fromRGB(0, 255, 209),
        
        WindowBg = Color3.fromRGB(6, 18, 38),
        TitleBarBg = Color3.fromRGB(10, 24, 47),
        TitleBarBgActive = Color3.fromRGB(16, 32, 56),
        Border = Color3.fromRGB(26, 59, 92),
        ResizeGrab = Color3.fromRGB(46, 144, 255),
        RegionBgTransparency = 0.05
    })
    
    
    return {
        "Dracula", "Forest", "Nord", "SolarizedDark", "SolarizedLight", 
        "GruvboxDark", "TokyoNight", "Material", "CyberPunk", "MonokaiPro", "NordLight",
        "Catppuccin", "OneDark", "Ayu", "GitHub", "GitHubDark", "Synthwave", 
        "Everforest", "RosePine", "Horizon", "PaperWhite", "DeepOcean"
    }
end
