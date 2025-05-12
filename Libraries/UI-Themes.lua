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

    ReGui:DefineTheme("LightMode", {
        TitleAlign = Enum.TextXAlignment.Left,

        Text = Color3.fromRGB(30, 30, 30),
        TextDisabled = Color3.fromRGB(120, 120, 120),
        CollapsingHeaderText = Color3.fromRGB(45, 45, 45),

        FrameBg = Color3.fromRGB(245, 245, 245),
        FrameBgTransparency = 0.1,
        FrameBgActive = Color3.fromRGB(230, 230, 230),
        FrameBgTransparencyActive = 0,

        CheckMark = Color3.fromRGB(0, 120, 215),
        SliderGrab = Color3.fromRGB(100, 100, 255),
        ButtonsBg = Color3.fromRGB(0, 120, 215),
        CollapsingHeaderBg = Color3.fromRGB(230, 230, 230),
        RadioButtonHoveredBg = Color3.fromRGB(200, 200, 200),

        WindowBg = Color3.fromRGB(255, 255, 255),
        TitleBarBg = Color3.fromRGB(235, 235, 235),
        TitleBarBgActive = Color3.fromRGB(210, 210, 210),
        Border = Color3.fromRGB(180, 180, 180),
        ResizeGrab = Color3.fromRGB(100, 100, 255),
        RegionBgTransparency = 0.95
    })

    ReGui:DefineTheme("NeonRetro", {
        TitleAlign = Enum.TextXAlignment.Center,

        Text = Color3.fromRGB(255, 0, 255),
        TextDisabled = Color3.fromRGB(100, 50, 100),
        CollapsingHeaderText = Color3.fromRGB(255, 0, 255),

        FrameBg = Color3.fromRGB(10, 10, 30),
        FrameBgTransparency = 0.3,
        FrameBgActive = Color3.fromRGB(40, 0, 60),
        FrameBgTransparencyActive = 0.1,

        CheckMark = Color3.fromRGB(0, 255, 255),
        SliderGrab = Color3.fromRGB(0, 255, 127),
        ButtonsBg = Color3.fromRGB(255, 20, 147),
        CollapsingHeaderBg = Color3.fromRGB(40, 0, 60),
        RadioButtonHoveredBg = Color3.fromRGB(255, 165, 0),

        WindowBg = Color3.fromRGB(20, 0, 30),
        TitleBarBg = Color3.fromRGB(30, 0, 50),
        TitleBarBgActive = Color3.fromRGB(60, 0, 90),
        Border = Color3.fromRGB(255, 0, 255),
        ResizeGrab = Color3.fromRGB(0, 255, 127),
        RegionBgTransparency = 0.8
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

    ReGui:DefineTheme("DarkTheme", {
        TitleAlign = Enum.TextXAlignment.Left,

        Text = Color3.fromRGB(240, 240, 240),
        TextDisabled = Color3.fromRGB(172, 171, 175),
        CollapsingHeaderText = Color3.fromRGB(240, 240, 240),

        FrameBg = Color3.fromRGB(30, 66, 115),
        FrameBgTransparency = 0.4,
        FrameBgActive = Color3.fromRGB(50, 150, 250),
        FrameBgTransparencyActive = 0.4,

        CheckMark = Color3.fromRGB(50, 150, 250),
        SliderGrab = Color3.fromRGB(50, 150, 250),
        ButtonsBg = Color3.fromRGB(50, 150, 250),
        CollapsingHeaderBg = Color3.fromRGB(50, 150, 250),
        RadioButtonHoveredBg = Color3.fromRGB(172, 171, 175),

        WindowBg = Color3.fromRGB(15, 19, 24),
        WindowBgTransparency = 0.05,
        TitleBarBg = Color3.fromRGB(15, 19, 24),
        TitleBarTransparency = 0,
        TitleBarBgActive = Color3.fromRGB(30, 66, 115),
        TitleBarTransparencyActive = 0.05,
        Border = Color3.fromRGB(172, 171, 175),
        BorderTransparency = 0.8,
        ResizeGrab = Color3.fromRGB(50, 150, 250),
        RegionBgTransparency = 0.1
    })

    ReGui:DefineTheme("Ocean", {
        TitleAlign = Enum.TextXAlignment.Center,

        Text = Color3.fromRGB(240, 240, 255),
        TextDisabled = Color3.fromRGB(150, 170, 200),
        CollapsingHeaderText = Color3.fromRGB(240, 255, 255),

        FrameBg = Color3.fromRGB(35, 85, 120),
        FrameBgTransparency = 0.3,
        FrameBgActive = Color3.fromRGB(25, 140, 200),
        FrameBgTransparencyActive = 0.2,

        CheckMark = Color3.fromRGB(100, 200, 255),
        SliderGrab = Color3.fromRGB(70, 180, 230),
        ButtonsBg = Color3.fromRGB(25, 140, 200),
        CollapsingHeaderBg = Color3.fromRGB(35, 110, 160),
        RadioButtonHoveredBg = Color3.fromRGB(100, 200, 255),

        WindowBg = Color3.fromRGB(15, 35, 60),
        TitleBarBg = Color3.fromRGB(20, 45, 70),
        TitleBarBgActive = Color3.fromRGB(30, 80, 120),
        Border = Color3.fromRGB(70, 130, 180),
        ResizeGrab = Color3.fromRGB(70, 180, 230),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Midnight", {
        TitleAlign = Enum.TextXAlignment.Center,

        Text = Color3.fromRGB(230, 230, 250),
        TextDisabled = Color3.fromRGB(140, 140, 180),
        CollapsingHeaderText = Color3.fromRGB(230, 230, 250),

        FrameBg = Color3.fromRGB(40, 40, 70),
        FrameBgTransparency = 0.25,
        FrameBgActive = Color3.fromRGB(80, 70, 140),
        FrameBgTransparencyActive = 0.15,

        CheckMark = Color3.fromRGB(130, 110, 240),
        SliderGrab = Color3.fromRGB(110, 90, 220),
        ButtonsBg = Color3.fromRGB(80, 70, 140),
        CollapsingHeaderBg = Color3.fromRGB(60, 60, 110),
        RadioButtonHoveredBg = Color3.fromRGB(130, 110, 240),

        WindowBg = Color3.fromRGB(20, 20, 35),
        TitleBarBg = Color3.fromRGB(25, 25, 45),
        TitleBarBgActive = Color3.fromRGB(40, 40, 75),
        Border = Color3.fromRGB(75, 75, 120),
        ResizeGrab = Color3.fromRGB(110, 90, 220),
        RegionBgTransparency = 0.2
    })

    ReGui:DefineTheme("Ruby", {
        TitleAlign = Enum.TextXAlignment.Center,

        Text = Color3.fromRGB(255, 230, 230),
        TextDisabled = Color3.fromRGB(200, 150, 150),
        CollapsingHeaderText = Color3.fromRGB(255, 235, 235),

        FrameBg = Color3.fromRGB(120, 40, 50),
        FrameBgTransparency = 0.3,
        FrameBgActive = Color3.fromRGB(180, 50, 60),
        FrameBgTransparencyActive = 0.2,

        CheckMark = Color3.fromRGB(220, 100, 100),
        SliderGrab = Color3.fromRGB(200, 80, 90),
        ButtonsBg = Color3.fromRGB(180, 50, 60),
        CollapsingHeaderBg = Color3.fromRGB(140, 50, 60),
        RadioButtonHoveredBg = Color3.fromRGB(220, 100, 100),

        WindowBg = Color3.fromRGB(50, 20, 25),
        TitleBarBg = Color3.fromRGB(70, 25, 30),
        TitleBarBgActive = Color3.fromRGB(100, 35, 40),
        Border = Color3.fromRGB(140, 60, 70),
        ResizeGrab = Color3.fromRGB(200, 80, 90),
        RegionBgTransparency = 0.2
    })

    -- Additional themes
    ReGui:DefineTheme("Sunset", {
        TitleAlign = Enum.TextXAlignment.Center,
        Text = Color3.fromRGB(255, 245, 235),
        TextDisabled = Color3.fromRGB(200, 170, 150),
        CollapsingHeaderText = Color3.fromRGB(255, 245, 235),
        FrameBg = Color3.fromRGB(150, 75, 60),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(200, 100, 80),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(255, 200, 120),
        SliderGrab = Color3.fromRGB(255, 170, 90),
        ButtonsBg = Color3.fromRGB(200, 100, 70),
        CollapsingHeaderBg = Color3.fromRGB(150, 75, 60),
        RadioButtonHoveredBg = Color3.fromRGB(255, 170, 90),
        WindowBg = Color3.fromRGB(80, 40, 50),
        TitleBarBg = Color3.fromRGB(90, 45, 55),
        TitleBarBgActive = Color3.fromRGB(120, 60, 70),
        Border = Color3.fromRGB(130, 75, 70),
        ResizeGrab = Color3.fromRGB(255, 170, 90),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Arctic", {
        TitleAlign = Enum.TextXAlignment.Center,
        Text = Color3.fromRGB(230, 245, 255),
        TextDisabled = Color3.fromRGB(180, 200, 220),
        CollapsingHeaderText = Color3.fromRGB(230, 245, 255),
        FrameBg = Color3.fromRGB(70, 110, 150),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(90, 140, 190),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(180, 230, 255),
        SliderGrab = Color3.fromRGB(150, 210, 255),
        ButtonsBg = Color3.fromRGB(90, 140, 190),
        CollapsingHeaderBg = Color3.fromRGB(70, 110, 150),
        RadioButtonHoveredBg = Color3.fromRGB(180, 230, 255),
        WindowBg = Color3.fromRGB(20, 35, 55),
        TitleBarBg = Color3.fromRGB(25, 40, 65),
        TitleBarBgActive = Color3.fromRGB(35, 60, 95),
        Border = Color3.fromRGB(60, 100, 140),
        ResizeGrab = Color3.fromRGB(150, 210, 255),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Emerald", {
        TitleAlign = Enum.TextXAlignment.Left,
        Text = Color3.fromRGB(220, 255, 230),
        TextDisabled = Color3.fromRGB(160, 200, 170),
        CollapsingHeaderText = Color3.fromRGB(220, 255, 230),
        FrameBg = Color3.fromRGB(40, 120, 80),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(60, 160, 110),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(120, 230, 160),
        SliderGrab = Color3.fromRGB(80, 200, 130),
        ButtonsBg = Color3.fromRGB(60, 160, 110),
        CollapsingHeaderBg = Color3.fromRGB(40, 120, 80),
        RadioButtonHoveredBg = Color3.fromRGB(120, 230, 160),
        WindowBg = Color3.fromRGB(15, 50, 35),
        TitleBarBg = Color3.fromRGB(20, 60, 40),
        TitleBarBgActive = Color3.fromRGB(30, 80, 55),
        Border = Color3.fromRGB(50, 130, 90),
        ResizeGrab = Color3.fromRGB(80, 200, 130),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Amethyst", {
        TitleAlign = Enum.TextXAlignment.Center,
        Text = Color3.fromRGB(245, 235, 255),
        TextDisabled = Color3.fromRGB(190, 180, 210),
        CollapsingHeaderText = Color3.fromRGB(245, 235, 255),
        FrameBg = Color3.fromRGB(100, 70, 140),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(130, 90, 180),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(200, 160, 255),
        SliderGrab = Color3.fromRGB(170, 130, 255),
        ButtonsBg = Color3.fromRGB(130, 90, 180),
        CollapsingHeaderBg = Color3.fromRGB(100, 70, 140),
        RadioButtonHoveredBg = Color3.fromRGB(200, 160, 255),
        WindowBg = Color3.fromRGB(40, 25, 65),
        TitleBarBg = Color3.fromRGB(50, 30, 75),
        TitleBarBgActive = Color3.fromRGB(70, 45, 105),
        Border = Color3.fromRGB(90, 60, 130),
        ResizeGrab = Color3.fromRGB(170, 130, 255),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Ember", {
        TitleAlign = Enum.TextXAlignment.Center,
        Text = Color3.fromRGB(255, 240, 220),
        TextDisabled = Color3.fromRGB(210, 180, 150),
        CollapsingHeaderText = Color3.fromRGB(255, 240, 220),
        FrameBg = Color3.fromRGB(140, 80, 40),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(180, 100, 50),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(255, 180, 90),
        SliderGrab = Color3.fromRGB(255, 150, 60),
        ButtonsBg = Color3.fromRGB(180, 100, 50),
        CollapsingHeaderBg = Color3.fromRGB(140, 80, 40),
        RadioButtonHoveredBg = Color3.fromRGB(255, 180, 90),
        WindowBg = Color3.fromRGB(60, 30, 20),
        TitleBarBg = Color3.fromRGB(70, 35, 25),
        TitleBarBgActive = Color3.fromRGB(90, 50, 30),
        Border = Color3.fromRGB(120, 70, 40),
        ResizeGrab = Color3.fromRGB(255, 150, 60),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Aqua", {
        TitleAlign = Enum.TextXAlignment.Left,
        Text = Color3.fromRGB(225, 255, 250),
        TextDisabled = Color3.fromRGB(170, 210, 200),
        CollapsingHeaderText = Color3.fromRGB(225, 255, 250),
        FrameBg = Color3.fromRGB(50, 160, 170),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(70, 200, 210),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(130, 255, 240),
        SliderGrab = Color3.fromRGB(100, 230, 220),
        ButtonsBg = Color3.fromRGB(70, 200, 210),
        CollapsingHeaderBg = Color3.fromRGB(50, 160, 170),
        RadioButtonHoveredBg = Color3.fromRGB(130, 255, 240),
        WindowBg = Color3.fromRGB(15, 70, 75),
        TitleBarBg = Color3.fromRGB(20, 80, 85),
        TitleBarBgActive = Color3.fromRGB(30, 110, 115),
        Border = Color3.fromRGB(40, 150, 160),
        ResizeGrab = Color3.fromRGB(100, 230, 220),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Strawberry", {
        TitleAlign = Enum.TextXAlignment.Center,
        Text = Color3.fromRGB(255, 230, 240),
        TextDisabled = Color3.fromRGB(210, 170, 190),
        CollapsingHeaderText = Color3.fromRGB(255, 230, 240),
        FrameBg = Color3.fromRGB(200, 70, 120),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(230, 90, 140),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(255, 150, 200),
        SliderGrab = Color3.fromRGB(255, 120, 170),
        ButtonsBg = Color3.fromRGB(230, 90, 140),
        CollapsingHeaderBg = Color3.fromRGB(200, 70, 120),
        RadioButtonHoveredBg = Color3.fromRGB(255, 150, 200),
        WindowBg = Color3.fromRGB(90, 25, 55),
        TitleBarBg = Color3.fromRGB(100, 30, 65),
        TitleBarBgActive = Color3.fromRGB(130, 45, 85),
        Border = Color3.fromRGB(170, 60, 110),
        ResizeGrab = Color3.fromRGB(255, 120, 170),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Blueberry", {
        TitleAlign = Enum.TextXAlignment.Left,
        Text = Color3.fromRGB(230, 240, 255),
        TextDisabled = Color3.fromRGB(170, 190, 220),
        CollapsingHeaderText = Color3.fromRGB(230, 240, 255),
        FrameBg = Color3.fromRGB(70, 100, 180),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(90, 130, 220),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(150, 190, 255),
        SliderGrab = Color3.fromRGB(120, 160, 255),
        ButtonsBg = Color3.fromRGB(90, 130, 220),
        CollapsingHeaderBg = Color3.fromRGB(70, 100, 180),
        RadioButtonHoveredBg = Color3.fromRGB(150, 190, 255),
        WindowBg = Color3.fromRGB(25, 40, 90),
        TitleBarBg = Color3.fromRGB(30, 50, 100),
        TitleBarBgActive = Color3.fromRGB(45, 70, 140),
        Border = Color3.fromRGB(60, 90, 160),
        ResizeGrab = Color3.fromRGB(120, 160, 255),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Lime", {
        TitleAlign = Enum.TextXAlignment.Center,
        Text = Color3.fromRGB(235, 255, 220),
        TextDisabled = Color3.fromRGB(180, 210, 160),
        CollapsingHeaderText = Color3.fromRGB(235, 255, 220),
        FrameBg = Color3.fromRGB(110, 180, 50),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(140, 220, 70),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(190, 255, 120),
        SliderGrab = Color3.fromRGB(160, 240, 80),
        ButtonsBg = Color3.fromRGB(140, 220, 70),
        CollapsingHeaderBg = Color3.fromRGB(110, 180, 50),
        RadioButtonHoveredBg = Color3.fromRGB(190, 255, 120),
        WindowBg = Color3.fromRGB(40, 80, 20),
        TitleBarBg = Color3.fromRGB(50, 95, 25),
        TitleBarBgActive = Color3.fromRGB(70, 130, 35),
        Border = Color3.fromRGB(100, 160, 45),
        ResizeGrab = Color3.fromRGB(160, 240, 80),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Obsidian", {
        TitleAlign = Enum.TextXAlignment.Left,
        Text = Color3.fromRGB(220, 220, 220),
        TextDisabled = Color3.fromRGB(140, 140, 140),
        CollapsingHeaderText = Color3.fromRGB(220, 220, 220),
        FrameBg = Color3.fromRGB(50, 50, 50),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(70, 70, 70),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(180, 180, 180),
        SliderGrab = Color3.fromRGB(150, 150, 150),
        ButtonsBg = Color3.fromRGB(70, 70, 70),
        CollapsingHeaderBg = Color3.fromRGB(50, 50, 50),
        RadioButtonHoveredBg = Color3.fromRGB(180, 180, 180),
        WindowBg = Color3.fromRGB(15, 15, 15),
        TitleBarBg = Color3.fromRGB(20, 20, 20),
        TitleBarBgActive = Color3.fromRGB(30, 30, 30),
        Border = Color3.fromRGB(60, 60, 60),
        ResizeGrab = Color3.fromRGB(150, 150, 150),
        RegionBgTransparency = 0.15
    })
    
    ReGui:DefineTheme("Cobalt", {
        TitleAlign = Enum.TextXAlignment.Center,
        Text = Color3.fromRGB(210, 230, 250),
        TextDisabled = Color3.fromRGB(140, 170, 200),
        CollapsingHeaderText = Color3.fromRGB(210, 230, 250),
        FrameBg = Color3.fromRGB(25, 70, 140),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(35, 90, 180),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(100, 170, 255),
        SliderGrab = Color3.fromRGB(70, 140, 230),
        ButtonsBg = Color3.fromRGB(35, 90, 180),
        CollapsingHeaderBg = Color3.fromRGB(25, 70, 140),
        RadioButtonHoveredBg = Color3.fromRGB(100, 170, 255),
        WindowBg = Color3.fromRGB(10, 30, 60),
        TitleBarBg = Color3.fromRGB(15, 40, 80),
        TitleBarBgActive = Color3.fromRGB(20, 50, 100),
        Border = Color3.fromRGB(40, 80, 150),
        ResizeGrab = Color3.fromRGB(70, 140, 230),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Crimson", {
        TitleAlign = Enum.TextXAlignment.Left,
        Text = Color3.fromRGB(250, 230, 230),
        TextDisabled = Color3.fromRGB(200, 150, 150),
        CollapsingHeaderText = Color3.fromRGB(250, 230, 230),
        FrameBg = Color3.fromRGB(140, 30, 40),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(180, 40, 50),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(255, 120, 130),
        SliderGrab = Color3.fromRGB(230, 80, 90),
        ButtonsBg = Color3.fromRGB(180, 40, 50),
        CollapsingHeaderBg = Color3.fromRGB(140, 30, 40),
        RadioButtonHoveredBg = Color3.fromRGB(255, 120, 130),
        WindowBg = Color3.fromRGB(60, 15, 20),
        TitleBarBg = Color3.fromRGB(80, 20, 25),
        TitleBarBgActive = Color3.fromRGB(100, 25, 30),
        Border = Color3.fromRGB(150, 40, 50),
        ResizeGrab = Color3.fromRGB(230, 80, 90),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Pastel", {
        TitleAlign = Enum.TextXAlignment.Center,
        Text = Color3.fromRGB(90, 90, 120),
        TextDisabled = Color3.fromRGB(150, 150, 170),
        CollapsingHeaderText = Color3.fromRGB(90, 90, 120),
        FrameBg = Color3.fromRGB(230, 230, 250),
        FrameBgTransparency = 0.1,
        FrameBgActive = Color3.fromRGB(210, 210, 235),
        FrameBgTransparencyActive = 0,
        CheckMark = Color3.fromRGB(150, 150, 200),
        SliderGrab = Color3.fromRGB(180, 180, 220),
        ButtonsBg = Color3.fromRGB(210, 210, 235),
        CollapsingHeaderBg = Color3.fromRGB(230, 230, 250),
        RadioButtonHoveredBg = Color3.fromRGB(150, 150, 200),
        WindowBg = Color3.fromRGB(250, 250, 255),
        TitleBarBg = Color3.fromRGB(240, 240, 250),
        TitleBarBgActive = Color3.fromRGB(230, 230, 245),
        Border = Color3.fromRGB(200, 200, 230),
        ResizeGrab = Color3.fromRGB(180, 180, 220),
        RegionBgTransparency = 0.05
    })

    ReGui:DefineTheme("Coral", {
        TitleAlign = Enum.TextXAlignment.Left,
        Text = Color3.fromRGB(255, 250, 245),
        TextDisabled = Color3.fromRGB(200, 180, 170),
        CollapsingHeaderText = Color3.fromRGB(255, 250, 245),
        FrameBg = Color3.fromRGB(250, 120, 90),
        FrameBgTransparency = 0.3,
        FrameBgActive = Color3.fromRGB(255, 150, 120),
        FrameBgTransparencyActive = 0.2,
        CheckMark = Color3.fromRGB(255, 200, 180),
        SliderGrab = Color3.fromRGB(255, 180, 150),
        ButtonsBg = Color3.fromRGB(255, 150, 120),
        CollapsingHeaderBg = Color3.fromRGB(250, 120, 90),
        RadioButtonHoveredBg = Color3.fromRGB(255, 200, 180),
        WindowBg = Color3.fromRGB(90, 50, 40),
        TitleBarBg = Color3.fromRGB(110, 60, 50),
        TitleBarBgActive = Color3.fromRGB(140, 70, 60),
        Border = Color3.fromRGB(200, 100, 80),
        ResizeGrab = Color3.fromRGB(255, 180, 150),
        RegionBgTransparency = 0.2
    })

    ReGui:DefineTheme("Teal", {
        TitleAlign = Enum.TextXAlignment.Center,
        Text = Color3.fromRGB(230, 250, 245),
        TextDisabled = Color3.fromRGB(170, 200, 190),
        CollapsingHeaderText = Color3.fromRGB(230, 250, 245),
        FrameBg = Color3.fromRGB(40, 150, 140),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(50, 180, 170),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(100, 230, 210),
        SliderGrab = Color3.fromRGB(70, 210, 190),
        ButtonsBg = Color3.fromRGB(50, 180, 170),
        CollapsingHeaderBg = Color3.fromRGB(40, 150, 140),
        RadioButtonHoveredBg = Color3.fromRGB(100, 230, 210),
        WindowBg = Color3.fromRGB(20, 70, 65),
        TitleBarBg = Color3.fromRGB(25, 85, 80),
        TitleBarBgActive = Color3.fromRGB(30, 100, 95),
        Border = Color3.fromRGB(60, 140, 130),
        ResizeGrab = Color3.fromRGB(70, 210, 190),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Gold", {
        TitleAlign = Enum.TextXAlignment.Left,
        Text = Color3.fromRGB(255, 245, 220),
        TextDisabled = Color3.fromRGB(200, 180, 140),
        CollapsingHeaderText = Color3.fromRGB(255, 245, 220),
        FrameBg = Color3.fromRGB(190, 150, 70),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(230, 180, 80),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(255, 220, 130),
        SliderGrab = Color3.fromRGB(255, 200, 100),
        ButtonsBg = Color3.fromRGB(230, 180, 80),
        CollapsingHeaderBg = Color3.fromRGB(190, 150, 70),
        RadioButtonHoveredBg = Color3.fromRGB(255, 220, 130),
        WindowBg = Color3.fromRGB(70, 55, 30),
        TitleBarBg = Color3.fromRGB(85, 65, 35),
        TitleBarBgActive = Color3.fromRGB(100, 80, 40),
        Border = Color3.fromRGB(170, 140, 60),
        ResizeGrab = Color3.fromRGB(255, 200, 100),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Bubblegum", {
        TitleAlign = Enum.TextXAlignment.Center,
        Text = Color3.fromRGB(255, 240, 250),
        TextDisabled = Color3.fromRGB(210, 180, 200),
        CollapsingHeaderText = Color3.fromRGB(255, 240, 250),
        FrameBg = Color3.fromRGB(255, 150, 230),
        FrameBgTransparency = 0.3,
        FrameBgActive = Color3.fromRGB(255, 180, 240),
        FrameBgTransparencyActive = 0.2,
        CheckMark = Color3.fromRGB(255, 210, 250),
        SliderGrab = Color3.fromRGB(255, 190, 240),
        ButtonsBg = Color3.fromRGB(255, 180, 240),
        CollapsingHeaderBg = Color3.fromRGB(255, 150, 230),
        RadioButtonHoveredBg = Color3.fromRGB(255, 210, 250),
        WindowBg = Color3.fromRGB(150, 100, 140),
        TitleBarBg = Color3.fromRGB(170, 120, 160),
        TitleBarBgActive = Color3.fromRGB(190, 140, 180),
        Border = Color3.fromRGB(225, 140, 210),
        ResizeGrab = Color3.fromRGB(255, 190, 240),
        RegionBgTransparency = 0.25
    })

    ReGui:DefineTheme("Marine", {
        TitleAlign = Enum.TextXAlignment.Left,
        Text = Color3.fromRGB(230, 240, 240),
        TextDisabled = Color3.fromRGB(170, 190, 190),
        CollapsingHeaderText = Color3.fromRGB(230, 240, 240),
        FrameBg = Color3.fromRGB(40, 90, 110),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(50, 110, 130),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(120, 190, 210),
        SliderGrab = Color3.fromRGB(90, 160, 180),
        ButtonsBg = Color3.fromRGB(50, 110, 130),
        CollapsingHeaderBg = Color3.fromRGB(40, 90, 110),
        RadioButtonHoveredBg = Color3.fromRGB(120, 190, 210),
        WindowBg = Color3.fromRGB(20, 40, 50),
        TitleBarBg = Color3.fromRGB(25, 50, 60),
        TitleBarBgActive = Color3.fromRGB(30, 60, 70),
        Border = Color3.fromRGB(60, 100, 120),
        ResizeGrab = Color3.fromRGB(90, 160, 180),
        RegionBgTransparency = 0.15
    })

    ReGui:DefineTheme("Citrus", {
        TitleAlign = Enum.TextXAlignment.Center,
        Text = Color3.fromRGB(50, 40, 10),
        TextDisabled = Color3.fromRGB(120, 100, 50),
        CollapsingHeaderText = Color3.fromRGB(50, 40, 10),
        FrameBg = Color3.fromRGB(255, 230, 130),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(255, 200, 80),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(220, 160, 40),
        SliderGrab = Color3.fromRGB(240, 180, 50),
        ButtonsBg = Color3.fromRGB(255, 200, 80),
        CollapsingHeaderBg = Color3.fromRGB(255, 230, 130),
        RadioButtonHoveredBg = Color3.fromRGB(220, 160, 40),
        WindowBg = Color3.fromRGB(255, 250, 220),
        TitleBarBg = Color3.fromRGB(255, 240, 180),
        TitleBarBgActive = Color3.fromRGB(255, 220, 140),
        Border = Color3.fromRGB(230, 190, 80),
        ResizeGrab = Color3.fromRGB(240, 180, 50),
        RegionBgTransparency = 0.1
    })

    ReGui:DefineTheme("Carbon", {
        TitleAlign = Enum.TextXAlignment.Left,
        Text = Color3.fromRGB(200, 200, 200),
        TextDisabled = Color3.fromRGB(120, 120, 120),
        CollapsingHeaderText = Color3.fromRGB(200, 200, 200),
        FrameBg = Color3.fromRGB(40, 40, 40),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(60, 60, 60),
        FrameBgTransparencyActive = 0.1,
        CheckMark = Color3.fromRGB(150, 150, 150),
        SliderGrab = Color3.fromRGB(100, 100, 100),
        ButtonsBg = Color3.fromRGB(60, 60, 60),
        CollapsingHeaderBg = Color3.fromRGB(40, 40, 40),
        RadioButtonHoveredBg = Color3.fromRGB(150, 150, 150),
        WindowBg = Color3.fromRGB(20, 20, 20),
        TitleBarBg = Color3.fromRGB(25, 25, 25),
        TitleBarBgActive = Color3.fromRGB(35, 35, 35),
        Border = Color3.fromRGB(70, 70, 70),
        ResizeGrab = Color3.fromRGB(100, 100, 100),
        RegionBgTransparency = 0.15
    })

    return {"DarkTheme", "Dracula", "LightMode", "NeonRetro", "Forest", "Ocean", "Midnight", "Ruby", 
            "Sunset", "Arctic", "Emerald", "Amethyst", "Ember", "Aqua", "Strawberry", "Blueberry", "Lime", "Obsidian",
            "Cobalt", "Crimson", "Pastel", "Coral", "Teal", "Gold", "Bubblegum", "Marine", "Citrus", "Carbon"}
end
