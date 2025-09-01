-- Leader key
vim.g.mapleader = " "

-- UI settings
vim.opt.scrolloff = 8
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentation
vim.opt.expandtab = true         -- Use spaces instead of tabs
vim.opt.tabstop = 4              -- Number of spaces a tab counts for
vim.opt.softtabstop = 4          -- Number of spaces a <Tab> feels like
vim.opt.shiftwidth = 4           -- Indentation amount
vim.opt.smartindent = true       -- Smart indenting on new lines
vim.opt.swapfile = false
vim.o.termguicolors = true
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

vim.keymap.set("v", "<leader>p", [["_dP]])
vim.keymap.set("v", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [[gg"+yG]])

-- Move selected lines up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Selection color: blue
vim.api.nvim_set_hl(0, "Visual", { bg = "#264F78" })

-- Another 
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.autoread = true

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  pattern = "*",
  command = "checktime",
})

