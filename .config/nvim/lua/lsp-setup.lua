-- https://github.com/junnplus/nvim-lsp-setup

require('nvim-lsp-setup').setup({
    -- nvim-lsp-installer
    -- https://github.com/williamboman/nvim-lsp-installer#configuration
    installer = {
      ensure_installed = {'cssls', 'gopls', 'html', 'tsserver', 'yamlls', 'tailwindcss'}
    },
    default_mappings = false,
    mappings = {
    },
    -- Global on_attach
    on_attach = function(client, bufnr)
        require('nvim-lsp-setup.utils').format_on_save(client)

        if client.server_capabilities.documentHighlightProvider then
            vim.api.nvim_create_augroup("lsp_document_highlight", { clear = true })
            vim.api.nvim_clear_autocmds { buffer = bufnr, group = "lsp_document_highlight" }
            vim.api.nvim_create_autocmd("CursorHold", {
                callback = vim.lsp.buf.document_highlight,
                buffer = bufnr,
                group = "lsp_document_highlight",
                desc = "Document Highlight",
            })
            vim.api.nvim_create_autocmd("CursorMoved", {
                callback = vim.lsp.buf.clear_references,
                buffer = bufnr,
                group = "lsp_document_highlight",
                desc = "Clear All the References",
            })
        end
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

