local originalInstanceList = clonefunction(getinstancelist)

getgenv().getinstancelist = newcclosure(function()
  local tbl = originalInstanceList()
  local instances = {}
  for _, obj in pairs(tbl) do
    if typeof(obj) == "Instance" then
      table.insert(instances, obj)
    end
  end

  return instances
end)
--[===[
-- ADONIS ANTI CHEAT BYPASS
pcall(function()
local already_ran_adonis_bypass = false
local Players = cloneref(game:GetService("Players"))
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui") -- Infinite Yield until found

local function runAdonisBypass()
  if not getgenv().ADONIS_ANTI_CHEAT_BYPASS_Velocity then
    getgenv().ADONIS_ANTI_CHEAT_BYPASS_Velocity = true
    if not getgenv().ADONIS_DEBUG_INFO_BYPASS then
      getgenv().ADONIS_DEBUG_INFO_BYPASS = true
      local oldRBX_DebugInfo
      oldRBX_DebugInfo = hookfunction(getrenv().debug.info, newcclosure(function(...)
        local callingScript = getcallingscript()

        if callingScript then
          if tostring(callingScript) == "Client" and callingScript.Parent == nil then
            task.wait(9e9)
          end
        end

        return oldRBX_DebugInfo(...)
      end))
    end

    for I, V in pairs(getgc(true)) do
      if type(V) ~= "table" then continue end

      if rawget(V, "Name") and rawget(V, "Running") and rawget(V, "Function") then
        if V.Name == "AntiCoreGui" then
          local oldCoreGuiFunc
          oldCoreGuiFunc = hookfunction(V.Function, function(...)
            return nil
          end)
        end
      end
    end

    for I, V in pairs(getgc(true)) do
      if type(V) ~= "table" then continue end

      if rawget(V, "indexInstance") and rawget(V, "newindexInstance") then
        if type(V.newindexInstance) == "table" then
          for _I, _V in pairs(V) do
            local badBoyFunc = V[_I][2]
            if type(badBoyFunc) == "function" then
              hookfunction(badBoyFunc, function()
                return false
              end)
            end
          end
        end
      end
    end
  end
end

local function findAdonisMenu()
  if already_ran_adonis_bypass then return end
  already_ran_adonis_bypass = true
  for _, V in ipairs(PlayerGui:GetChildren()) do
    if not V:IsA("ScreenGui") then continue end
    
    local Frame = V:FindFirstChild("Frame")
    local Entry = V:FindFirstChild("Entry")
    
    local PlayerList = Frame and Frame:FindFirstChild("PlayerList")
    local ScrollingFrame = Frame and Frame:FindFirstChild("ScrollingFrame")
    local TopBar = Frame and Frame:FindFirstChild("TopBar")
    local TextBox = Frame and Frame:FindFirstChild("TextBox")
    
    if Frame and Entry and PlayerList and ScrollingFrame and TopBar and TextBox then
      runAdonisBypass()
      warn("Adonis bypassed and clanked")
      return true
    end
  end

  for _, Instance in ipairs(getnilinstances()) do
    if Instance:IsA("Folder") then
      if Instance:FindFirstChild("Core") and Instance:FindFirstChild("Shared") and Instance:FindFirstChild("Dependencies") then
        runAdonisBypass()
        warn("Adonis bypassed and clanked 2")
        return true
      end
    end
  end

  return false
end

findAdonisMenu()

PlayerGui.ChildAdded:Connect(findAdonisMenu)
end)
--
]===]

getgenv().getscripts = newcclosure(function()
  local scripts = {}
  for _, obj in pairs(getinstancelist()) do
    if typeof(obj) == "Instance" then
      if obj:IsA("LocalScript") or obj:IsA("ModuleScript") then
        table.insert(scripts, obj)
      end
    end
  end
  return scripts
end)

getgenv().getrunningscripts = newcclosure(function()
  local tbl = {}

  for _, scriptObj in pairs(getinstancelist()) do
    if typeof(scriptObj) == "Instance" and scriptObj:IsA("LocalScript") then
      local hasEnv = pcall(getsenv, scriptObj)

      if hasEnv then
        table.insert(tbl, scriptObj)
      end
    end
  end

  return tbl
end)

