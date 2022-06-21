-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function("has", { "nvim-0.5" }) ~= 1 then
    vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
    return
end

vim.api.nvim_command("packadd packer.nvim")

local no_errors, error_msg = pcall(function()
    local time
    local profile_info
    local should_profile = false
    if should_profile then
        local hrtime = vim.loop.hrtime
        profile_info = {}
        time = function(chunk, start)
            if start then
                profile_info[chunk] = hrtime()
            else
                profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
            end
        end
    else
        time = function(chunk, start) end
    end

    local function save_profiles(threshold)
        local sorted_times = {}
        for chunk_name, time_taken in pairs(profile_info) do
            sorted_times[#sorted_times + 1] = { chunk_name, time_taken }
        end
        table.sort(sorted_times, function(a, b)
            return a[2] > b[2]
        end)
        local results = {}
        for i, elem in ipairs(sorted_times) do
            if not threshold or threshold and elem[2] > threshold then
                results[i] = elem[1] .. " took " .. elem[2] .. "ms"
            end
        end

        _G._packer = _G._packer or {}
        _G._packer.profile_output = results
    end

    time([[Luarocks path setup]], true)
    local package_path_str =
        "/home/k1ng/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/k1ng/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/k1ng/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/k1ng/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
    local install_cpath_pattern = "/home/k1ng/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
    if not string.find(package.path, package_path_str, 1, true) then
        package.path = package.path .. ";" .. package_path_str
    end

    if not string.find(package.cpath, install_cpath_pattern, 1, true) then
        package.cpath = package.cpath .. ";" .. install_cpath_pattern
    end

    time([[Luarocks path setup]], false)
    time([[try_loadstring definition]], true)
    local function try_loadstring(s, component, name)
        local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
        if not success then
            vim.schedule(function()
                vim.api.nvim_notify(
                    "packer.nvim: Error running " .. component .. " for " .. name .. ": " .. result,
                    vim.log.levels.ERROR,
                    {}
                )
            end)
        end
        return result
    end

    time([[try_loadstring definition]], false)
    time([[Defining packer_plugins]], true)
    _G.packer_plugins = {
        ["Comment.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/Comment.nvim",
            url = "https://github.com/numToStr/Comment.nvim",
        },
        ["FixCursorHold.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
            url = "https://github.com/antoinemadec/FixCursorHold.nvim",
        },
        LuaSnip = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/LuaSnip",
            url = "https://github.com/L3MON4D3/LuaSnip",
        },
        ["bufferline.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
            url = "https://github.com/akinsho/bufferline.nvim",
        },
        ["cmp-buffer"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/cmp-buffer",
            url = "https://github.com/hrsh7th/cmp-buffer",
        },
        ["cmp-cmdline"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
            url = "https://github.com/hrsh7th/cmp-cmdline",
        },
        ["cmp-nvim-lsp"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
            url = "https://github.com/hrsh7th/cmp-nvim-lsp",
        },
        ["cmp-nvim-lua"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
            url = "https://github.com/hrsh7th/cmp-nvim-lua",
        },
        ["cmp-path"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/cmp-path",
            url = "https://github.com/hrsh7th/cmp-path",
        },
        cmp_luasnip = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
            url = "https://github.com/saadparwaiz1/cmp_luasnip",
        },
        ["dap-buddy.nvim"] = {
            load_after = {
                ["nvim-dap"] = true,
            },
            loaded = false,
            needs_bufread = false,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/opt/dap-buddy.nvim",
            url = "https://github.com/Pocco81/dap-buddy.nvim",
        },
        ["dressing.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/dressing.nvim",
            url = "https://github.com/stevearc/dressing.nvim",
        },
        ["editorconfig.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/editorconfig.nvim",
            url = "https://github.com/gpanders/editorconfig.nvim",
        },
        ["friendly-snippets"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/friendly-snippets",
            url = "https://github.com/rafamadriz/friendly-snippets",
        },
        ["gitsigns.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
            url = "https://github.com/lewis6991/gitsigns.nvim",
        },
        ["impatient.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/impatient.nvim",
            url = "https://github.com/lewis6991/impatient.nvim",
        },
        ["legendary.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/legendary.nvim",
            url = "https://github.com/mrjones2014/legendary.nvim",
        },
        ["lightspeed.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/lightspeed.nvim",
            url = "https://github.com/ggandor/lightspeed.nvim",
        },
        ["lualine.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/lualine.nvim",
            url = "https://github.com/nvim-lualine/lualine.nvim",
        },
        ["nlsp-settings.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/nlsp-settings.nvim",
            url = "https://github.com/tamago324/nlsp-settings.nvim",
        },
        ["null-ls.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
            url = "https://github.com/jose-elias-alvarez/null-ls.nvim",
        },
        ["nvim-autopairs"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
            url = "https://github.com/windwp/nvim-autopairs",
        },
        ["nvim-cmp"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/nvim-cmp",
            url = "https://github.com/hrsh7th/nvim-cmp",
        },
        ["nvim-dap"] = {
            after = {
                "telescope-dap.nvim",
                "nvim-dap-ui",
                "dap-buddy.nvim",
                "nvim-dap-virtual-text",
                "one-small-step-for-vimkind",
                "nvim-dap-python",
                "nvim-dap-go",
            },
            config = {
                "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\21k1ng440.dap.init\frequire\0",
            },
            loaded = false,
            needs_bufread = false,
            only_cond = false,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/opt/nvim-dap",
            url = "https://github.com/mfussenegger/nvim-dap",
            wants = { "nvim-dap-virtual-text", "dap-buddy.nvim", "nvim-dap-ui", "nvim-dap-python", "which-key.nvim" },
        },
        ["nvim-dap-go"] = {
            load_after = {
                ["nvim-dap"] = true,
            },
            loaded = false,
            needs_bufread = false,
            only_cond = false,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/opt/nvim-dap-go",
            url = "https://github.com/leoluz/nvim-dap-go",
        },
        ["nvim-dap-python"] = {
            load_after = {
                ["nvim-dap"] = true,
            },
            loaded = false,
            needs_bufread = false,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/opt/nvim-dap-python",
            url = "https://github.com/mfussenegger/nvim-dap-python",
        },
        ["nvim-dap-ui"] = {
            load_after = {
                ["nvim-dap"] = true,
            },
            loaded = false,
            needs_bufread = false,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/opt/nvim-dap-ui",
            url = "https://github.com/rcarriga/nvim-dap-ui",
        },
        ["nvim-dap-virtual-text"] = {
            load_after = {
                ["nvim-dap"] = true,
            },
            loaded = false,
            needs_bufread = false,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/opt/nvim-dap-virtual-text",
            url = "https://github.com/theHamsta/nvim-dap-virtual-text",
        },
        ["nvim-lsp-installer"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
            url = "https://github.com/williamboman/nvim-lsp-installer",
        },
        ["nvim-lspconfig"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
            url = "https://github.com/neovim/nvim-lspconfig",
        },
        ["nvim-notify"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/nvim-notify",
            url = "https://github.com/rcarriga/nvim-notify",
        },
        ["nvim-reload"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/nvim-reload",
            url = "https://github.com/famiu/nvim-reload",
        },
        ["nvim-treesitter"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
            url = "https://github.com/nvim-treesitter/nvim-treesitter",
        },
        ["nvim-treesitter-context"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
            url = "https://github.com/nvim-treesitter/nvim-treesitter-context",
        },
        ["nvim-ts-context-commentstring"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
            url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring",
        },
        ["nvim-ts-rainbow"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
            url = "https://github.com/p00f/nvim-ts-rainbow",
        },
        ["nvim-web-devicons"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
            url = "https://github.com/kyazdani42/nvim-web-devicons",
        },
        ["one-small-step-for-vimkind"] = {
            load_after = {
                ["nvim-dap"] = true,
            },
            loaded = false,
            needs_bufread = false,
            only_cond = false,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/opt/one-small-step-for-vimkind",
            url = "https://github.com/jbyuki/one-small-step-for-vimkind",
        },
        ["packer.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/packer.nvim",
            url = "https://github.com/wbthomason/packer.nvim",
        },
        ["plenary.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/plenary.nvim",
            url = "https://github.com/nvim-lua/plenary.nvim",
        },
        ["popup.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/popup.nvim",
            url = "https://github.com/nvim-lua/popup.nvim",
        },
        ["project.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/project.nvim",
            url = "https://github.com/ahmedkhalf/project.nvim",
        },
        ["telescope-dap.nvim"] = {
            load_after = {
                ["nvim-dap"] = true,
            },
            loaded = false,
            needs_bufread = false,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/opt/telescope-dap.nvim",
            url = "https://github.com/nvim-telescope/telescope-dap.nvim",
        },
        ["telescope-fzf-native.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
            url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim",
        },
        ["telescope.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/telescope.nvim",
            url = "https://github.com/nvim-telescope/telescope.nvim",
        },
        ["toggleterm.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
            url = "https://github.com/akinsho/toggleterm.nvim",
        },
        ["tokyonight.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
            url = "https://github.com/folke/tokyonight.nvim",
        },
        ["vim-bbye"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/vim-bbye",
            url = "https://github.com/moll/vim-bbye",
        },
        ["vim-dispatch"] = {
            commands = { "Dispatch", "Make", "Focus", "Start" },
            loaded = false,
            needs_bufread = false,
            only_cond = false,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/opt/vim-dispatch",
            url = "https://github.com/tpope/vim-dispatch",
        },
        ["vim-illuminate"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/vim-illuminate",
            url = "https://github.com/RRethy/vim-illuminate",
        },
        ["vim-sensible"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/vim-sensible",
            url = "https://github.com/tpope/vim-sensible",
        },
        ["which-key.nvim"] = {
            loaded = true,
            path = "/home/k1ng/.local/share/nvim/site/pack/packer/start/which-key.nvim",
            url = "https://github.com/folke/which-key.nvim",
        },
    }

    time([[Defining packer_plugins]], false)
    local module_lazy_loads = {
        ["^dap"] = "nvim-dap",
        ["^dap%-go"] = "nvim-dap-go",
        ["^osv"] = "one-small-step-for-vimkind",
    }
    local lazy_load_called = { ["packer.load"] = true }
    local function lazy_load_module(module_name)
        local to_load = {}
        if lazy_load_called[module_name] then
            return nil
        end
        lazy_load_called[module_name] = true
        for module_pat, plugin_name in pairs(module_lazy_loads) do
            if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
                to_load[#to_load + 1] = plugin_name
            end
        end

        if #to_load > 0 then
            require("packer.load")(to_load, { module = module_name }, _G.packer_plugins)
            local loaded_mod = package.loaded[module_name]
            if loaded_mod then
                return function(modname)
                    return loaded_mod
                end
            end
        end
    end

    if not vim.g.packer_custom_loader_enabled then
        table.insert(package.loaders, 1, lazy_load_module)
        vim.g.packer_custom_loader_enabled = true
    end

    -- Command lazy-loads
    time([[Defining lazy-load commands]], true)
    pcall(
        vim.cmd,
        [[command -nargs=* -range -bang -complete=file Dispatch lua require("packer.load")({'vim-dispatch'}, { cmd = "Dispatch", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]]
    )
    pcall(
        vim.cmd,
        [[command -nargs=* -range -bang -complete=file Make lua require("packer.load")({'vim-dispatch'}, { cmd = "Make", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]]
    )
    pcall(
        vim.cmd,
        [[command -nargs=* -range -bang -complete=file Focus lua require("packer.load")({'vim-dispatch'}, { cmd = "Focus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]]
    )
    pcall(
        vim.cmd,
        [[command -nargs=* -range -bang -complete=file Start lua require("packer.load")({'vim-dispatch'}, { cmd = "Start", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]]
    )
    time([[Defining lazy-load commands]], false)

    vim.cmd([[augroup packer_load_aucmds]])
    vim.cmd([[au!]])
    -- Event lazy-loads
    time([[Defining lazy-load event autocommands]], true)
    vim.cmd(
        [[au BufReadPre * ++once lua require("packer.load")({'nvim-dap'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
    )
    time([[Defining lazy-load event autocommands]], false)
    vim.cmd("augroup END")
    if should_profile then
        save_profiles()
    end
end)

if not no_errors then
    error_msg = error_msg:gsub('"', '\\"')
    vim.api.nvim_command(
        'echohl ErrorMsg | echom "Error in packer_compiled: '
            .. error_msg
            .. '" | echom "Please check your config for correctness" | echohl None'
    )
end
