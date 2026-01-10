return {
	"projekt0n/github-nvim-theme",
	name = "github-theme",
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("github-theme").setup({})
		vim.api.nvim_command("hi ColorColumn guibg=#32363d")
		vim.cmd("colorscheme github_dark_colorblind")
	end,

	-- "rebelot/kanagawa.nvim",
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	require("kanagawa").setup({})
	-- 	vim.cmd("colorscheme kanagawa")
	-- end,

  -- "navarasu/onedark.nvim",
  -- priority = 1000, -- make sure to load this before all the other start plugins
  -- config = function()
  --   require('onedark').setup {
  --     style = 'warmer'
  --   }
  --   require('onedark').load()
  -- end
}
