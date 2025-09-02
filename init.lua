-- Setup lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Load custom configs
require("vim-options")
require("keymaps")
require("lazy").setup("plugins")

-- Create autogroups
local yank_group = vim.api.nvim_create_augroup("HighlightYank", { clear = true })
local my_group   = vim.api.nvim_create_augroup("MyGroup", { clear = true })

-- Highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    group = yank_group,
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 40,
        })
    end,
})

-- Remove trailing whitespace before saving
vim.api.nvim_create_autocmd("BufWritePre", {
    group = my_group,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- Netrw settings
vim.g.netrw_browse_split = 0 -- open file in same window
vim.g.netrw_banner        = 0 -- hide banner
vim.g.netrw_winsize       = 25 -- set default width
