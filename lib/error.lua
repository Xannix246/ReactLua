local component = require('component')
local GUIBackground = require('../lib/GUIBackground')
local gpu = component.gpu
local width, height = gpu.getResolution()

local err={}

function err.set(err1)
    GUIBackground.GUIError()
    gpu.setForeground(0x000000)
    gpu.set((width/2-w+3), (height/2)-h*0.4, "Error: " .. err1)
end

return err