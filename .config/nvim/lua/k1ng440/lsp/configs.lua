local status_ok, mason = pcall(require, "mason")
if not status_ok then
    return
end

local lspconfig = require("lspconfig")

local nlspsettings_ok, nlspsettings = pcall(require, "nlspsettings")
if nlspsettings_ok then
    nlspsettings.setup({
        config_home = vim.fn.stdpath("config") .. "/nlsp-settings",
        local_settings_dir = ".nlsp-settings",
        local_settings_root_markers = { ".git" },
        append_default_schemas = true,
        loader = "json",
        nvim_notify = {
            enabled = true,
        },
    })
end

local servers = {
    "jsonls",
    "sumneko_lua",
    "gopls",
    "graphql",
    "dockerls",
    "html",
    "terraformls",
    "tsserver",
    "yamlls",
    "sqls",
    "vuels",
    --[[ "angularls", ]]
    --[[ "tailwindcss", ]]
    "ansiblels",
    "bashls",
    "intelephense",
}

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

local masonLsp = require("mason-lspconfig")

masonLsp.setup({
    ensure_installed = servers,
})

masonLsp.setup_handlers({
    function(server)
        local opts = {
            on_attach = require("k1ng440.lsp.handlers").on_attach,
            capabilities = require("k1ng440.lsp.handlers").capabilities,
        }

        local has_custom_opts, server_custom_opts = pcall(require, "k1ng440.lsp.settings." .. server)
        if has_custom_opts then
            opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
        end
        --[[ if server == 'intelephense' then ]]
        --[[     print(vim.inspect(opts)) ]]
        --[[ end ]]

        lspconfig[server].setup(opts)
    end,
})
