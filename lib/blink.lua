local component = require('component')
local button = require('../lib/button')
local gpu = component.gpu

local blink={}

function blink.set(X,Y,W,H,text,textColor,color)
    color, textColor = textColor, color
    button.set(X,Y,W,H,text,textColor,color)
    os.sleep(0.09)
    color, textColor = textColor, color
    button.set(X,Y,W,H,text,textColor,color)
end

return blink