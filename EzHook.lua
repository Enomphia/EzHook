local HttpService = game:GetService("HttpService")

local JSON = {
	Encode = function(...)return HttpService:JSONEncode(...)end,
	Decode = function(...)return HttpService:JSONDecode(...)end
}

local Discord = {}
Discord.__index = Discord

function Discord.new(WebhookUrl)
	local t = setmetatable({}, Discord)
	
	t.WebhookUrl = WebhookUrl
	t.Name = nil
	t.AvatarUrl = nil
	
	return t
end

function Discord:SetName(Name)
	self.Name = Name
end

function Discord:SetAvatarUrl(url)
	self.AvatarUrl = url
end

function Discord:Send(msg)
	return HttpService:PostAsync(self.WebhookUrl, JSON.Encode({
		['avatar_url'] = self.AvatarUrl,
		['content'] = msg,
		['username'] = self.Name
	}))
end

return Discord
