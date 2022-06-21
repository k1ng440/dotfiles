local status_ok, legendary = pcall(require, "legendary")
if not status_ok then
    return
end

local nnoremap = require("k1ng440.keymapper").nnoremap
legendary.setup({ include_builtin = true, auto_register_which_key = true })
nnoremap("<C-p>", "<cmd>lua require('legendary').find()<CR>")
