local Repository  = "https://github.com/botdevXD/GRUBHUB_TECH"
local GamesPath = Repository .. "/Games/"

local Games = {
    [6284583030] = "PetSimX.lua"
}

local Source = [[
    getgenv()["USE_GRUBHUB_UNIVERSAL"] = true

    local Settings_Name = nil
    local Window = nil
    local SettingsPage = nil
    local SettingsSection = nil

    local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxking776/GrubHub/main/modules/VenyXUI.lua", true))()

    if not isfolder("grubhub_v6_bin") then
        makefolder("grubhub_v6_bin")
    end

    local function FixName(GameName)
        return GameName:gsub("[%s%p%d%c%z]", "")
    end

    local function GetGameConfig(GameName)
        local Table = {}
        if isfolder("grubhub_v6_bin") then
                if isfile("grubhub_v6_bin/" .. tostring(GameName)) then
                    local HttpServices = game:GetService("HttpService")
                    local ConfigContents = readfile("grubhub_v6_bin/" .. tostring(GameName))
                    local DecodedSuccess, DecodedContents = pcall(HttpServices.JSONDecode, HttpServices, tostring(ConfigContents))
                    if DecodedSuccess then
                    Table = DecodedContents
                    end
                end
        end
        return Table
    end

    local function SaveGameConfig(GameName, ConfigTable)
        if isfolder("grubhub_v6_bin") then
                local HttpServices = game:GetService("HttpService")
                local EncodedSuccess, EncodedContents = pcall(HttpServices.JSONEncode, HttpServices, ConfigTable)

                if EncodedSuccess then
                    writefile("grubhub_v6_bin/" .. tostring(GameName), tostring(EncodedContents))
                    return true
                end
        end
        return false
    end

]]

for gameId, ScriptName in ipairs(Games) do
    
end