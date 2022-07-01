local status_ok, harpoon = pcall(require, "harpoon")
if not status_ok then
    return
end

local settings = {
    -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
    save_on_toggle = false,

    -- saves the harpoon file upon every change. disabling is unrecommended.
    save_on_change = true,

    -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
    enter_on_sendcmd = false,

    -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
    tmux_autoclose_windows = false,

    -- filetypes that you want to prevent from adding to the harpoon list menu.
    excluded_filetypes = { "harpoon" },

    -- set marks specific to each git branch inside git repository
    mark_branch = false,
}
harpoon.setup(settings)

require("telescope").load_extension("harpoon")

local nnoremap = require("k1ng440.keymapper").nnoremap
local silent = { silent = true }

nnoremap("<leader>a", function()
    require("harpoon.mark").add_file()
end, silent)
nnoremap("<leader>tc", function()
    require("harpoon.cmd-ui").toggle_quick_menu()
end, silent)

nnoremap("<C-1>", function()
    require("harpoon.ui").nav_file(1)
end, silent)
nnoremap("<C-2>", function()
    require("harpoon.ui").nav_file(2)
end, silent)
nnoremap("<C-3>", function()
    require("harpoon.ui").nav_file(3)
end, silent)
nnoremap("<C-4>", function()
    require("harpoon.ui").nav_file(4)
end, silent)
nnoremap("<C-5>", function()
    require("harpoon.ui").nav_file(5)
end, silent)
