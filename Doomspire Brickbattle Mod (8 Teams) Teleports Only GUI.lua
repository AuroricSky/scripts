--[[Doomspire Brickbattle Mod (8 Teams) Teleports Only, modified by me @duck0#0001 to add four more teams, originally by Drakoxius_Voxeniam#2755 which i give huge credit to.
game: https://www.roblox.com/games/2738693686 , one of the better doomspire mods imo, so chaotic.
]]
--// Modified Library //--
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sjorbiia/X-Scripts/master/UILibrary", true))()

--// Settings //--
library.options.underlinecolor = "rainbow"

--//First Window//--
local w = library:CreateWindow('Teleports')

w:Section('Red')

w:Dropdown("Red Teleports", {
   location = _G;
   flag = "rtps";
   list = {
       "Red Top";
       "Red Bottom";
   }
}, function(new)

if _G.rtps == "Red Top" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-92.9552536, 131.400009, -0.228209555, 0.0130714383, -0.000241924077, -0.999914527, 0.000142972203, 0.99999994, -0.000240075751, 0.999914527, -0.000139821903, 0.0130714383) 

elseif _G.rtps == "Red Bottom" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131, 24.8000011, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
end
end)

w:Section('Green')

w:Dropdown("Green Teleports", {
   location = _G;
   flag = "gtps";
   list = {
       "Green Top";
       "Green Bottom";
   }
}, function(new)

if _G.gtps == "Green Top" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.568436325, 131.400009, -91.7948074, -0.99970293, -3.20257132e-09, -0.0243779011, -3.26525385e-09, 1, 2.53147348e-09, 0.0243779011, 2.61032129e-09, -0.99970293) 

elseif _G.gtps == "Green Bottom" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 24.7999763, -131, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end
end)

w:Section('Blue')

w:Dropdown("Blue Teleports", {
   location = _G;
   flag = "btps";
   list = {
       "Blue Top";
       "Blue Bottom";
   }
}, function(new)

if _G.btps == "Blue Top" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.177885145, 131.400009, 92.7333221, 0.999991417, -1.94781169e-09, 0.0042735422, 2.06130002e-09, 1, -2.65513176e-08, -0.0042735422, 2.65598867e-08, 0.999991417)
elseif _G.btps == "Blue Bottom" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 24.8000011, 131, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end
end)

w:Section('Yellow')

w:Dropdown("Yellow Teleports", {
   location = _G;
   flag = "ytps";
   list = {
       "Yellow Top";
       "Yellow Bottom";
   }
}, function(new)

if _G.ytps == "Yellow Top" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.6032486, 131.400009, 0.0341797173, -0.00301746512, 1.09175371e-08, 0.999995112, -8.51412665e-08, 1, -1.11744924e-08, -0.999995112, -8.51746051e-08, -0.00301746512)
elseif _G.ytps == "Yellow Bottom" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131, 24.7999821, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end
end)

w:Section('Brown')

w:Dropdown("Brown Teleports", {
   location = _G;
   flag = "brtps";
   list = {
       "Brown Top";
       "Brown Bottom";
   }
}, function(new)

if _G.brtps == "Brown Top" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-80.587944, 131.399521, 92.5011215, 0.999980211, -3.75198681e-08, 0.00628822763, 3.78947433e-08, 1, -5.94965321e-08, -0.00628822763, 5.97336438e-08, 0.999980211)
elseif _G.brtps == "Brown Bottom" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-80.9045105, 24.7657375, 130.94104, -0.999013126, -5.579051e-09, 0.0444164313, -5.46671375e-10, 1, 1.13311785e-07, -0.0444164313, 1.1317568e-07, -0.999013126)
end
end)

w:Section('Black')

w:Dropdown("Black Teleports", {
   location = _G;
   flag = "bltps";
   list = {
       "Black Top";
       "Black Bottom";
   }
}, function(new)

if _G.bltps == "Black Top" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(93.2877731, 131.399918, 80.8015671, 0.0125608742, 3.99160065e-08, 0.999920845, 5.07827274e-08, 1, -4.05570653e-08, -0.999920845, 5.12881577e-08, 0.0125608742)
elseif _G.bltps == "Black Bottom" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(130.778381, 24.7926216, 81.0313568, 0.0476803854, 7.85349599e-08, -0.998862505, -9.90610545e-08, 1, 7.38957127e-08, 0.998862505, 9.54250368e-08, 0.0476803854)
end
end)

w:Section('Violet')

w:Dropdown("Violet Teleports", {
   location = _G;
   flag = "vtps";
   list = {
       "Violet Top";
       "Violet Bottom";
   }
}, function(new)

if _G.vtps == "Violet Top" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-93.014267, 131.369095, -80.9330978, -0.00490786415, -6.57987016e-08, -0.99998796, 8.52296651e-08, 1, -6.62177939e-08, 0.99998796, -8.55536229e-08, -0.00490786415)
elseif _G.vtps == "Violet Bottom" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-131.125046, 24.7723236, -80.8943558, 0.0104607884, -1.29207194e-06, 0.999945164, -1.75481784e-06, 1, 1.31050058e-06, -0.999945164, -1.76843093e-06, 0.0104607884)
end
end)

w:Section('Lime')

w:Dropdown("Lime Teleports", {
   location = _G;
   flag = "ltps";
   list = {
       "Lime Top";
       "Lime Bottom";
   }
}, function(new)

if _G.ltps == "Lime Top" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(80.7263794, 131.377869, -92.9717407, -0.999955833, -1.71078773e-09, 0.00939407852, -8.60116312e-10, 1, 9.0558018e-08, -0.00939407852, 9.0545953e-08, -0.999955833)
elseif _G.ltps == "Lime Bottom" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(81.1007614, 24.7996769, -130.8638, 0.999768198, 1.47603339e-06, 0.0215197057, -1.50124356e-06, 1, 1.15532305e-06, -0.0215197057, -1.18736102e-06, 0.999768198)
end
end)

w:Section('Other')

w:Dropdown("Other Teleports", {
   location = _G;
   flag = "otps";
   list = {
       "Spectator Area";
       "Map Middle";
   }
}, function(new)

if _G.otps == "Spectator Area" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.868957162, 387.5, -0.983278453, -0.999791503, -1.32764013e-08, 0.02043611, -1.4056039e-08, 1, -3.8006096e-08, -0.02043611, -3.82854211e-08, -0.999791503)
elseif _G.otps == "Map Middle" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-0.128807977, 132.598068, 0.188793659, -0.00738539733, -1.74024279e-08, 0.999972701, 4.3032351e-09, 1, 1.74346848e-08, -0.999972701, 4.43187975e-09, -0.00738539733)
end
end)