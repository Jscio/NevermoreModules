getgenv().NVRMR = true

local loadedModules = getgenv().NVRMR_LOADED or {}
getgenv().NVRMR_LOADED = loadedModules

local nvmrModulesList = {
  promise = "https://raw.githubusercontent.com/Jscio/NevermoreModules/main/modules/promise.lua",
  maid = "https://raw.githubusercontent.com/Jscio/NevermoreModules/main/modules/maid.lua",
  signal = "https://raw.githubusercontent.com/Jscio/NevermoreModules/main/modules/signal.lua",
  deferred = "https://raw.githubusercontent.com/Jscio/NevermoreModules/main/modules/deferred.lua",
  ["event-handler-utils"] = "https://raw.githubusercontent.com/Jscio/NevermoreModules/main/modules/event-handler-utils.lua"
}

getgenv().NVRMR_REQUIRE = function(moduleName: string)
    if not nvmrModulesList[moduleName] then
        warn(string.format("[NVRMR]: Module '%s' not found in the module list", moduleName))
        return nil
    end

    if loadedModules[moduleName] then
        return loadedModules[moduleName]
    end

    local success, module = pcall(function()
        return loadstring(game:HttpGet(nvmrModulesList[moduleName]))()
    end)

    if not success then
        warn(string.format("[NVRMR]: Failed to load module '%s'. Error: %s", moduleName, module))
        return nil
    end

    loadedModules[moduleName] = module
    return module
end
