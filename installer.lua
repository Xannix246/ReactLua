 
local internet = require("internet")
local fs = require("filesystem")
local component = require('component')
local gpu = component.gpu
local width, height = gpu.getResolution()
local event = require("event")
local term = require("term")
local shell = require("shell")
    
local files = {
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/startup.lua", "reactlua/startup.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/lib/button.lua", "reactlua/lib/button.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/lib/blink.lua", "reactlua/lib/blink.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/lib/GUIBackground.lua", "reactlua/lib/GUIBackground.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/db/buttons.lua", "reactlua/db/buttons.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/lib/menu.lua", "reactlua/lib/menu.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/other/package.lua", "lib/package.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/other/greetings.txt", "usr/misc/greetings.txt" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/db/menu_buttons.lua", "reactlua/db/menu_buttons.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/lib/try-catch.lua", "reactlua/lib/try-catch.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/lib/error.lua", "reactlua/lib/error.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/db/error_buttons.lua", "reactlua/db/error_buttons.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/db/autorun_files.lua", "reactlua/db/autorun_files.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/lib/program.lua", "reactlua/lib/program.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/autorun.lua", "reactlua/autorun.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/RCL_files/explorer/explorer.lua", "reactlua/RCL_files/explorer/explorer.lua" }, 
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/RCL_files/explorer/bin/exp_menu.lua", "reactlua/RCL_files/explorer/bin/exp_menu.lua" },
    { "https://raw.githubusercontent.com/Xannix246/ReactLua/main/RCL_files/explorer/db_exp/exp_buttons.lua", "reactlua/RCL_files/explorer/db_exp/exp_puttons.lua" },  
}
    
term.clear()
local firstStage = true

gpu.set(4, 4, "Setup prepares ReactLua to run on your computer.")
gpu.set(4, 5, "It also helps you set up your disks in the most efficient way for:")
gpu.set(7, 7, " - starting ReactLua")
gpu.set(7, 8, " - running ReactLua applications")
gpu.set(7, 10, "When you're  ╔══════════════════════════════════════╗")
gpu.set(7, 11, "ready:       ║ TO                         PRESS     ║")
gpu.set(7, 12, "             ╟──────────────────────────────────────╢")
gpu.set(7, 13, "             ║ Continue                     C       ║")
gpu.set(7, 14, "             ║ Quit                         Q       ║")
gpu.set(7, 15, "             ╚══════════════════════════════════════╝")

while firstStage == true do
    local key = {event.pull("key_down")} 
    if key[4] == 46 then
        term.clear()
        firstStage = false

    elseif key[4] == 16 then
        term.clear()
        os.exit()
    end
end

local secondStage = true

gpu.set(4, 4, "Now Setup will copy the ReactLua files to your hard disk.")
gpu.set(4, 6, "Setup will create and put the ReactLua files to the 'ReactLua' directory.")
gpu.set(7, 8, "When you're  ╔══════════════════════════════════════╗")
gpu.set(7, 9, "ready:       ║ TO                         PRESS     ║")
gpu.set(7, 10, "             ╟──────────────────────────────────────╢")
gpu.set(7, 11, "             ║ Continue                     C       ║")
gpu.set(7, 12, "             ║ Quit                         Q       ║")
gpu.set(7, 13, "             ╚══════════════════════════════════════╝")

while secondStage == true do
    local key = {event.pull("key_down")} 
    if key[4] == 46 then
        term.clear()
        secondStage = false

    elseif key[4] == 16 then
        term.clear()
        os.exit()
    end
end

gpu.set(4, 4, "Setup is copying ReactLua files to your hard disk.")

for i = 1, #files do
        gpu.set(4, height-4, "Copying " .. files[i][2])
        fs.makeDirectory(fs.path("../" .. files[i][2]))
        shell.execute("wget -fq " .. files[i][1] .. " " .. "../" .. files[i][2] .. "")
      end

term.clear()

gpu.set(4, 4, "Setup successfully copied ReactLua files to your hard disk.")
gpu.set(4, 6, "To run ReactLua, run the following commands:")
gpu.set(4, 7, "cd /ReactLua")
gpu.set(4, 8, "startup")