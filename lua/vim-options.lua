-- =========================
-- General Settings
-- =========================
vim.g.mapleader = " "
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"
vim.opt.wrap = false           -- Don’t wrap long lines
vim.opt.swapfile = false       -- Disable swap files
vim.opt.backup = false         -- Disable backup files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true        -- Persistent undo history
vim.opt.autoread = true        -- Auto-reload files changed outside

-- =========================
-- UI Settings
-- =========================
vim.opt.number = true          -- Show absolute line numbers
vim.opt.relativenumber = true  -- Relative numbers for movement
vim.opt.scrolloff = 18         -- Keep 18 lines visible above/below cursor
vim.opt.signcolumn = "yes"     -- Always show sign column
vim.opt.colorcolumn = "120"    -- Highlight column 120
vim.opt.termguicolors = true   -- Enable true colors
vim.opt.updatetime = 50        -- Faster updates
vim.opt.isfname:append("@-@")  -- Allow @ and - in filenames

-- Highlight visual selection (blue)
vim.api.nvim_set_hl(0, "Visual", { bg = "#264F78" })

-- =========================
-- Indentation
-- =========================
vim.opt.expandtab = true       -- Convert tabs to spaces
vim.opt.tabstop = 4            -- Spaces per tab
vim.opt.softtabstop = 4        -- Spaces when pressing <Tab>
vim.opt.shiftwidth = 4         -- Spaces per indentation level
vim.opt.smartindent = true     -- Auto-indent new lines

-- =========================
-- Search
-- =========================
vim.opt.hlsearch = false       -- Don’t highlight all matches
vim.opt.incsearch = true       -- Highlight matches while typing
vim.opt.ignorecase = true      -- Ignore case by default
vim.opt.smartcase = true       -- Override ignorecase if query has uppercase

-- =========================
-- Autocommands
-- =========================
local general = vim.api.nvim_create_augroup("General", { clear = true })

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
    pattern = "*",
    command = "checktime",
})

vim.api.nvim_create_autocmd("BufReadPost", {
    group = general,
    pattern = "*",
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = true   -- folding is available
vim.opt.foldlevel = 99      -- open everything by default

vim.opt.list = true
vim.opt.listchars = {
    tab = "▏ ",
    trail = "·",
    extends = "»",
    precedes = "«",
}

vim.opt.cursorline = true
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3a3a3a" })
vim.api.nvim_set_hl(0, 'Beacon', { bg = 'white' })
vim.opt.showmode = false
