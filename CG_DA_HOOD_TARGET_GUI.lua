-- Gui to Lua
-- Version: 3.2

-- Instances:

local CG_DA_HOOD_TARGET_GUI = Instance.new("ScreenGui")
local TopBar = Instance.new("Frame")
local exit = Instance.new("ImageButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local Main = Instance.new("Frame")
local Container = Instance.new("Frame")
local AvatarFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local AvatarImage = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local userInput = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local targetsUser = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local targetsCash = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local targetsCreationDate = Instance.new("TextLabel")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local interact = Instance.new("TextButton")

--Properties:

CG_DA_HOOD_TARGET_GUI.Name = "CG_DA_HOOD_TARGET_GUI"
CG_DA_HOOD_TARGET_GUI.Parent = game:GetService("CoreGui")
CG_DA_HOOD_TARGET_GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TopBar.Name = "TopBar"
TopBar.Parent = CG_DA_HOOD_TARGET_GUI
TopBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TopBar.BorderColor3 = Color3.fromRGB(50, 100, 255)
TopBar.LayoutOrder = 1
TopBar.Position = UDim2.new(0.649999976, 0, 0.400000036, 0)
TopBar.Size = UDim2.new(-0.285689592, 0, 0.0930283666, 0)

exit.Name = "exit"
exit.Parent = TopBar
exit.BackgroundTransparency = 1.000
exit.Position = UDim2.new(0.955509663, 0, 0.0454545468, 0)
exit.Size = UDim2.new(0.0351851843, 0, 0.863636374, 0)
exit.ZIndex = 3
exit.Image = "rbxassetid://6764432408"
exit.ImageColor3 = Color3.fromRGB(100, 100, 100)
exit.ImageRectOffset = Vector2.new(200, 600)
exit.ImageRectSize = Vector2.new(50, 50)

UIAspectRatioConstraint.Parent = exit

TextLabel.Parent = TopBar
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0111111114, 0, 0.0454545468, 0)
TextLabel.Size = UDim2.new(0.359259248, 0, 0.863636374, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "CG's Da Hood Target"
TextLabel.TextColor3 = Color3.fromRGB(156, 156, 156)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 14

UIAspectRatioConstraint_2.Parent = TextLabel
UIAspectRatioConstraint_2.AspectRatio = 10.211

Main.Name = "Main"
Main.Parent = TopBar
Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Main.BorderColor3 = Color3.fromRGB(50, 100, 255)
Main.ClipsDescendants = true
Main.Position = UDim2.new(0, 0, 1, 1)
Main.Size = UDim2.new(1, 0, 12.5270004, 0)

Container.Name = "Container"
Container.Parent = Main
Container.AnchorPoint = Vector2.new(0.5, 0)
Container.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Container.BorderColor3 = Color3.fromRGB(50, 100, 255)
Container.Position = UDim2.new(0.5, 0, 0.0149999997, 0)
Container.Size = UDim2.new(0.985000014, 0, 0.975000024, 0)

AvatarFrame.Name = "AvatarFrame"
AvatarFrame.Parent = Container
AvatarFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
AvatarFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
AvatarFrame.BorderSizePixel = 0
AvatarFrame.Position = UDim2.new(0.0340909101, 0, 0.0977443606, 0)
AvatarFrame.Size = UDim2.new(0.206439391, 0, 0.409774423, 0)

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = AvatarFrame

AvatarImage.Name = "AvatarImage"
AvatarImage.Parent = AvatarFrame
AvatarImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AvatarImage.BackgroundTransparency = 1.000
AvatarImage.BorderColor3 = Color3.fromRGB(0, 0, 0)
AvatarImage.BorderSizePixel = 0
AvatarImage.Size = UDim2.new(1, 0, 1, 0)
AvatarImage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = AvatarImage

UIAspectRatioConstraint_3.Parent = AvatarImage

UIAspectRatioConstraint_4.Parent = AvatarFrame

userInput.Name = "userInput"
userInput.Parent = Container
userInput.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
userInput.BorderColor3 = Color3.fromRGB(40, 40, 40)
userInput.Position = UDim2.new(0.278409094, 0, 0.402255625, 0)
userInput.Size = UDim2.new(0.685606062, 0, 0.105263159, 0)
userInput.Font = Enum.Font.SourceSans
userInput.PlaceholderText = "Target User (display or normal user)"
userInput.Text = ""
userInput.TextColor3 = Color3.fromRGB(255, 255, 255)
userInput.TextScaled = true
userInput.TextSize = 14.000
userInput.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = userInput

UITextSizeConstraint_2.Parent = userInput
UITextSizeConstraint_2.MaxTextSize = 14

UIAspectRatioConstraint_5.Parent = userInput
UIAspectRatioConstraint_5.AspectRatio = 12.929

targetsUser.Name = "targetsUser"
targetsUser.Parent = Container
targetsUser.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
targetsUser.BackgroundTransparency = 1.000
targetsUser.BorderColor3 = Color3.fromRGB(0, 0, 0)
targetsUser.BorderSizePixel = 0
targetsUser.Position = UDim2.new(0.278409094, 0, 0.0977443606, 0)
targetsUser.Size = UDim2.new(0.685606062, 0, 0.0789473653, 0)
targetsUser.Font = Enum.Font.Unknown
targetsUser.Text = "Username: <font color=\"rgb(255, 255, 255)\">Roblox</font>"
targetsUser.TextColor3 = Color3.fromRGB(88, 88, 88)
targetsUser.TextScaled = true
targetsUser.TextSize = 14.000
targetsUser.TextWrapped = true
targetsUser.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_3.Parent = targetsUser
UITextSizeConstraint_3.MaxTextSize = 15

UIAspectRatioConstraint_6.Parent = targetsUser
UIAspectRatioConstraint_6.AspectRatio = 17.238

targetsCash.Name = "targetsCash"
targetsCash.Parent = Container
targetsCash.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
targetsCash.BackgroundTransparency = 1.000
targetsCash.BorderColor3 = Color3.fromRGB(0, 0, 0)
targetsCash.BorderSizePixel = 0
targetsCash.Position = UDim2.new(0.278409094, 0, 0.176691726, 0)
targetsCash.Size = UDim2.new(0.685606062, 0, 0.0789473653, 0)
targetsCash.Font = Enum.Font.Unknown
targetsCash.Text = "Cash: <font color=\"rgb(52, 235, 76)\">$1,000</font>"
targetsCash.TextColor3 = Color3.fromRGB(88, 88, 88)
targetsCash.TextScaled = true
targetsCash.TextSize = 14.000
targetsCash.TextWrapped = true
targetsCash.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_4.Parent = targetsCash
UITextSizeConstraint_4.MaxTextSize = 15

UIAspectRatioConstraint_7.Parent = targetsCash
UIAspectRatioConstraint_7.AspectRatio = 17.238

targetsCreationDate.Name = "targetsCreationDate"
targetsCreationDate.Parent = Container
targetsCreationDate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
targetsCreationDate.BackgroundTransparency = 1.000
targetsCreationDate.BorderColor3 = Color3.fromRGB(0, 0, 0)
targetsCreationDate.BorderSizePixel = 0
targetsCreationDate.Position = UDim2.new(0.278409094, 0, 0.255639106, 0)
targetsCreationDate.Size = UDim2.new(0.685606062, 0, 0.0789473653, 0)
targetsCreationDate.Font = Enum.Font.Unknown
targetsCreationDate.Text = "Creation Date: <font color=\"rgb(255, 255, 255)\">02/06/2024</font>"
targetsCreationDate.TextColor3 = Color3.fromRGB(88, 88, 88)
targetsCreationDate.TextScaled = true
targetsCreationDate.TextSize = 14.000
targetsCreationDate.TextWrapped = true
targetsCreationDate.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint_5.Parent = targetsCreationDate
UITextSizeConstraint_5.MaxTextSize = 15

UIAspectRatioConstraint_8.Parent = targetsCreationDate
UIAspectRatioConstraint_8.AspectRatio = 17.238

UIAspectRatioConstraint_9.Parent = TopBar
UIAspectRatioConstraint_9.AspectRatio = 24.545

interact.Name = "interact"
interact.Parent = TopBar
interact.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
interact.BackgroundTransparency = 1.000
interact.BorderColor3 = Color3.fromRGB(0, 0, 0)
interact.BorderSizePixel = 0
interact.Size = UDim2.new(1, 0, 1, 0)
interact.ZIndex = 2
interact.Font = Enum.Font.SourceSans
interact.Text = ""
interact.TextColor3 = Color3.fromRGB(0, 0, 0)
interact.TextSize = 14.000
interact.TextTransparency = 1.000

-- Scripts:

local function VPVBI_fake_script() -- CG_DA_HOOD_TARGET_GUI.Handler 
	local script = Instance.new('LocalScript', CG_DA_HOOD_TARGET_GUI)

	local formatNumber = (function (n)
		n = tostring(n)
		return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
	end) -- https://devforum.roblox.com/t/formatting-a-currency-label-to-include-commas/413670/3
	
	shared.current_CG_DA_HOOD_TARGET_UI = shared.current_CG_DA_HOOD_TARGET_UI
	
	if shared.current_CG_DA_HOOD_TARGET_UI then
		shared.current_CG_DA_HOOD_TARGET_UI:Destroy()
		shared.current_CG_DA_HOOD_TARGET_UI = nil
	end
	
	local GUI = script.Parent
	
	shared.current_CG_DA_HOOD_TARGET_UI = GUI
	
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
	local userInputBox = Container.userInput
	local AvatarFrame = Container.AvatarFrame
	local AvatarImageLabel = AvatarFrame.AvatarImage
	
	local targetsUserLabel = Container.targetsUser
	local targetsCashLabel = Container.targetsCash
	local targetsCreationDateLabel = Container.targetsCreationDate
	
	local holdingTopBar = false
	
	-- External Functions
	local getPlayerCash = nil -- Main script will hand over the functions
	
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
end
coroutine.wrap(VPVBI_fake_script)()
