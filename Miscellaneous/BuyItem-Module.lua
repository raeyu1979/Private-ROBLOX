return function()
    local BuyItemModule = {}

    BuyItemModule.Items = {
        Foods = {
            "Chicken", "Cranberry", "Pizza", "Hamburger", "Taco", "Flower"
        },

        Weapons = {
            "Golden AK-47", "Sniper", "AK-47", "Uzi", "Shotgun", "Silencer", "Tactical Shotgun", "Grenade", "Ray Gun"
        },

        Accessories = {
            "Mask"
        },

        Shields = {
            "Medium Shield", "High-Medium Shield"
        }
    }

    local Players = game:GetService("Players")
    local TeleportService = game:GetService("TeleportService")
    local HttpService = game:GetService("HttpService")

    local LocalPlayer = Players.LocalPlayer
    local OldCFrame = nil
    local function UpdateOriginalPosition()
        local Character = LocalPlayer.Character
        if Character and Character:FindFirstChild("HumanoidRootPart") then
            OldCFrame = Character.HumanoidRootPart.CFrame
        end
    end

    function BuyItemModule.BuyItem(ItemName)
        if not ItemName then return false end

        UpdateOriginalPosition()
        if not OldCFrame then return false end

        local BlacklistedFolder = workspace:FindFirstChild("Blacklisted")
        if not BlacklistedFolder then return false end

        local BoughtFolder = BlacklistedFolder:FindFirstChild("Bought")
        if not BoughtFolder then return false end

        local Bought = BoughtFolder:FindFirstChild(ItemName)
        if not Bought then return false end

        local ClickDetector = Bought:FindFirstChild("ClickDetector")
        if not ClickDetector then return false end

        local Character = LocalPlayer.Character
        if not Character or not Character:FindFirstChild("HumanoidRootPart") then return false end

        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        HumanoidRootPart.CFrame = CFrame.new(Bought:FindFirstChildOfClass("Part").Position - Vector3.new(0, 5, 0))

        task.wait(0.2)
        for _ = 1, 10 do
            fireclickdetector(ClickDetector)
        end
        task.wait(0.1)

        HumanoidRootPart.CFrame = OldCFrame
        return true
    end

    function BuyItemModule.Rejoin()
        local Success, ErrorMessage = pcall(function()
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end)

        return Success, ErrorMessage
    end

    function BuyItemModule.ServerHop()
        local Success, Result = pcall(function()
            local Servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data
            local AvailableServers = {}

            for _, Server in ipairs(Servers) do
                if Server.playing < Server.maxPlayers and Server.id ~= game.JobId then
                    table.insert(AvailableServers, Server)
                end
            end

            if #AvailableServers > 0 then
                local TargetServer = AvailableServers[math.random(1, #AvailableServers)]
                TeleportService:TeleportToPlaceInstance(game.PlaceId, TargetServer.id, LocalPlayer)
                return true, "Teleporting to server " .. TargetServer.id
            else
                return false, "No available servers found"
            end
        end)

        return Success, Result
    end

    UpdateOriginalPosition()

    LocalPlayer.CharacterAdded:Connect(function()
        task.wait(1)
        UpdateOriginalPosition()
    end)

    return BuyItemModule
end
