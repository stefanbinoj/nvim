-- ===============================
-- GENERAL EDITING
-- ===============================

-- Escape insert mode quickly with "jk"
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Paste in visual mode without overwriting default register
vim.keymap.set("v", "<leader>p", [["_dP]])

-- Delete without yanking into register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Yank to system clipboard
vim.keymap.set("v", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [[gg"+yG]]) -- Yank entire file to system clipboard

-- Keep cursor centered when moving half-page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search results centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Move selected lines up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join lines but keep cursor in place
vim.keymap.set("n", "J", "mzJ`z")

-- Open netrw (or file explorer replacement)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Navigate quickfix list (global errors/warnings)
vim.keymap.set("n", "<leader>cn", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>cp", "<cmd>cprev<CR>zz")

-- Navigate location list (local errors/warnings)
vim.keymap.set("n", "<leader>ln", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>lp", "<cmd>lprev<CR>zz")

-- Toggle folds
vim.keymap.set("n", "<leader>z", "za", { desc = "Toggle fold" })

vim.keymap.set("n", "<leader>fp", function()
	local path = vim.fn.expand("%:.") -- relative path
	print(path) -- show it in command area
	vim.fn.setreg("+", path) -- copy to system clipboard ("+")
end, { desc = "Copy relative file path" })

vim.keymap.set({ "n", "v" }, "<leader>cs", function()
	local filepath = vim.fn.expand("%") -- full path
	local start_line = vim.fn.line(".")
	local end_line = vim.fn.line("v") -- last visual selection line

	local text
	if vim.fn.mode() == "v" or vim.fn.mode() == "V" or vim.fn.mode() == "\22" then
		start_line = vim.fn.line("v")
		end_line = vim.fn.line(".")
		if start_line > end_line then
			start_line, end_line = end_line, start_line
		end
		text = string.format("%s:%d-%d", filepath, start_line, end_line)
	else
		text = string.format("%s:%d", filepath, start_line)
	end

	vim.fn.setreg("+", text) -- copy to clipboard
	vim.notify("Copied: " .. text, vim.log.levels.INFO)
end, { desc = "Copy file path with line number/range" })
