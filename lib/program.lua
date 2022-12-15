local component = require('component')
local gpu = component.gpu
local GUIBackground = require('../lib/GUIBackground')
local button = require('../lib/button')
local notopen = true
x, y = 1, 5
w, h = gpu.getResolution()
width, height = w, h-15

local program={}

function program.set()
    
end

return program