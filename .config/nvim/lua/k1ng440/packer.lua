local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

local group = vim.api.nvim_create_augroup("packer_user_config", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", { pattern = "packer.lua", command = "source <afile> | PackerSync", group = group})


-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)

  ---------------------------------------------
  -- CORE
  ---------------------------------------------
  use "lewis6991/impatient.nvim"
  use 'wbthomason/packer.nvim' -- Have packer manage itself
  use "nvim-lua/plenary.nvim" -- Dependency for plugins
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "kyazdani42/nvim-web-devicons" -- icons
  use "moll/vim-bbye" -- remove buffer (Bdelete)
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "nvim-lualine/lualine.nvim"
  use "akinsho/toggleterm.nvim"
  use "ahmedkhalf/project.nvim"
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'} -- buffer line
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}
  use "lukas-reineke/indent-blankline.nvim" -- indent lines
  use "antoinemadec/FixCursorHold.nvim"
  use "folke/which-key.nvim"
  use "tami5/sqlite.lua"
  use "folke/todo-comments.nvim"
  use "rcarriga/nvim-notify"

 ---------------------------------------------
  -- Colorschemes
  ---------------------------------------------
  use 'folke/tokyonight.nvim' -- tokyo night

  ---------------------------------------------
  -- cmp plugins
  ---------------------------------------------
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  ---------------------------------------------
  -- LSP
  ---------------------------------------------
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "RRethy/vim-illuminate"

  ---------------------------------------------
  -- Telescope
  ---------------------------------------------
  use "nvim-telescope/telescope.nvim"
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  use 'nvim-telescope/telescope-cheat.nvim'

  ---------------------------------------------
  -- Treesitter
  ---------------------------------------------
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use 'nvim-treesitter/nvim-treesitter-context'

  ---------------------------------------------
  -- Snippets
  ---------------------------------------------
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  ---------------------------------------------
  -- Git
  ---------------------------------------------
  use "lewis6991/gitsigns.nvim"
  use { "rudylee/nvim-gist", run = ":UpdateRemotePlugins"}

  ---------------------------------------------
  -- Packer Bootstrap
  ---------------------------------------------
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
