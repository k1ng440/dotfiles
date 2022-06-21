local augroup = require("utils.augroup")

local function autocmd()
	augroup("myautogroup")(function(autocmd)
		autocmd({ "TextYankPost" }, { pattern = { "*" } }, function()
			require("vim.highlight").on_yank({ timeout = 40 })
		end)
	end)
end

pcall(autocmd)
