# EzHook
EzHook - an easy and simple to use discord webhook wrapper built for LuaU.

## Sample Usage
```lua
local EzHook = require(script.EzHook)

local webhook = EzHook.new("WEBHOOK_HERE")

webhook:SetName("Monkey Webhook")
webhook:SetAvatarUrl("https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Saimiri_sciureus-1_Luc_Viatour.jpg/1280px-Saimiri_sciureus-1_Luc_Viatour.jpg")

webhook:Send("Oo Aa! 🐒")

```
