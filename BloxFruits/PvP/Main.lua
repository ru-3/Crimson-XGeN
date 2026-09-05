return function(Window, Library)

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
  
    local Main = Window:Tab({
        Title = "Main",
        Icon = "home"
    })

    Main:Paragraph({
        Title = "Crimson X-Gin",
        Desc = "Main Tab",
        Icon = "info"
    })

  local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

Main:Paragraph({
    Title = "Username Player",
    Desc = "@" .. LocalPlayer.Name,
    Icon = "user"
})

  local Players = game:GetService("Players")
local Player = Players.LocalPlayer

Main:Paragraph({
    Title = "Thank You",
    Desc = "Thank you @" .. Player.Name .. " for using Crimson X-Gin.",
    Icon = "heart"
})


local Stats = Main:Paragraph({
    Title = "Player Stats",
    Desc = "WalkSpeed: " .. Humanoid.WalkSpeed .. "\nJumpPower: " .. Humanoid.JumpPower,
    Icon = "activity"
})

Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
    Stats:SetDesc(
        "WalkSpeed: " .. Humanoid.WalkSpeed ..
        "\nJumpPower: " .. Humanoid.JumpPower
    )
end)

Humanoid:GetPropertyChangedSignal("JumpPower"):Connect(function()
    Stats:SetDesc(
        "WalkSpeed: " .. Humanoid.WalkSpeed ..
        "\nJumpPower: " .. Humanoid.JumpPower
    )
end)
  
    return Main
end
