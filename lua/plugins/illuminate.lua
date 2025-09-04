return {
	{
		"RRethy/vim-illuminate",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("illuminate").configure({
				providers = {
					"lsp",
					"treesitter",
					"regex",
				},
				delay = 100,
				min_count_to_highlight = 2,
				filetypes_denylist = {
					"dirbuf",
					"dirvish",
					"fugitive",
					"netrw",
					"mru",
				},
			})

			-- Highlight style for illuminated words
			local commonAttributes = "gui=none guibg=#444444"
			vim.cmd("hi IlluminatedWordRead " .. commonAttributes)
			vim.cmd("hi IlluminatedWordWrite " .. commonAttributes)
			vim.cmd("hi IlluminatedWordText " .. commonAttributes)
		end,
	},
}
