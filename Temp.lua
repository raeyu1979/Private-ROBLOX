-- Cresciix Silent Aim Script
-- Loadstring-compatible Version

local function InitCresciix()
-- // Configurations
getgenv().SilentAimSettings = {


    -- \\ General
    Enabled         =      false,
    VisibleCheck    =      false,
    TargetPart      =      "Head",
    DownCheck       =      false,


    -- \\ Prediction
    Prediction      = {
        X           =      0.1,
        Y           =      0.05,
        Z           =      0.1
    },


    -- \\ FOV Circle
    Visible         =      false,
    Filled          =      false,
    Radius          =      0,
    Color           =    Color3.fromRGB(98, 114, 164),
    Transparency    =      0.5,
    Thickness       =      1,
    ZIndex          =      999,
    NumSides        =      100,
    Rainbow         =      false,
    RainbowSpeed    =      0.1,


    -- \\ Raycast
    ExpectedArguments = {
        Raycast = {
            ArgCountRequired = 3,
            Args = {
                "Instance", "Vector3", "Vector3", "RaycastParams"
            }
        }
    }
}


getgenv().GameAssets = {

    BulletFx = {
        "Linger", "Curved", "Chain",
        "Projectile", "UpDown", "LaserTrail"
    },


    BulletColors = {
        "Bright red",     "Bright blue",    "Bright green",   "Bright yellow",
        "White",          "Black",          "Really red",     "Really blue",
        "Really black",   "Really white",   "Toothpaste",     "Gold",
        "Lime green",     "Hot pink",       "Teal",           "Electric blue"
    },


    FoodItems = {
        "Chicken", "Cranberry",
        "Pizza", "Hamburger",
        "Taco", "Flower"
    },


    Weapons = {
        "Golden AK-47", "Sniper", "AK-47", "Uzi", "Shotgun",
        "Tactical Shotgun", "Grenade", "Ray Gun", "Silencer"
    },


    Accessories = {
        "Mask"
    },


    Shields = {
        "Medium Shield", "High-Medium Shield"
    }
}


getgenv().Visuals = {


    -- \\ Bullet
    ["Bullet Effects"]  = {},
    ["Bullet Colors"]   = {}
}


getgenv().LocalPlayerSettings = {


    -- \\ Movement
    NoJumpCD        =       false,


    -- \\ Noclip
    NoclipEnabled   =       false,
    NoclipKeybind   =       Enum.KeyCode.N,


    -- \\ Fly
    FlyEnabled      =       false,
    FlyMethod       =       "Velocity",
    FlyKeybind      =       Enum.KeyCode.F,
    FlySpeed        =       0,
    FlyUp           =       false,
    FlyDown         =       false,


    -- \\ Effects
    DizzyEffect     =       false
}
-- ==========================================================




















-- // Dependencies
local HttpService       =       game:GetService("HttpService")
local Lighting          =       game:GetService("Lighting")
local Players           =       game:GetService("Players")
local RunService        =       game:GetService("RunService")
local UserInputService  =       game:GetService("UserInputService")
local InsertService     =       game:GetService("InsertService")
local TeleportService   =       game:GetService("TeleportService")
local VirtualUser       =       game:GetService("VirtualUser")


local Settings                  =       getgenv().SilentAimSettings
local GameAssets                =       getgenv().GameAssets
local Visuals                   =       getgenv().Visuals
local LocalPlayerSettings       =       getgenv().LocalPlayerSettings

local Camera                    =       workspace.CurrentCamera
local LocalPlayer               =       Players.LocalPlayer
local GetPlayers                =       Players.GetPlayers
local WorldToScreen             =       Camera.WorldToScreenPoint
local GetPartsObscuringTarget   =       Camera.GetPartsObscuringTarget
local FindFirstChild            =       game.FindFirstChild
local WaitForChild              =       game.WaitForChild
local RenderStepped             =       RunService.RenderStepped
local GetMouseLocation          =       UserInputService.GetMouseLocation
local LocalCharacter            =       LocalPlayer.Character
local OldCFrame                 =       LocalCharacter and LocalCharacter:FindFirstChild("HumanoidRootPart").CFrame


local GameMetatable             =       getrawmetatable(game)

setreadonly(GameMetatable, false)

local OriginalNewIndex          =       GameMetatable.__newindex


local MatchingArgumentCount     =       0
local DizzyEffect               =       Instance.new("ColorCorrectionEffect")
local oldNamecall               =       nil
local OriginalCollision         =       {}
local FlyConnection             =       nil
local ColorHue                  =       0
local StartTime                 =       tick()
local Direction                 =       Vector3.zero


