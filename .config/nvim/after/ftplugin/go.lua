local keymapper = require('k1ng440.keymapper')
local nnoremap = keymapper.nnoremap

nnoremap("<leader>lr", ":TermExec direction=horizontal cmd=\"go test -v . && exit 0\" dir=" .. vim.fn.expand("%:p:h") .. "<CR>")
