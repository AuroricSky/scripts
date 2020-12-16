repeat wait() until game:IsLoaded()
local meta, old = getrawmetatable(game), {}
for i, v in next, meta do
old[i] = v
end
local char = "ٓﾞ" -- updating this every now and then.
setreadonly(meta, false)
meta.__namecall =
newcclosure(
function(...)
local method = getnamecallmethod()
local args = {...}
local replacetext = 
{ -- the words, you can copy this source and add more if you like.
  "nigger", -- of course this is the first one lmao.
  "faggot",
  "thot",
  "bitch",
  "cunt",
  "fuck",
  "fucker",
  "whore",
  "dick",
  "penis",
  "asshole",
  "allahu",
  "akbar",
  "crap",
  "shit",
  "motherfucker",
  "girlfriend",
  "boyfriend",
  "slave",
  "hoe",
  "sex",
  "cum",
  "pussy",
  "nigga",
  "slut",
  "rape",
  "allah",
  "hitler",
  "nazi",
  "kill the jews",
  "suicide",
  "kill",
  "gay",
  "lmao",
  "suck",
  "daddy",
  "boobs",
  "breast",
  "vagina",
  "anal",
  "cock",
  "discord",
  "condo"
}
local replacedtext = ""
if method == "FireServer" and args[1].Name == "SayMessageRequest" then
  for count = 1, #replacetext do
     if string.find(args[2], replacetext[count]) then
       replacedtext =
          string.gsub(
            replacetext[count],
               ".",
                  function(c)
                     return c .. char
                     end
                    )
                  args[2] = string.gsub(args[2], replacetext[count], replacedtext)
               end
            end
          return old.__namecall(unpack(args))
        end
     return old.__namecall(...)
  end
)
setreadonly(meta, true)
game.StarterGui:SetCore("SendNotification",
   {
    Title = "chat bypasser",
    Text = "loaded. made by Cole#4200, modified by duck0#0415.",
    Duration = 5.0
   }
)
