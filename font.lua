local wezterm = require 'wezterm'

local font_size = 15
local bold = true
local font_family = ({
       'FiraCode Nerd Font',
    })[1]

local options = {}
if bold then
   options['weight'] = 'Medium'
end

local font = wezterm.font(font_family, options)

return {
   font      = font,
   font_size = font_size,
}
