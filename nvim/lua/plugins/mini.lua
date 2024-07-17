return {
	{
		"echasnovski/mini.ai",
		version = "*",
		init = function()
			require("mini.ai").setup()
		end,
	},

	{
		"echasnovski/mini.bracketed",
		version = "*",
		init = function()
			require("mini.bracketed").setup()
		end,
	},

	{
		"echasnovski/mini.surround",
		version = "*",
		init = function()
			require("mini.surround").setup()
		end,
	},
}
