repeat wait() until game:IsLoaded()
local meta, old = getrawmetatable(game), {};
for i, v in next, meta do old[i] = v end;

local char = 'ٓأأ';

setreadonly(meta, false);

meta.__namecall = newcclosure(function(...)
local method = getnamecallmethod();
local args = {...}; --please don't get offended by the words below, its for everyone to be a piece of shit to other people on a kids platform, i don't affiliate with any of the racist/very offensive words below. just basic ones lol.
local replacetext = {"nigger", "faggot", "thot", "bitch", "cunt", "fuck", "fucker", "whore", "dick", "penis", "asshole", "allahu", "akbar", "crap", "shit", "motherfucker", "girlfriend", "boyfriend", "slave", "hoe", "sex",  "cum", "pussy", "nigga", "slut", "rape", "allah", "hitler", "nazi", "kill the jews", "suicide", "kill", "gay", "lmao"} --adding more words as i encounter flaws within the bypasser.
local replacedtext = ""

if method == 'FireServer' and args[1].Name == 'SayMessageRequest' then
  for count = 1, #replacetext do
    if string.find(args[2], replacetext[count]) then
      replacedtext = string.gsub(replacetext[count], '.', function(c)
      return c .. char;
      end);
      args[2] = string.gsub(args[2], replacetext[count], replacedtext);
    end;
    end;
	return old.__namecall(unpack(args));
    end;

    return old.__namecall(...);
    end);

    setreadonly(meta, true);
print('Chat Bypasser by Africa Police Loaded, Modified Source by ducko.')
