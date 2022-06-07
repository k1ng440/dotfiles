-- https://github.com/junnplus/nvim-lsp-setup

require('nvim-lsp-setup').setup({
    -- nvim-lsp-installer
    -- https://github.com/williamboman/nvim-lsp-installer#configuration
    installer = {
      ensure_installed = {'cssls', 'gopls', 'html', 'tsserver', 'yamlls', 'tailwindcss'}
    },
    -- Default mappings
    -- gD = 'lua vim.lsp.buf.declaration()',
    -- gd = 'lua vim.lsp.buf.definition()',
    -- gt = 'lua vim.lsp.buf.type_definition()',
    -- gi = 'lua vim.lsp.buf.implementation()',
    -- gr = 'lua vim.lsp.buf.references()',
    -- K = 'lua vim.lsp.buf.hover()',
    -- ['<C-k>'] = 'lua vim.lsp.buf.signature_help()',
    -- ['<space>rn'] = 'lua vim.lsp.buf.rename()',
    -- ['<space>ca'] = 'lua vim.lsp.buf.code_action()',
    -- ['<space>f'] = 'lua vim.lsp.buf.formatting()',
    -- ['<space>e'] = 'lua vim.diagnostic.open_float()',
    -- ['[d'] = 'lua vim.diagnostic.goto_prev()',
    -- [']d'] = 'lua vim.diagnostic.goto_next()',
    default_mappings = true,
    -- Custom mappings, will overwrite the default mappings for the same key
    -- Example mappings for telescope pickers:
    -- gd = 'lua require"telescope.builtin".lsp_definitions()',
    -- gi = 'lua require"telescope.builtin".lsp_implementations()',
    -- gr = 'lua require"telescope.builtin".lsp_references()',
    mappings = {
      gd = 'lua require"telescope.builtin".lsp_definitions()',
      gi = 'lua require"telescope.builtin".lsp_implementations()',
      gr = 'lua require"telescope.builtin".lsp_references()',
    },
    -- Global on_attach
    on_attach = function(client, bufnr)
        require('nvim-lsp-setup.utils').format_on_save(client)
    end,
    -- Global capabilities
    capabilities = vim.lsp.protocol.make_client_capabilities(),
    -- Configuration of LSP servers 
    servers = {
        gopls = {
            analyses = {
              unusedparams = true,
            },
            staticcheck = true,
        },

        -- Install LSP servers automatically
        -- LSP server configuration please see: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
        -- pylsp = {},
        -- rust_analyzer = {
        --     settings = {
        --         ['rust-analyzer'] = {
        --             cargo = {
        --                 loadOutDirsFromCheck = true,
        --             },
        --             procMacro = {
        --                 enable = true,
        --             },
        --         },
        --     },
        -- },
    },
})

