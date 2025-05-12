return function(ReGui)
    ReGui:DefineTheme("Default", {
        Text = ReGui.Accent.White,
        TextDisabled = ReGui.Accent.Gray,
        ErrorText = ReGui.Accent.Red,

        FrameBg = ReGui.Accent.Dark,
        FrameBgActive = ReGui.Accent.Light,

        SliderGrab = ReGui.Accent.Light,
        ButtonsBg = ReGui.Accent.Light,
        CollapsingHeaderBg = ReGui.Accent.Light,
        CollapsingHeaderText = ReGui.Accent.White,
        CheckMark = ReGui.Accent.Light,
        ResizeGrab = ReGui.Accent.Light,
        HeaderBg = ReGui.Accent.Gray,
        HistogramBar = ReGui.Accent.Yellow,
        ProgressBar = ReGui.Accent.Yellow,
        RegionBg = ReGui.Accent.Dark,
        Separator = ReGui.Accent.Gray,
        ConsoleLineNumbers = ReGui.Accent.White,
        MenuBar = ReGui.Accent.ExtraDark,
        PopupCanvas = ReGui.Accent.Black,

        TabText = ReGui.Accent.Gray,
        TabBg = ReGui.Accent.Dark,
        TabTextActive = ReGui.Accent.White,
        TabBgActive = ReGui.Accent.Light,
        TabsBarBg = Color3.fromRGB(36, 36, 36),

        ModalWindowDimBg = Color3.fromRGB(230, 230, 230),
        WindowBg = ReGui.Accent.Black,

        Border = ReGui.Accent.Gray,

        Title = ReGui.Accent.White,
        TitleBarBg = ReGui.Accent.Black,
        TitleActive = ReGui.Accent.White,
        TitleBarBgActive = ReGui.Accent.Dark,
        TitleBarBgCollapsed = Color3.fromRGB(0, 0, 0),
    })

    -- Light Theme
    ReGui:DefineTheme("Light", {
        Text = ReGui.Accent.Black,
        TextDisabled = ReGui.Accent.Gray,
        ErrorText = ReGui.Accent.Red,

        FrameBg = ReGui.Accent.White,
        FrameBgActive = ReGui.Accent.Light,

        SliderGrab = ReGui.Accent.Dark,
        ButtonsBg = ReGui.Accent.Gray,
        CollapsingHeaderBg = ReGui.Accent.Gray,
        CollapsingHeaderText = ReGui.Accent.Black,
        CheckMark = ReGui.Accent.Gray,
        ResizeGrab = ReGui.Accent.Gray,
        HeaderBg = ReGui.Accent.White,
        HistogramBar = ReGui.Accent.Blue,
        ProgressBar = ReGui.Accent.Green,
        RegionBg = ReGui.Accent.LightGray,
        Separator = ReGui.Accent.Gray,
        ConsoleLineNumbers = ReGui.Accent.Black,
        MenuBar = ReGui.Accent.LightGray,
        PopupCanvas = ReGui.Accent.White,

        TabText = ReGui.Accent.Black,
        TabBg = ReGui.Accent.White,
        TabTextActive = ReGui.Accent.Black,
        TabBgActive = ReGui.Accent.Light,
        TabsBarBg = Color3.fromRGB(245, 245, 245),

        ModalWindowDimBg = Color3.fromRGB(200, 200, 200),
        WindowBg = ReGui.Accent.White,

        Border = ReGui.Accent.Gray,

        Title = ReGui.Accent.Black,
        TitleBarBg = ReGui.Accent.White,
        TitleActive = ReGui.Accent.Black,
        TitleBarBgActive = ReGui.Accent.LightGray,
        TitleBarBgCollapsed = Color3.fromRGB(240, 240, 240),
    })

    -- Dark Theme
    ReGui:DefineTheme("Dark", {
        Text = ReGui.Accent.White,
        TextDisabled = ReGui.Accent.Gray,
        ErrorText = ReGui.Accent.Red,

        FrameBg = ReGui.Accent.Black,
        FrameBgActive = ReGui.Accent.Dark,

        SliderGrab = ReGui.Accent.Gray,
        ButtonsBg = ReGui.Accent.Gray,
        CollapsingHeaderBg = ReGui.Accent.Dark,
        CollapsingHeaderText = ReGui.Accent.White,
        CheckMark = ReGui.Accent.Gray,
        ResizeGrab = ReGui.Accent.Gray,
        HeaderBg = ReGui.Accent.Black,
        HistogramBar = ReGui.Accent.Purple,
        ProgressBar = ReGui.Accent.Cyan,
        RegionBg = ReGui.Accent.Dark,
        Separator = ReGui.Accent.Gray,
        ConsoleLineNumbers = ReGui.Accent.White,
        MenuBar = ReGui.Accent.ExtraDark,
        PopupCanvas = ReGui.Accent.Black,

        TabText = ReGui.Accent.Gray,
        TabBg = ReGui.Accent.Black,
        TabTextActive = ReGui.Accent.White,
        TabBgActive = ReGui.Accent.Gray,
        TabsBarBg = Color3.fromRGB(26, 26, 26),

        ModalWindowDimBg = Color3.fromRGB(100, 100, 100),
        WindowBg = ReGui.Accent.Black,

        Border = ReGui.Accent.Gray,

        Title = ReGui.Accent.White,
        TitleBarBg = ReGui.Accent.Black,
        TitleActive = ReGui.Accent.White,
        TitleBarBgActive = ReGui.Accent.Dark,
        TitleBarBgCollapsed = Color3.fromRGB(0, 0, 0),
    })

    return {"Default", "Light", "Dark"}
end
