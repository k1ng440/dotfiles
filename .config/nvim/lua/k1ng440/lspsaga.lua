local status_ok, saga = pcall(require, "lspsaga")
if not status_ok then
    return
end

saga.init_lsp_saga({
    saga_winblend = 100,
    border_style = "single",
    server_filetype_map = {},
    code_action_lightbulb = {
        enable = true,
        sign = true,
        enable_in_insert = false,
        sign_priority = 20,
        virtual_text = true,
    },
})

local keymapper = require("k1ng440.keymapper")
local nnoremap = keymapper.nnoremap
local inoremap = keymapper.inoremap

-- Definition preview
nnoremap("gd", "<cmd>Lspsaga lsp_finder<CR>")
nnoremap("K", "<cmd>Lspsaga hover_doc<CR>")
inoremap("<C-k>", "<cmd>Lspsaga signature_help<CR>")

-- Diagnsotic jump
nnoremap("[e", "<cmd>Lspsaga diagnostic_jump_next<CR>")
nnoremap("]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")

-- Only jump to error
nnoremap("[E", function()
    require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })

nnoremap("]E", function()
    require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, { silent = true })
