local component = require('component')
local GUIBackground = require('../lib/GUIBackground')
local gpu = component.gpu
local width, height = gpu.getResolution()
local w, h = width/4, height/6
_G.error_visible=false

local err={}

function err.set(err1)
    if error_visible then
        GUIBackground.GUIError()
        gpu.setForeground(0x000000)
        gpu.set((width/2-w+3), (height/2)-h*0.4, "Error: " .. err1)
    end

end

return err