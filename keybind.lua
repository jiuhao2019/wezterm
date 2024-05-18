local wezterm = require 'wezterm'
local act = wezterm.action

local keys = {
                { key = 'y', mods  = "LEADER",action = act { CopyTo                = "Clipboard"}},                    -- 复制粘贴
                { key = 'p', mods  = "LEADER",action = act { PasteFrom             = "Clipboard"}},
   
	            { key = 'f', mods = 'LEADER', action = act.ActivateKeyTable({ name = 'resize_font', one_shot = false, timeout_milliseconds = 3000, }), },-- key-tables --
             }

local key_tables = {
                      resize_font = {
                                       { key = 'k',      action = act.IncreaseFontSize },
                                       { key = 'j',      action = act.DecreaseFontSize },
                                       { key = 'r',      action = act.ResetFontSize },
                                       { key = 'Escape', action = 'PopKeyTable' },
                                       { key = 'q',      action = 'PopKeyTable' },
                                    },
                    }
return {
          disable_default_key_bindings   = true,
          enable_tab_bar                 = false,
          use_fancy_tab_bar              = false,
          tab_bar_at_bottom              = false,
          show_new_tab_button_in_tab_bar = false,
          leader                         = { key = "z", mods = "CMD", timeout_milliseconds = 3000},
          keys                           = keys,
          key_tables                     = key_tables,
       }
