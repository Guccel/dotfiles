return {
	{
		-- "gruvbox-community/gruvbox",
		"ellisonleao/gruvbox.nvim",
		-- "ribru17/bamboo.nvim",
		-- "rebelot/kanagawa.nvim",
		-- "savq/melange-nvim",
		-- "ianfabs/sex.vim",
		-- "xero/miasma.nvim",
		priority = 1000,
		init = function()
			vim.cmd.colorscheme("gruvbox")
			-- vim.cmd.colorscheme("bamboo")
			-- vim.cmd.colorscheme("sex")
			-- vim.cmd.colorscheme("kanagawa-dragon")
			-- vim.cmd.colorscheme("melange")
			-- vim.cmd.colorscheme("miasma")
		end,
	},

	{ -- Set lualine as statusline
		"nvim-lualine/lualine.nvim",
		-- See `:help lualine.txt`
		opts = {
			options = {
				icons_enabled = true,
				theme = "onedark",
				component_separators = "|",
				section_separators = "",
			},
		},
	},

	{ -- Add indentation guides even on blank lines
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},

	{
		"j-hui/fidget.nvim",
		opts = {
			-- options
		},
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
	},
}
