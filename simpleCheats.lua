--// simpleCheats GUI by @duck0#0415.
--// alternative pastebin loadstring: loadstring(game:HttpGet("https://pastebin.com/raw/cUvMssVP", true))()
--// updated as of: 8/10/20. huge ui overhaul and more features coming.
local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local btools = Instance.new("TextButton")
local fullbright = Instance.new("TextButton")
local fly = Instance.new("TextButton")
local noclip = Instance.new("TextButton")
local infinitejump = Instance.new("TextButton")
local tp = Instance.new("TextButton")
local closemain = Instance.new("TextButton")
local controls = Instance.new("TextButton")
local openmain = Instance.new("Frame")
local open = Instance.new("TextButton")
local controlsmain = Instance.new("Frame")
local controlstitle = Instance.new("TextLabel")
local tpctrl = Instance.new("TextLabel")
local closecontrols = Instance.new("TextButton")
local flyctrl = Instance.new("TextLabel")
local infctrl = Instance.new("TextLabel")
local noclipctrl = Instance.new("TextLabel")

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
main.Position = UDim2.new(0.142123535, 0, 0.370297045, 0)
main.Size = UDim2.new(0, 359, 0, 202)
main.Visible = false
main.Active = true
main.Draggable = true

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.fromRGB(0, 170, 127)
title.Position = UDim2.new(0.108635098, 0, -4.85712953e-05, 0)
title.Size = UDim2.new(0, 280, 0, 35)
title.Font = Enum.Font.SciFi
title.Text = "simpleCheats by ducko#0415"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.TextSize = 25.000
title.TextWrapped = true

btools.Name = "btools"
btools.Parent = main
btools.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
btools.Position = UDim2.new(0.689036429, 0, 0.246672958, 0)
btools.Size = UDim2.new(0, 89, 0, 57)
btools.Font = Enum.Font.SciFi
btools.Text = "Btools"
btools.TextColor3 = Color3.fromRGB(0, 0, 0)
btools.TextSize = 14.000
btools.MouseButton1Click:connect(function()
for i=2,4 do
    local btool = Instance.new("HopperBin")
    btool.BinType=i
    btool.Parent=game:service'Players'.LocalPlayer.Backpack
end

mouse = game:service'Players'.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Unlock tool"
tool.Activated:connect(function()
    if mouse.Target:IsA("BasePart") then
        mouse.Target.Locked=false
        print("Unlocked "..mouse.Target:GetFullName())
    end
end)
	tool.Parent = game:service'Players'.LocalPlayer.Backpack
	print('Btools Loaded')
end)

