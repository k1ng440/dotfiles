local M = {}

local whichkey = require("which-key")
local nnoremap = require("k1ng440.keymapper").nnoremap

nnoremap("<Home>", function()
    require("dapui").toggle(1)
end)
nnoremap("<End>", function()
    require("dapui").toggle(2)
end)
nnoremap("<A-Up>", function()
    require("dap").continue()
end)
nnoremap("<A-Down>", function()
    require("dap").step_over()
end)
nnoremap("<A-Right>", function()
    require("dap").step_into()
end)
nnoremap("<A-Left>", function()
    require("dap").step_out()
end)
nnoremap("<F2>", function()
    require("dap").toggle_breakpoint()
end)
nnoremap("<F3>", function()
    vim.ui.input({ prompt = "Condition: " }, function(input)
        require("dap").set_breakpoint(input)
    end)
end)
nnoremap("<F5>", function()
    require("dap-go").debug_test()
end)

function M.setup()
    local keymap = {
        d = {
            name = "DAP",
            R = { "<cmd>lua require('dap').run_to_cursor()<cr>", "Run to Cursor" },
            E = { "<cmd>lua require('dapui').eval(vim.fn.input '[Expression] > ')<cr>", "Evaluate Input" },
            C = {
                "<cmd>lua require('dap').set_breakpoint(vim.fn.input '[Condition] > ')<cr>",
                "Conditional Breakpoint",
            },
            U = { "<cmd>lua require('dapui').toggle()<cr>", "Toggle UI" },
            b = { "<cmd>lua require('dap').step_back()<cr>", "Step Back" },
            c = { "<cmd>lua require('dap').continue()<cr>", "Continue" },
            d = { "<cmd>lua require('dap').disconnect()<cr>", "Disconnect" },
            e = { "<cmd>lua require('dapui').eval()<cr>", "Evaluate" },
            g = { "<cmd>lua require('dap').session()<cr>", "Get Session" },
            h = { "<cmd>lua require('dap.ui.widgets').hover()<cr>", "Hover Variables" },
            S = { "<cmd>lua require('dap.ui.widgets').scopes()<cr>", "Scopes" },
            i = { "<cmd>lua require('dap').step_into()<cr>", "Step Into" },
            o = { "<cmd>lua require('dap').step_over()<cr>", "Step Over" },
            p = { "<cmd>lua require('dap').pause.toggle()<cr>", "Pause" },
            q = { "<cmd>lua require('dap').close()<cr>", "Quit" },
            r = { "<cmd>lua require('dap').repl.toggle()<cr>", "Toggle Repl" },
            s = { "<cmd>lua require('dap').continue()<cr>", "Start" },
            t = { "<cmd>lua require('dap').toggle_breakpoint()<cr>", "Toggle Breakpoint" },
            x = { "<cmd>lua require('dap').terminate()<cr>", "Terminate" },
            u = { "<cmd>lua require('dap').step_out()<cr>", "Step Out" },
        },
    }

    whichkey.register(keymap, {
        mode = "n",
        prefix = "<leader>",
        buffer = nil,
        silent = true,
        noremap = true,
        nowait = false,
    })

    local keymap_v = {
        d = {
            name = "Debug",
            e = { "<cmd>lua require'dapui'.eval()<cr>", "Evaluate" },
        },
    }
    whichkey.register(keymap_v, {
        mode = "v",
        prefix = "<leader>",
        buffer = nil,
        silent = true,
        noremap = true,
        nowait = false,
    })
end

return M
