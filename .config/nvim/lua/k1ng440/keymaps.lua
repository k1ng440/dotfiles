local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap
local keymapper = require("k1ng440.keymapper")
local nnoremap = keymapper.nnoremap
-- local inoremap = keymapper.inoremap
local xnoremap = keymapper.xnoremap
local vnoremap = keymapper.vnoremap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-----------------------------------------------
-- Normal Mode
-----------------------------------------------

-- Better window navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Resize with arrows
nnoremap("<C-Up>", ":resize -2<CR>")
nnoremap("<C-Down>", ":resize +2<CR>")
nnoremap("<C-Left>", ":vertical resize -2<CR>")
nnoremap("<C-Right>", ":vertical resize +2<CR>")

-- Navigate buffers
nnoremap("<S-l>", ":bnext<CR>")
nnoremap("<S-h>", ":bprevious<CR>")

-- Move text up and down
nnoremap("<A-j>", "<Esc>:m .+1<CR>==gi")
nnoremap("<A-k>", "<Esc>:m .-2<CR>==gi")

nnoremap("<ESC>", ":nohlsearch<Bar>:echo<CR>")

-- Remap %
nnoremap("<Tab>", "%")

-- Paste last yank, not the delete
nnoremap("p", '"0p')
nnoremap("P", '"0P')

-- Insert blank line
nnoremap("]<Space>", "o<Esc>")
nnoremap("[<Space>", "O<Esc>")

-- Prevent x from overriding the clipboard
nnoremap("x", '"_x')
nnoremap("X", '"_X')

-----------------------------------------------
-- Insert Mode
-----------------------------------------------

-----------------------------------------------
-- Visual Mode
-----------------------------------------------

-- Better indent
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- Delete selected before plaste
vnoremap("p", '"_dP')

-----------------------------------------------
-- Visual Block
-----------------------------------------------

-- Move text up and down

xnoremap("J", ":move '>+1<CR>gv-gv")
xnoremap("U", ":move '<-2<CR>gv-gv")
xnoremap("<A-j>", ":move '>+1<CR>gv-gv")
xnoremap("<A-k>", ":move '<-2<CR>gv-gv")