fullbright.Name = "fullbright"
fullbright.Parent = main
fullbright.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
fullbright.Position = UDim2.new(0.369971663, 0, 0.622910917, 0)
fullbright.Size = UDim2.new(0, 89, 0, 57)
fullbright.Font = Enum.Font.SciFi
fullbright.Text = "Fullbright"
fullbright.TextColor3 = Color3.fromRGB(0, 0, 0)
fullbright.TextSize = 14.000
fullbright.MouseButton1Click:connect(function()
if not _G.FullBrightExecuted then

	_G.FullBrightEnabled = false

	_G.NormalLightingSettings = {
		Brightness = game:GetService("Lighting").Brightness,
		ClockTime = game:GetService("Lighting").ClockTime,
		FogEnd = game:GetService("Lighting").FogEnd,
		GlobalShadows = game:GetService("Lighting").GlobalShadows,
		Ambient = game:GetService("Lighting").Ambient
	}

	game:GetService("Lighting"):GetPropertyChangedSignal("Brightness"):Connect(function()
		if game:GetService("Lighting").Brightness ~= 1 and game:GetService("Lighting").Brightness ~= _G.NormalLightingSettings.Brightness then
			_G.NormalLightingSettings.Brightness = game:GetService("Lighting").Brightness
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Brightness = 1
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("ClockTime"):Connect(function()
		if game:GetService("Lighting").ClockTime ~= 12 and game:GetService("Lighting").ClockTime ~= _G.NormalLightingSettings.ClockTime then
			_G.NormalLightingSettings.ClockTime = game:GetService("Lighting").ClockTime
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").ClockTime = 12
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("FogEnd"):Connect(function()
		if game:GetService("Lighting").FogEnd ~= 786543 and game:GetService("Lighting").FogEnd ~= _G.NormalLightingSettings.FogEnd then
			_G.NormalLightingSettings.FogEnd = game:GetService("Lighting").FogEnd
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").FogEnd = 786543
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("GlobalShadows"):Connect(function()
		if game:GetService("Lighting").GlobalShadows ~= false and game:GetService("Lighting").GlobalShadows ~= _G.NormalLightingSettings.GlobalShadows then
			_G.NormalLightingSettings.GlobalShadows = game:GetService("Lighting").GlobalShadows
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").GlobalShadows = false
		end
	end)

	game:GetService("Lighting"):GetPropertyChangedSignal("Ambient"):Connect(function()
		if game:GetService("Lighting").Ambient ~= Color3.fromRGB(178, 178, 178) and game:GetService("Lighting").Ambient ~= _G.NormalLightingSettings.Ambient then
			_G.NormalLightingSettings.Ambient = game:GetService("Lighting").Ambient
			if not _G.FullBrightEnabled then
				repeat
					wait()
				until _G.FullBrightEnabled
			end
			game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
		end
	end)

	game:GetService("Lighting").Brightness = 1
	game:GetService("Lighting").ClockTime = 12
	game:GetService("Lighting").FogEnd = 786543
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)

	local LatestValue = true
	spawn(function()
		repeat
			wait()
		until _G.FullBrightEnabled
		while wait() do
			if _G.FullBrightEnabled ~= LatestValue then
				if not _G.FullBrightEnabled then
					game:GetService("Lighting").Brightness = _G.NormalLightingSettings.Brightness
					game:GetService("Lighting").ClockTime = _G.NormalLightingSettings.ClockTime
					game:GetService("Lighting").FogEnd = _G.NormalLightingSettings.FogEnd
					game:GetService("Lighting").GlobalShadows = _G.NormalLightingSettings.GlobalShadows
					game:GetService("Lighting").Ambient = _G.NormalLightingSettings.Ambient
				else
					game:GetService("Lighting").Brightness = 1
					game:GetService("Lighting").ClockTime = 12
					game:GetService("Lighting").FogEnd = 786543
					game:GetService("Lighting").GlobalShadows = false
					game:GetService("Lighting").Ambient = Color3.fromRGB(178, 178, 178)
				end
				LatestValue = not LatestValue
			end
		end
	end)
end

_G.FullBrightExecuted = true
	_G.FullBrightEnabled = not _G.FullBrightEnabled
	print('Fullbright Loaded')
end)

fly.Name = "fly"
fly.Parent = main
fly.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
fly.Position = UDim2.new(0.0539389253, 0, 0.246673137, 0)
fly.Size = UDim2.new(0, 89, 0, 57)
fly.Font = Enum.Font.SciFi
fly.Text = "Fly"
fly.TextColor3 = Color3.fromRGB(0, 0, 0)
fly.TextSize = 14.000
fly.MouseButton1Click:connect(function()
	print('Fly Loaded')
print('Press "F" to fly')
repeat wait()
   until game:service'Players'.LocalPlayer and game:service'Players'.LocalPlayer.Character and game:service'Players'.LocalPlayer.Character:findFirstChild("HumanoidRootPart") and game:service'Players'.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game:service'Players'.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game:service'Players'.LocalPlayer
local HumanoidRootPart = plr.Character.HumanoidRootPart
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
local bg = Instance.new("BodyGyro", HumanoidRootPart)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = HumanoidRootPart.CFrame
local bv = Instance.new("BodyVelocity", HumanoidRootPart)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "f" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0		
end
end)
	Fly()
end)

noclip.Name = "noclip"
noclip.Parent = main
noclip.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
noclip.Position = UDim2.new(0.370321542, 0, 0.246673077, 0)
noclip.Size = UDim2.new(0, 89, 0, 57)
noclip.Font = Enum.Font.SciFi
noclip.Text = "Noclip"
noclip.TextColor3 = Color3.fromRGB(0, 0, 0)
noclip.TextSize = 14.000
noclip.MouseButton1Click:connect(function()
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game:service'Players'.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game:service'Players'.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "e" then
noclip = not noclip
game:service'Players'.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Noclip Loaded')
print('Press "E" to noclip')
end)

infinitejump.Name = "infinite jump"
infinitejump.Parent = main
infinitejump.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
infinitejump.Position = UDim2.new(0.689036429, 0, 0.622910798, 0)
infinitejump.Size = UDim2.new(0, 89, 0, 57)
infinitejump.Font = Enum.Font.SciFi
infinitejump.Text = "Infinite Jump"
infinitejump.TextColor3 = Color3.fromRGB(0, 0, 0)
infinitejump.TextSize = 14.000
infinitejump.MouseButton1Click:connect(function()
	print('Infinite Jump Loaded')
print('Press "Space" a bunch of times to Infinite Jump')
_G.mj = true
lp = game.Players.LocalPlayer

while wait(0.1) do
    if _G.mj == true and game:GetService('UserInputService'):IsKeyDown(Enum.KeyCode.Space) == true then
			        lp.Character:FindFirstChildOfClass('Humanoid'):ChangeState(3)
    end
	end
end)

tp.Name = "tp"
tp.Parent = main
tp.BackgroundColor3 = Color3.fromRGB(85, 85, 255)
tp.Position = UDim2.new(0.0539389253, 0, 0.622910917, 0)
tp.Size = UDim2.new(0, 89, 0, 57)
tp.Font = Enum.Font.SciFi
tp.Text = "Ctrl-Click TP"
tp.TextColor3 = Color3.fromRGB(0, 0, 0)
tp.TextSize = 14.000
tp.MouseButton1Click:connect(function()
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
 
Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Plr.Character:MoveTo(Mouse.Hit.p)
	end)
	print('Ctrl-Click TP Loaded')
print('Press "Left CTRL" then click to teleport')
end)

