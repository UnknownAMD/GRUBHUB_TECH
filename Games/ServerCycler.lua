repeat
	task.wait()
until game:IsLoaded()

local new = true

if new then
    return nil
end

local noclip = false
local isFarmingWindy = false
local cantprn = true
local teleportcooldown = 0
local replicatedstorage = game:GetService("ReplicatedStorage")
local player = game:GetService("Players").LocalPlayer
local collectedTokens = {}
local maxMag = 200

local readFile = nil
local isaFile = pcall(function()
	readFile = readfile("PrevServers2.txt")
end)

local File = pcall(function()
	AllIDs = readfile("PrevServers.txt")
end)
if not File then
	writefile("PrevServers.txt", game.JobId)
end

local function AuthenticateAndReturn(url)
	local servers = game.HttpService:JSONDecode(syn.request({
		["Url"] = url;
		Headers = {
			["content-type"] = "application/json",
			["user-agent"] = "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) discord/0.0.305 Chrome/69.0.3497.128 Electron/4.0.8 Safari/537.36",
		};
		["Method"] = "GET";
	}).Body)
	return servers
end

local previousCursor = 0

local function fetchIds()
	local retur = nil
	pcall(function()
		retur = readfile("PrevServers.txt")
	end)
	return retur
end

local function addText(tex)
	local currenttext = nil
	local File = pcall(function()
		currenttext = readfile("PrevServers.txt")
	end)
	if not File then
		writefile("PrevServers.txt", tex)
	else
		writefile("PrevServers.txt", currenttext .. tex)
	end
end

local hasteleportedithink = false

local function defTeleport(jobid)
	local success = pcall(function()
		game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, jobid, game:GetService("Players").LocalPlayer)
	end)
	if success then
		hasteleportedithink = true
	end
end

local function requestTeleport(jobid)
	local current = fetchIds()
	if current ~= nil then
		if not string.find(current, jobid) then
			addText(jobid)
			defTeleport(jobid)
		end
	else
		addText(jobid)
		defTeleport(jobid)
	end
end

spawn(function()
	while task.wait(1) do
		if hasteleportedithink == true then
			task.wait(2)
			hasteleportedithink = false
		end
	end
end)

local processing = false

local function stawtTewepowt()
	while true do
		if not hasteleportedithink then
			local s, e = pcall(function()
				repeat
					processing = true
					local Servers = nil

					if previousCursor == 0 then
						Servers = AuthenticateAndReturn("https://games.roblox.com/v1/games/" .. tostring(game.PlaceId) .. "/servers/Public?limit=100")
					else
						Servers = AuthenticateAndReturn("https://games.roblox.com/v1/games/" .. tostring(game.PlaceId) .. "/servers/Public?limit=100&cursor=" .. tostring(previousCursor))
					end
					repeat
						task.wait()
					until Servers ~= nil

					previousCursor = Servers.nextPageCursor
					for i, v in pairs(Servers.data) do
						if tonumber(v.playing) < tonumber(v.maxPlayers) then
							requestTeleport(v.id)
						end
					end
					task.wait(0.075)
				until hasteleportedithink == true
				processing = false
			end)
		end
		task.wait(2)
	end
end

stawtTewepowt()