return {
	"tpope/vim-fugitive",
	config = function()
		-- Global shortcut: Git status
		vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "Git status" })

		-- Autocmd to set buffer-local keymaps for Fugitive buffers
		vim.api.nvim_create_autocmd("BufWinEnter", {
			group = vim.api.nvim_create_augroup("MyFugitive", { clear = true }),
			pattern = "*",
			callback = function()
				if vim.bo.ft ~= "fugitive" then
					return
				end

				local opts = { buffer = vim.api.nvim_get_current_buf(), noremap = true, silent = true }

				vim.keymap.set("n", "<leader>P", function()
					vim.cmd.Git("push")
				end, vim.tbl_extend("force", opts, { desc = "Git push" }))

				vim.keymap.set("n", "<leader>p", function()
					vim.cmd.Git({ "pull", "--rebase" })
				end, vim.tbl_extend("force", opts, { desc = "Git pull --rebase" }))

			end,
		})
	end,
}
