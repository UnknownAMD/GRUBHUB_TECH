local Module = {CharacterParts = {}}
local RunService = game:GetService("RunService");
local Players = game:GetService("Players");
local LocalPlayer = Players.LocalPlayer;

local function UpdateCharacterParts(Player, Character) -- Get all character parts
    if Module.CharacterParts[Player] then return Module.CharacterParts[Player] end -- If we already have the character parts, return them

    local Parts = {} -- Create table to store parts in
    
    for _, Part in ipairs(Character:GetDescendants()) do -- Loop through all character parts
        if not Part:IsA("BasePart") then continue end -- If part is not a BasePart, continue

        table.insert(Parts, Part); -- Insert part into table
    end

    Module.CharacterParts[Player] = Parts; -- Set character parts to table
end

local function PlayerHandler(Player)
    Player.CharacterAdded:Connect(function(newCharacter) -- Connect to CharacterAdded event
        local Humanoid = newCharacter:WaitForChild("Humanoid", 5); -- Wait for humanoid
        local DiedSignal = nil; -- Create died signal variable to store connection

        DiedSignal = Humanoid.Died:Connect(function() -- Connect to Died event of humanoid
            Module.CharacterParts[Player] = nil; -- Set character parts to nil

            DiedSignal:Disconnect(); -- Disconnect from Died event
            DiedSignal = nil; -- Set died signal to nil
        end)

        UpdateCharacterParts(Player, newCharacter); -- Update character parts
    end)

    local Character = Player.Character; -- Get player character

    if Character then
        UpdateCharacterParts(Player, Character); -- Update character parts
    end
end

for _, Player in ipairs(Players:GetChildren()) do
    if Player == LocalPlayer then continue end -- If player is local player, continue

    PlayerHandler(Player); -- Call player handler
end

Players.PlayerAdded:Connect(PlayerHandler); -- Connect player handler to PlayerAdded event

Players.PlayerRemoving:Connect(function(Player)
    Module.CharacterParts[Player] = nil; -- Set character parts to nil
end)

return Module