getgenv().getloadedmodules = newcclosure(function(...)
  local tbl = {}

  for _, scriptObj in pairs(getinstancelist()) do
    pcall(function()
      if scriptObj:IsA("ModuleScript") then
        if ismoduleloaded(scriptObj) and not scriptObj.RobloxLocked then
          table.insert(tbl, scriptObj)
        end
      end
    end)
  end

  for _, scriptObj in pairs(game:GetDescendants()) do
    pcall(function()
      if scriptObj:IsA("ModuleScript") then
        if ismoduleloaded(scriptObj) and not scriptObj.RobloxLocked then
          table.insert(tbl, scriptObj)
        end
      end
    end)
  end

  return tbl
end)

getgenv().getmenv = newcclosure(function(mod)
  local mod_env = nil

  for I, V in pairs(getreg()) do
    if typeof(V) == "thread" then
      if gettenv(V).script == mod then
        mod_env = gettenv(V)
        break
      end
    end
  end

  return mod_env
end)

getgenv().setsimulationradius = newcclosure(function(val)
    assert(type(val) == "number", "#1 is meant to be a number")
    sethiddenproperty(game.Players.LocalPlayer, "MaxSimulationRadius", val)
    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", val)
end)

-- For Compatibility
getgenv().crypt.base64 = getgenv().base64
getgenv().checkclosure = isexecutorclosure
getgenv().isourclosure = isexecutorclosure
getgenv().replaceclosure = hookfunction
getgenv().dumpstring = getscriptbytecode
getgenv().getexecutorname = identifyexecutor
getgenv().getscriptfunction = getscriptclosure

getgenv().http = getgenv().http or {}
getgenv().http.request = request
getgenv().http_request = request
getgenv().get_thread_identity = getidentity
getgenv().get_thread_context = getidentity
getgenv().set_thread_identity = getidentity
getgenv().set_thread_context = getidentity

getgenv().issentinelclosure = isexecutorclosure
getgenv().is_synapse_function = isexecutorclosure
getgenv().is_protosmasher_closure = isexecutorclosure
getgenv().is_sirhurt_closure = isexecutorclosure
getgenv().istempleclosure = isexecutorclosure

getgenv().queueonteleport = queue_on_teleport

getgenv().debug.info = getrenv().debug.info
getfenv().debug.info = getrenv().debug.info

getfenv().require = getgenv().abc_require
getgenv().WebSocket = nil

getgenv().debug.traceback = getrenv().debug.trackback

