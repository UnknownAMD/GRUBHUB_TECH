local GUIService = game:GetService("GuiService")
local Players = game:GetService("Players")
local runService = game:GetService("RunService")

local Drawing = Drawing or require(script.Drawing)
local Camera = workspace.CurrentCamera
local Player = Players.LocalPlayer

shared.CG_ESP_CONNECTIONS = shared.CG_ESP_CONNECTIONS or {}
shared.CG_ESP_cachedText = shared.CG_ESP_cachedText or {}
shared.CG_ESP_cachedBoxes = shared.CG_ESP_cachedBoxes or {}
shared.CG_ESP_cachedHealthBars = shared.CG_ESP_cachedHealthBars or {}

for _, Connection in pairs(shared.CG_ESP_CONNECTIONS) do
	pcall(Connection.Disconnect, Connection)
end

table.clear(shared.CG_ESP_CONNECTIONS)

shared.CG_ESP_CONFIG = {
	BoxesEnabled = false,
	NametagsEnabled = false,
	TracersEnabled = false,
	ESP_COLOR = Color3.fromRGB(255, 255, 255)
}

local esp_Module = {}

function esp_Module.EnableAndDisableBoxes()
	shared.CG_ESP_CONFIG.BoxesEnabled = not shared.CG_ESP_CONFIG.BoxesEnabled
end

function esp_Module.EnableAndDisableNametags()
	shared.CG_ESP_CONFIG.NametagsEnabled = not shared.CG_ESP_CONFIG.NametagsEnabled
end

function esp_Module.EnableAndDisableTracers()
	shared.CG_ESP_CONFIG.TracersEnabled = not shared.CG_ESP_CONFIG.TracersEnabled
end

local function unloadPlayerESP(foundClient)
	local leavingClientESPText = shared.CG_ESP_cachedText[foundClient]
	local leavingClientESPBox = shared.CG_ESP_cachedBoxes[foundClient]
	local leavingClientESPHealthBar = shared.CG_ESP_cachedHealthBars[foundClient]
	
	pcall(function()
		if leavingClientESPText then
			leavingClientESPText.Remove()
		end

		if leavingClientESPBox then
			leavingClientESPBox.Remove()
		end

		if leavingClientESPHealthBar then
			leavingClientESPHealthBar.Remove()
		end
	end)

	shared.CG_ESP_cachedText[foundClient] = nil
	shared.CG_ESP_cachedBoxes[foundClient] = nil
	shared.CG_ESP_cachedHealthBars[foundClient] = nil
end

local function updatePlayerESP(espPlayer)
	local espCharacter = espPlayer.Character
	local box = shared.CG_ESP_cachedBoxes[espPlayer] or Drawing.new("Square")
	local HealthBar = shared.CG_ESP_cachedHealthBars[espPlayer] or Drawing.new("Square")
	local text = shared.CG_ESP_cachedText[espPlayer] or Drawing.new("Text")
	text.Size = 20
	text.Text = espPlayer.Name
	text.Color = Color3.fromRGB(255, 255, 255)
	text.Outline = true

	shared.CG_ESP_cachedText[espPlayer] = shared.CG_ESP_cachedText[espPlayer] or text
	shared.CG_ESP_cachedBoxes[espPlayer] = shared.CG_ESP_cachedBoxes[espPlayer] or box
	shared.CG_ESP_cachedHealthBars[espPlayer] = shared.CG_ESP_cachedHealthBars[espPlayer] or HealthBar
	
	if not espCharacter then
		box.Visible = false
		HealthBar.Visible = false
		text.Visible = false
		return
	end
	
	local rootPart = espCharacter.PrimaryPart
	local Inset = GUIService:GetGuiInset();
	local screenPoint = Camera:WorldToScreenPoint(rootPart.Position)
	local headPoint, IsVisible = Camera:WorldToScreenPoint(espCharacter.Head.Position)

	text.Visible = false
	text.Position = Vector2.new(headPoint.X, headPoint.Y)

	box.Color = Color3.fromRGB(255, 255, 255)
	box.Visible = IsVisible
	box.Size = Vector2.new((rootPart.Size.X * 1350) / screenPoint.Z, (rootPart.Size.Y * 2000) / screenPoint.Z);
	box.Position = Vector2.new(screenPoint.X - box.Size.X / 2, screenPoint.Y + Inset.Y - box.Size.Y / 2);

	HealthBar.Visible = IsVisible
	HealthBar.Filled = true
	HealthBar.Color = Color3.fromRGB(0, 214, 0)
	HealthBar.Size = Vector2.new(3, (rootPart.Size.Y * 2000) / screenPoint.Z)

	HealthBar.Position = Vector2.new((box.Position.X + (box.Size.X - box.Size.X)) - (HealthBar.Size.X * 2.5), box.Position.Y)
end

for _, foundClient in ipairs(Players:GetPlayers()) do
	unloadPlayerESP(foundClient)
end

table.insert(shared.CG_ESP_CONNECTIONS, runService.RenderStepped:Connect(function()
	for _, foundClient in ipairs(Players:GetPlayers()) do
		if not foundClient.Character then
			-- Remove their ESP
			continue
		end
		
		updatePlayerESP(foundClient)
	end
end))

table.insert(shared.CG_ESP_CONNECTIONS, Players.PlayerRemoving:Connect(unloadPlayerESP))

return esp_Module
