return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				pickers = {
					find_files = {
						-- theme = "ivy",
						find_command = { "rg", "--files", "--ignore", "--hidden", "-g", "!node_modules/*", "-g", "-g", "!.git/*" },
					},
				},
			})

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>ps", function()
				builtin.grep_string({ search = vim.fn.input("Grep > ") })
			end)
			vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
		end,
	},
	-- {
	-- 	"nvim-telescope/telescope-frecency.nvim",
	-- 	dependencies = {
	-- 		"nvim-telescope/telescope.nvim",
	-- 		"kkharji/sqlite.lua",
	-- 	},
	-- 	config = function()
	-- 		local function get_project_db_dir()
	-- 			local success, git_root = pcall(function()
	-- 				return vim.fn.system("git rev-parse --show-toplevel 2>/dev/null"):gsub("\n", "")
	-- 			end)
	--
	-- 			if success and git_root ~= "" and vim.v.shell_error == 0 then
	-- 				-- Create hash of git root path
	-- 				local hash = vim.fn.system("echo -n '" .. git_root .. "' | md5sum | cut -d' ' -f1"):gsub("\n", "")
	-- 				return vim.fn.expand("~/.local/share/nvim/frecency") .. "/" .. hash
	-- 			else
	-- 				return vim.fn.expand("~/.local/share/nvim/frecency/default")
	-- 			end
	-- 		end
	--
	-- 		require("telescope").setup({
	-- 			extensions = {
	-- 				frecency = {
	-- 					db_root = get_project_db_dir(),
	-- 					default_workspace = "CWD",
	-- 					show_scores = false,
	-- 					show_unindexed = true,
	-- 					ignore_patterns = { "*.git/*", "*/node_modules/*" },
	-- 				},
	-- 			},
	-- 		})
	-- 		require("telescope").load_extension("frecency")
	-- 		vim.keymap.set("n", "<leader>fr", "<cmd>Telescope frecency<cr>", { noremap = true })
	-- 	end,
	-- },
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
