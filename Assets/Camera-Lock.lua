getgenv().AimbotSettings = {
    Enabled         =   false;
    VisibleCheck    =   false;
    DownCheck       =   false;

    TargetPart      =   "Head";
    Targeting       =   nil;

    Smoothness      =   {
        Enabled     =   false;
        Value       =   0
    };

    Prediction      =   {
        Enabled     =   false;
        X           =   0;
        Y           =   0;
        Z           =   0
    };

    FOVCircle       =   {
        Enabled     =   false;
        Filled      =   false;
        Visible     =   false;
        Rainbow     =   false;
        Thickness   =   1;
        Transparency=   1;
        NumSides    =   100;
        Radius      =   100;
        ZIndex      =   999;
        Color       =   Color3.fromRGB(255, 0, 0);
        Origin      =   "Mouse" -- "Mouse", "Center",
    }
}

local AimbotSettings        =   getgenv().AimbotSettings

local Players               =   game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService      =   game:GetService("UserInputService")
local Workspace             =   game:GetService("Workspace")

local Camera                =   Workspace.CurrentCamera
local GetPartsObscuringTarget = Camera.GetPartsObscuringTarget
local WorldToScreen         =   Camera.WorldToScreenPoint

local GetPlayers            =   Players.GetPlayers
local FindFirstChild        =   game.FindFirstChild

local LocalPlayer           =   Players.LocalPlayer

-- // FOV Circle
local FOVCircle     =   Drawing.new("Circle")
FOVCircle.Thickness =   AimbotSettings.FOVCircle.Thickness
FOVCircle.NumSides  =   AimbotSettings.FOVCircle.NumSides
FOVCircle.Radius    =   AimbotSettings.FOVCircle.Radius
FOVCircle.Filled    =   AimbotSettings.FOVCircle.Filled
FOVCircle.Visible   =   AimbotSettings.FOVCircle.Visible
FOVCircle.ZIndex    =   AimbotSettings.FOVCircle.ZIndex
FOVCircle.Color     =   AimbotSettings.FOVCircle.Color
FOVCircle.Transparency = AimbotSettings.FOVCircle.Transparency

local function GetMouseLocation()
    return UserInputService:GetMouseLocation()
end

local function GetPositionOnScreen(PositionVector)
    local ScreenPosition, IsOnScreen = WorldToScreen(Camera, PositionVector)

    return Vector2.new(ScreenPosition.X, ScreenPosition.Y), IsOnScreen
end

function AimbotSettings:GetClosestPlayer()
    local ClosestPlayer
    local DistanceToMouse

    for _, OtherPlayer in next, GetPlayers(Players) do
        if OtherPlayer == LocalPlayer then continue end

        local OtherCharacter = OtherPlayer.Character
        if not OtherCharacter then continue end

        local TargetPart = FindFirstChild(OtherCharacter, AimbotSettings.TargetPart)
        if not TargetPart then
            TargetPart = FindFirstChild(OtherCharacter, "HumanoidRootPart")
        end

        if AimbotSettings.VisibleCheck then
            local LocalCharacter = LocalPlayer.Character
            if not LocalCharacter then continue end

            local CastPoints = {TargetPart.Position, LocalCharacter, OtherCharacter}
            local IgnoreList = {LocalCharacter, OtherCharacter}
            local ObscuringObjects = #GetPartsObscuringTarget(Camera, CastPoints, IgnoreList)

            if ObscuringObjects > 0 then continue end
        end

        if AimbotSettings.DownCheck then
            local State = FindFirstChild(OtherCharacter, "State")
            local Down = State and FindFirstChild(State, "Down")
            if not Down or Down.Value then continue end
        end

        local ScreenPosition, OnScreen = GetPositionOnScreen(TargetPart.Position)

        local Distance = (GetMouseLocation() - ScreenPosition).Magnitude
        if OnScreen and Distance <= (DistanceToMouse or AimbotSettings.FOVCircle.Radius or 9000) then
            ClosestPlayer = OtherPlayer.Name
            DistanceToMouse = Distance
        end
    end

    return ClosestPlayer
end

function AimbotSettings:UpdateSetting(Path, Value)
    local Keys = string.split(Path, ".")
    local Setting = self

    for i = 1, #Keys - 1 do
        Setting = Setting[Keys[i]]
        if typeof(Setting) ~= "table" then
            warn("Invalid Path: " .. Path)
            return
        end
    end

    local FinalKey = Keys[#Keys]
    if Setting[FinalKey] == nil then
        warn("Setting does not exist: " .. FinalKey)
        return
    end

    Setting[FinalKey] = Value
end

coroutine.resume(coroutine.create(function()
    RunService.RenderStepped:Connect(function()
        FOVCircle.Thickness =   AimbotSettings.FOVCircle.Thickness
        FOVCircle.NumSides  =   AimbotSettings.FOVCircle.NumSides
        FOVCircle.Radius    =   AimbotSettings.FOVCircle.Radius
        FOVCircle.Filled    =   AimbotSettings.FOVCircle.Filled
        FOVCircle.Visible   =   AimbotSettings.FOVCircle.Visible
        FOVCircle.ZIndex    =   AimbotSettings.FOVCircle.ZIndex
        FOVCircle.Transparency = AimbotSettings.FOVCircle.Transparency
        if AimbotSettings.FOVCircle.Rainbow then
            local t = tick() * 0.5
            FOVCircle.Color = Color3.fromHSV(t % 1, 1, 1)
        else
            FOVCircle.Color = AimbotSettings.FOVCircle.Color
        end

        if AimbotSettings.FOVCircle.Origin == "Mouse" then
            FOVCircle.Position = GetMouseLocation()
        elseif AimbotSettings.FOVCircle.Origin == "Center" then
            local Camera = workspace.CurrentCamera
            local Center = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
            FOVCircle.Position = Center
        else
            FOVCircle.Position = GetMouseLocation()
        end

        if AimbotSettings.Enabled and AimbotSettings.Targeting then
            local TargetPlayer = FindFirstChild(Players, AimbotSettings.Targeting)
            if not TargetPlayer then return end

            local TargetCharacter = TargetPlayer.Character
            if not TargetCharacter then return end

            local TargetPart = FindFirstChild(TargetCharacter, AimbotSettings.TargetPart) or FindFirstChild(TargetCharacter, "Head")
            if not TargetPart then return end

            local TargetPosition = TargetPart.Position
            if AimbotSettings.Prediction.Enabled then
                TargetPosition = TargetPart.Position + (TargetPart.AssemblyLinearVelocity * Vector3.new(AimbotSettings.Prediction.X, AimbotSettings.Prediction.Y, AimbotSettings.Prediction.Z))
            else
                TargetPosition = TargetPart.Position
            end

            if AimbotSettings.Smoothness.Enabled then
                local Alpha = math.clamp(1 - AimbotSettings.Smoothness.Value, 0, 1)
                workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, TargetPosition), Alpha)
            else
                workspace.CurrentCamera.CFrame = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, TargetPosition)
            end
        end
    end)
end))

return getgenv().AimbotSettings
