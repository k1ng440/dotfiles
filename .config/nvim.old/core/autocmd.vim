""" Filetype-Specific Configurations
augroup syntexconf
    autocmd!
    " HTML, XML
    autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType xml setlocal shiftwidth=2 tabstop=2 softtabstop=2

    " Markdown and Journal
    autocmd FileType markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
    autocmd FileType journal setlocal shiftwidth=2 tabstop=2 softtabstop=2
augroup END


augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
