return function(ReGui)
    ReGui:DefineTheme("Dracula", {
        TitleAlign = Enum.TextXAlignment.Center,

        Text = Color3.fromRGB(248, 248, 242),
        TextDisabled = Color3.fromRGB(98, 114, 164),
        CollapsingHeaderText = Color3.fromRGB(248, 248, 242),

        FrameBg = Color3.fromRGB(40, 42, 54),
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

    ReGui:DefineTheme("Solarized", {
        TitleAlign = Enum.TextXAlignment.Center,

        Text = Color3.fromRGB(131, 148, 150),
        TextDisabled = Color3.fromRGB(93, 107, 116),
        CollapsingHeaderText = Color3.fromRGB(131, 148, 150),

        FrameBg = Color3.fromRGB(0, 43, 54),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(7, 54, 66),
        FrameBgTransparencyActive = 0.1,

        CheckMark = Color3.fromRGB(88, 110, 117),
        SliderGrab = Color3.fromRGB(147, 161, 161),
        ButtonsBg = Color3.fromRGB(238, 232, 213),
        CollapsingHeaderBg = Color3.fromRGB(7, 54, 66),
        RadioButtonHoveredBg = Color3.fromRGB(253, 246, 227),

        WindowBg = Color3.fromRGB(0, 43, 54),
        TitleBarBg = Color3.fromRGB(0, 43, 54),
        TitleBarBgActive = Color3.fromRGB(7, 54, 66),
        Border = Color3.fromRGB(93, 107, 116),
        ResizeGrab = Color3.fromRGB(147, 161, 161),
        RegionBgTransparency = 1
    })

    ReGui:DefineTheme("Oceanic", {
        TitleAlign = Enum.TextXAlignment.Center,

        Text = Color3.fromRGB(204, 255, 255),
        TextDisabled = Color3.fromRGB(144, 182, 184),
        CollapsingHeaderText = Color3.fromRGB(204, 255, 255),

        FrameBg = Color3.fromRGB(0, 32, 41),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(0, 48, 61),
        FrameBgTransparencyActive = 0.1,

        CheckMark = Color3.fromRGB(44, 219, 237),
        SliderGrab = Color3.fromRGB(77, 179, 185),
        ButtonsBg = Color3.fromRGB(38, 129, 150),
        CollapsingHeaderBg = Color3.fromRGB(0, 48, 61),
        RadioButtonHoveredBg = Color3.fromRGB(52, 199, 210),

        WindowBg = Color3.fromRGB(0, 32, 41),
        TitleBarBg = Color3.fromRGB(0, 32, 41),
        TitleBarBgActive = Color3.fromRGB(0, 48, 61),
        Border = Color3.fromRGB(144, 182, 184),
        ResizeGrab = Color3.fromRGB(77, 179, 185),
        RegionBgTransparency = 1
    })

    ReGui:DefineTheme("Sunset", {
        TitleAlign = Enum.TextXAlignment.Center,

        Text = Color3.fromRGB(255, 216, 154),
        TextDisabled = Color3.fromRGB(205, 139, 97),
        CollapsingHeaderText = Color3.fromRGB(255, 216, 154),

        FrameBg = Color3.fromRGB(46, 35, 20),
        FrameBgTransparency = 0.2,
        FrameBgActive = Color3.fromRGB(72, 51, 30),
        FrameBgTransparencyActive = 0.1,

        CheckMark = Color3.fromRGB(253, 121, 82),
        SliderGrab = Color3.fromRGB(247, 150, 79),
        ButtonsBg = Color3.fromRGB(255, 140, 0),
        CollapsingHeaderBg = Color3.fromRGB(72, 51, 30),
        RadioButtonHoveredBg = Color3.fromRGB(255, 186, 88),

        WindowBg = Color3.fromRGB(46, 35, 20),
        TitleBarBg = Color3.fromRGB(46, 35, 20),
        TitleBarBgActive = Color3.fromRGB(72, 51, 30),
        Border = Color3.fromRGB(205, 139, 97),
        ResizeGrab = Color3.fromRGB(247, 150, 79),
        RegionBgTransparency = 1
    })

    return {"Dracula", "Solarized", "Oceanic", "Sunset"}
end
