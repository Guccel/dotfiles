return {
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")

			conform.setup({
				formatters_by_ft = {
					lua = { "stylua" },
					svelte = { { "prettierd", "prettier" } },
					python = { { "prettierd", "prettier" } },
					javascript = { { "prettierd", "prettier" } },
					typescript = { { "prettierd", "prettier" } },
					javascriptreact = { { "prettierd", "prettier" } },
					typescriptreact = { { "prettierd", "prettier" } },
					json = { { "prettierd", "prettier" } },
					graphql = { { "prettierd", "prettier" } },
					java = { "google-java-format" },
					kotlin = { "ktlint" },
					ruby = { "standardrb" },
					markdown = { { "prettierd", "prettier" } },
					erb = { "htmlbeautifier" },
					html = { "htmlbeautifier" },
					bash = { "beautysh" },
					proto = { "buf" },
					rust = { "rustfmt" },
					yaml = { "yamlfix" },
					toml = { "taplo" },
					css = { { "prettierd", "prettier" } },
					scss = { { "prettierd", "prettier" } },
				},
				format_on_save = {
					lsp_fallback = true,
					async = false,
					timeout_ms = 500,
				},
			})
		end,
	},
}
