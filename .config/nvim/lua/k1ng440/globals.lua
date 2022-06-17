local globals = {
  netrw_browse_split = 0,
  netrw_banner = 1,
  netrw_winsize = 25,
}


for k, v in pairs(globals) do
  vim.g[k] = v
end

