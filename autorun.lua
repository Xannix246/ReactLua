-- находится по пути ../reactlua кста
require('/db/autorun_files')

function autorun_p()
    for i, #autorun do
        local program = require('RCL_files/' .. autorun[i])
        program.autorun[i]()
    end
end