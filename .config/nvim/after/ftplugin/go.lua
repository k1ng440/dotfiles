local Terminal = require("toggleterm.terminal").Terminal
local notify = require("notify")

local keymapper = require("k1ng440.keymapper")
local nnoremap = keymapper.nnoremap

local gotest = Terminal:new({
    cmd = "go test -failfast -v .",
    dir = vim.fn.expand("%:p:h"),
    close_on_exit = false,
    float_opts = {
        border = "double",
    },
    on_open = function(term)
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
    end,
    on_exit = function(t, job, exit_code, name)
        if exit_code == 0 then
            notify("Test Passed", vim.log.levels.INFO, {
                title = "Go Test",
            })
            _GO_TEST()
            return
        end

        notify("Test Failed", vim.log.levels.ERROR, {
            title = "Go Test",
        })
    end,
})

function _GO_TEST()
    gotest:toggle()
end

nnoremap("<leader>lr", "<cmd>lua _GO_TEST()<cr>")
