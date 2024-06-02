local CG_DA_HOOD_TARGET_GUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local exit = Instance.new("ImageButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local min = Instance.new("ImageButton")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local TextLabel = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local Container = Instance.new("Frame")
local AvatarFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local AvatarImage = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local userInput = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local targetsUser = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local targetsCash = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local targetsCreationDate = Instance.new("TextLabel")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_12 = Instance.new("UIAspectRatioConstraint")

-- Properties

CG_DA_HOOD_TARGET_GUI.Name = "CG_DA_HOOD_TARGET_GUI"
CG_DA_HOOD_TARGET_GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CG_DA_HOOD_TARGET_GUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = CG_DA_HOOD_TARGET_GUI
Main.AnchorPoint = Vector2.new(1, 1)
Main.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Main.BorderColor3 = Color3.new(0.196078, 0.392157, 1)
Main.ClipsDescendants = true
Main.Position = UDim2.new(0.632090628, 0, 0.693113804, 0)
Main.Size = UDim2.new(0.279125154, 0, 0.412576675, 0)

TopBar.Name = "TopBar"
TopBar.Parent = Main
TopBar.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TopBar.BorderColor3 = Color3.new(0.196078, 0.392157, 1)
TopBar.ClipsDescendants = true
TopBar.LayoutOrder = 1
TopBar.Size = UDim2.new(1, 0, 0.0730897039, 0)
TopBar.ZIndex = 444

exit.Name = "exit"
exit.Parent = TopBar
exit.BackgroundTransparency = 1
exit.Position = UDim2.new(0.955509663, 0, 0.0454545468, 0)
exit.Size = UDim2.new(0.0351851843, 0, 0.863636374, 0)
exit.ZIndex = 2
exit.Image = "rbxassetid://6764432408"
exit.ImageColor3 = Color3.new(0.392157, 0.392157, 0.392157)
exit.ImageRectOffset = Vector2.new(200, 600)
exit.ImageRectSize = Vector2.new(50, 50)

UIAspectRatioConstraint.Parent = exit

min.Name = "min"
min.Parent = TopBar
min.BackgroundTransparency = 1
min.Position = UDim2.new(0.91900003, 0, 0.0450000018, 0)
min.Rotation = 90
min.Size = UDim2.new(0.0351851843, 0, 0.863636374, 0)
min.ZIndex = 2
min.Image = "rbxassetid://6764432408"
min.ImageColor3 = Color3.new(0.392157, 0.392157, 0.392157)
min.ImageRectOffset = Vector2.new(100, 150)
min.ImageRectSize = Vector2.new(50, 50)

UIAspectRatioConstraint_2.Parent = min

TextLabel.Parent = TopBar
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0111111114, 0, 0.0454545468, 0)
TextLabel.Size = UDim2.new(0.359259248, 0, 0.863636374, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "CG's Da Hood Target"
TextLabel.TextColor3 = Color3.new(0.611765, 0.611765, 0.611765)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

UITextSizeConstraint.Parent = TextLabel
UITextSizeConstraint.MaxTextSize = 14

UIAspectRatioConstraint_3.Parent = TextLabel
UIAspectRatioConstraint_3.AspectRatio = 10.210526466369629

UIAspectRatioConstraint_4.Parent = TopBar
UIAspectRatioConstraint_4.AspectRatio = 24.545454025268555

Container.Name = "Container"
Container.Parent = Main
Container.AnchorPoint = Vector2.new(0.5, 0)
Container.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Container.BorderColor3 = Color3.new(0.196078, 0.392157, 1)
Container.Position = UDim2.new(0.5, 0, 0.0960000008, 0)
Container.Size = UDim2.new(0.977777779, 0, 0.883720934, 0)

AvatarFrame.Name = "AvatarFrame"
AvatarFrame.Parent = Container
AvatarFrame.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
AvatarFrame.BorderColor3 = Color3.new(0, 0, 0)
AvatarFrame.BorderSizePixel = 0
AvatarFrame.Position = UDim2.new(0.0340909101, 0, 0.0977443606, 0)
AvatarFrame.Size = UDim2.new(0.206439391, 0, 0.409774423, 0)

UICorner.Parent = AvatarFrame
UICorner.CornerRadius = UDim.new(0, 6)

AvatarImage.Name = "AvatarImage"
AvatarImage.Parent = AvatarFrame
AvatarImage.BackgroundColor3 = Color3.new(1, 1, 1)
AvatarImage.BackgroundTransparency = 1
AvatarImage.BorderColor3 = Color3.new(0, 0, 0)
AvatarImage.BorderSizePixel = 0
AvatarImage.Size = UDim2.new(1, 0, 1, 0)
AvatarImage.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_2.Parent = AvatarImage
UICorner_2.CornerRadius = UDim.new(0, 6)

UIAspectRatioConstraint_5.Parent = AvatarImage

UIAspectRatioConstraint_6.Parent = AvatarFrame

userInput.Name = "userInput"
userInput.Parent = Container
userInput.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.0862745)
userInput.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
userInput.Position = UDim2.new(0.278409094, 0, 0.402255625, 0)
userInput.Size = UDim2.new(0.685606062, 0, 0.105263159, 0)
userInput.Font = Enum.Font.SourceSans
userInput.PlaceholderText = "Target User (display or normal user)"
userInput.Text = ""
userInput.TextColor3 = Color3.new(1, 1, 1)
userInput.TextScaled = true
userInput.TextSize = 14
userInput.TextWrapped = true
userInput.RichText = true

