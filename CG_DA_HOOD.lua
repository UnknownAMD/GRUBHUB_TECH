xpcall(function()repeat task.wait()until game:IsLoaded()local b=loadstring(game:HttpGet("https://raw.githubusercontent.com/botdevXD/GRUBHUB_TECH/main/NOTI_LIB.lua",true))()b.new("info","CG Da Hood","CG's Da Hood Script Loading")local c=loadstring(game:HttpGet("https://raw.githubusercontent.com/botdevXD/GRUBHUB_TECH/main/new_ui_lib.lua",true))()loadstring(game:HttpGet("https://raw.githubusercontent.com/botdevXD/GRUBHUB_TECH/main/Games/ESP_MODULE.lua",true))()local d=workspace.CurrentCamera;local c=c:CreateWindow({Name="CG's Da Hood Script",LoadingTitle="Da Hood",LoadingSubtitle="by CG",ConfigurationSaving={Enabled=true,FolderName="CG_SCRIPTS",FileName="DaHood"},KeySystem=false})local e=c:CreateTab("Player",15728996305)local f=c:CreateTab("Aim",12293896545)local g=c:CreateTab("Visuals",16060788318)local h=c:CreateTab("AutoFarm",17671173398)local i=false;local i={["Uphill Gunz"]=Vector3.new(481,48,-622),["Uphill Food"]=Vector3.new(298,49,-613),["Downhill Gunz"]=Vector3.new(-580,8,-735),["Downhill Food"]=Vector3.new(-334,24,-298),["Bank"]=Vector3.new(-461,39,-280),["School"]=Vector3.new(-594,22,229),["Jeff's Taco's"]=Vector3.new(585,51,-480),["Military Base"]=Vector3.new(37,25,-873),["Police Station"]=Vector3.new(-265,22,-96),["Hood Fitness"]=Vector3.new(-75,23,-633),["Phone Store"]=Vector3.new(-119,22,-982),["Da Boxing Club"]=Vector3.new(-253,23,-1121),["Da Theatre"]=Vector3.new(-1006,25,-142),["Da Casino"]=Vector3.new(-861,22,-130),["Nightclub"]=Vector3.new(-257,-6,-389),["TreeHouse"]=Vector3.new(-74,55,-257)}local j={"Head","UpperTorso","LowerTorso","HumanoidRootPart"}local j={["NotRealDH"]="This is not real Da Hood, some features may not work!",["WaitingForPlayerToLoad"]="Waiting for player to load in!",["PlayerLoadedIn"]="Player loaded!"}local k={Players=game:GetService("Players"),ReplicatedStorage=game:GetService("ReplicatedStorage"),VirtualInputManager=game:GetService("VirtualInputManager")}local l=k.ReplicatedStorage:FindFirstChild("MainEvent")local m={Player=k.Players.LocalPlayer}shared.CG_DA_HOOD_CONNECTIONS=shared.CG_DA_HOOD_CONNECTIONS or{}shared.CG_DA_HOOD_BACKUP_DATA=shared.CG_DA_HOOD_BACKUP_DATA or{HipHeight=nil}shared.CG_DA_HOOD_TOGGLES={antiLockBool=false,anntiLockResolveBool=false,NoPlayerSlowDown=false,AntiFlingBool=false,AutoPickupMoneyBool=false,VISUALS_ENABLED_BOOL=false}m.Character=m.Player.Character or m.Player.CharacterAdded:Wait()local function n(a)local b={{PartName="HumanoidRootPart",From=nil,To="RootRigAttachment"},{PartName="LowerTorso",From="RootRigAttachment",To="RightHipRigAttachment"},{PartName="RightUpperLeg",From="RightHipRigAttachment",To="RightKneeRigAttachment"},{PartName="RightLowerLeg",From="RightKneeRigAttachment",To="RightAnkleRigAttachment"},{PartName="RightFoot",From="RightAnkleRigAttachment",To=nil}}local c=0;pcall(function()for b,b in pairs(b)do local d=b.From and a[b.PartName][b.From].Position or Vector3.new(0,0,0)local a=b.To and a[b.PartName][b.To].Position or-a[b.PartName].Size/2;c+=d.Y-a.Y end;c-=a.PrimaryPart.Size.Y/2 end)return c end;local function o()return game.PlaceId==2788229376 end;if not o()then b.new("warning","CG Da Hood",j.NotRealDH)end;local function p()if not m.Character then return false end;return m.Character:FindFirstChild("FULLY_LOADED_CHAR")and true or false end;local function q()local a=m.Player:FindFirstChild("Backpack")if not a then return end;local b=m.Character and m.Character:FindFirstChild("[Phone]")return b or a:FindFirstChild("[Phone]")end;local function r()if not p()then return end;if not m.Character then return end;local a=m.Character:FindFirstChildWhichIsA("Humanoid")if not a then return end;local b=n(m.Character)a.HipHeight=b end;m.Player.CharacterAdded:Connect(function(b)a=false;m.Character=b;repeat task.wait()until p()a=true end)b.new("info","CG Da Hood",j.WaitingForPlayerToLoad)repeat task.wait()until p()b.new("success","CG Da Hood",j.PlayerLoadedIn)a=true;r()for a,a in ipairs(shared.CG_DA_HOOD_CONNECTIONS)do pcall(a.Disconnect,a)end;table.clear(shared.CG_DA_HOOD_CONNECTIONS)local function a()return workspace:FindFirstChild("Ignored")end;local function j()local a=a()if not a then return end;return a:FindFirstChild("ItemsDrop")end;local function n()local a=a()if not a then return end;return a:FindFirstChild("Drop")end;local function a()if not m.Character then return end;return m.Character:FindFirstChild("BodyEffects")end;local function s()local a=a()if not a then return end;return a:FindFirstChild("Movement")end;local function a(a)if not p()then return end;if not m.Character or typeof(a)~="Vector3"then return end;local b=m.Character:FindFirstChild("HumanoidRootPart")if not b then return end;b.CFrame=CFrame.new(a)*CFrame.new(0,b.Size.Y/2,0)end;local function t(b)if not m.Character then return end;local c=m.Character.PrimaryPart.Position;if typeof(b)~="Instance"or not b:IsA("BasePart")then return end;local e=b:FindFirstChildWhichIsA("ClickDetector")if not e then return end;local e=d.CFrame;m.Player.CameraMode=Enum.CameraMode.LockFirstPerson;a(b.Position)d.CFrame=CFrame.new(d.CFrame.Position,b.Position)local b,d=d:WorldToScreenPoint(b.Position)k.VirtualInputManager:SendMouseButtonEvent(b.X,b.Y,0,true,game,1)k.VirtualInputManager:SendMouseButtonEvent(b.X,b.Y,0,false,game,1)task.wait(.01)a(c)m.Player.CameraMode=Enum.CameraMode.Classic end;local function d()if not p()then return end;if not m.Character then return end;local a=m.Character:FindFirstChild("HumanoidRootPart")if not a then return end;local b=m.Character:FindFirstChildWhichIsA("Humanoid")if not b then return end;local c=math.random(70,120)local d=a.Velocity;local e=a.AssemblyLinearVelocity;a.Velocity=Vector3.new(d.X,-c,d.Z)a.Velocity=Vector3.new(d.X,d.Y,d.Z)a.Velocity=Vector3.new(d.X,-c,d.Z)a.AssemblyLinearVelocity=Vector3.new(e.X,-c,e.Z)a.AssemblyLinearVelocity=Vector3.new(e.X,e.Y,e.Z)a.AssemblyLinearVelocity=Vector3.new(e.X,-c,e.Z)b.HipHeight=3.95 end;local function u()if not p()then return end;for a,a in ipairs(k.Players:GetPlayers())do if a==m.Player then continue end;local a=a.Character;if not a then continue end;local a=a:FindFirstChild("HumanoidRootPart")if not a then continue end;local b=a.Velocity;local c=a.AssemblyLinearVelocity;a.Velocity=Vector3.new(b.X,0,b.Z)a.AssemblyLinearVelocity=Vector3.new(c.X,0,c.Z)end end;local function p()for a,a in ipairs(k.Players:GetPlayers())do if a==m.Player then continue end;local a=a.Character;if not a then continue end;local a=a:FindFirstChild("HumanoidRootPart")if not a then continue end;a.Velocity=Vector3.new(0,0,0)a.AssemblyLinearVelocity=Vector3.new(0,0,0)end end;local function v(a,b)local a=a:Connect(b)table.insert(shared.CG_DA_HOOD_CONNECTIONS,a)return a end;local s=e:CreateToggle({Name="No Slowdown",CurrentValue=false,Flag="noslowdownFlag",Callback=function(a)shared.CG_DA_HOOD_TOGGLES.NoPlayerSlowDown=a;if not a then return end;task.spawn(function()while shared.CG_DA_HOOD_TOGGLES.NoPlayerSlowDown do local a=s()if not a then task.wait()continue end;for a,a in ipairs(a:GetChildren())do pcall(a.Destroy,a)end;task.wait()end end)end})local p=e:CreateToggle({Name="Anti Fling",CurrentValue=false,Flag="antiFlingFlag",Callback=function(a)shared.CG_DA_HOOD_TOGGLES.AntiFlingBool=a;if not a then return end;task.spawn(function()while shared.CG_DA_HOOD_TOGGLES.AntiFlingBool do p()task.wait()end end)end})e:CreateButton({Name="Unlock Animations",Callback=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/botdevXD/GRUBHUB_TECH/main/DaHoodAnimationUnlocker.lua",true))()end})e:CreateButton({Name="Collect Dropped Items",Callback=function()local b=j()if not b then return end;for b,b in ipairs(b:GetChildren())do if not b:IsA("BasePart")then continue end;local c=b:FindFirstChildWhichIsA("Tool")if not c then continue end;a(b.Position)task.wait(.15)end end})e:CreateButton({Name="Call all",Callback=function()if not l or not m.Character then return end;local a=q()if not a then return end;local b=m.Player:FindFirstChild("Backpack")if not b then return end;for c,c in ipairs(k.Players:GetPlayers())do if c==m.Player then continue end;a.Parent=m.Character;l:FireServer("PhoneCall",c.Name)task.wait(.1)a.Parent=b end end})e:CreateButton({Name="Equip All Tools",Callback=function()if not m.Character then return end;local a=m.Player:FindFirstChild("Backpack")if not a then return end;for a,a in ipairs(a:GetChildren())do if not a:IsA("Tool")then continue end;a.Parent=m.Character;task.wait(.1)end end})if o()then local b=c:CreateTab("Teleports",4034483344)for c,d in pairs(i)do b:CreateButton({Name=c,Callback=function()return pcall(a,d)end})end end;local c=f:CreateToggle({Name="Anti Lock",CurrentValue=false,Flag="antiLockFlag",Callback=function(a)shared.CG_DA_HOOD_TOGGLES.antiLockBool=a;r()if not a then return end;task.spawn(function()while shared.CG_DA_HOOD_TOGGLES.antiLockBool do d()task.wait()end end)end})local c=f:CreateToggle({Name="Anti Lock Resolver",CurrentValue=false,Flag="antiLockResolverFlag",Callback=function(a)shared.CG_DA_HOOD_TOGGLES.anntiLockResolveBool=a;if not a then return end;task.spawn(function()while shared.CG_DA_HOOD_TOGGLES.anntiLockResolveBool do u()task.wait()end end)end})getgenv()["ESP_CACHE"].UnLoad()v(k.Players.PlayerAdded,function(a)if getgenv()["ESP_CACHE"].SETTINGS.BOXES_ENABLED then getgenv()["ESP_CACHE"].LoadBox(a)end;if getgenv()["ESP_CACHE"].SETTINGS.TRACERS_ENABLED==true then getgenv()["ESP_CACHE"].LoadTracers(a)end;if getgenv()["ESP_CACHE"].SETTINGS.NAME_TAG==truwe then getgenv()["ESP_CACHE"].LoadNameTag(a)end end)local c=g:CreateToggle({Name="Visuals Enabled",CurrentValue=false,Flag="visualsenabledFlag",Callback=function(a)shared.CG_DA_HOOD_TOGGLES.VISUALS_ENABLED_BOOL=a;if not a then for a,a in ipairs(k.Players:GetPlayers())do if a==m.Player then continue end;getgenv()["ESP_CACHE"].LoadBox(a)getgenv()["ESP_CACHE"].LoadTracers(a)getgenv()["ESP_CACHE"].LoadNameTag(a)end else getgenv()["ESP_CACHE"].UnLoad()end end})local c=g:CreateToggle({Name="Box",CurrentValue=false,Flag="espboxflag",Callback=function(a)if a then for a,a in ipairs(k.Players:GetPlayers())do if a==m.Player then continue end;getgenv()["ESP_CACHE"].LoadBox(a)end end;getgenv()["ESP_CACHE"].SetBoxVisibility(a)end})local c=g:CreateToggle({Name="Nametag",CurrentValue=false,Flag="espnametagflag",Callback=function(a)if a then for a,a in ipairs(k.Players:GetPlayers())do if a==m.Player then continue end;getgenv()["ESP_CACHE"].LoadNameTag(a)end end;getgenv()["ESP_CACHE"].SetNameTag(a)end})local c=g:CreateToggle({Name="Tracers",CurrentValue=false,Flag="esptracersflag",Callback=function(a)if a then for a,a in ipairs(k.Players:GetPlayers())do if a==m.Player then continue end;getgenv()["ESP_CACHE"].LoadTracers(a)end end;getgenv()["ESP_CACHE"].SetTracersVisibility(a)end})local a=h:CreateToggle({Name="Auto Pickup Money",CurrentValue=false,Flag="autopickupmoneyflag",Callback=function(b)shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool=b;if not b then return end;local b=n()if not b then return end;while shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool do for c,c in ipairs(b:GetChildren())do if not shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool then break end;if not c:IsA("BasePart")or c.Name~="MoneyDrop"then continue end;if c.Transparency==1 then continue end;a(c.Position)repeat pcall(t,c)task.wait(1.45)until not c or c.parent~=b or not shared.CG_DA_HOOD_TOGGLES.AutoPickupMoneyBool end;task.wait()end end})local a=h:CreateToggle({Name="Auto Stomp",CurrentValue=false,Flag="autostompflag",Callback=function(a)end})local a=h:CreateToggle({Name="Auto Lettuce",CurrentValue=false,Flag="autolettuceflag",Callback=function(a)end})b.new("success","CG Da Hood","CG's Da Hood Script Loaded!")end,function()end)
