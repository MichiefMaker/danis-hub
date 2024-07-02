local gui = Instance.new("ScreenGui")
gui.Name = "Custom"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.3, 0, 0.4, 0)
frame.Position = UDim2.new(0.35, 0, 0.3, 0)
frame.Style = Enum.FrameStyle.RobloxRound
frame.Parent = gui

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.2, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.Text = "Custom Loadstring"
titleLabel.TextScaled = true
titleLabel.Parent = frame

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(1, -20, 0.6, 0)
textBox.Position = UDim2.new(0, 10, 0.3, 0)
textBox.PlaceholderText = "Enter Lua or loadstring here"
textBox.TextWrapped = true
textBox.Parent = frame

local executeButton = Instance.new("TextButton")
executeButton.Size = UDim2.new(1, -20, 0.15, 0)
executeButton.Position = UDim2.new(0, 10, 0.9, 0)
executeButton.Text = "Execute"
executeButton.Parent = frame

executeButton.MouseButton1Click:Connect(function()
    local scriptToExecute = textBox.Text
    pcall(function()
        loadstring(scriptToExecute)()
    end)
    gui:Destroy()
end)
