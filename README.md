# EzHook
EzHook - an easy and simple to use discord webhook wrapper built for LuaU.

## Sample Usage

![Example](https://i.imgur.com/MWkWeZc.png)

```lua
local EzHook = require(script.EzHook)

local webhook = EzHook.new("WEBHOOK_HERE")

webhook:SetName("EzHook")
webhook:SetAvatarUrl("https://tr.rbxcdn.com/d9af46c2f5c3a65d48329a2b033d96c5/150/150/AvatarHeadshot/Png")

webhook:CreateEmbed({
	title = "Embed 1",
	description = "This is embed 1 and is **epic**",
	fields = {
		{name = "Field 1", value = "epic 1"},
		{name = "Field 2", value = "epic 2"}
	}
})

webhook:Send("The embed is below!")
```
