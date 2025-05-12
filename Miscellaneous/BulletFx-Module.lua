return function()

local InventoryData = {
    ["Bullet Effects"] = {},
    ["Bullet Colors"] = {}
}

local VisualSettings = {
    BulletEffect = "None",
    BulletColor = "None"
}

local BulletEffects = {
    "Linger",
    "Curved",
    "Chain",
    "Projectile",
    "UpDown",
    "LaserTrail"
}

local BulletColors = {
    "Bright red",     "Bright blue",    "Bright green",   "Bright yellow",
    "White",          "Black",          "Really red",     "Really blue",
    "Really black",   "Really white",   "Toothpaste",     "Gold",
    "Lime green",     "Hot pink",       "Teal",           "Electric blue"
}
    

local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local LocalPlayer = Players.LocalPlayer
local DataFolder = LocalPlayer:WaitForChild("DataFolder")
local Information = DataFolder:WaitForChild("Information")
local FindFirstChild = game.FindFirstChild

local function UpdateEquipInventory()
    local EquipData = {}

    if VisualSettings.BulletEffect ~= "None" then
        EquipData["Bullet Effects"] = VisualSettings.BulletEffect
    end
    if VisualSettings.BulletColor ~= "None" then
        EquipData["Bullet Colors"] = VisualSettings.BulletColor
    end

    local EquipInventory = Information:FindFirstChild("EquipInventory")
    if EquipInventory then
        EquipInventory.Value = HttpService:JSONEncode(EquipData)
    end
end

local function FakeInventory()
    for _, EFFECT in ipairs(BulletEffects) do
        InventoryData["Bullet Effects"][EFFECT] = 1
    end

    for _, COLOR in ipairs(BulletColors) do
        InventoryData["Bullet Colors"][COLOR] = 1
    end

    local InventoryDataValue = Information:FindFirstChild("InventoryData")
    if InventoryDataValue then
        InventoryDataValue.Value = HttpService:JSONEncode(InventoryData)
    end
end

FakeInventory()

return {
    VisualSettings = VisualSettings,
    InventoryData = InventoryData,

    BulletEffects = BulletEffects,
    BulletColors = BulletColors,
    FoodItems = FoodItems,
    Weapons = Weapons,
    Accessories = Accessories,
    Shields = Shields,

    UpdateEquipInventory = UpdateEquipInventory,
    FakeInventory = FakeInventory
}
end
