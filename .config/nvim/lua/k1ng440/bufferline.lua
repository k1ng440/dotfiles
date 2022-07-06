local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
    return
end

bufferline.setup({
    options = {
        mode = "buffers",
        numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
        diagnostics = "nvim_lsp",

        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        separator_style = "slant", -- | "thick" | "thin" | { 'any', 'any' },
    },
})

local nnoremap = require("k1ng440.keymapper").nnoremap

nnoremap("<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>")
nnoremap("<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>")
nnoremap("<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>")
nnoremap("<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>")
nnoremap("<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>")
nnoremap("<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>")
nnoremap("<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>")
nnoremap("<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>")
nnoremap("<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>")
