local orignalClosures = {}

local originalHookFunction = clonefunction(hookfunction)

getgenv().hookfunction = newcclosure(function(func1, func2)
  local originalClosure = originalHookFunction(func1, func2)

  if orignalClosures[func1] == nil then
    orignalClosures[func1] = originalClosure
  end

  return originalClosure
end)

getgenv().restorefunction = newcclosure(function(func1)
  if orignalClosures[func1] ~= nil then
    originalHookFunction(func1, orignalClosures[func1])
    orignalClosures[func1] = nil
  end
end)

getgenv().isfunctionhooked = newcclosure(function(func1)
  return orignalClosures[func1] ~= nil
end)		

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

local RunService = game:GetService("RunService")

getgenv().getrenderproperty = newcclosure(function(obj, prop)
  if not isrenderobj(obj) then
    return error(`#1 Expected Drawing object got {typeof(obj)}`)
  end

  assert(type(prop) == "string", `#2 Expected string got {typeof(prop)}`)

  return obj[prop]
end)

getgenv().setrenderproperty = newcclosure(function(obj, prop, newValue)
  if not isrenderobj(obj) then
    return error(`#1 Expected Drawing object got {typeof(obj)}`)
  end

  assert(type(prop) == "string", `#2 Expected string got {typeof(prop)}`)

  obj[prop] = newValue
end)


getgenv()["fireclickdetector"] = newcclosure(function(Target)
  assert(typeof(Target) == "Instance", "invalid argument #1 to 'fireclickdetector' (Instance expected, got " .. type(Target) .. ") ", 2)
  local ClickDetector = Target:FindFirstChild("ClickDetector") or Target
  local PreviousParent = ClickDetector["Parent"]

  local NewPart = Instance.new("Part", getrenv()["workspace"])
  do
    NewPart["Transparency"] = 1
    NewPart["Size"] = Vector3.new(30, 30, 30)
    NewPart["Anchored"] = true
    NewPart["CanCollide"] = false
    getrenv()["task"].delay(15, function()
      if NewPart:IsDescendantOf(getrenv()["game"]) then
        NewPart:Destroy()
      end
    end)
    ClickDetector["Parent"] = NewPart
    ClickDetector["MaxActivationDistance"] = math.huge
  end

  local VirtualUser = getrenv()["game"]:FindService("VirtualUser") or getrenv()["game"]:GetService("VirtualUser")

  local HeartbeatConnection = RunService["Heartbeat"]:Connect(function()
    local CurrentCamera = getrenv()["workspace"]["CurrentCamera"] or getrenv()["workspace"]["Camera"]
    NewPart["CFrame"] = CurrentCamera["CFrame"] * CFrame.new(0, 0, -20) * CFrame.new(CurrentCamera["CFrame"]["LookVector"]['X'], CurrentCamera["CFrame"]["LookVector"]['Y'], CurrentCamera["CFrame"]["LookVector"]['Z'])
    VirtualUser:ClickButton1(Vector2.new(20, 20), CurrentCamera["CFrame"])
  end)

  ClickDetector["MouseClick"]:Once(function()
    HeartbeatConnection:Disconnect()
    ClickDetector["Parent"] = PreviousParent
    NewPart:Destroy()
  end)
end)

getgenv().firetouchinterest = newcclosure(function(target, touch_with, on)
  if on == 0 then return end

  if target.ClassName == "TouchTransmitter" then
    local function get()
      local class_names = { "BasePart", "Part", "MeshPart" }
      for _, v in pairs(class_names) do
        if target:FindFirstAncestorOfClass(v) then
          return target:FindFirstAncestorOfClass(v)
        end
      end
    end
    target = get()
  end

  local old_target_pos = target.CFrame
  local old_target_cc = target.CanCollide

  target.CanCollide = false
  target.CFrame = touch_with.CFrame
  task.wait()
  target.CFrame = old_target_pos
  target.CanCollide = old_target_cc
end)

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

_G = {
    _VERSION = "Lua 5.1"
}
load = loadstring
getgenv().base64 = load(request({
    Url = "https://raw.githubusercontent.com/iskolbin/lbase64/refs/heads/master/base64.lua"
}).Body)()

-- https://github.com/xeonise/medal2
function medaldecom(script)
    httpresponse = request({
        Url = "http://127.0.0.1:9002",
        Body = base64.encode(getscriptbytecode(script)),  -- The base64 encoded bytecode
        Method = "POST",
        Headers = {
            ["Content-Type"] = "text/plain"
        },
    })
    return httpresponse.Body
end

getgenv().decompile = medaldecom

-- https://github.com/luau/UniversalSynSaveInstance
local Params = {
    RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
    SSI = "saveinstance",
}
local synSI = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()

getgenv().synsaveinstance = synSI
getgenv().saveinstance = synSI

local Fonts = {
	[0] = Enum.Font.Arial,
	[1] = Enum.Font.BuilderSans,
	[2] = Enum.Font.Gotham,
	[3] = Enum.Font.RobotoMono
}

local function Create(Class, Properties)
    local Object = Instance_new(Class);

    for i, v in next, Properties do
        Object[i] = ReverseGet(v) or v
    end

    return Object
end

local UI = Create("ScreenGui", {
    Parent = gethui(),
    Name = "Drawing"
})

