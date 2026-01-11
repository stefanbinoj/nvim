return {
  "esmuellert/codediff.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  cmd = "CodeDiff",
  config = function()
    vim.api.nvim_set_hl(0, "CodeDiffLineInsert", { bg = "#233228" })  -- added_bg
    vim.api.nvim_set_hl(0, "CodeDiffLineDelete", { bg = "#322323" })  -- deleted_bg
    -- Word/character-level highlights (more visible)
    vim.api.nvim_set_hl(0, "CodeDiffCharInsert", { bg = "#285537" })  -- added_word_bg
    vim.api.nvim_set_hl(0, "CodeDiffCharDelete", { bg = "#643232" })  -- deleted_word_bg
    -- Filler/placeholder lines
    vim.api.nvim_set_hl(0, "CodeDiffFiller", { fg = "#373C46" })  -- empty_placeholder_fg
    -- Gutter highlights (if plugin supports them)
    vim.api.nvim_set_hl(0, "CodeDiffGutterInsert", { bg = "#285032", fg = "#8CC8A0" })  -- added_gutter
    vim.api.nvim_set_hl(0, "CodeDiffGutterDelete", { bg = "#502828", fg = "#C88C8C" })  -- deleted_gutter
    -- Context/unchanged lines background
    vim.api.nvim_set_hl(0, "CodeDiffContext", { bg = "#282832" })  -- context_bg

    require("codediff").setup({
      -- Highlight configuration - use the highlight groups we defined above
      highlights = {
        line_insert = "CodeDiffLineInsert",
        line_delete = "CodeDiffLineDelete",
        char_insert = "CodeDiffCharInsert",
        char_delete = "CodeDiffCharDelete",

        -- Conflict sign highlights - GitHub themed
        conflict_sign = "#f0883e",          -- Bright warning orange
        conflict_sign_resolved = "#8b949e", -- GitHub muted gray
        conflict_sign_accepted = "#3fb950", -- GitHub green
        conflict_sign_rejected = "#f85149", -- GitHub red
      },

      -- Diff view behavior
      diff = {
        disable_inlay_hints = true,
        max_computation_time_ms = 5000,
        hide_merge_artifacts = false,
      },

      -- Explorer panel configuration
      explorer = {
        position = "left",
        width = 40,
        height = 15,
        indent_markers = true,
        icons = {
          folder_closed = "",
          folder_open = "",
        },
        view_mode = "list",
        file_filter = {
          ignore = {},
        },
      },

      -- Keymaps in diff view
      keymaps = {
        view = {
          quit = "q",
          toggle_explorer = "<leader>b",
          next_hunk = "]c",
          prev_hunk = "[c",
          next_file = "]f",
          prev_file = "[f",
        },
        explorer = {
          select = "<CR>",
          toggle_view_mode = "<Tab>",
          toggle_stage = "<leader>",
          stage_all = "<leader>sa",
          unstage_all = "<leader>su",
          restore = "<leader>sd",
        },
        conflict = {
          accept_incoming = "<leader>ct",
          accept_current = "<leader>co",
          accept_both = "<leader>cb",
          discard = "<leader>cx",
          next_conflict = "]x",
          prev_conflict = "[x",
        },
      },
    })
  end,
}
