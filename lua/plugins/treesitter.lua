
return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",

    config = function()
      -- Install language parsers
      require("nvim-treesitter").install({
        "rust",
        "python",
        "lua",
      })

      -- Enable highlighting for these languages
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "rust", "python", "lua" },
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}

