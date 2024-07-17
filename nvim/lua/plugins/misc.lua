return {
	-- Detect tabstop and shiftwidth automatically
	"tpope/vim-sleuth",
	-- Useful plugin to show you pending keybinds.
	{ "folke/which-key.nvim", opts = {} },

	-- "gc" to comment visual regions/lines
	{ "numToStr/Comment.nvim", opts = {} },

	{ "MunifTanjim/nui.nvim" },

	{
		"ethanholz/nvim-lastplace",
		init = function()
			require("nvim-lastplace").setup({})
		end,
	},

	{
		"mg979/vim-visual-multi",
		branch = "master",
	},

	{ "ggandor/leap.nvim" },

	{ "tpope/vim-repeat" },

	{ "tpope/vim-speeddating" },
}
