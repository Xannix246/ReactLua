local GUIBackground = require('../lib/GUIBackground')
local gpu = component.gpu
local width, height = gpu.getResolution()

local error={}

function error.set(err)
    GUIBackground.GUIError()
    gpu.setBackground(0x000000)
    gpu.set((width/2-w+3), (height/2)-h*0.4, "Error: " .. err)
end

return error