UICorner_3.Parent = userInput
UICorner_3.CornerRadius = UDim.new(0, 3)

UITextSizeConstraint_2.Parent = userInput
UITextSizeConstraint_2.MaxTextSize = 14

UIAspectRatioConstraint_7.Parent = userInput
UIAspectRatioConstraint_7.AspectRatio = 12.928571701049805

targetsUser.Name = "targetsUser"
targetsUser.Parent = Container
targetsUser.BackgroundColor3 = Color3.new(1, 1, 1)
targetsUser.BackgroundTransparency = 1
targetsUser.BorderColor3 = Color3.new(0, 0, 0)
targetsUser.BorderSizePixel = 0
targetsUser.Position = UDim2.new(0.278409094, 0, 0.0977443606, 0)
targetsUser.Size = UDim2.new(0.685606062, 0, 0.0789473653, 0)
targetsUser.Font = Enum.Font.SourceSans
targetsUser.Text = "Username: <font color=\"rgb(255, 255, 255)\">Roblox</font>"
targetsUser.TextColor3 = Color3.new(0.345098, 0.345098, 0.345098)
targetsUser.TextScaled = true
targetsUser.TextSize = 14
targetsUser.TextWrapped = true
targetsUser.TextXAlignment = Enum.TextXAlignment.Left
targetsUser.RichText = true

UITextSizeConstraint_3.Parent = targetsUser
UITextSizeConstraint_3.MaxTextSize = 15

UIAspectRatioConstraint_8.Parent = targetsUser
UIAspectRatioConstraint_8.AspectRatio = 17.238094329833984

targetsCash.Name = "targetsCash"
targetsCash.Parent = Container
targetsCash.BackgroundColor3 = Color3.new(1, 1, 1)
targetsCash.BackgroundTransparency = 1
targetsCash.BorderColor3 = Color3.new(0, 0, 0)
targetsCash.BorderSizePixel = 0
targetsCash.Position = UDim2.new(0.278409094, 0, 0.176691726, 0)
targetsCash.Size = UDim2.new(0.685606062, 0, 0.0789473653, 0)
targetsCash.Font = Enum.Font.SourceSans
targetsCash.Text = "Cash: <font color=\"rgb(52, 235, 76)\">$1,000</font>"
targetsCash.TextColor3 = Color3.new(0.345098, 0.345098, 0.345098)
targetsCash.TextScaled = true
targetsCash.TextSize = 14
targetsCash.TextWrapped = true
targetsCash.TextXAlignment = Enum.TextXAlignment.Left
targetsCash.RichText = true

UITextSizeConstraint_4.Parent = targetsCash
UITextSizeConstraint_4.MaxTextSize = 15

UIAspectRatioConstraint_9.Parent = targetsCash
UIAspectRatioConstraint_9.AspectRatio = 17.238094329833984