--[===[
--getgenv().saveinstance = loadstring(httpget("https://raw.githubusercontent.com/botdevXD/UniversalSynSaveInstance/refs/heads/main/saveinstance.luau", true))()
--getgenv().Drawing = loadstring(httpget("https://raw.githubusercontent.com/botdevXD/GRUBHUB_TECH/main/DrawingLib.lua", true))()

-- CREDIT: lovrewe
local API: string = "http://api.plusgiant5.com"

local last_call = 0
local function call(konstantType: string, scriptPath: Script | ModuleScript | LocalScript): string
    local success: boolean, bytecode: string = pcall(getscriptbytecode, scriptPath)

    if (not success) then
        return `-- Failed to get script bytecode, error:\n\n--[[\n{bytecode}\n--]]`
    end

    local time_elapsed = os.clock() - last_call
    if time_elapsed <= .5 then
        task.wait(.5 - time_elapsed)
    end
    local httpResult = request({
        Url = API .. konstantType,
        Body = bytecode,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "text/plain"
        },
    })
    last_call = os.clock()
    
    if (httpResult.StatusCode ~= 200) then
        return `-- Error occured while requesting the API, error:\n\n--[[\n{httpResult.Body}\n--]]`
    else
        return httpResult.Body
    end
end

local function decompile(scriptPath: Script | ModuleScript | LocalScript): string
    return call("/konstant/decompile", scriptPath)
end

local function disassemble(scriptPath: Script | ModuleScript | LocalScript): string
    return call("/konstant/disassemble", scriptPath)
end

getgenv().decompile = decompile
getgenv().disassemble = disassemble

local synSI = loadstring(game:HttpGet("https://raw.githubusercontent.com/luau/SynSaveInstance/main/saveinstance.luau", true), "saveinstance")()

getgenv().synsaveinstance = synSI
getgenv().saveinstance = synSI

-- Temporary drawlib fix
-- CREDITS: Ballistic Team
local Drawings = {}
local drawings = {}
local camera = game.Workspace.CurrentCamera
local drawingUI = Instance.new("ScreenGui")
local coreGui = game:GetService("CoreGui")
drawingUI.Name = "Drawing"
drawingUI.IgnoreGuiInset = true
drawingUI.DisplayOrder = 0x7fffffff
drawingUI.Parent = coreGui

local drawingIndex = 0
local uiStrokes = table.create(0)
local baseDrawingObj = setmetatable({
	Visible = true,
	ZIndex = 0,
	Transparency = 1,
	Color = Color3.new(),
	Remove = function(self)
		setmetatable(self, nil)
	end
}, {
	__add = function(t1, t2)
		local result = table.clone(t1)

		for index, value in t2 do
			result[index] = value
		end
		return result
	end
})
local drawingFontsEnum = {
	[0] = Font.fromEnum(Enum.Font.Roboto),
	[1] = Font.fromEnum(Enum.Font.Legacy),
	[2] = Font.fromEnum(Enum.Font.SourceSans),
	[3] = Font.fromEnum(Enum.Font.RobotoMono),
}
-- function
local function getFontFromIndex(fontIndex: number): Font
	return drawingFontsEnum[fontIndex]
end

local function convertTransparency(transparency: number): number
	return math.clamp(1 - transparency, 0, 1)
end
-- main
local DrawingLib = {}
DrawingLib.Fonts = {
	["UI"] = 0,
	["System"] = 1,
	["Flex"] = 2,
	["Monospace"] = 3
}

function DrawingLib.new(drawingType)
	drawingIndex += 1
if drawingType == "Line" then
    local lineObj = {
        From = Vector2.zero,
        To = Vector2.zero,
        Thickness = 1
    }

    for key, value in pairs(baseDrawingObj) do
        lineObj[key] = value
    end

    local lineFrame = Instance.new("Frame")
    lineFrame.Name = drawingIndex
    lineFrame.AnchorPoint = Vector2.one * 0.5
    lineFrame.BorderSizePixel = 0

    lineFrame.BackgroundColor3 = lineObj.Color
    lineFrame.Visible = lineObj.Visible
    lineFrame.ZIndex = lineObj.ZIndex
    lineFrame.BackgroundTransparency = convertTransparency(lineObj.Transparency)
    lineFrame.Size = UDim2.new()

    lineFrame.Parent = drawingUI
    local bs = table.create(0) -- Cache table
    table.insert(drawings, bs)

    local function updateLine()
        local direction = lineObj.To - lineObj.From
        local center = (lineObj.To + lineObj.From) / 2
        local distance = direction.Magnitude
        local theta = math.deg(math.atan2(direction.Y, direction.X))

        lineFrame.Position = UDim2.fromOffset(center.X, center.Y)
        lineFrame.Rotation = theta
        lineFrame.Size = UDim2.fromOffset(distance, lineObj.Thickness)
    end

    return setmetatable(bs, {
        __newindex = function(_, index, value)
            if lineObj[index] == nil then return end

            lineObj[index] = value
            if index == "From" or index == "To" or index == "Thickness" then
                updateLine()
            elseif index == "Visible" then
                lineFrame.Visible = value
            elseif index == "ZIndex" then
                lineFrame.ZIndex = value
            elseif index == "Transparency" then
                lineFrame.BackgroundTransparency = convertTransparency(value)
            elseif index == "Color" then
                lineFrame.BackgroundColor3 = value
            end
        end,
        __index = function(self, index)
            if index == "Remove" or index == "Destroy" then
                return function()
                    lineFrame:Destroy()
                    lineObj.Remove(self)
                    for k in pairs(bs) do
                        bs[k] = nil
                    end
                end
            end
            return lineObj[index]
        end
    })
	elseif drawingType == "Text" then
    local textObj = {
        Text = "",
        Font = DrawingLib.Fonts.UI,
        Size = 0,
        Position = Vector2.zero,
        Center = false,
        Outline = false,
        OutlineColor = Color3.new()
    }

    for key, value in pairs(baseDrawingObj) do
        textObj[key] = value
    end

    local textLabel = Instance.new("TextLabel")
    local uiStroke = Instance.new("UIStroke")
    
    textLabel.Name = drawingIndex
    textLabel.AnchorPoint = Vector2.one * 0.5
    textLabel.BorderSizePixel = 0
    textLabel.BackgroundTransparency = 1

    textLabel.Visible = textObj.Visible
    textLabel.TextColor3 = textObj.Color
    textLabel.TextTransparency = convertTransparency(textObj.Transparency)
    textLabel.ZIndex = textObj.ZIndex
    textLabel.FontFace = getFontFromIndex(textObj.Font)
    textLabel.TextSize = textObj.Size

    -- Function to update textLabel size and position
    local function updateTextLabel()
        local textBounds = textLabel.TextBounds
        local offset = textBounds / 2
        textLabel.Size = UDim2.fromOffset(textBounds.X, textBounds.Y)
        textLabel.Position = UDim2.fromOffset(textObj.Position.X + (textObj.Center and 0 or offset.X), textObj.Position.Y + offset.Y)
    end

    -- Connect to TextBounds property change
    textLabel:GetPropertyChangedSignal("TextBounds"):Connect(updateTextLabel)

    uiStroke.Thickness = 1
    uiStroke.Enabled = textObj.Outline
    uiStroke.Color = textObj.OutlineColor

    textLabel.Parent = drawingUI
    uiStroke.Parent = textLabel
    
    local bs = table.create(0) -- Cache table
    table.insert(drawings, bs)

    return setmetatable(bs, {
        __newindex = function(_, index, value)
            if textObj[index] == nil then return end

            textObj[index] = value
            if index == "Text" then
                textLabel.Text = value
            elseif index == "Font" then
                textLabel.FontFace = getFontFromIndex(math.clamp(value, 0, 3))
            elseif index == "Size" then
                textLabel.TextSize = value
            elseif index == "Position" then
                updateTextLabel()
            elseif index == "Center" then
                local position = value and (camera.ViewportSize / 2) or textObj.Position
                textLabel.Position = UDim2.fromOffset(position.X, position.Y)
            elseif index == "Outline" then
                uiStroke.Enabled = value
            elseif index == "OutlineColor" then
                uiStroke.Color = value
            elseif index == "Visible" then
                textLabel.Visible = value
            elseif index == "ZIndex" then
                textLabel.ZIndex = value
            elseif index == "Transparency" then
                local transparency = convertTransparency(value)
                textLabel.TextTransparency = transparency
                uiStroke.Transparency = transparency
            elseif index == "Color" then
                textLabel.TextColor3 = value
            end
        end,
        __index = function(self, index)
            if index == "Remove" or index == "Destroy" then
                return function()
                    textLabel:Destroy()
                    textObj.Remove(self)
                    for k in pairs(bs) do
                        bs[k] = nil
                    end
                end
            elseif index == "TextBounds" then
                return textLabel.TextBounds
            end
            return textObj[index]
        end
    })
elseif drawingType == "Circle" then
    local circleObj = {
        Radius = 150,
        Position = Vector2.zero,
        Thickness = 0.7,
        Filled = false
    }

    for key, value in pairs(baseDrawingObj) do
        circleObj[key] = value
    end

    local circleFrame = Instance.new("Frame")
    local uiCorner = Instance.new("UICorner")
    local uiStroke = Instance.new("UIStroke")
    
    circleFrame.Name = drawingIndex
    circleFrame.AnchorPoint = Vector2.one * 0.5
    circleFrame.BorderSizePixel = 0
    circleFrame.BackgroundTransparency = circleObj.Filled and convertTransparency(circleObj.Transparency) or 1
    circleFrame.BackgroundColor3 = circleObj.Color
    circleFrame.Visible = circleObj.Visible
    circleFrame.ZIndex = circleObj.ZIndex
    circleFrame.Size = UDim2.fromOffset(circleObj.Radius * 2, circleObj.Radius * 2)

    uiCorner.CornerRadius = UDim.new(1, 0)
    uiStroke.Thickness = circleObj.Thickness
    uiStroke.Enabled = not circleObj.Filled
    uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    circleFrame.Parent = drawingUI
    uiCorner.Parent = circleFrame
    uiStroke.Parent = circleFrame

    local bs = table.create(0)
    table.insert(drawings, bs)

    return setmetatable(bs, {
        __newindex = function(_, index, value)
            if circleObj[index] == nil then return end

            circleObj[index] = value
            if index == "Radius" then
                circleFrame.Size = UDim2.fromOffset(value * 2, value * 2)
            elseif index == "Position" then
                circleFrame.Position = UDim2.fromOffset(value.X, value.Y)
            elseif index == "Thickness" then
                uiStroke.Thickness = math.clamp(value, 0.6, math.huge)
            elseif index == "Filled" then
                circleFrame.BackgroundTransparency = value and convertTransparency(circleObj.Transparency) or 1
                uiStroke.Enabled = not value
            elseif index == "Visible" then
                circleFrame.Visible = value
            elseif index == "ZIndex" then
                circleFrame.ZIndex = value
            elseif index == "Transparency" then
                local transparency = convertTransparency(value)
                circleFrame.BackgroundTransparency = circleObj.Filled and transparency or 1
                uiStroke.Transparency = transparency
            elseif index == "Color" then
                circleFrame.BackgroundColor3 = value
                uiStroke.Color = value
            end
        end,
        __index = function(self, index)
            if index == "Remove" or index == "Destroy" then
                return function()
                    circleFrame:Destroy()
                    circleObj.Remove(self)
                    for k in pairs(bs) do
                        bs[k] = nil
                    end
                end
            end
            return circleObj[index]
        end
    })

elseif drawingType == "Square" then
    local squareObj = {
        Size = Vector2.zero,
        Position = Vector2.zero,
        Thickness = 0.7,
        Filled = false
    }

    for key, value in pairs(baseDrawingObj) do
        squareObj[key] = value
    end

    local squareFrame = Instance.new("Frame")
    local uiStroke = Instance.new("UIStroke")

    squareFrame.Name = drawingIndex
    squareFrame.BorderSizePixel = 0
    squareFrame.BackgroundTransparency = squareObj.Filled and convertTransparency(squareObj.Transparency) or 1
    squareFrame.BackgroundColor3 = squareObj.Color
    squareFrame.Visible = squareObj.Visible
    squareFrame.ZIndex = squareObj.ZIndex
    squareFrame.Size = UDim2.fromOffset(squareObj.Size.X, squareObj.Size.Y)

    uiStroke.Thickness = squareObj.Thickness
    uiStroke.Enabled = not squareObj.Filled
    uiStroke.LineJoinMode = Enum.LineJoinMode.Miter

    squareFrame.Parent = drawingUI
    uiStroke.Parent = squareFrame

    local bs = table.create(0)
    table.insert(drawings, bs)

    return setmetatable(bs, {
        __newindex = function(_, index, value)
            if squareObj[index] == nil then return end

            squareObj[index] = value
            if index == "Size" then
                squareFrame.Size = UDim2.fromOffset(value.X, value.Y)
            elseif index == "Position" then
                squareFrame.Position = UDim2.fromOffset(value.X, value.Y)
            elseif index == "Thickness" then
                uiStroke.Thickness = math.clamp(value, 0.6, math.huge)
            elseif index == "Filled" then
                squareFrame.BackgroundTransparency = value and convertTransparency(squareObj.Transparency) or 1
                uiStroke.Enabled = not value
            elseif index == "Visible" then
                squareFrame.Visible = value
            elseif index == "ZIndex" then
                squareFrame.ZIndex = value
            elseif index == "Transparency" then
                local transparency = convertTransparency(value)
                squareFrame.BackgroundTransparency = squareObj.Filled and transparency or 1
                uiStroke.Transparency = transparency
            elseif index == "Color" then
                squareFrame.BackgroundColor3 = value
                uiStroke.Color = value
            end
        end,
        __index = function(self, index)
            if index == "Remove" or index == "Destroy" then
                return function()
                    squareFrame:Destroy()
                    squareObj.Remove(self)
                    for k in pairs(bs) do
                        bs[k] = nil
                    end
                end
            end
            return squareObj[index]
        end
    })
	elseif drawingType == "Image" then
    local imageObj = {
        Data = "",
        DataURL = "rbxassetid://0",
        Size = Vector2.zero,
        Position = Vector2.zero
    }

    for key, value in pairs(baseDrawingObj) do
        imageObj[key] = value
    end

    local imageFrame = Instance.new("ImageLabel")
    imageFrame.Name = drawingIndex
    imageFrame.BorderSizePixel = 0
    imageFrame.ScaleType = Enum.ScaleType.Stretch
    imageFrame.BackgroundTransparency = 1
    imageFrame.Visible = imageObj.Visible
    imageFrame.ZIndex = imageObj.ZIndex
    imageFrame.ImageTransparency = convertTransparency(imageObj.Transparency)
    imageFrame.ImageColor3 = imageObj.Color
    imageFrame.Image = imageObj.DataURL
    imageFrame.Size = UDim2.fromOffset(imageObj.Size.X, imageObj.Size.Y)
    imageFrame.Position = UDim2.fromOffset(imageObj.Position.X, imageObj.Position.Y)

    imageFrame.Parent = drawingUI

    local bs = table.create(0)
    table.insert(drawings, bs)

    return setmetatable(bs, {
        __newindex = function(_, index, value)
            if imageObj[index] == nil then return end

            imageObj[index] = value
            if index == "Data" then
            --We can use it with getcustommasset
            elseif index == "DataURL" then
                imageFrame.Image = value
            elseif index == "Size" then
                imageFrame.Size = UDim2.fromOffset(value.X, value.Y)
            elseif index == "Position" then
                imageFrame.Position = UDim2.fromOffset(value.X, value.Y)
            elseif index == "Visible" then
                imageFrame.Visible = value
            elseif index == "ZIndex" then
                imageFrame.ZIndex = value
            elseif index == "Transparency" then
                imageFrame.ImageTransparency = convertTransparency(value)
            elseif index == "Color" then
                imageFrame.ImageColor3 = value
            end
        end,
        __index = function(self, index)
            if index == "Remove" or index == "Destroy" then
                return function()
                    imageFrame:Destroy()
                    imageObj.Remove(self)
                    for k in pairs(bs) do
                        bs[k] = nil
                    end
                end
            elseif index == "Data" then
                return nil --We can use it with getcustommasset
            end
            return imageObj[index]
        end
    })
	elseif drawingType == "Quad" then
    local quadObj = {
        PointA = Vector2.zero,
        PointB = Vector2.zero,
        PointC = Vector2.zero,
        PointD = Vector2.zero,
        Thickness = 1,
        Filled = false
    }

    for key, value in pairs(baseDrawingObj) do
        quadObj[key] = value
    end

    local _linePoints = {
        A = DrawingLib.new("Line"),
        B = DrawingLib.new("Line"),
        C = DrawingLib.new("Line"),
        D = DrawingLib.new("Line")
    }

    local bs = {}
    table.insert(drawings, bs)

    local function updateLines()
        _linePoints.A.From = quadObj.PointA
        _linePoints.A.To = quadObj.PointB
        _linePoints.B.From = quadObj.PointB
        _linePoints.B.To = quadObj.PointC
        _linePoints.C.From = quadObj.PointC
        _linePoints.C.To = quadObj.PointD
        _linePoints.D.From = quadObj.PointD
        _linePoints.D.To = quadObj.PointA
    end

    updateLines()

    return setmetatable(bs, {
        __newindex = function(_, index, value)
            if quadObj[index] == nil then return end

            quadObj[index] = value
            if index == "PointA" or index == "PointB" or index == "PointC" or index == "PointD" then
                updateLines()
            elseif index == "Thickness" or index == "Visible" or index == "Color" or index == "ZIndex" then
                for _, linePoint in pairs(_linePoints) do
                    linePoint[index] = value
                end
            elseif index == "Filled" then
			--I didnt make that
            end
        end,
        __index = function(self, index)
            if index == "Remove" or index == "Destroy" then
                return function()
                    for _, linePoint in pairs(_linePoints) do
                        linePoint:Destroy()
                    end
                    quadObj.Remove(self)
                    for k in pairs(bs) do
                        bs[k] = nil
                    end
                end
            end
            return quadObj[index]
        end
    })

elseif drawingType == "Triangle" then
    local triangleObj = {
        PointA = Vector2.zero,
        PointB = Vector2.zero,
        PointC = Vector2.zero,
        Thickness = 1,
        Filled = false
    }

    for key, value in pairs(baseDrawingObj) do
        triangleObj[key] = value
    end

    local _linePoints = {
        A = DrawingLib.new("Line"),
        B = DrawingLib.new("Line"),
        C = DrawingLib.new("Line")
    }

    local bs = {}
    table.insert(drawings, bs)

    local function updateLines()
        _linePoints.A.From = triangleObj.PointA
        _linePoints.A.To = triangleObj.PointB
        _linePoints.B.From = triangleObj.PointB
        _linePoints.B.To = triangleObj.PointC
        _linePoints.C.From = triangleObj.PointC
        _linePoints.C.To = triangleObj.PointA
    end

    updateLines()

    return setmetatable(bs, {
        __newindex = function(_, index, value)
            if triangleObj[index] == nil then return end

            triangleObj[index] = value
            if index == "PointA" or index == "PointB" or index == "PointC" then
                updateLines()
            elseif index == "Thickness" or index == "Visible" or index == "Color" or index == "ZIndex" then
                for _, linePoint in pairs(_linePoints) do
                    linePoint[index] = value
                end
            elseif index == "Filled" then
                -- Placeholder for future functionality
            end
        end,
        __index = function(self, index)
            if index == "Remove" or index == "Destroy" then
                return function()
                    for _, linePoint in pairs(_linePoints) do
                        linePoint:Destroy()
                    end
                    triangleObj.Remove(self)
                    for k in pairs(bs) do
                        bs[k] = nil
                    end
                end
            end
            return triangleObj[index]
        end
    })
end
end

getgenv()["Drawing"] = DrawingLib
getgenv()["Drawing"]["Fonts"] = {
    ['UI'] = 0,
    ['System'] = 1,
    ['Plex'] = 2,
    ['Monospace'] = 3
}

getgenv()["cleardrawcache"] = newcclosure(function()
    for _, v in pairs(Drawings) do
        v:Remove()
    end
    table.clear(drawings)
end)

getgenv()["clear_draw_cache"] = cleardrawcache
getgenv()["ClearDrawCache"] = cleardrawcache

getgenv()["isrenderobj"] = newcclosure(function(Inst)
    for _, v in pairs(drawings) do
        if v == Inst and type(v) == "table" then
            return true
        end
    end
    return false
end)

getgenv()["is_render_obj"] = isrenderobj
getgenv()["IsRenderObj"] = isrenderobj

getgenv()["getrenderproperty"] = newcclosure(function(a, b)
    return a[b]
end)

getgenv()["get_render_property"] = getrenderproperty
getgenv()["GetRenderProperty"] = getrenderproperty

getgenv()["setrenderproperty"] = newcclosure(function(a, b, c)
    local success, err = pcall(function()
        a[b] = c
    end)
    if not success and err then warn(err) end
end)

getgenv()["set_render_property"] = getrenderproperty
getgenv()["SetRenderProperty"] = setrenderproperty

local NotiLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/botdevXD/GRUBHUB_TECH/main/NOTI_LIB.lua", true))()
NotiLib.new("info", "Velocity (Special Message)", "Thank you for using velocity <3")
]===]
