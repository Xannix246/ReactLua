-- находится по пути ../reactlua кста
require('db/autorun_files')

local autorun = {}

function autorun_p.set()
    for i=1, #autorun do
        local program = require('RCL_files/' .. autorun[i])
        program.set()
    end
end

return autorun