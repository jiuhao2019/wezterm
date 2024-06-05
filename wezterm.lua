local utils = require 'utils'

require('status').enable()

local modules = utils.map({
                           'window',
                           'font',
                           'theme',
                           'tab',
                           'keybind',}, utils.req)


return utils.merge(table.unpack(modules))
