-- OpenInGHFileLines
return {
  "almo7aya/openingh.nvim",
  branch = "main",
  cmd = { "OpenInGHRepo", "OpenInGHFile", "OpenInGHFileLines" },
  keys = {
    { "<Leader>gr", "<cmd>OpenInGHRepo<CR>", desc = "Open repo in GitHub" },
    { "<Leader>gf", ":OpenInGHFileLines<CR>", mode = "v", desc = "Open file lines in GitHub" },
    { "<Leader>o", "<cmd>OpenInGHFileLines<CR>", mode = "n", desc = "Open file lines in GitHub" },
  },
}



