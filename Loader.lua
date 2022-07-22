local RawPath = "https://raw.githubusercontent.com/botdevXD/GRUBHUB_TECH/main/Games/%s"

local Games = {
    {GameName = "ServerCycler.lua"},
    --{GameName = "ESP_MODULE.lua"},
    {GameName = "PetSimX.lua"},
    --{GameName = "Universal.lua"}
}

local Source = [[
    task.spawn(function()
    function START_SCRIPT()
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

for _, ScriptData in ipairs(Games) do
    local ScriptName = ScriptData.GameName
    local ScriptSource = game:HttpGet(RawPath:format(ScriptName))

    if ScriptSource ~= "404: Not Found" then
        Source = Source .. ScriptSource .. "\n"
    end
end

Source = Source .. [[
    if Window ~= nil and Settings_Name ~= nil then
        local MarketService = game:GetService("MarketplaceService")
        SettingsPage = SettingsPage or Window:addPage("Settings", 5012544693)
        SettingsSection = SettingsSection or SettingsPage:addSection("Other", 5012544693)
        SettingsSection:addButton("Save Config", function()
              local isSuccessful, info = pcall(MarketService.GetProductInfo, MarketService, game.PlaceId)
              if isSuccessful then
                 if tostring(info.Creator.Name) == "World // Zero" then
                 SaveGameConfig(FixName(tostring(info.Creator.Name)) .. ".json", getgenv()[Settings_Name])
                    elseif getgenv()["USE_GRUBHUB_UNIVERSAL"] == true then
                 SaveGameConfig(FixName(tostring("Universal")) .. ".json", getgenv()[Settings_Name])
                    else
                 SaveGameConfig(tostring(game.PlaceId) .. ".json", getgenv()[Settings_Name])
                 end
              end
        end)
        SettingsSection:addKeybind("Toggle Keybind", Enum.KeyCode.Home, function()
              Window:toggle()
        end, function()
        end)
    end
end

    local Executed = false

    while not Executed do
        local Success, Fail = pcall(START_SCRIPT)

        Executed = Success

        task.wait()
    end
end)
]]

task.spawn(function()
    loadstring(Source)()
end)

local queue_on_teleport = type(syn) == "table" and syn.queue_on_teleport or queue_on_teleport

if queue_on_teleport ~= nil then
    Source = "task.wait(5)\n" .. Source
    queue_on_teleport(Source)
end