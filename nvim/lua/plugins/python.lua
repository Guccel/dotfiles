return {
	-- Install nvim-lspconfig for LSP configurations
	{ "neovim/nvim-lspconfig" },

	-- Install plenary.nvim as a dependency
	{ "nvim-lua/plenary.nvim" },

	-- Install pylsp (you can use any pylsp fork or package)
	{ "python-lsp/python-lsp-server" },

	-- Setup Pyright LSP
	require("lspconfig").pyright.setup({}),

	-- Setup pylsp
	require("lspconfig").pylsp.setup({
		cmd = { "pylsp" },
		filetypes = { "python" },
		root_dir = require("lspconfig").util.root_pattern(".git", "."),
		settings = {
			pylsp = {
				plugins = {
					pycodestyle = {
						ignore = {
							"E501",
							"C0114",
						},
					},
				},
			},
		},
	}),
}
