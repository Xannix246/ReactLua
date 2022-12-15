local component = require('component')
local gpu = component.gpu
local w, h = gpu.getResolution()

_G.m_btn = { 
    {   
        X = 1,
        Y = 1,
        W = 2,
        H = 1,
        text = "☰☰",
        textColor = 0x000000,
        color = 0xFFFFFF,

        action = function()
            menu.set()
            GUIBackground.GUIMenu()
        end

    },
}