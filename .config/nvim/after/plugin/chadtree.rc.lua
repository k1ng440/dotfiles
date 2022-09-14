local status_ok, chadtree = pcall(require, "chadtree")
if not status_ok then
    print("chadtree does not exist")
    return
end

local keymapper = require("k1ng440.keymapper")
local nnoremap = keymapper.nnoremap

local chadtree_settings = {
    view = {
        open_direction = "left",
        width = 30,
    },
}

vim.api.nvim_set_var("chadtree_settings", chadtree_settings)

nnoremap("\\", "<cmd>CHADopen<cr>")
