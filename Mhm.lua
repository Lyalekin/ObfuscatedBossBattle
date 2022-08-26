local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0.500
Frame.Position = UDim2.new(0.386469662, 0, 0.27446568, 0)
Frame.Size = UDim2.new(0, 250, 0, 250)
UICorner.Parent = Frame
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.100000001, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = "WARNING"
TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0480000004, 0, 0.256000012, 0)
TextLabel_2.Size = UDim2.new(0, 225, 0, 121)
TextLabel_2.Font = Enum.Font.FredokaOne
TextLabel_2.Text = "By clicking OKAY, you agree to not to share it with ANYONE else. Your username will be logged."
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(76, 255, 0)
TextButton.Position = UDim2.new(0.100000001, 0, 0.899999976, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.FredokaOne
TextButton.Text = "OKAY"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
UICorner_2.Parent = TextButton
local function UXYVD_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Text = "Verifying..."
		wait(3)
		script.Parent.Text = "Enjoy!"
		wait(1)
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(UXYVD_fake_script)()