targetsCreationDate.Name = "targetsCreationDate"
targetsCreationDate.Parent = Container
targetsCreationDate.BackgroundColor3 = Color3.new(1, 1, 1)
targetsCreationDate.BackgroundTransparency = 1
targetsCreationDate.BorderColor3 = Color3.new(0, 0, 0)
targetsCreationDate.BorderSizePixel = 0
targetsCreationDate.Position = UDim2.new(0.278409094, 0, 0.255639106, 0)
targetsCreationDate.Size = UDim2.new(0.685606062, 0, 0.0789473653, 0)
targetsCreationDate.Font = Enum.Font.SourceSans
targetsCreationDate.Text = "Creation Date: <font color=\"rgb(255, 255, 255)\">02/06/2024</font>"
targetsCreationDate.TextColor3 = Color3.new(0.345098, 0.345098, 0.345098)
targetsCreationDate.TextScaled = true
targetsCreationDate.TextSize = 14
targetsCreationDate.TextWrapped = true
targetsCreationDate.TextXAlignment = Enum.TextXAlignment.Left
targetsCreationDate.RichText = true

UITextSizeConstraint_5.Parent = targetsCreationDate
UITextSizeConstraint_5.MaxTextSize = 15

UIAspectRatioConstraint_10.Parent = targetsCreationDate
UIAspectRatioConstraint_10.AspectRatio = 17.238094329833984

UIAspectRatioConstraint_11.Parent = Container
UIAspectRatioConstraint_11.AspectRatio = 1.9849624633789062

UIAspectRatioConstraint_12.Parent = Main
UIAspectRatioConstraint_12.AspectRatio = 1.7940199375152588

-- Scripts

local function OPYR_fake_script() -- CG_DA_HOOD_TARGET_GUI.Handler 
	local script = Instance.new('LocalScript', CG_DA_HOOD_TARGET_GUI)

	shared.current_CG_DA_HOOD_TARGET_UI = shared.current_CG_DA_HOOD_TARGET_UI
	
	if shared.current_CG_DA_HOOD_TARGET_UI then
		shared.current_CG_DA_HOOD_TARGET_UI:Destroy()
		shared.current_CG_DA_HOOD_TARGET_UI = nil
	end
	
	local GUI = script.Parent
	
	shared.current_CG_DA_HOOD_TARGET_UI = GUI
	
	local main = GUI.Main
	local topBar = main.TopBar
	local opened = true
	local tweenService = game:GetService("TweenService")
	local minButton = topBar.min
	local openSize = main.Size
	
	local Container = main.Container
	local userInputBox = Container.userInput
	local AvatarFrame = Container.AvatarFrame
	local AvatarImageLabel = AvatarFrame.AvatarImage
	
	local targetsUserLabel = Container.targetsUser
	local targetsCashLabel = Container.targetsCash
	local targetsCreationDateLabel = Container.targetsCreationDate
	
	-- External Functions
	local getPlayerCash = nil -- Main script will hand over the functions
	
	shared.CG_DA_HOOD_TARGET_GUI_FUNCTIONS = {
		setInternelFunctions = function(functionList)
			getPlayerCash = functionList.getPlayerCash
		end
	}
	
	local function getPlayerFromInput()
		-- the user can be shortened, display etc and force it all to be lower case
		local input = userInputBox.Text:lower()
		
		if #tostring(input) <= 0 then return end
		
		local player = nil
		local exactMatch = nil
		local exactMatchFound = false
		local partialMatch = nil
		local partialMatchFound = false
	
		-- if the user inputted a string, get the player with the name
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
	
		-- if there was an exact match, return that
		if exactMatchFound then
			return exactMatch
		end
		-- if there was a partial match, return that
		if partialMatchFound then
			return partialMatch
		end
	
		-- if there was no match, return nil
		return nil
	end
	
	minButton.MouseButton1Click:Connect(function()
		opened = not opened
	
		tweenService:Create(main, TweenInfo.new(.15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
			Size = UDim2.new(openSize.X.Scale, openSize.X.Offset, 0, opened and 301 or 22)
		}):Play()
	
		tweenService:Create(minButton, TweenInfo.new(.15, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
			Rotation = opened and 90 or 0
		}):Play()
	end)
	
	task.spawn(function()
		while GUI and GUI.Parent ~= nil do
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
				targetsCashLabel.Text = `Cash: <font color="rgb(255, 255, 255)">{targetsCash}</font>`
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
coroutine.wrap(OPYR_fake_script)()
