local loadedModules = getgenv().NVRMR_LOADED or {}
getgenv().NVRMR_LOADED = loadedModules

local nvmrModulesList = {
  "promise" = "",
  "maid" = "",
  "signal" = "",
  "deferred" = "https://raw.githubusercontent.com/Jscio/NevermoreModules/main/modules/deferred.lua"
}

local function crequire(moduleName: string)
  if not nvmrModulesList[moduleName] then
    warn("[NVMR]: The required module not found")
    return
  end
  
  if loadedModules[moduleName] then
    return loadedModules[moduleName]
  end

  local module = loadstring(game:HttpGet(nvmrModulesList[moduleName]))()
  loadedModules[moduleName] = module
end
