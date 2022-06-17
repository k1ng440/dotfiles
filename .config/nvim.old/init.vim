let s:core_conf_files = [ 'plugins.vim', 'sets.vim', 'autocmd.vim', 'keymaps.vim' ]
for s:fname in s:core_conf_files
  execute printf('source %s/core/%s', stdpath('config'), s:fname)
endfor

if executable('rg')
    let g:rg_derive_root='true'
endif

""" Coloring
" color dracula
color tokyonight
set termguicolors

""" Core plugin configuration (vim)
" nvim-cmp
set completeopt=menu,menuone,noselect

" netrw
let g:netrw_liststyle = 3
let g:netrw_altv = 1

" signify
let g:signify_sign_add = '│'
let g:signify_sign_delete = '│'
let g:signify_sign_change = '│'
hi DiffDelete guifg=#ff5555 guibg=none

" FixCursorHold for better performance
let g:cursorhold_updatetime = 100

" rainbow
let g:rainbow_active = 1

" Neovim :Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
"tmap <C-d> <Esc>:q<CR>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

""" Core plugin configuration (lua)
lua << EOF
    require('keymaps')
    require('treesitter-config')
    require('nvim-cmp-config')
    require('telescope-config')
    require('lualine-config')
    require('nvim-tree-config')
    require('diagnostics')
    require('lua-init')
    require('symbols-outline')
    require('autocmd')
    require('toggleterm-config')
EOF
