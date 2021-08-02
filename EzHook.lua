--[[
	EzHook by Enomphia.
	
	Github: https://www.github.com/Enomphia
	Roblox: https://www.roblox.com/users/230817489/profile
	Twitter: https://www.twitter.com/Enomphia
--]]

local HttpService = game:GetService("HttpService")

local JSON = {
	Encode = function(...)return HttpService:JSONEncode(...)end,
	Decode = function(...)return HttpService:JSONDecode(...)end
}

local EzHook = {}
EzHook.__index = EzHook

function EzHook.new(url)
	return setmetatable(
		{
			_url = url,
			_embeds = {},
			_avatarUrl = nil,
			_username = nil
		},
		EzHook
	)
end

function EzHook:SetName(name)
	print(name)
	self._username = name
end

function EzHook:SetAvatarUrl(url)
	self._avatarUrl = url
end

function EzHook:CreateEmbed(_table)
	table.insert(self._embeds, _table)
end

function EzHook:Send(content)
	return HttpService:PostAsync(self._url, JSON.Encode({
		['content'] = content,
		['username'] = self._username,
		['avatar_url'] = self._avatarUrl,
		['embeds'] = self._embeds
	}))
end

return EzHook