local BlacklistedFolder         =       WaitForChild(workspace, "Blacklisted")
local BoughtFolder              =       WaitForChild(BlacklistedFolder, "Bought")
local DataFolder                =       WaitForChild(LocalPlayer, "DataFolder")
local Information               =       WaitForChild(DataFolder, "Information")
local LocalRootPart             =       LocalCharacter and LocalCharacter:FindFirstChild("HumanoidRootPart")
-- ================================================================================================================






























-- // FOV Circle
local FOVCircle = Drawing.new("Circle")
FOVCircle.Thickness = Settings.Thickness
FOVCircle.NumSides = Settings.NumSides
FOVCircle.Radius = Settings.Radius
FOVCircle.Filled = Settings.Filled
FOVCircle.Visible = Settings.Visible
FOVCircle.ZIndex = Settings.ZIndex
FOVCircle.Color = Settings.Color
FOVCircle.Transparency = Settings.Transparency


coroutine.resume(coroutine.create(function()
    RenderStepped:Connect(function(DeltaTime)
        FOVCircle.Visible = Settings.Visible
        FOVCircle.NumSides = Settings.NumSides
        FOVCircle.Transparency = Settings.Transparency
        FOVCircle.Radius = Settings.Radius
        FOVCircle.Filled = Settings.Filled
        FOVCircle.Position = GetMouseLocation(UserInputService)

        if Settings.Rainbow then
            FOVCircle.Color = Color3.fromHSV(ColorHue, 1, 1)
	        ColorHue = (ColorHue + DeltaTime * Settings.RainbowSpeed) % 1
        else
            FOVCircle.Color = Settings.Color
        end


    end)
end))
-- =================================================================================================










-- // Dizzy Effect
DizzyEffect.Name = "DizzyEffect"
DizzyEffect.Saturation = 3
DizzyEffect.TintColor = Color3.fromRGB(88, 92, 90)
DizzyEffect.Contrast = 0.5
DizzyEffect.Brightness = 0.2
DizzyEffect.Parent = Lighting
DizzyEffect.Enabled = false

RenderStepped:Connect(function()
    DizzyEffect.Enabled = LocalPlayerSettings.DizzyEffect

    if LocalPlayerSettings.DizzyEffect then
        local ElapsedTime = tick() - StartTime

        local XOffset = math.sin(ElapsedTime * 4) * 2
        local YOffset = math.cos(ElapsedTime * 4 * 1.2) * 2
        local ZOffset = math.sin(ElapsedTime * 4 * 0.7 + math.rad(math.random() * 1)) * 2 * 0.5

        local RandomX = math.random() * 1 - 1 / 2
        local RandomY = math.random() * 1 - 1 / 2
        local RandomZ = math.random() * 1 - 1 / 2

        local FinalX = XOffset + RandomX
        local FinalY = YOffset + RandomY
        local FinalZ = ZOffset + RandomZ

        local OffsetCFrame = CFrame.Angles(math.rad(FinalX), math.rad(FinalY), math.rad(FinalZ))
        Camera.CFrame = Camera.CFrame * OffsetCFrame
    end
end)
-- =============================================================================================










-- // Fake Inventory
local function FakeInventory()

    for _, EFFECT in ipairs(GameAssets.BulletFx) do
        Visuals["Bullet Effects"][EFFECT] = 1
    end

    for _, COLOR in ipairs(GameAssets.BulletColors) do
        Visuals["Bullet Colors"][COLOR] = 1
    end

    Information:FindFirstChild("InventoryData").Value = HttpService:JSONEncode(Visuals)
end

FakeInventory()
-- ==========================================





-- // UpdateEquipInventory
local function UpdateEquipInventory()
    local EquipData = {}

    for Effect, Value in pairs(Visuals["Bullet Effects"]) do
        if Value > 0 then
            EquipData["Bullet Effects"] = Effect
            break
        end
    end

    for Color, Value in pairs(Visuals["Bullet Colors"]) do
        if Value > 0 then
            EquipData["Bullet Colors"] = Color
            break
        end
    end

    Information:FindFirstChild("EquipInventory").Value = HttpService:JSONEncode(EquipData)
end
-- ==========================================





--// Buy Item
local function BuyItem(ItemName)
    if not ItemName then return end
    if not LocalRootPart then return end

    local Bought = BoughtFolder:FindFirstChild(ItemName)
    local ClickDetector = Bought and Bought:FindFirstChild("ClickDetector")

    if ClickDetector then
        LocalRootPart.CFrame = CFrame.new(Bought:FindFirstChildOfClass("Part").Position - Vector3.new(0, 5, 0))
        task.wait(0.2)
        for _ = 1, 10 do
            fireclickdetector(ClickDetector)
        end
        task.wait(0.1)
        LocalRootPart.CFrame = OldCFrame
    end
end
-- ==========================================










-- // Noc Clip
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










