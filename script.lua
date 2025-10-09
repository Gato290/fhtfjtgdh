-- script.lua (WindUI loader + UI config)
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

-- 🌍 Multi-language
local Localization = WindUI:Localization({
    Enabled = true,
    Prefix = "loc:",
    DefaultLanguage = "en",
    Translations = {
        ["en"] = { ["1"] = "Only Works on Auto Fish V2", ["2"] = "h" },
        ["id"] = { ["1"] = "Hanya Berfungsi di Auto Fish V2", ["2"] = "h" },
        ["vi"] = { ["1"] = "Chỉ hoạt động với Auto Fish V2", ["2"] = "h" }
    }
})

-- 🎨 UI setup
WindUI.TransparencyValue = 0.2
WindUI:SetTheme("Dark")

local player = game.Players.LocalPlayer

local Window = WindUI:CreateWindow({
    Title = "Nexa - Premium",
    Icon = "rbxassetid://107488593993096",
    Author = "Fish IT! Script | @Han",
    Folder = "Hanzo",
    Size = UDim2.fromOffset(650, 510),
    Transparent = true,
    Theme = "Dark",
    HidePanelBackground = true,
    Background = "https://i.imgur.com/GsfBtXF.jpeg",
    User = {
        Enabled = true,
        Anonymous = false,
        Name = player.DisplayName,
        UserName = "@" .. player.Name
    }
})

Window:Tag({
    Title = "v1.2.7",
    Color = Color3.fromHex("#30ff6a")
})

Window:EditOpenButton({ Enabled = false })

-- 🧭 Tabs
local Tabs = {
    Home = Window:Tab({ Title = "Home", Icon = "house" }),
    Active = Window:Tab({ Title = "Active", Icon = "info" }),
    Farm = Window:Tab({ Title = "Farm", Icon = "fish" }),
    Auto = Window:Tab({ Title = "Automaticaly", Icon = "repeat-2" }),
    Shop = Window:Tab({ Title = "Shop", Icon = "shopping-cart" }),
    Boat = Window:Tab({ Title = "Boat", Icon = "sailboat" }),
    Player = Window:Tab({ Title = "Player", Icon = "user" }),
    Teleport = Window:Tab({ Title = "Teleport", Icon = "map-pin" }),
    Server = Window:Tab({ Title = "Server", Icon = "server" })
}

-- Tambahkan logic fitur kamu di bawah sini...
