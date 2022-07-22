repeat
    task.wait(1 / 2)
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
local HttpService = game:GetService("HttpService")
local GameServersFolder = "grubhub_game_servers"
local GamePlaceServersFolder = "grubhub_game_servers/%s"
local OldServersName = Format(GamePlaceServersFolder, game.placeId .. "_OldServers.json")
local API_URL = "https://games.roblox.com/v1/games/%s/servers/Public?limit=%s%s"

local OldServerData = {
    ExpireTime = 60 * 2,
    Time = tick(),
    ServerIds = {}
}

if not isfolder(GameServersFolder) then
    makefolder(GameServersFolder)
end

local function UpdateOldServers(Time)
    local Contents = HttpService:JSONDecode(readfile(OldServersName))

    OldServerData.Time = Time or Contents.Time

    writefile(OldServersName, HttpService:JSONEncode(OldServerData))
end

if not isfile(OldServersName) then
    writefile(OldServersName, HttpService:JSONEncode(OldServerData))
else
    local Contents = HttpService:JSONDecode(readfile(OldServersName))

    if (tick() - Contents.Time) >= Contents.ExpireTime then
        UpdateOldServers(tick())
    else
        OldServerData.ServerIds = Contents.ServerIds
    end
end

getgenv().JoinOpenServer = function(Url)
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
                    if not table.find(OldServerData.ServerIds, Server.id) then
                        FoundServer = true
                        table.insert(OldServerData.ServerIds, Server.id)

                        UpdateOldServers()

                        task.wait(1 / 2)

                        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, Server.id, game:GetService("Players").LocalPlayer)
                    end
                end
            end
        end

        if PageData.nextPageCursor ~= nil and not FoundServer then
            return getgenv().JoinOpenServer(Format(API_URL, game.placeId, 100, "&cursor=" .. tostring(PageData.nextPageCursor)))
        end
    end

    return nil
end