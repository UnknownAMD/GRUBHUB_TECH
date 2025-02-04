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

function Decompiler(script_instance)

    local bytecode = getscriptbytecode(script_instance)
    local encoded = crypt.base64.encode(bytecode)
    return request(
        {
            Url = "https://medal.hates.us/decompile",
            Method = "POST",
            Body = encoded
        }
    ).Body

end

getgenv().decompile = Decompiler

local Params = {
    RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
    SSI = "saveinstance",
}
local synSI = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()

getgenv().synsaveinstance = synSI
getgenv().saveinstance = synSI

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

--getgenv().saveinstance = loadstring(httpget("https://raw.githubusercontent.com/botdevXD/UniversalSynSaveInstance/refs/heads/main/saveinstance.luau", true))()
--getgenv().Drawing = loadstring(httpget("https://raw.githubusercontent.com/botdevXD/GRUBHUB_TECH/main/DrawingLib.lua", true))()