closemain.Name = "closemain"
closemain.Parent = main
closemain.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closemain.Position = UDim2.new(0.891364932, 0, 0, 0)
closemain.Size = UDim2.new(0, 39, 0, 35)
closemain.Font = Enum.Font.Cartoon
closemain.Text = "X"
closemain.TextColor3 = Color3.fromRGB(0, 0, 0)
closemain.TextScaled = true
closemain.TextSize = 25.000
closemain.TextWrapped = true
closemain.MouseButton1Click:connect(function()
	main.Visible = false
	controlsmain.Visible = false
	openmain.Visible = true
end)

controls.Name = "controls"
controls.Parent = main
controls.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
controls.Position = UDim2.new(1.49011612e-08, 0, 0, 0)
controls.Size = UDim2.new(0, 39, 0, 35)
controls.Font = Enum.Font.Arial
controls.Text = "Controls"
controls.TextColor3 = Color3.fromRGB(0, 0, 0)
controls.TextScaled = true
controls.TextSize = 14.000
controls.TextWrapped = true
controls.MouseButton1Click:connect(function()
controlsmain.Visible = true
end)

openmain.Name = "openmain"
openmain.Parent = ScreenGui
openmain.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
openmain.Position = UDim2.new(0, 0, 0.851485193, 0)
openmain.Size = UDim2.new(0, 69, 0, 50)
openmain.Active = true

