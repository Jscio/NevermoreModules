# Nevermore Modules
A modified version of the modules from [Quenty's NevermoreEngine](https://github.com/Quenty/NevermoreEngine) to make it work on executor's environment.

# Usage
1. Run the loadstring
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/Jscio/NevermoreModules/main/loader.lua"))()
```

2. Require the module
```lua
local Maid = getgenv().NVRMR_REQUIRE("maid")
```

3. And then just use the module
```lua
local maid = Maid.new()

maid:GiveTask(function()
	print("Cleaning up")
end)

maid:GiveTask(workspace.ChildAdded:Connect(print))

maid:DoCleaning()
```

# Available Modules
- [maid] = [Maid](https://quenty.github.io/NevermoreEngine/api/Maid)
- [signal] = [Signal](https://quenty.github.io/NevermoreEngine/api/GoodSignal)
- [promise] = [Promise](https://quenty.github.io/NevermoreEngine/api/Promise)
- [deferred] = [deferred](https://quenty.github.io/NevermoreEngine/api/deferred)
- [event-handler-utils] = [EventHandlerUtils](https://quenty.github.io/NevermoreEngine/api/EventHandlerUtils)

⚠️: Potentially detected because the module are modifying the workspace

# Credits
- [Quenty's NevermoreEngine](https://github.com/Quenty/NevermoreEngine) - Original work
- [Jscio](https://github.com/Jscio) - Modifier