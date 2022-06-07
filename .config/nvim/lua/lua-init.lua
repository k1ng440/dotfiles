require('load-all')(os.getenv('HOME') .. '/.config/nvim/lua/config')

require("nvim-autopairs").setup()
require("colorizer").setup()
require("nvim-lsp-installer").setup {}
