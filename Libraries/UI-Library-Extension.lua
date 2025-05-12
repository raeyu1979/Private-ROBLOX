return function()
    return function(ReGui)
        local Extension = {}

        function Extension.CreateTabSystem(Window)
            local TabSystem = {}
            
            TabSystem.Window = Window
            TabSystem.ReGui = ReGui
            
            local Group = Window:List({
                UiPadding = 2,
                HorizontalFlex = Enum.UIFlexAlignment.Fill,
            })
            TabSystem.Group = Group
            
            local TabsBar = Group:List({
                Border = true,
                UiPadding = 5,
                BorderColor = Window:GetThemeKey("Border"),
                BorderThickness = 1,
                HorizontalFlex = Enum.UIFlexAlignment.Fill,
                HorizontalAlignment = Enum.HorizontalAlignment.Center,
                AutomaticSize = Enum.AutomaticSize.None,
                FlexMode = Enum.UIFlexMode.None,
                Size = UDim2.new(0, 40, 1, 0),
                CornerRadius = UDim.new(0, 5)
            })
            TabSystem.TabsBar = TabsBar
            
            -- Create tab content area
            local TabSelector = Group:TabSelector({
                NoTabsBar = true,
                Size = UDim2.fromScale(0.5, 1)
            })
            TabSystem.TabSelector = TabSelector
            
            function TabSystem.CreateTab(Name, Icon)
                local Tab = TabSelector:CreateTab({
                    Name = Name
                })
                
                local List = Tab:List({
                    HorizontalFlex = Enum.UIFlexAlignment.Fill,
                    UiPadding = 1,
                    Spacing = 10
                })
                
                local Button = TabsBar:Image({
                    Image = Icon,
                    Ratio = 1,
                    RatioAxis = Enum.DominantAxis.Width,
                    Size = UDim2.fromScale(1, 1),
                    Callback = function()
                        TabSelector:SetActiveTab(Tab)
                    end
                })
                
                ReGui:SetItemTooltip(Button, function(Canvas)
                    Canvas:Label({
                        Text = Name
                    })
                end)
                
                return List
            end
            
            function TabSystem.CreateRegion(Parent, Title)
                local Region = Parent:Region({
                    Border = true,
                    BorderColor = Window:GetThemeKey("Border"),
                    BorderThickness = 1,
                    CornerRadius = UDim.new(0, 5)
                })
                
                Region:Label({
                    Text = Title
                })
                
                return Region
            end
            
            return TabSystem
        end
        
        return Extension
    end
end
