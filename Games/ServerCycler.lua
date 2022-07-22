repeat
	task.wait()
until game:IsLoaded()

local function Format(STR, ...)
    local Args = {...}

    for Index, Arg in ipairs(Args) do
        Args[Index] = tostring(Arg)
    end

    return STR:format(unpack(Args))
end

local function identify()local Executor=string.lower(identifyexecutor())local ExecutorTable=nil;if string.find(Executor,"coco")then ExecutorTable={"Coco Z",request}end;if string.find(Executor,"synapse")then ExecutorTable={"Synapse",syn.request}end;if string.find(Executor,"krnl")then ExecutorTable={"Krnl",request}end;if string.find(Executor,"flux")then ExecutorTable={"Fluxus",request}end;if string.find(Executor,"script")then ExecutorTable={"Script-Ware",http.request}end;if string.find(Executor,"sen")then ExecutorTable={"Sentinel",request}end;if string.find(Executor,"pro")then ExecutorTable={"Protosmasher",http_request}end;if string.find(Executor,"hurt")then ExecutorTable={"SirHurt V5",http_request}end;if string.find(Executor,"grub")then ExecutorTable={"GrubHub",httprequest}end;if string.find(Executor,"electron")then ExecutorTable={"Electron",http_request}end;if getgenv().WRD_LOADED~=nil then ExecutorTable={"JJSploit",http_request}end;if getgenv().unlock_module~=nil and getgenv().setscriptable~=nil and getgenv().import~=nil then ExecutorTable={"Script-Ware-Mac",http_request}end;if getgenv().OXYGEN_LOADED~=nil then ExecutorTable={"Oxygen U",http_request}end;if ExecutorTable==nil then library:Notification("GrubHub Error","Unsupported Exploit, please check our support list [Error Code #964963E]",10,Color3.fromRGB(255,255,255))while true do end else return ExecutorTable end end;local exploittable=identify()
local exploit=exploittable[1]
local specialisedrequest=exploittable[2]
local new = true
local HttpService = game:GetService("HttpService")
local GameServersFolder = "grubhub_game_servers"
local GamePlaceServersFolder = "grubhub_game_servers/%s"
local OldServersName = Format(GamePlaceServersFolder, game.placeId .. "_OldServers.json")
local API_URL = "https://games.roblox.com/v1/games/%s/servers/Public?limit=%s%s"
local Servers = {}

if not isfolder(GameServersFolder) then
    makefolder(GameServersFolder)
end

if not isfile(OldServersName) then
    writefile(OldServersName, HttpService:JSONEncode({
        ExpireTime = 60 * 10,
        Time = tick(),
        ServerIds = {}
    }))
else
    local Contents = HttpService:JSONDecode(readfile(OldServersName))

    if (tick() - Contents.Time) >= Contents.ExpireTime then
        
    end
end

local function JoinOpenServer(Url)
    local Servers = {}
    local FoundServer = false
	local PageData = HttpService:JSONDecode(specialisedrequest({
		["Url"] = Url or Format(API_URL, game.placeId, 100, "");
		Headers = {
			["content-type"] = "application/json",
			["user-agent"] = "Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) discord/0.0.305 Chrome/69.0.3497.128 Electron/4.0.8 Safari/537.36",
		};
		["Method"] = "GET";
	}).Body)

    if type(PageData) == "table" then
        if PageData.data ~= nil then
            for _, Server in ipairs(PageData.data) do
				if tonumber(Server.playing) < tonumber(Server.maxPlayers) then
                    table.insert(Servers, {
                        jobId = Server.id
                    })
                end
            end
        end

        FoundServer = #Servers > 0 and true or false

        if PageData.nextPageCursor ~= nil and not FoundServer then
            return JoinOpenServer(Format(API_URL, game.placeId, 100, "&cursor=" .. tostring(PageData.nextPageCursor)))
        end
    end

	return nil
end

JoinOpenServer()

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