return {
	{
		"inside/vim-search-pulse",
	},
	{
		"danilamihailov/beacon.nvim",
		config = function()
			require("beacon").setup({
				enabled = true,
				speed = 9,
				width = 40,
				winblend = 70,
				fps = 60,
				min_jump = 10,
				cursor_events = { "CursorMoved" },
				window_events = { "WinEnter", "FocusGained", "BufEnter" },
				highlight = { bg = "white", ctermbg = 15 },
			})
		end,
	},
}
