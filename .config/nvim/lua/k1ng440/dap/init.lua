local M = {}

local function configure()
    local dap_install = require("dap-install")
    dap_install.setup({
        installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
    })

    local dap_breakpoint = {
        error = {
            text = "🟥",
            texthl = "LspDiagnosticsSignError",
            linehl = "",
            numhl = "",
        },
        rejected = {
            text = "",
            texthl = "LspDiagnosticsSignHint",
            linehl = "",
            numhl = "",
        },
        stopped = {
            text = "⭐️",
            texthl = "LspDiagnosticsSignInformation",
            linehl = "DiagnosticUnderlineInfo",
            numhl = "LspDiagnosticsSignInformation",
        },
    }

    vim.fn.sign_define("DapBreakpoint", dap_breakpoint.error)
    vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)
    vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)
end

local function configure_exts()
    require("nvim-dap-virtual-text").setup({
        commented = true,
    })

    local dap, dapui = require("dap"), require("dapui")
    dapui.setup({}) -- use default
    dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open(1)
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
    end
end

local function configure_debuggers()
    require("k1ng440.dap.lua").setup()
    require("k1ng440.dap.python").setup()
    require("k1ng440.dap.rust").setup()
    require("k1ng440.dap.go").setup()
    require("k1ng440.dap.csharp").setup()
    require("k1ng440.dap.kotlin").setup()
    require("k1ng440.dap.typescript").setup()
end

function M.setup()
    configure() -- Configuration
    configure_exts() -- Extensions
    configure_debuggers() -- Debugger
    require("k1ng440.dap.keymaps").setup() -- Keymaps
end

return M
