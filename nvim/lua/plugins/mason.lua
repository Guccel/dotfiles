return {
	{
		"williamboman/mason.nvim",
		init = function()
			require("mason").setup()
		end,
		dependencies = {
			{
				"WhoIsSethDaniel/mason-tool-installer.nvim",
				opts = {
					ensure_installed = {
						"prettier", -- prettier formatter
						"prettierd",
						"stylua", -- lua formatter
						"isort", -- python formatter
						"black", -- python formatter
						"pylint", -- python linter
						"eslint_d", -- js linter
					},
				},
			},
		},
		config = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},

	{
		"williamboman/mason-lspconfig.nvim",
		init = function()
			require("mason-lspconfig").setup()
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			})
		end,
	},
}
