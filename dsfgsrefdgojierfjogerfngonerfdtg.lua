-- Wait until the game is fully loaded!
repeat
    task.wait()
until game:IsLoaded()

-- Vars
local VirtualUser = game:GetService("VirtualUser")
local TeleportService = game:GetService("TeleportService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

-- Tables
local Connections = {} -- Holds all connections made by this script!
-- Do not whitelist your bots are command executors!
local cmdWhitelist = {2294175743, 152711071} -- Put the UserIds of the people who are allowed to use commands!
local IgnoreList = {2294175743, 152711071} -- Put the people to be ignored when using fling etc!
local messageToSpam = "" -- Leave empty if you don't want any message to be said!
local cmdsPrefix = "$" -- The prefix for all commands registered!

local updateFile = "https://raw.githubusercontent.com/botdevXD/GRUBHUB_TECH/main/dsfgsrefdgojierfjogerfngonerfdtg.lua"

if not table.find(cmdWhitelist, Player.UserId) then
	RunService:Set3dRenderingEnabled(false)
end

local function findPlayer(playerName)
    if not playerName then return end

    for _, Player in ipairs(Players:GetChildren()) do
        if string.match(Player.DisplayName:lower(), playerName:lower()) or string.match(Player.Name:lower(), playerName:lower()) then
            return Player
        end
    end
end

-- CmdVars
local updated = true
local Following = false
--

local cmdStructure = {
    ["to"] = function(Player)
        Player = findPlayer(Player)
        if not Player then return end
        
        local PlayerCharacter = Player.Character
        local localCharacter = localPlayer.Character
        if not PlayerCharacter or not localCharacter then return end

        local localRoot = localCharacter:FindFirstChild("HumanoidRootPart")
        if not localRoot then return end

        localRoot.CFrame = PlayerCharacter:GetPivot()
    end,
    ["rejoin"] = function()
        return TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, localPlayer)
    end,
    ["follow"] = function(Player)
        Player = findPlayer(Player)
        if not Player or Following then return end

        Following = true
        task.spawn(function()
            while Following and updated and Player do
                
                local PlayerCharacter = Player.Character
                local localCharacter = localPlayer.Character
                if not PlayerCharacter or not localCharacter then return end

                local localHumanoid = localCharacter:FindFirstChild("Humanoid")
                if not localHumanoid then return end

                localHumanoid:MoveTo(PlayerCharacter:GetPivot().Position)
            
                RunService.Heartbeat:Wait()
            end

            Following = false
        end)
    end,
    ["unfollow"] = function()
        Following = false
    end,
    ["reset"] = function()
        local localCharacter = localPlayer.Character
        if not localCharacter then return end

        local localHumanoid = localCharacter:FindFirstChild("Humanoid")
        if not localHumanoid then return end

        localHumanoid:TakeDamage(9e9)
    end,
    ["update"] = function()
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Bot Updating!", "All")

        local UpdateSuccess, UpdateFailed = pcall(function()
            loadstring(game:HttpGet(updateFile, false))()
        end)

        if UpdateSuccess then
            updated = false
            
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Bot Updated!", "All")

            for _, Connection in pairs(Connections) do
                pcall(function()
                    Connection:Disconnect()
                end)
            end
            table.clear(Connections)
        else
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Bot Failed To Update!", "All")
        end
    end,
    ["walkspeed"] = function(Speed)
    	if not Speed then return end
    	Speed = tonumber(Speed)
    	if type(Speed) ~= "number" then return end
    	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("time to speed!", "All")
    	local localCharacter = localPlayer.Character
        if not localCharacter then return end

        local localHumanoid = localCharacter:FindFirstChild("Humanoid")
        if not localHumanoid then return end
        
        localHumanoid.WalkSpeed = Speed
    end,
    ["say"] = function(...)
        local chatMessage = ""
        local Args = {...}

        for msgIndex, msg in ipairs(Args) do
            chatMessage = chatMessage .. tostring(msg) .. tostring(msgIndex ~= #Args and " " or "")
        end

        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(chatMessage), "All")
    end
}

local function setupChatHandler(Player)
    table.insert(Connections, Player.Chatted:Connect(function(Message)
        if not table.find(cmdWhitelist, Player.UserId) then return end
        if Message:sub(1, 1) ~= cmdsPrefix then return end -- wasn't a command prefix so no need to continue further!
        
        local msgNoPrefix = Message:sub(2, #Message)
        if not msgNoPrefix then return end

        local messageArgs = msgNoPrefix:split(" ")
        if not messageArgs then return end
        
        local cmdName = messageArgs[1]
        if not cmdName then return end

        table.remove(messageArgs, 1)

        local cmdFunc = cmdStructure[cmdName]
        if not cmdFunc then return end

        task.spawn(function()
            cmdFunc(unpack(messageArgs))
        end)
    end))
end

for _, Player in ipairs(Players:GetChildren()) do
    if Player == localPlayer then continue end

    setupChatHandler(Player)
end

table.insert(Connections, Players.PlayerAdded:Connect(setupChatHandler))

table.insert(Connections, RunService.RenderStepped:Connect(function()
end))

table.insert(Connections, localPlayer.Idled:connect(function()
	VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
	task.wait(1)
	VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end))
