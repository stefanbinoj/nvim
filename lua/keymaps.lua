-- ===============================
-- GENERAL EDITING
-- ===============================

-- Escape insert mode quickly with "jk"
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-c>", "<Esc>") -- Ctrl+C also escapes insert mode

-- Disable Ex mode (Q) because it’s rarely useful
vim.keymap.set("n", "Q", "<nop>")

-- Reload current config without restarting Neovim
vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

-- ===============================
-- PASTE / DELETE / YANK BEHAVIOR
-- ===============================

-- Paste in visual mode without overwriting default register
vim.keymap.set("v", "<leader>p", [["_dP]])

-- Delete without yanking into register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Yank to system clipboard
vim.keymap.set("v", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [[gg"+yG]]) -- Yank entire file to system clipboard

-- ===============================
-- MOVEMENT / SCROLLING
-- ===============================

-- Keep cursor centered when moving half-page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search results centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- ===============================
-- TEXT MANIPULATION
-- ===============================

-- Move selected lines up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Join lines but keep cursor in place
vim.keymap.set("n", "J", "mzJ`z")

-- ===============================
-- FILE EXPLORER
-- ===============================

-- Open netrw (or file explorer replacement)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- ===============================
-- QUICKFIX / LOCATION LIST
-- ===============================

-- Navigate quickfix list (global errors/warnings)
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Navigate location list (local errors/warnings)
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
