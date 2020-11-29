repeat
    wait()
until game:IsLoaded()
local meta, old = getrawmetatable(game), {}
for i, v in next, meta do
    old[i] = v
end
local char = "ٓأأ"
setreadonly(meta, false)
meta.__namecall =
    newcclosure(
    function(...)
        local method = getnamecallmethod()
        local args = {...}
        local replacetext = {
-- the words, you can copy this source and add more if you like.
            "nigger",
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
game.StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Chat Bypasser",
        Text = "Loaded. Made by Africa Police but modified by duck0 on v3rmillion.",
        Duration = 2.5
    }
)
