return {
  "wsdjeg/mru.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  keys = {
    { "<leader>fg", "<cmd>Telescope mru<cr>", desc = "Most Recently Used Files" },
  },
  config = function()
    require("mru").setup({
      enable_cache = true,
      mru_cache_file = vim.fn.stdpath("data") .. "/nvim-mru.json",
      events = { "BufEnter", "BufWritePost" }, -- keep MRU updated
      ignore_path_regexs = { "/.git/" },
      enable_logger = false, -- set true only if you also install wsdjeg/logger.nvim
    })
  end,
}