local Drawing = {
	Fonts = {
	    UI = 0,
	    System = 1,
	    Plex = 2,
	    Monospace = 3,
    },
	new = function(Type)
        local Object = Create("Frame", {
            Visible = true,
            Size = UDim2_fromOffset(0, 0),
            BackgroundColor3 = Color3.new(0, 0, 0),
            BackgroundTransparency = 1,
            BorderSizePixel = 0,
            ZIndex = 1,
            Parent = UI
        });

        local self = {
            Visible = Object.Visible,
            Color = Object.BackgroundColor3,
            Transparency = 1,
            ZIndex = Object.ZIndex,
            Remove = function() Object:Destroy() end
        }

        self.Destroy = self.Remove

        local function Construct(Update, Defaults, Default, Readonly)
            Readonly = Readonly or {}
            local function inlined()
                if not Default then
                    Object.Visible = self.Visible
                    Object.BackgroundColor3 = self.Color
                    Object.BackgroundTransparency = 1 - self.Transparency
                    Object.ZIndex = clamp(self.ZIndex, -B, B)
                end

                Update()
            end

            for i, v in next, Defaults do
                self[i] = v
            end

            local proxy = newproxy(true)
            local mt = getmetatable(proxy)

            mt.__index = function(_, b)
                return self[b]
            end
            mt.__newindex = function(_, Key, Value)
                if tfind(Readonly, Key) then
                    return;
                end
                self[Key] = Value
                inlined()
            end
            mt.__metatable = "This metatable is protected."

            tinsert(DrawingCache, {proxy=proxy, instance = Object})

            return proxy
        end

        --* Line

		if Type == 'Line' then
			return Construct(function()
                local from, to = self.From, self.To
                local dX, dY = to.X - from.X, to.Y - from.Y

                Object.Size = UDim2_fromOffset(sqrt(dX ^ 2 + dY ^ 2), self.Thickness)
                Object.Position = UDim2_fromOffset(from.X, from.Y)
                Object.Rotation = deg(atan2(dY, dX))
            end, {
                Thickness = 1,
                From = Vector2.zero,
                To = Vector2.zero
            })
		elseif Type == 'Square' then
			local Stroke = Create("UIStroke", {
                Parent = Object,
                Color = self.Color,
                Enabled = true,
                Thickness = 1
            })

			return Construct(function()
				Object.Size = UDim2.new(0, self.Size.X, 0, self.Size.Y)
				Object.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
    
				Stroke.Enabled = self.Filled
				Stroke.Color = self.Color
                Stroke.Thickness = self.Thickness
			end, {
                Size = Vector2.zero,
                Position = Vector2.zero,

                Filled = false,
                Thickness = 1,
                Transparency = 0
            })
		elseif Type == 'Circle' then
			local Stroke = Create("UIStroke", {
                Parent = Object,
                Color = self.Color,
                Enabled = true
            })
			Create("UICorner", {
                Parent = Object,
                CornerRadius = UDim.new(1, 0)
            })

			return Construct(function()
					Object.Size = UDim2.fromScale(self.Radius, self.Radius)
					Object.Position = UDim2.fromScale(self.Position.X, self.Position.Y)

					Stroke.Enabled = not self.Filled
    
					Stroke.Color = self.Color
                    Stroke.Thickness = self.Thickness
			end, {
                Thickness = 1,
                NumSides = 0,
                Radius = 1,

                Filled = false,

                Position = Vector2.zero
            })
		elseif Type == 'Text' then
            Object:Destroy()
			Object = Create("TextLabel", {
                Parent = UI,
                Visible = self.Visible,
                Size = UDim2.fromOffset(0, 0),
                BackgroundColor3 = self.Color,
                BackgroundTransparency = 1 - self.Transparency,
                BorderSizePixel = 0,
                TextStrokeColor3 = self.Color,
                TextStrokeTransparency = 1,
                TextSize = self.Size,
                TextWrapped = false
            })

			return Construct(function()
					Object.Size = UDim2.fromOffset(self.Size * 3, self.Size / 2)
					Object.Position = UDim2.fromOffset(self.Position.X, self.Position.Y)
					Object.Text = self.Text

					Object.Font = Fonts[self.Font]
					Object.TextColor3 = self.Color
					Object.BackgroundTransparency = 1 - self.Transparency

					if self.Center then
						Object.TextXAlignment = Enum.TextXAlignment.Center
						Object.TextYAlignment = Enum.TextYAlignment.Center
					else
						Object.TextXAlignment = Enum.TextXAlignment.Left
						Object.TextYAlignment = Enum.TextYAlignment.Top
					end

					Object.TextStrokeTransparency = self.Outline and 0 or 1
					Object.TextStrokeColor3 = self.OutlineColor
                    self.TextBounds = Object.TextBounds
			end, {
                Text = '',
                Size = 0,
                Center = false,
                Outline = false,
                OutlineColor = self.Color,
                Position = Vector2.zero,
                Font = 3
            }, true, {"TextBounds"})
		end
end}
getgenv().isrenderobj = isrenderobj(function(a)
    for _, object in next, DrawingCache do
		if object.proxy == a then
			return true
		end
	end
    return false
end)

getgenv().cleardrawcache = cleardrawcache(function(...)
    for _, Object in next, DrawingCache do
        Object.instance:Destroy()
    end
end)
getgenv().getrenderproperty = getrenderproperty(function(a, b)
    assert(isrenderobj(a), "Invalid argument #1 to 'getrenderproperty', render object expected, got " .. typeof(a))
    return a[b]
end)

getgenv().setrenderproperty = setrenderproperty(function(a, b, c)
    assert(isrenderobj(a), "Invalid argument #1 to 'setrenderproperty', render object expected, got " .. typeof(a))

    a[b] = c
end)

getgenv().Drawing = Drawing
