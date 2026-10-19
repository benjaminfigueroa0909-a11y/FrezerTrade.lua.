local gui = Instance.new("ScreenGui")
gui.Name = "FrezerTrade"
gui.ResetOnSpawn = false

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 200, 0, 50)
button.Position = UDim2.new(0.5, -100, 0.7, 0)
button.BackgroundColor3 = Color3.fromRGB(35, 190, 80)
button.TextColor3 = Color3.new(1, 1, 1)
button.TextScaled = true
button.Font = Enum.Font.GothamBold
button.Text = "FREZER TRADE: ON"
button.Parent = gui

local estado = true

button.Activated:Connect(function()
    estado = not estado
    button.Text = estado and "FREZER TRADE: ON" or "FREZER TRADE: OFF"
    button.BackgroundColor3 = estado
        and Color3.fromRGB(35, 190, 80)
        or Color3.fromRGB(220, 45, 45)
end)

gui.Parent = game:GetService("CoreGui")
