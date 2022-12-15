-- находится по пути ../reactlua кста
require('db/autorun_files')

local autorun = {}

function autorun.set()
        local program = require('RCL_files/explorer')
        program.set()
end

return autorun