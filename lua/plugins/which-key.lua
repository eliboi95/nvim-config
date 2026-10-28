return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      preset = "modern",
      delay = 300,

      spec = {
        { "<leader>f", group = "Files" },
        { "<leader>s", group = "Search" },
        { "<leader>r", group = "Refactoring" },
      },
    },
  },
}
