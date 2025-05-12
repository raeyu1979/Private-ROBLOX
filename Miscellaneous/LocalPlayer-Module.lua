return function()
    -- // Configurations
    getgenv().LocalPlayerSettings = {
    
    
        -- \\ General
        NoJumpCD        =       false,
    
    
        -- \\ Noclip
        NoclipEnabled   =       false,
        NoclipKeybind   =       Enum.KeyCode.N,
    
    
        -- \\ Fly
        FlyEnabled      =       false,
        FlyMethod       =       "Velocity",
        FlyKeybind      =       Enum.KeyCode.F,
        FlySpeed        =       200,
        FlyUp           =       false,
        FlyDown         =       false
    }
    -- ==========================================================
    
    
    
    
    
    -- // Dependencies
    local Players           =       game:GetService("Players")
    local RunService        =       game:GetService("RunService")
    local UserInputService  =       game:GetService("UserInputService")
    
    
    local LocalPlayerSettings       =       getgenv().LocalPlayerSettings
    local LocalPlayer               =       Players.LocalPlayer
    local GameMetatable             =       getrawmetatable(game)
    local OriginalNewIndex          =       nil
    local FlyConnection             =       nil
    local OriginalCollision         =       {}
    -- ======================================================================
    
    
    
    
    
    -- // Initialize Metatable
    setreadonly(GameMetatable, false)
    OriginalNewIndex = GameMetatable.__newindex
    -- ========================================================
    
    
    
    
    
    -- // Utility Functions
    local function GetCharacterParts()
        local Character = LocalPlayer.Character
        if not Character then return end
    
        local Humanoid = Character:FindFirstChild("Humanoid")
        local RootPart = Character:FindFirstChild("HumanoidRootPart")
    
        if not Humanoid or not RootPart then return end
        return Humanoid, RootPart
    end
    -- ==========================================
    
    
    
    
    
    -- // Noclip
    local function StoreOriginalCollision(Character)
        OriginalCollision = {}
        for _, Part in pairs(Character:GetChildren()) do
            if Part:IsA("BasePart") then
                OriginalCollision[Part] = {
                    CanCollide = Part.CanCollide
                }
            end
        end
    end
    
    local function EnableNoclip(Character)
        for _, Part in pairs(Character:GetChildren()) do
            if Part:IsA("BasePart") then
                Part.CanCollide = false
            end
        end
    end
    
    local function DisableNoclip(Character)
        for Part, Collision in pairs(OriginalCollision) do
            if Part and Part.Parent then
                Part.CanCollide = Collision.CanCollide
            end
        end
    end
    
    LocalPlayer.CharacterAdded:Connect(function(NewCharacter)
        StoreOriginalCollision(NewCharacter)
    
        if LocalPlayerSettings.NoclipEnabled then
            EnableNoclip(NewCharacter)
        end
    end)
    
    RunService.Stepped:Connect(function()
        if LocalPlayerSettings.NoclipEnabled then
            local Character = LocalPlayer.Character
            if not Character then return end
    
            EnableNoclip(Character)
        end
    end)
    -- ==========================================
    
    
    
    
    
    -- // Fly
    local function UpdateFlyMovement()
        local _, RootPart = GetCharacterParts()
        if not RootPart then return end
    
        local Camera = workspace.CurrentCamera
        local Direction = Vector3.zero
    
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
            Direction += Camera.CFrame.LookVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
            Direction -= Camera.CFrame.LookVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
            Direction -= Camera.CFrame.RightVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then
            Direction += Camera.CFrame.RightVector
        end
        if getgenv().LocalPlayerSettings.FlyUp then
            Direction += Vector3.new(0, 1, 0)
        end
        if getgenv().LocalPlayerSettings.FlyDown then
            Direction -= Vector3.new(0, 1, 0)
        end
    
        if Direction.Magnitude > 0 then
            Direction = Direction.Unit * getgenv().LocalPlayerSettings.FlySpeed
        end
    
        RootPart.AssemblyLinearVelocity = Direction
    end
    
    local function StartFlying()
        local _, RootPart = GetCharacterParts()
        if not RootPart then return end
        FlyConnection = RunService.RenderStepped:Connect(UpdateFlyMovement)
    end
    
    local function StopFlying()
        local _, RootPart = GetCharacterParts()
        if not RootPart then return end
    
        RootPart.AssemblyLinearVelocity = Vector3.zero
    
        if FlyConnection then
            FlyConnection:Disconnect()
            FlyConnection = nil
        end
    end
    
    local function HandleInputBegan(Input, GameProcessed)
        if GameProcessed then return end
    
        if getgenv().LocalPlayerSettings.FlyEnabled then
            if Input.KeyCode == Enum.KeyCode.Space then
                getgenv().LocalPlayerSettings.FlyUp = true
            elseif Input.KeyCode == Enum.KeyCode.LeftControl then
                getgenv().LocalPlayerSettings.FlyDown = true
            end
        end
    end
    
    local function HandleInputEnded(Input)
        if Input.KeyCode == Enum.KeyCode.Space then
            getgenv().LocalPlayerSettings.FlyUp = false
        elseif Input.KeyCode == Enum.KeyCode.LeftControl then
            getgenv().LocalPlayerSettings.FlyDown = false
        end
    end
    
    UserInputService.InputBegan:Connect(HandleInputBegan)
    UserInputService.InputEnded:Connect(HandleInputEnded)
    -- ==========================================
    
    
    
    
    
    -- // No Jump Cooldown
    GameMetatable.__newindex = newcclosure(function(Table, Index, Value)
        if Index == "JumpPower" and LocalPlayerSettings.NoJumpCD then
            return OriginalNewIndex(Table, Index, 50)
        end
    
        return OriginalNewIndex(Table, Index, Value)
    end)
    -- ==========================================
    
    
    
    
    
    return LocalPlayerSettings
    end
