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

local Settings = {
    IncludeNils = true -- If true, functions that's names cannot be obtained (Most likely empty functions) will also be included in the decompiled code.
}
local HTTPs = game:GetService('HttpService');
function encode(a)
    return HTTPs:JSONEncode(a)
end
function decode(a)
    return HTTPs:JSONDecode(a)
end
if not isfolder("SimpleDecompile") then
    makefolder("SimpleDecompile")
    writefile("SimpleDecompile/config.json", encode(Settings))
elseif isfolder("SimpleDecompile") and isfile("SimpleDecompile/config.json") then
    Settings = decode(readfile("SimpleDecompile/config.json"))
end
function startswith(str, thing)
    if str:sub(1, #thing) == thing then
        return true
    else
        return false
    end
end
function pKey(key)
    if startswith(tostring(key), "__") then
        return tostring(key)
    end
    if type(key) == "number" then
        return "[" .. tostring(key) .. "]"
    else
        return '["' .. tostring(key) .. '"]'
    end
end
function pKey1(key, val)
 if type(key) == "number" then
  if typeof(val):lower() == "boolean" then
   return "bool_" .. tostring(key)
  else
   return typeof(val):lower() .. "_" .. tostring(key)
  end
 elseif type(key) == 'string' then
  return val
 end
end
function isStrFunc(str)
 for i, v in getrenv() do
  if tostring(i) == str and type(v) == "function" then return true end
 end
 return false
end
function gcsenv(Scr)
    local funcs = {}
    for i, v in next, getgc(true) do
        if (type(v) == "function" and islclosure(v) and getfenv(v).script == Scr) then
            table.insert(funcs, v)
        end
    end
    return funcs
end

function GetMetaMethods(regularTable)
    local meta = getmetatable(regularTable)
    if not meta then
        return {}
    end
    setreadonly(meta, false)
    local mms = {}
    for i, v in meta do
        if startswith(tostring(i), "__") then
            table.insert(mms, {Name = i, Value = v})
        end
    end
    return mms
end
function GetFullName(instance)
    local p = instance
    local lo = {}
    while (p ~= game and p.Parent ~= nil) do
        table.insert(lo, p)
        p = p.Parent
    end
    local fullName
    if #lo == 0 then
        return "nil -- Instance parented to nil"
    end
    if lo[#lo].ClassName ~= "Workspace" then
        fullName = 'game:GetService("' .. lo[#lo].ClassName .. '")'
    else
        fullName = "workspace"
    end
    for i = #lo - 1, 1, -1 do
        fullName = fullName .. ':FindFirstChild("' .. lo[i].Name .. '")'
    end
    return fullName
end
function processTableDescendants(tbl, indent, tblname)
    indent = indent or 0
    tblname = tblname or "{}"
    local metacount = 1
    local result = ""
    local count = 1
    for key, value in pairs(tbl) do
        if type(value) == "table" and not startswith(tostring(key), "__") then
            result = result .. string.rep("  ", indent) .. pKey(key) .. " = {"
            if #value == 0 then
                result = result .. "}"
            else
                result = result .. "\n" .. processTableDescendants(value, indent + 1)
                result = result .. string.rep("  ", indent) .. "}\n"
            end
            if getrawmetatable(value) ~= nil then
                result =
                    result ..
                    string.rep("  ", indent) ..
                        "local meta" .. tostring(metacount) .. " = setmetatable(" .. tostring(tblname) .. ", {})\n"
                metacount = metacount + 1
                for _, v in GetMetaMethods(value) do
                    result =
                        result ..
                        string.rep("  ", indent) .. "meta" .. tostring(metacount) .. "." .. tostring(v.Name) .. " = "
                    if typeof(v.Value) == "table" then
                        result =
                            result ..
                            string.rep("  ", indent) ..
                                "{" ..
                                    processTableDescendants(v.Value, indent + 1) ..
                                        "\n" .. string.rep("  ", indent) .. "}"
                    elseif typeof(v.Value) == "function" then
                        result = result .. string.rep("  ", indent) .. "function() --[[ Function Source ]] end"
                    else
                        result = result .. string.rep("  ", indent) .. tostring(v.Value)
                    end
                    result = result .. ";\n"
                end
            end
        elseif type(value) == "function" and not startswith(tostring(key), "__") then
            result =
                result ..
                string.rep("  ", indent) ..
                    pKey(key) .. " = function() --[[Function Source]] end" .. string.rep("  ", indent + 1)
        elseif typeof(value):lower() == "vector3" and not startswith(tostring(key), "__") then
            result =
                result ..
                string.rep("  ", indent) ..
                    pKey(key) ..
                        " = Vector3.new(" ..
                            tostring(value.X) .. ", " .. tostring(value.Y) .. ", " .. tostring(value.Z) .. ");\n"
        elseif typeof(value):lower() == "vector2" and not startswith(tostring(key), "__") then
            result =
                result ..
                string.rep("  ", indent) ..
                    pKey(key) .. " = Vector2.new(" .. tostring(value.X) .. ", " .. tostring(value.Y) .. ");\n"
        elseif typeof(value):lower() == "udim" and not startswith(tostring(key), "__") then
            result =
                result ..
                string.rep("  ", indent) ..
                    pKey(key) .. " = UDim.new(" .. tostring(value.Scale) .. ", " .. tostring(value.Offset) .. ");\n"
        elseif typeof(value):lower() == "udim2" and not startswith(tostring(key), "__") then
            result =
                result ..
                string.rep("  ", indent) ..
                    pKey(key) ..
                        " = UDim2.new(" ..
                            tostring(value.X.Scale) ..
                                ", " ..
                                    tostring(value.X.Offset) ..
                                        ", " .. tostring(value.Y.Scale) .. ", " .. tostring(value.Y.Offset) .. ");\n"
        elseif typeof(value):lower() == "instance" and not startswith(tostring(key), "__") then
            result = result .. string.rep("  ", indent) .. pKey(key) .. " = " .. GetFullName(value) .. ";\n"
        elseif typeof(value) == "string" and not startswith(tostring(key), "__") then
            result = result .. string.rep("  ", indent) .. pKey(key) .. ' = "' .. tostring(value) .. '";\n'
        elseif typeof(value) == "number" and not startswith(tostring(key), "__") then
            result = result .. string.rep("  ", indent) .. pKey(key) .. " = " .. tostring(value) .. ";\n"
        elseif typeof(value) == "nil" and not startswith(tostring(key), "__") then -- nil value
            result = result .. string.rep("  ", indent) .. pKey(key) .. " = " .. tostring(value) .. ";\n"
        elseif typeof(value):lower() == "cframe" and not startswith(tostring(key), "__") then -- Enum/Other value
            result = result .. string.rep("  ", indent) .. pKey(key) .. " = CFrame.new(" .. tostring(value) .. ");\n"
        elseif typeof(value):lower() == "color3" and not startswith(tostring(key), "__") then
            result =
                result ..
                string.rep("  ", indent) ..
                    pKey(key) ..
                        " = Color3.fromRGB(" ..
                            tostring(value.R * 255) ..
                                ", " .. tostring(value.G * 255) .. ", " .. tostring(value.B * 255) .. ");\n"
        end
    end
    if #tbl == 0 then
        return result
    else
        return "\n" .. result
    end
end
function DecompileFunction(func, excludename, indent, customname)
    if not indent then
        indent = 1
    end
    local metatablecount = 1
    local inf, String = debug.getinfo(func), "function " .. tostring(debug.getinfo(func).name) .. "("

    if excludename then
        String = "function("
    end
    if customname then
        String = "function " .. customname .. "("
    end
    if tostring(inf.is_vararg) == "1" then
        String = String .. "...\n"
    else
        local ab={"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}
        if inf.numparams > 0 then
            local paramcount = inf.numparams
            for i = 1, paramcount do
                String = String .. ab[i]
                if i < paramcount then
                    String = String .. ", "
                end
            end
            if paramcount > #ab then
                String = String .. ", ..."
            end
        end
        String = String .. ")"
        StringHolder = String
        String = ""
        UString = ""
        for i, v in getupvalues(func) do
        if typeof(v):lower() == "vector2" then
            UString = UString .. ("\n%s = Vector2.new(%d, %d)"):format(pKey1(i, v), v.X, v.Y)
        elseif typeof(v):lower() == "vector3" then
            UString = UString .. ("\n%s = Vector3.new(%d, %d, %d)"):format(pKey1(i, v), v.X, v.Y, v.Z)
        elseif typeof(v):lower() == "udim" then
            UString = UString .. ("\n%s = UDim.new(%d, %d)"):format(pKey1(i, v), v.Scale, v.Offset)
        elseif typeof(v):lower() == "udim2" then
            UString =
                UString ..
                ("\n%s = UDim2.new(%d, %d, %d, %d)"):format(
                    pKey1(i, v),
                    v.X.Scale,
                    v.X.Offset,
                    v.Y.Scale,
                    v.Y.Offset
                )
        elseif typeof(v):lower() == "number" then
            if os.time() - v < 1 then
                UString = UString .. ("\n%s = %s --[[ Possibly os.time() ]]"):format(pKey1(i, v), tostring(v))
            elseif tick() - v < 1 then
                UString = UString .. ("\n%s = %s -- [[ Possibly tick() ]]"):format(pKey1(i, v), tostring(v))
            else
                -- Reasons not to add userid checks: False alarms (Really rare, But why would they it in a modulescript or a localscript.)
                UString = UString .. ("\n%s = %s"):format(pKey1(i, v), tostring(v))
            end
        elseif typeof(v):lower() == "instance" then
            UString = UString .. ("\n%s = %s"):format(v.Name:gsub(" ", "_"),GetFullName(v))
        elseif typeof(v):lower() == "color3" then
            UString = UString .. ("\n%s = Color3.fromRGB(%d, %d, %d"):format(pKey1(i, v), v.R * 255, v.G * 255, v.B * 255)
        elseif typeof(v):lower() == "string" then
            UString = UString .. ('\n%s = "%s"'):format(pKey1(i, v), v)
        elseif typeof(v):lower() == "boolean" then
            UString = UString .. ("\n%s = %s"):format(pKey1(i, v), tostring(v))
        elseif typeof(v):lower() == "cframe" then
            UString = UString .. ("\n%s = CFrame.new(%s)"):format(pKey1(i, v), tostring(v))
        end
     end
    end
    if #getupvalues(func) == 0 then
        String = StringHolder
    else
        String = UString .. "\n" .. StringHolder or ''
    end
    local consts = string.rep("  ", indent) .. "--[[ Detected roblox functions list"
    local Aconsts = ""
    local UnknownProtos = 0
    for i, v in getconstants(func) do
     if isStrFunc(v) then
      consts = consts .. "\n" .. string.rep("  ", indent) ..v.."()"
     else
      Aconsts = Aconsts .. "\n" .. string.rep("  ", indent) .. "local c_" .. tostring(i) .. " = '" .. tostring(v) .. "'"
     end
    end
    consts = consts .. "\n" .. string.rep("  ", indent) .. "]]\n"
    for i, v in getprotos(func) do
        if debug.getinfo(v).name == nil then
            UnknownProtos = UnknownProtos + 1
            String =
                String ..
                ("\n%slocal %s\n"):format(
                    string.rep("  ", indent),
                    DecompileFunction(v, false, indent + 1, "nil" .. tostring(UnknownProtos))
                )
        else
            String = String .. ("\n%slocal %s\n"):format(string.rep("  ", indent), DecompileFunction(v, false, indent + 1))
        end
    end
    return String .. "\n" .. consts .. Aconsts .. "\n" .. string.rep(" ", indent) .. "end"
end

function DecompileScript(Script)
    local Decompiled = "--[[ DECOMPILED WITH SIMPLEDECOMPILE ]]\n"
    if typeof(Script) == "Instance" and Script.ClassName == "ModuleScript" then
        local s, e =
            pcall(
            function()
                for i, v in require(Script) do
                    if type(v) == "table" then
                        if #v == 0 then
                            if type(i) == "number" then
                                Decompiled = Decompiled .. ("\nlocal table_%d = {}; --[[ EMPTY TABLE ]]\n"):format(pKey1(i, v))
                            else
                                Decompiled = Decompiled .. ("\nlocal %s = {}; --[[ EMPTY TABLE ]]\n"):format(i)
                            end
                        else
                            if type(i) == "number" then
                                Decompiled =
                                    Decompiled ..
                                    ("local table_%d = {\n%s};\n"):format(
                                        pKey1(i, v),
                                        processTableDescendants(v, 0, "t_" .. tostring(i))
                                    )
                            else
                                Decompiled =
                                    Decompiled ..
                                    ("local %s = {\n%s};\n"):format(
                                        i,
                                        processTableDescendants(v, 0, "t_" .. tostring(i))
                                    )
                            end
                        end
                elseif type(v) == 'function' then
                 if type(i) == 'number' then
                    Decompiled = Decompiled .. ("\n%s"):format(DecompileFunction(v, false, 0, "f_"..tostring(i)))
                 else
                    Decompiled = Decompiled .. ("\n%s"):format(DecompileFunction(v, false, 0))
                 end
                end
             end
            end
        )
        if not s then
            return "-- Error occured when trying to iterate over ModuleScript, Message: " .. e
        end
        return Decompiled
    end
    local s, e =
        pcall(
        function()
            local uks = 1
            for i, v in getsenv(Script) do
                if type(v) == "table" then
                    if #v == 0 then
                        if type(i) == "number" then
                            Decompiled = Decompiled .. ("\nlocal table_%d = {}; --[[ EMPTY TABLE ]]\n"):format(pKey1(i, v))
                        else
                            Decompiled = Decompiled .. ("\nlocal %s = {}; --[[ EMPTY TABLE ]]\n"):format(i)
                        end
                    else
                        if type(i) == "number" then
                            Decompiled =
                                Decompiled ..
                                ("local table_%d = {\n%s};"):format(
                                    pKey1(i, v),
                                    processTableDescendants(v, 0, "t_" .. tostring(i))
                                )
                        else
                            Decompiled =
                                Decompiled ..
                                ("local %s = {\n%s};\n"):format(i, processTableDescendants(v, 0, "t_" .. tostring(i)))
                        end
                    end
                end
            end
            for i, v in gcsenv(Script) do -- garbage collection senv
                local name = debug.getinfo(v).name
                if name == nil and Settings.IncludeNils then
                    Decompiled = Decompiled .. ("\n%s"):format(DecompileFunction(v, false, 0, "nil" .. tostring(uks)))
                    uks = uks + 1
                elseif name ~= nil then
                    Decompiled = Decompiled .. ("\n%s"):format(DecompileFunction(v, false, 0))
                end
            end
        end
    )
    if not s then
        return " --An error occured while attempting to iterate over Script's enviroment!\nMessage: " .. e
    end
    return Decompiled
end

getgenv().decompile = DecompileScript

local synSI = loadstring(game:HttpGet("https://raw.githubusercontent.com/luau/SynSaveInstance/main/saveinstance .luau", true), Params.SSI)()

getgenv().synsaveinstance = synSI
getgenv().saveinstance = synSI
--getgenv().saveinstance = loadstring(httpget("https://raw.githubusercontent.com/botdevXD/UniversalSynSaveInstance/refs/heads/main/saveinstance.luau", true))()
--getgenv().Drawing = loadstring(httpget("https://raw.githubusercontent.com/botdevXD/GRUBHUB_TECH/main/DrawingLib.lua", true))()
