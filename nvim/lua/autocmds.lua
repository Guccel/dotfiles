local autocommands = {
	{
		events = { "FocusLost", "WinLeave", "BufLeave" },
		callback = function()
			vim.cmd("silent! wa")
		end,
	},

	{
		events = { "BufRead", "BufNewFile" },
		pattern = "*",
		callback = function()
			vim.cmd("match Error /\\%>80v\\.\\+/")
		end,
	},

	{
		events = { "TextYankPost" },
		pattern = "*",
		callback = function()
			vim.defer_fn(function()
				require("conform").format({ bufnr = vim.api.nvim_get_current_buf() })
			end, 0)
		end,
	},
}

for _, autocmd in ipairs(autocommands) do
	vim.api.nvim_create_autocmd(autocmd.events, {
		pattern = autocmd.pattern,
		callback = autocmd.callback,
	})
end
