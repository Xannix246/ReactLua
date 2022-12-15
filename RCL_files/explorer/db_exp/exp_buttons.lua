local component = require('component')
local gpu = component.gpu
local w, h = gpu.getResolution()

exp_btn = { 
    {   
        X = 1,
        Y = 1,
        W = 2,
        H = 1,
        text = "☰☰",
        textColor = 0xCCCCCC,
        color = 0xFFFFFF,

        action = function()
            exp_menu.set()
        end

    },
}