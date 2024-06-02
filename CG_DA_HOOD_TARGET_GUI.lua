local GUI = game:GetObjects("rbxassetid://17712897650")[1]

local formatNumber = (function (n)
	n = tostring(n)
	return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end) -- https://devforum.roblox.com/t/formatting-a-currency-label-to-include-commas/413670/3

shared.current_CG_DA_HOOD_TARGET_UI = shared.current_CG_DA_HOOD_TARGET_UI

if shared.current_CG_DA_HOOD_TARGET_UI then
	shared.current_CG_DA_HOOD_TARGET_UI:Destroy()
	shared.current_CG_DA_HOOD_TARGET_UI = nil
end

shared.current_CG_DA_HOOD_TARGET_UI = GUI

GUI.Parent = game:GetService("CoreGui")

local tweenService = game:GetService("TweenService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()

local topBar = GUI.TopBar
local main = topBar.Main
local opened = true
local tweenService = game:GetService("TweenService")
local interactButton = topBar.interact
local exitButton = topBar.exit
local openSize = main.Size

local Container = main.Container
local ContainerFunctions = Container.ContainerFunctions

local buttonTemplate = ContainerFunctions.ButtonTemplate
local toggleTemplate = ContainerFunctions.ToggleTemplate

local userInputBox = Container.userInput
local AvatarFrame = Container.AvatarFrame
local AvatarImageLabel = AvatarFrame.AvatarImage

local targetsUserLabel = Container.targetsUser
local targetsCashLabel = Container.targetsCash
local targetsCreationDateLabel = Container.targetsCreationDate

local holdingTopBar = false

-- External Functions
local getPlayerCash = nil -- Main script will hand over the functions

userInputBox.RichText = true

targetsUserLabel.RichText = true
targetsCashLabel.RichText = true
targetsCreationDateLabel.RichText = true

targetsUserLabel.FontFace.Style = Enum.FontStyle.Italic
targetsCashLabel.FontFace.Style = Enum.FontStyle.Italic
targetsCreationDateLabel.FontFace.Style = Enum.FontStyle.Italic

targetsUserLabel.FontFace.Weight = Enum.FontWeight.Bold
targetsCashLabel.FontFace.Weight = Enum.FontWeight.Bold
targetsCreationDateLabel.FontFace.Weight = Enum.FontWeight.Bold


shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS = {
	setInternelFunctions = function(functionList)
		getPlayerCash = functionList.getPlayerCash
	end
}

local function makeButton(info)
	local info = info or {}
	local toggleName = info.Name or "???"
	local callback = type(info.Callback) == "function" and info.Callback or function() end

	local newButton = buttonTemplate:Clone()
	newButton.RichText = false
	newButton.FontFace.Weight = Enum.FontWeight.Bold
	newButton.FontFace.Style = Enum.FontStyle.Italic

	newButton.Text = toggleName
	newButton.Name = toggleName

	newButton.MouseButton1Click:Connect(function()
		task.spawn(callback)
	end)

	newButton.Parent = ContainerFunctions
	newButton.Visible = true
end

local function makeToggle(info)
	local info = info or {}
	local toggleName = info.Name or "???"
	local toggleDefault = type(info.Default) == "boolean" and info.Default or false
	local callback = type(info.Callback) == "function" and info.Callback or function() end
	
	local newToggle = toggleTemplate:Clone()
	newToggle.RichText = false
	newToggle.FontFace.Weight = Enum.FontWeight.Bold
	newToggle.FontFace.Style = Enum.FontStyle.Italic
	
	newToggle.Text = toggleName
	newToggle.Name = toggleName
	
	newToggle:SetAttribute("activated", toggleDefault)
	
	local function update()
		local activeBool = newToggle:GetAttribute("activated")
		tweenService:Create(newToggle.UIStroke, TweenInfo.new(.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
			Color = activeBool and Color3.fromRGB(0, 97, 0) or Color3.fromRGB(93, 0, 0)
		}):Play()
		
		task.spawn(callback, activeBool)
	end
	
	update()
	
	newToggle.MouseButton1Click:Connect(function()
		newToggle:SetAttribute("activated", not newToggle:GetAttribute("activated"))
		update()
	end)
	
	newToggle.Parent = ContainerFunctions
	newToggle.Visible = true
end

makeButton({
	Name = "Goto",
	Callback = function()end
})

makeToggle({
	Name = "View",
	Callback = function()end
})

makeToggle({
	Name = "Auto Kill",
	Callback = function()end
})

makeToggle({
	Name = "Auto Bag",
	Callback = function()end
})

makeToggle({
	Name = "Auto Fling",
	Callback = function()end
})

local function getPlayerFromInput()
	local input = userInputBox.Text:lower()
	
	if #tostring(input) <= 0 then return end
	
	local player = nil
	local exactMatch = nil
	local exactMatchFound = false
	local partialMatch = nil
	local partialMatchFound = false

	if not exactMatchFound then
		for _, plr in pairs(game.Players:GetPlayers()) do
			if plr.Name:lower():sub(1, #input) == input or plr.DisplayName:lower():sub(1, #input) == input then
				if exactMatchFound then
					partialMatchFound = true
					partialMatch = plr
				else
					exactMatchFound = true
					exactMatch = plr
				end
			end
		end
	end

	if exactMatchFound then
		return exactMatch
	end

	if partialMatchFound then
		return partialMatch
	end
	
	return nil
end

interactButton.MouseButton1Down:Connect(function()
	holdingTopBar = true
end)

interactButton.MouseButton1Up:Connect(function()
	holdingTopBar = false
end)

exitButton.MouseButton1Click:Connect(function()
	shared.current_CG_DA_HOOD_TARGET_UI:Destroy()
	shared.current_CG_DA_HOOD_TARGET_UI = nil
end)

task.spawn(function()
	while GUI and GUI.Parent ~= nil do
		
		if holdingTopBar then
			local X,Y = (Mouse.X * 2) / 1.5, Mouse.Y + 10
			
			tweenService:Create(topBar, TweenInfo.new(.05, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
				Position = UDim2.new(0, X, 0, Y)
			}):Play()
		end
		
		local foundTarget = getPlayerFromInput()
		if not foundTarget then
			AvatarImageLabel.Image = "rbxassetid://0"
			targetsUserLabel.Text = `Username:`
			targetsCashLabel.Text = `Cash:`
			targetsCreationDateLabel.Text = `Creation Date:`
			task.wait()
			continue
		end

		local avatarImage = game.Players:GetUserThumbnailAsync(foundTarget.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
		AvatarImageLabel.Image = avatarImage

		targetsUserLabel.Text = `Username: <font color="rgb(255, 255, 255)">{foundTarget.Name}</font>`
		
		if type(getPlayerCash) == "function" then
			local targetsCash = getPlayerCash(foundTarget)
			targetsCashLabel.Text = `Cash: <font color="rgb(52, 235, 76)">${formatNumber(targetsCash)}</font>`
		end

		local DT = DateTime.fromUnixTimestamp(os.time() - 86400 * foundTarget.AccountAge)
		local Day = tonumber(DT:FormatUniversalTime("D", "en-us"))
		local Month = tonumber(DT:FormatUniversalTime("MM", "en-us"))
		local Year = tonumber(DT:FormatUniversalTime("YYYY", "en-us"))

		local targetsCreationDate = os.date("%m/%d/%Y", foundTarget.AccountAge)
		targetsCreationDateLabel.Text = `Creation Date: <font color="rgb(255, 255, 255)">{Day}/{Month}/{Year}</font>`
	end
end)
