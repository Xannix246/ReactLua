local component = require('component')
local gpu = component.gpu

local button={}

function button.set(X,Y,W,H,text,textColor,color)
    gpu.setBackground(color)
    gpu.setForeground(textColor)
    gpu.fill(X, Y, W, H, " ")
    gpu.set(X, Y, text)  
end

return button