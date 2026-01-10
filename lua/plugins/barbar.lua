return {
    "romgrk/barbar.nvim",
    dependencies = {
        {
            "lewis6991/gitsigns.nvim",
            -- Ensure gitsigns is actually running, otherwise barbar has no data to show
            config = function() require('gitsigns').setup() end
        },
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        auto_hide = 1,
        animation = false,
        tabpages = true,
        clickable = true,
        focus_on_close = "previous",
        highlight_alternate = false,
        highlight_inactive_file_icons = true,
        highlight_visible = true,
        icons = {
            git = { enabled = true },
            buffer_index = true,
            button = "",
            diagnostics = {
                [vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
            },
            filetype = {
                custom_colors = false,
                enabled = true,
            },
            separator = { left = "▎", right = "" },
            separator_at_end = true,
            modified = { button = "●" },
            pinned = { button = "", filename = true },
            preset = "default",
            alternate = { filetype = { enabled = false } },
            current = { buffer_index = true },
            inactive = { button = "×" },
            visible = { modified = { buffer_number = false } },
        },
    },
    version = "^1.0.0",
    config = function(_, opts)
        require("barbar").setup(opts)

        local map = vim.api.nvim_set_keymap
        local key_opts = { noremap = true, silent = true }

        map("n", "[b", "<Cmd>BufferPrevious<CR>", key_opts)
        map("n", "<leader><leader>", "<Cmd>BufferCloseAllButCurrent<CR>", key_opts)
        map("n", "]b", "<Cmd>BufferNext<CR>", key_opts)
        map("n", "<leader>q", "<Cmd>BufferClose<CR>", key_opts)
    end,
}
