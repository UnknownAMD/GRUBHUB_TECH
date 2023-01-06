-- Made by _Ben

local DanceAnimationsV1 = {
    ["Dance1"] = "rbxassetid://3189773368",
    ["Dance2"] = "rbxassetid://3189776546",
    ["Greet"] = "rbxassetid://3189777795",
    ["Lay"] = "rbxassetid://3152378852",
    ["Lean"] = "rbxassetid://3152375249",
    ["Praying"] = "rbxassetid://3487719500",
    ["Chest Pump"] = "rbxassetid://3189779152"
}

local DanceAnimationsV2 = {
    ["The Default"] = "rbxassetid://11710529975",
    ["Sturdy"] = "rbxassetid://11710524717",
    ["Rossy"] = "rbxassetid://11710527244",
    ["Griddy"] = "rbxassetid://11710529220",
    ["T Pose"] = "rbxassetid://11710524200",
    ["Speed Blitz"] = "rbxassetid://11710541744"
}

local PlayingAnimation = nil
local Players = game:GetService("Players");
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui", 5)
local RunService = game:GetService("RunService")
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid", 5)

local MainScreenGui = PlayerGui:WaitForChild("MainScreenGui", 5)
local AnimationPlusPack = MainScreenGui:WaitForChild("AnimationPlusPack", 5)
local AnimationPlusPackList = AnimationPlusPack:WaitForChild("ScrollingFrame", 5)
local AnimationPlusPackCloseButton = AnimationPlusPack:WaitForChild("CloseButton", 5)

local AnimationPack = MainScreenGui:WaitForChild("AnimationPack", 5)
local AnimationPackList = AnimationPack:WaitForChild("ScrollingFrame", 5)
local AnimationPackCloseButton = AnimationPack:WaitForChild("CloseButton", 5)

do
    AnimationPlusPack.Visible = true
    
    AnimationPlusPack.MouseButton1Click:Connect(function()
        AnimationPack.Visible = false
        AnimationPlusPackList.Visible = true
        AnimationPlusPackCloseButton.Visible = true
    end)
    
    AnimationPlusPackCloseButton.MouseButton1Click:Connect(function()
        AnimationPack.Visible = true
        AnimationPlusPackList.Visible = false
        AnimationPlusPackCloseButton.Visible = false
    end)
    
    for _, Button in ipairs(AnimationPlusPackList:GetChildren()) do
        if not Button:IsA("TextButton") then continue end
    
    	local AnimationObject = Instance.new("Animation", nil)
    	AnimationObject.AnimationId = DanceAnimationsV2[Button.Text]
    	
        local AnimationTrack = Humanoid:LoadAnimation(AnimationObject)
    	
    	AnimationObject:Destroy()
    	
    	if not AnimationTrack then continue end
    	
    	Button.MouseButton1Click:Connect(function()
    		if PlayingAnimation == AnimationTrack then
    			PlayingAnimation = nil 
    			return AnimationTrack:Stop()
    		else
    			if PlayingAnimation ~= nil then
    				PlayingAnimation:Stop()
    				PlayingAnimation = nil
    			end
    		end
    
    		PlayingAnimation = AnimationTrack
    		AnimationTrack:Play()
    	end)
    end
end

do
    AnimationPack.Visible = true
    
    AnimationPack.MouseButton1Click:Connect(function()
        AnimationPlusPack.Visible = false
        AnimationPackList.Visible = true
        AnimationPackCloseButton.Visible = true
    end)
    
    AnimationPackCloseButton.MouseButton1Click:Connect(function()
        AnimationPlusPack.Visible = true
        AnimationPackList.Visible = false
        AnimationPackCloseButton.Visible = false
    end)
    
    for _, Button in ipairs(AnimationPackList:GetChildren()) do
        if not Button:IsA("TextButton") then continue end
    
    	local AnimationObject = Instance.new("Animation", nil)
    	AnimationObject.AnimationId = DanceAnimationsV1[Button.Text]
    	
        local AnimationTrack = Humanoid:LoadAnimation(AnimationObject)

    	AnimationObject:Destroy()
    	
    	if not AnimationTrack then continue end
    	
    	Button.MouseButton1Click:Connect(function()
    		if PlayingAnimation == AnimationTrack then
    			PlayingAnimation = nil 
    			return AnimationTrack:Stop()
    		else
    			if PlayingAnimation ~= nil then
    				PlayingAnimation:Stop()
    				PlayingAnimation = nil
    			end
    		end
    
    		PlayingAnimation = AnimationTrack
    		AnimationTrack:Play()
    	end)
    end
end
