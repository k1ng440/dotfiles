local keymap = require('k1ng440.keymapper')
local nnoremap = keymap.nnoremap

return {
	settings = {},
	setup = {
		commands = {
			terminal = {
				function()
                    print("HELLO") 

                end,
			},
		},
	},
}
