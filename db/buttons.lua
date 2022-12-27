local component = require('component')
local gpu = component.gpu
local w, h = gpu.getResolution()
local menu = require('../lib/menu')
local autorun = require('../autorun')

_G.btn = { 
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
        end

    },
    {
        X = w-1,
        Y = 1,
        W = 2,
        H = 1,
        text = "◱",
        textColor = 0x000000,
        color = 0xFFFFFF,

        action = function()
            gpu.setBackground(0x000000)
            gpu.setForeground(0xFFFFFF)
            gpu.fill(1, 1, w, h, " ")
            os.exit()
        end
    },
    {
        X = 2,
        Y = 3,
        W = 4,
        H = 1,
        text = "File",
        textColor = 0x000000,
        color = 0xFFFF01,

        action = function()
            autorun.set()
        end
    },
    {
        X = 9,
        Y = 3,
        W = 4,
        H = 1,
        text = "View",
        textColor = 0x000000,
        color = 0xFFFF01

    },
    {
        X = 16,
        Y = 3,
        W = 7,
        H = 1,
        text = "Special",
        textColor = 0x000000,
        color = 0xFFFF01

    }
}