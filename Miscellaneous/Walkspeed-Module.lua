return function()
    local WalkspeedModule = {}

    WalkspeedModule.Settings = {
        Enabled = false,
        Method = "CFrame",
        CFrameSpeed = 5,
        VelocitySpeed = 150,
        HotKey = Enum.KeyCode.Z,
        ToggleWithHotKey = true
    }

    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")

    local LocalPlayer = Players.LocalPlayer
    local WalkspeedConnection = nil
    local InputConnection = nil
    local CharacterAddedConnection = nil


    local function UpdateCFrameMovement()
        if not WalkspeedModule.Settings.Enabled or WalkspeedModule.Settings.Method ~= "CFrame" then return end

        local Character = LocalPlayer.Character
        if not Character then return end

        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        if not HumanoidRootPart then return end

        local Camera = workspace.CurrentCamera
        local Direction = Vector3.new(0, 0, 0)

        if UserInputService:IsKeyDown(Enum.KeyCode.W) then Direction = Direction + Camera.CFrame.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then Direction = Direction - Camera.CFrame.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then Direction = Direction - Camera.CFrame.RightVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then Direction = Direction + Camera.CFrame.RightVector end

        Direction = Vector3.new(Direction.X, 0, Direction.Z)

        if Direction.Magnitude > 0 then
            HumanoidRootPart.CFrame = HumanoidRootPart.CFrame + (Direction.Unit * WalkspeedModule.Settings.CFrameSpeed)
        end
    end

    local function UpdateVelocityMovement()
        if not WalkspeedModule.Settings.Enabled or WalkspeedModule.Settings.Method ~= "Velocity" then return end

        local Character = LocalPlayer.Character
        if not Character then return end

        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        local Humanoid = Character:FindFirstChildOfClass("Humanoid")
        if not HumanoidRootPart or not Humanoid then return end

        local Camera = workspace.CurrentCamera
        local CurrentY = HumanoidRootPart.Velocity.Y
        local Direction = Vector3.new(0, 0, 0)

        if UserInputService:IsKeyDown(Enum.KeyCode.W) then Direction = Direction + Camera.CFrame.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then Direction = Direction - Camera.CFrame.LookVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then Direction = Direction - Camera.CFrame.RightVector end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then Direction = Direction + Camera.CFrame.RightVector end

        Direction = Vector3.new(Direction.X, 0, Direction.Z)

        if Direction.Magnitude > 0 then
            HumanoidRootPart.Velocity = Vector3.new(
                Direction.Unit.X * WalkspeedModule.Settings.VelocitySpeed,
                CurrentY,
                Direction.Unit.Z * WalkspeedModule.Settings.VelocitySpeed
            )
        else
            HumanoidRootPart.Velocity = Vector3.new(0, CurrentY, 0)
        end
    end

    local function UpdateMovement()
        if WalkspeedModule.Settings.Method == "CFrame" then
            UpdateCFrameMovement()
        elseif WalkspeedModule.Settings.Method == "Velocity" then
            UpdateVelocityMovement()
        end
    end

    local function SetupHotkeyListener()
        if InputConnection then
            InputConnection:Disconnect()
            InputConnection = nil
        end

        InputConnection = UserInputService.InputBegan:Connect(function(Input, GameProcessed)
            if not GameProcessed and Input.KeyCode == WalkspeedModule.Settings.HotKey and WalkspeedModule.Settings.ToggleWithHotKey then
                WalkspeedModule.Settings.Enabled = not WalkspeedModule.Settings.Enabled

                if WalkspeedModule.Settings.Enabled then
                    WalkspeedModule.Enable()
                else
                    WalkspeedModule.Disable()
                end
            end
        end)
    end

    local function SetupCharacterAddedHandler()
        if CharacterAddedConnection then
            CharacterAddedConnection:Disconnect()
            CharacterAddedConnection = nil
        end

        CharacterAddedConnection = LocalPlayer.CharacterAdded:Connect(function()
            if WalkspeedModule.Settings.Enabled then
                task.wait(0.5)

                if not WalkspeedConnection or not WalkspeedConnection.Connected then
                    WalkspeedConnection = RunService.Heartbeat:Connect(UpdateMovement)
                end
            end
        end)
    end

    function WalkspeedModule.Enable()
        WalkspeedModule.Disable()

        WalkspeedConnection = RunService.Heartbeat:Connect(UpdateMovement)
        WalkspeedModule.Settings.Enabled = true

        SetupCharacterAddedHandler()

        return true
    end
    function WalkspeedModule.Disable()
        if WalkspeedConnection then
            WalkspeedConnection:Disconnect()
            WalkspeedConnection = nil
        end

        WalkspeedModule.Settings.Enabled = false
        return true
    end

    function WalkspeedModule.SetMethod(Method)
        if Method ~= "CFrame" and Method ~= "Velocity" then
            return false
        end

        WalkspeedModule.Settings.Method = Method

        if WalkspeedModule.Settings.Enabled then
            WalkspeedModule.Disable()
            WalkspeedModule.Enable()
        end

        return true
    end

    function WalkspeedModule.SetCFrameSpeed(Speed)
        if type(Speed) ~= "number" then
            return false
        end

        WalkspeedModule.Settings.CFrameSpeed = Speed
        return true
    end

    function WalkspeedModule.SetVelocitySpeed(Speed)
        if type(Speed) ~= "number" then
            return false
        end

        WalkspeedModule.Settings.VelocitySpeed = Speed
        return true
    end

    function WalkspeedModule.SetHotKey(Key)
        WalkspeedModule.Settings.HotKey = Key
        SetupHotkeyListener()
        return true
    end

    SetupHotkeyListener()
    SetupCharacterAddedHandler()

    return WalkspeedModule
end
