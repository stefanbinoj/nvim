return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- Keymap to toggle Neo-tree as floating window
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal float<CR>", { noremap = true, silent = true })

		-- Setup Neo-tree
		require("neo-tree").setup({
			add_blank_line_at_top = true,
			event_handlers = {
				{
					event = "neo_tree_window_after_open",
					handler = function(args)
						-- The 'wo' stands for 'window option', making this setting
						-- local to only the neo-tree window.
						vim.wo.relativenumber = true
						vim.wo.number = true -- It's common to use both for the best experience
					end,
				},
			},

			default_component_configs = {
				type = {
					enabled = false,
				},
				last_modified = {
					enabled = false,
				},
			},

			filesystem = {
				hijack_netrw_behavior = "disabled", -- open current directory in neotree

				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = true,
					always_show_by_pattern = { -- uses glob style patterns
						".env*",
					},
					always_show = { -- remains visible even if other settings would normally hide it
						".gitignore",
					},
				},

				use_libuv_file_watcher = true,

				follow_current_file = {
					enabled = true,
				},
			},
		})
	end,
}
