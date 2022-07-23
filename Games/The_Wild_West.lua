do
    if game.PlaceId == 2317712696 then
        pcall(function()
            local LoadedSound = Instance.new("Sound", game:GetService("CoreGui"))
            LoadedSound.SoundId = "rbxassetid://6823184374"
            LoadedSound:Play()
            
            task.delay(5, function()
                LoadedSound:Destroy()
                LoadedSound = nil
            end)
        end)
        
        local Players = game:GetService("Players")
        local Player = Players.LocalPlayer
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Modules = ReplicatedStorage:WaitForChild("Modules", 5)
        local CharacterModules = Modules ~= nil and Modules:WaitForChild("Character", 5)
        local PlayerModule = CharacterModules ~= nil and CharacterModules:WaitForChild("PlayerCharacter", 5)
        PlayerModule = PlayerModule ~= nil and PlayerModule:IsA("ModuleScript") and require(PlayerModule) or nil
        
        if CharacterModules == nil then
            return Player:Kick("Failed to locate modules!")
        elseif PlayerModule == nil then
            return Player:Kick("Failed to grab player functions!")
        end
        
        local ProtectedEnv = getfenv(PlayerModule.LowerStamina)
        
        local OldRunLuaChunk_VM = ProtectedEnv.runLuaChunk
        
        ProtectedEnv.runLuaChunk = function(VM_DATA, _ENV, _OPTIONS, _UPVALUES, ...)
            return OldRunLuaChunk_VM(VM_DATA, _ENV, _OPTIONS, _UPVALUES, ...)
        end
        
        function GetNearPlayer()
            local OldDistance = math.huge
            local Target = nil
            local Attacker = nil
        
            for _, GamePlayer in ipairs(Players:GetPlayers()) do
                if GamePlayer ~= Player then
                    local GameCharacter = GamePlayer.Character
                    local LocalCharacter = Player.Character
        
                    if GameCharacter and LocalCharacter then
                        local GameRoot = GameCharacter:FindFirstChild("Head")
                        local GameHumanoid = GameCharacter:FindFirstChild("Humanoid")
                        local LocalRoot = LocalCharacter:FindFirstChild("Head")
        
                        if GameRoot and LocalRoot and GameHumanoid then
                            local Distance = math.abs((LocalRoot.Position - GameRoot.Position).Magnitude)
                            
                            if (Distance <= 100) and (Distance < OldDistance) and GameHumanoid.Health > 0 then
                                OldDistance = Distance
                                Target = GameRoot
                                Attacker = LocalRoot
                            end
                        end
                    end
                end
            end
        
            return Target, Attacker
        end
        
        local RunService = game:GetService("RunService")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        Window = UILibrary.new("GrubHub V6 ~ The Wild West", 5013109572)
        local PlayerWindow = Window:addPage("Player", 5012544693)
        local PlayerSection = PlayerWindow:addSection("Features", 5012544693)
        
        local ItemModsWindow = Window:addPage("Item Mods", 5012544693)
        local ItemModsSection = ItemModsWindow:addSection("Features", 5012544693)
        local SettingsName = "THE_WILD_WEST_SETTINGS"
        
        getgenv()[SettingsName] = {
            SlientAim = false,
            InfStamina = false,
            NoFallDamage = false
        }
        
        for _, V in pairs(getgc(true)) do
            if type(V) == "table" and rawget(V, "GetMouseHit") then
                if type(V.GetMouseHit) == "function" then
                    local old = nil
                    old = hookfunction(V.GetMouseHit, function(...)
                        if getfenv(2).script ~= nil and getfenv(2).script.Name == "GunItem" and getgenv()[SettingsName].SlientAim == true then
                            local NearTarget = GetNearPlayer()
                            if NearTarget ~= nil then
                                return NearTarget.Position
                            end
                        end
                        
                        return old(...)
                    end)
                end
            end
        end
        
        local OldNamecall = nil
        
        OldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
            local Method = getnamecallmethod()
            
            if tostring(self) == "DamageSelf" and Method == "FireServer" then
                if getgenv()[SettingsName].NoFallDamage == true then
                    return
                end
            end
            
            return OldNamecall(self, ...)
        end) 
        
        PlayerSection:addToggle("No Fall Damage", getgenv()[SettingsName].NoFallDamage, function(Bool)
            getgenv()[SettingsName].NoFallDamage = Bool
        end)
        
        if type(PlayerModule.LowerStamina) == "function" then
            local OldLowerStamina = rawget(PlayerModule, "LowerStamina")
        
            PlayerSection:addToggle("Inf Stamina", getgenv()[SettingsName].InfStamina, function(Bool)
                getgenv()[SettingsName].InfStamina = Bool
        
                if Bool then
                    rawset(PlayerModule, "LowerStamina", function()end)
                else
                    rawset(PlayerModule, "LowerStamina", OldLowerStamina)
                end
            end)
        
        end
        
        ItemModsSection:addToggle("Slient Aim", getgenv()[SettingsName].SlientAim, function(Bool)
            getgenv()[SettingsName].SlientAim = Bool
        end)
    end
end