--// Fly
local function GetCharacterParts()
    local Character = LocalPlayer.Character
    if not Character then return end

    local Humanoid = Character:FindFirstChild("Humanoid")
    local RootPart = Character:FindFirstChild("HumanoidRootPart")

    if not Humanoid or not RootPart then return end
    return Humanoid, RootPart
end

local function UpdateFlyMovement()
    local _, RootPart = GetCharacterParts()
    if not RootPart then return end

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
-- ===========================================================




















-- // GetPositionOnScreen
local function GetPositionOnScreen(PositionVector)
    local ScreenPosition, IsOnScreen = WorldToScreen(Camera, PositionVector)

    return Vector2.new(ScreenPosition.X, ScreenPosition.Y), IsOnScreen
end
-- =========================================================================





-- // ValidateArguments
local function ValidateArguments(Arguments, RayMethodDefinition)
    if #Arguments < RayMethodDefinition.ArgCountRequired then
        return false
    end

    for ArgumentPosition, ArgumentValue in next, Arguments do
        if typeof(ArgumentValue) == RayMethodDefinition.Args[ArgumentPosition] then
            MatchingArgumentCount = MatchingArgumentCount + 1
        end
    end

    return MatchingArgumentCount >= RayMethodDefinition.ArgCountRequired
end
-- =================================================================================





-- // GetDirection
local function getDirection(Origin, Position)
    return (Position - Origin).Unit * 9999
end
-- ==========================================





-- // GetMousePosition
local function getMousePosition()
    return GetMouseLocation(UserInputService)
end
-- ==========================================





-- // GetClosestPlayer
local function getClosestPlayer()
    local Closest
    local DistanceToMouse


    for _, Player in next, GetPlayers(Players) do
        if Player == LocalPlayer then continue end

        local Character = Player.Character
        if not Character then continue end


        local HumanoidRootPart = FindFirstChild(Character, "HumanoidRootPart")
        local Humanoid = FindFirstChild(Character, "Humanoid")
        if not HumanoidRootPart or not Humanoid or Humanoid and Humanoid.Health <= 0 then continue end

        local TargetPart = FindFirstChild(Character, Settings.TargetPart)
        if not TargetPart then
            TargetPart = HumanoidRootPart
        end


        if Settings.VisibleCheck then
            local LocalPlayerCharacter = LocalPlayer.Character
            if not LocalPlayerCharacter then continue end

            local CastPoints = {TargetPart.Position, LocalPlayerCharacter, Character}
            local IgnoreList = {LocalPlayerCharacter, Character}
            local ObscuringObjects = #GetPartsObscuringTarget(Camera, CastPoints, IgnoreList)

            if ObscuringObjects > 0 then continue end
        end

        if Settings.DownCheck then
            local State = FindFirstChild(Character, "State")
            local Down = State and FindFirstChild(State, "Down")
            if not Down or Down.Value then continue end
        end

        local ScreenPosition, OnScreen = GetPositionOnScreen(HumanoidRootPart.Position)

        local Distance = (getMousePosition() - ScreenPosition).Magnitude
        if OnScreen and Distance <= (DistanceToMouse or Settings.Radius or 9000) then
            Closest = TargetPart
            DistanceToMouse = Distance
        end
    end

    return Closest
end
-- ===================================================================================================





-- // Hooking
oldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
    local Method = getnamecallmethod()
    local Arguments = {...}
    local self = Arguments[1]

    if self == workspace and not checkcaller() and Settings.Enabled then
        if Method == "Raycast" then
            if ValidateArguments(Arguments, Settings.ExpectedArguments.Raycast) then

                local A_Origin = Arguments[2]
                local HitPart = getClosestPlayer()

                if HitPart then
                    local PredictedPosition = HitPart.Position

                    if HitPart.AssemblyLinearVelocity then
                        PredictedPosition = HitPart.Position + (HitPart.AssemblyLinearVelocity * Vector3.new(
                            Settings.Prediction.X,
                            Settings.Prediction.Y,
                            Settings.Prediction.Z
                        ))

                    elseif HitPart.Velocity then
                        PredictedPosition = HitPart.Position + (HitPart.Velocity * Vector3.new(
                            Settings.Prediction.X,
                            Settings.Prediction.Y,
                            Settings.Prediction.Z
                        ))
                    end

                    PredictedPosition = PredictedPosition + Vector3.new(0, 0.5, 0)

                    Arguments[3] = getDirection(A_Origin, PredictedPosition)

                    return oldNamecall(unpack(Arguments))
                end
            end
        end
    end
    return oldNamecall(...)
end))

-- Print successful initialization
print("Cresciix Silent Aim loaded successfully!")
return true
end

-- Execute the script
local success, errorMsg = pcall(InitCresciix)
if not success then
    warn("Failed to initialize Cresciix: " .. tostring(errorMsg))
end

return getgenv().SilentAimSettings


