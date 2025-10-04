return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.rubocop,
				null_ls.builtins.formatting.rubocop,
				null_ls.builtins.formatting.prettier,
				-- null_ls.builtins.diagnostics.eslint_d,
			},
		})
		vim.diagnostic.config({
			virtual_text = true, -- inline errors
			signs = true, -- gutter icons
			underline = true, -- underline text
			update_in_insert = false, -- don’t spam while typing
			severity_sort = true, -- sort by severity
		})

		-- floating diagnostic on hover (optional)
		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
		vim.keymap.set("n", "[d", vim.diagnostic.goto_next, {})
		vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, {})
	end,
}
