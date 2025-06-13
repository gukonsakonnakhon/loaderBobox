
print("Loading Bobox Scripts...")


local MAIN_SCRIPT = "https://raw.githubusercontent.com/gukonsakonnakhon/FreeSrc/refs/heads/main/Protected_7312332916120313.lua"
local TOGGLE_GUI = "https://raw.githubusercontent.com/gukonsakonnakhon/FreeSrc/refs/heads/main/fuckingtoggle.lua"
if getgenv().togglegui == nil then
    getgenv().togglegui = false
end
if getgenv().togglegui == true then
    print("Loading Toggle GUI...")
    local success, result = pcall(function()
        loadstring(game:HttpGet(TOGGLE_GUI))()
    end)
    if success then
        print("Toggle GUI loaded successfully!")
    else
        warn("Failed to load Toggle GUI: " .. tostring(result))
    end
else
    print("Toggle GUI disabled (togglegui = false)")
end


print("Loading Main Script...")
local success, result = pcall(function()
    loadstring(game:HttpGet(MAIN_SCRIPT))()
end)

if success then
    print("Main Script loaded successfully!")
else
    warn("Failed to load Main Script: " .. tostring(result))
end
print("All scripts loaded!")
