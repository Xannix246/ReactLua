local component = require('component')
local gpu = component.gpu
local width, height = gpu.getResolution()
local w, h = width/4, height/6
local n, m = (width/2)-w, (height/2)-h
require('../lib/error')

_G.m_btn = { 
    {   
        X = n+width*0.2,
        Y = height/2,
        W = 1,
        H = 1,
        text = "  OK   ",
        textColor = 0xFFFFFF,
        color = 0x000000,

        action = function()
            error_visible=false  
        end

    },
}