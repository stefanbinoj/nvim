return {
	{
		"m4xshen/autoclose.nvim",
		config = function()
			require("autoclose").setup()
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("nvim-ts-autotag").setup({
				opts = {
					enable_close = true, -- Auto close tags
					enable_rename = true, -- Auto rename paired tags
					enable_close_on_slash = false, -- Don't auto-close on </
				},
			})
		end,
	},
}
