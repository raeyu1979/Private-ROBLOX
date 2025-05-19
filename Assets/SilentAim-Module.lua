return function()
   -- // Configurations
   local SilentAimSettings = {
    
    
    -- \\ General
    Enabled         =      false,
    VisibleCheck    =      false,
    TargetPart      =      "Head",
    DownCheck       =      false,


    -- \\ Prediction
    Prediction      = {
        Enabled     =      false,
        Method      =      "AssemblyLinearVelocity",
        Options     = {"AssemblyLinearVelocity", "HumanoidMoveDirection"},
        X           =      0,
        Y           =      0,
        Z           =      0,
        TimeScale   =      0,
        DistanceScaling = false,
        MaxDistance =      0,
        MinScale    =      0,
        MaxScale    =      0
    },


    -- \\ Spread
    ShotgunMode     =      false,
    SpreadFactor    =      0,
    SpreadDistance  =      0,


    -- \\ FOV Circle
    Visible         =      false,
    Filled          =      false,
    Radius          =      0,
    Color           =    Color3.fromRGB(98, 114, 164),
    Transparency    =      0,
    Thickness       =      0,
    ZIndex          =      999,
    NumSides        =      0,
    Rainbow         =      false,
    RainbowSpeed    =      0,




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
-- ==============================================================





-- // Dependencies
local Players           =       game:GetService("Players")
local RunService        =       game:GetService("RunService")
local UserInputService  =       game:GetService("UserInputService")


local Camera                    =       workspace.CurrentCamera
local LocalPlayer               =       Players.LocalPlayer
local GetPlayers                =       Players.GetPlayers
local WorldToScreen             =       Camera.WorldToScreenPoint
local GetPartsObscuringTarget   =       Camera.GetPartsObscuringTarget
local FindFirstChild            =       game.FindFirstChild
local RenderStepped             =       RunService.RenderStepped
local GetMouseLocation          =       UserInputService.GetMouseLocation
local MatchingArgumentCount     =       0
local oldNamecall               =       nil
local ColorHue                  =       0
local RevolverEquipped          =       false
-- ======================================================================





-- // FOV Circle
local FOVCircle         =       Drawing.new("Circle")
FOVCircle.Thickness     =       SilentAimSettings.Thickness
FOVCircle.NumSides      =       SilentAimSettings.NumSides
FOVCircle.Radius        =       SilentAimSettings.Radius
FOVCircle.Filled        =       SilentAimSettings.Filled
FOVCircle.Visible       =       SilentAimSettings.Visible
FOVCircle.ZIndex        =       SilentAimSettings.ZIndex
FOVCircle.Color         =       SilentAimSettings.Color
FOVCircle.Transparency  =       SilentAimSettings.Transparency



coroutine.resume(coroutine.create(function()
    RenderStepped:Connect(function(DeltaTime)
        -- Update FOV Circle
        FOVCircle.Visible      =       SilentAimSettings.Visible
        FOVCircle.NumSides     =       SilentAimSettings.NumSides
        FOVCircle.Transparency =       SilentAimSettings.Transparency
        FOVCircle.Radius       =       SilentAimSettings.Radius
        FOVCircle.Filled       =       SilentAimSettings.Filled
        FOVCircle.Position     =       GetMouseLocation(UserInputService)

        if SilentAimSettings.Rainbow then
            FOVCircle.Color    =       Color3.fromHSV(ColorHue, 1, 1)
            ColorHue           =       (ColorHue + DeltaTime * SilentAimSettings.RainbowSpeed) % 1
        else
            FOVCircle.Color    =       SilentAimSettings.Color
        end
    end)
end))
-- ===============================================================================





-- // GetPositionOnScreen
local function GetPositionOnScreen(PositionVector)
    local ScreenPosition, IsOnScreen = WorldToScreen(Camera, PositionVector)
    return Vector2.new(ScreenPosition.X, ScreenPosition.Y), IsOnScreen
end
-- =========================================================================





local function ApplyShotgunSpread(Direction, SpreadFactor, DistanceToTarget)
if not SilentAimSettings.ShotgunMode or RevolverEquipped then
    return Direction
end

-- Use the user's SpreadFactor directly without additional multipliers
local UserSpreadFactor = SilentAimSettings.SpreadFactor

-- Use the spread distance setting directly
local BaseSpread = SilentAimSettings.SpreadDistance

-- Generate spread values that ensure consistent spread 
local function generateSpread()
    -- Get a random value between 0.3 and 1.0
    local value = math.random() * 0.7 + 0.3
    -- 50% chance to be negative
    return math.random() < 0.5 and -value or value
end

-- Apply spread according to the user's factor settings
local SpreadX = generateSpread() * BaseSpread * UserSpreadFactor
local SpreadY = generateSpread() * BaseSpread * UserSpreadFactor
local SpreadZ = generateSpread() * BaseSpread * UserSpreadFactor

-- Apply the spread to the direction vector
local SpreadVector = Vector3.new(
    Direction.X + SpreadX,
    Direction.Y + SpreadY,
    Direction.Z + SpreadZ
)

local OriginalMagnitude = Direction.Magnitude
return SpreadVector.Unit * OriginalMagnitude
end

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

        local TargetPart = FindFirstChild(Character, SilentAimSettings.TargetPart)
        if not TargetPart then
            TargetPart = HumanoidRootPart
        end


        if SilentAimSettings.VisibleCheck then
            local LocalPlayerCharacter = LocalPlayer.Character
            if not LocalPlayerCharacter then continue end

            local CastPoints = {TargetPart.Position, LocalPlayerCharacter, Character}
            local IgnoreList = {LocalPlayerCharacter, Character}
            local ObscuringObjects = #GetPartsObscuringTarget(Camera, CastPoints, IgnoreList)

            if ObscuringObjects > 0 then continue end
        end

        if SilentAimSettings.DownCheck then
            local State = FindFirstChild(Character, "State")
            local Down = State and FindFirstChild(State, "Down")
            if not Down or Down.Value then continue end
        end

        local ScreenPosition, OnScreen = GetPositionOnScreen(HumanoidRootPart.Position)

        local Distance = (getMousePosition() - ScreenPosition).Magnitude
        if OnScreen and Distance <= (DistanceToMouse or SilentAimSettings.Radius or 9000) then
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

    if self == workspace and not checkcaller() and SilentAimSettings.Enabled then
        if Method == "Raycast" then
            if ValidateArguments(Arguments, SilentAimSettings.ExpectedArguments.Raycast) then

                local A_Origin = Arguments[2]
                local HitPart = getClosestPlayer()

                if HitPart then
                    local PredictedPosition = HitPart.Position

                    if SilentAimSettings.Prediction.Enabled then
                        local Character = HitPart.Parent
                        local HumanoidRootPart = Character and FindFirstChild(Character, "HumanoidRootPart")
                        local Humanoid = Character and FindFirstChild(Character, "Humanoid")

                        local PredictionMethod = SilentAimSettings.Prediction.Method
                        local ScaleVector = Vector3.new(
                            SilentAimSettings.Prediction.X,
                            SilentAimSettings.Prediction.Y,
                            SilentAimSettings.Prediction.Z
                        )

                        local TimeScale = SilentAimSettings.Prediction.TimeScale
                        local Distance = 0

                        if HumanoidRootPart then
                            Distance = (HumanoidRootPart.Position - Camera.CFrame.Position).Magnitude

                            if SilentAimSettings.Prediction.DistanceScaling then
                                local DistanceFactor = math.min(Distance / SilentAimSettings.Prediction.MaxDistance, 1)
                                TimeScale = SilentAimSettings.Prediction.MinScale +
                                    (SilentAimSettings.Prediction.MaxScale - SilentAimSettings.Prediction.MinScale) * DistanceFactor
                            end
                        end

                        local VelocityVector = Vector3.new(0, 0, 0)

                        if PredictionMethod == "AssemblyLinearVelocity" and HitPart.AssemblyLinearVelocity then
                            VelocityVector = HitPart.AssemblyLinearVelocity

                        elseif PredictionMethod == "HumanoidMoveDirection" and Humanoid then
                            if Humanoid.MoveDirection.Magnitude > 0 then
                                local SpeedMultiplier = 1

                                if Humanoid:GetState() == Enum.HumanoidStateType.Running then
                                    SpeedMultiplier = 1.0
                                elseif Humanoid:GetState() == Enum.HumanoidStateType.Jumping then
                                    SpeedMultiplier = 0.85
                                end

                                VelocityVector = Humanoid.MoveDirection * (Humanoid.WalkSpeed * SpeedMultiplier)
                            end
                        end

                        local GravityCompensation = 0.03
                        if Distance > 100 then
                            GravityCompensation = 0.05 + (Distance / 1000)
                        end

                        local FinalVelocity = Vector3.new(
                            VelocityVector.X * ScaleVector.X,
                            (VelocityVector.Y * ScaleVector.Y) + GravityCompensation,
                            VelocityVector.Z * ScaleVector.Z
                        ) * TimeScale

                        PredictedPosition = HitPart.Position + FinalVelocity
                    end

                    PredictedPosition = PredictedPosition + Vector3.new(0, 0.5, 0)

                    local Direction = getDirection(A_Origin, PredictedPosition)
                    
                    local Distance = (A_Origin - PredictedPosition).Magnitude
                    Direction = ApplyShotgunSpread(Direction, SilentAimSettings.SpreadFactor, Distance)
                    
                    Arguments[3] = Direction

                    return oldNamecall(unpack(Arguments))
                end
            end
        end
    end
    return oldNamecall(...)
end))
-- ==========================================================================================================

return SilentAimSettings
end