open.Name = "open"
open.Parent = openmain
open.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
open.Position = UDim2.new(-0.00477409363, 0, 2.08616257e-07, 0)
open.Size = UDim2.new(0, 69, 0, 50)
open.Font = Enum.Font.SciFi
open.Text = "open"
open.TextColor3 = Color3.fromRGB(0, 0, 0)
open.TextSize = 20.000
open.MouseButton1Click:connect(function()
	main.Visible = true
	openmain.Visible = false
end)

controlsmain.Name = "controlsmain"
controlsmain.Parent = ScreenGui
controlsmain.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
controlsmain.Position = UDim2.new(0.623620331, 0, 0.370297015, 0)
controlsmain.Size = UDim2.new(0, 246, 0, 149)
controlsmain.Visible = false
controlsmain.Active = true
controlsmain.Draggable = true

controlstitle.Name = "controlstitle"
controlstitle.Parent = controlsmain
controlstitle.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
controlstitle.Size = UDim2.new(0, 246, 0, 37)
controlstitle.Font = Enum.Font.SciFi
controlstitle.Text = "Controls"
controlstitle.TextColor3 = Color3.fromRGB(0, 0, 0)
controlstitle.TextSize = 14.000

closecontrols.Name = "closecontrols"
closecontrols.Parent = controlsmain
closecontrols.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closecontrols.Position = UDim2.new(0.853658557, 0, -6.58483332e-05, 0)
closecontrols.Size = UDim2.new(0, 36, 0, 37)
closecontrols.Font = Enum.Font.Cartoon
closecontrols.Text = "X"
closecontrols.TextColor3 = Color3.fromRGB(0, 0, 0)
closecontrols.TextScaled = true
closecontrols.TextSize = 14.000
closecontrols.TextWrapped = true
closecontrols.MouseButton1Click:connect(function()
controlsmain.Visible = false
end)

flyctrl.Name = "flyctrl"
flyctrl.Parent = controlsmain
flyctrl.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
flyctrl.BorderSizePixel = 0
flyctrl.Position = UDim2.new(0, 0, 0.428375453, 0)
flyctrl.Size = UDim2.new(0, 246, 0, 28)
flyctrl.Font = Enum.Font.SourceSans
flyctrl.Text = "Fly - F."
flyctrl.TextColor3 = Color3.fromRGB(0, 0, 0)
flyctrl.TextSize = 14.000

infctrl.Name = "infctrl"
infctrl.Parent = controlsmain
infctrl.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
infctrl.BorderSizePixel = 0
infctrl.Position = UDim2.new(0, 0, 0.589449286, 0)
infctrl.Size = UDim2.new(0, 246, 0, 36)
infctrl.Font = Enum.Font.SourceSans
infctrl.Text = "Infinite Jump - Space."
infctrl.TextColor3 = Color3.fromRGB(0, 0, 0)
infctrl.TextSize = 14.000

noclipctrl.Name = "noclipctrl"
noclipctrl.Parent = controlsmain
noclipctrl.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
noclipctrl.BorderSizePixel = 0
noclipctrl.Position = UDim2.new(0, 0, 0.770657301, 0)
noclipctrl.Size = UDim2.new(0, 246, 0, 34)
noclipctrl.Font = Enum.Font.SourceSans
noclipctrl.Text = "Noclip - E."
noclipctrl.TextColor3 = Color3.fromRGB(0, 0, 0)
noclipctrl.TextSize = 14.000

tpctrl.Name = "tpctrl"
tpctrl.Parent = controlsmain
tpctrl.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
tpctrl.BorderSizePixel = 0
tpctrl.Position = UDim2.new(0, 0, 0.280724466, 0)
tpctrl.Size = UDim2.new(0, 246, 0, 22)
tpctrl.Font = Enum.Font.SourceSans
tpctrl.Text = "Ctrl-Click TP -  Left CTRL."
tpctrl.TextColor3 = Color3.fromRGB(0, 0, 0)
tpctrl.TextSize = 14.000
print ('simpleCheats by duck0#0415 Loaded')
