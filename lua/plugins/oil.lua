return {
  {
    "stevearc/oil.nvim",
    lazy = false,

    dependencies = {
      { "nvim-mini/mini.icons", opts = {} },
    },

    opts = {
      default_file_explorer = true,

      columns = { "icon" },

      view_options = {
        show_hidden = true,
      },

      float = {
        padding = 2,
        max_width = 90,
        max_height = 30,
        border = "rounded",

        win_options = {
          winblend = 0,
          winhighlight = "NormalFloat:OilDark,FloatBorder:OilDarkBorder",
        },
      },

      keymaps = {
        ["<CR>"] = "actions.select",
        ["u"] = "actions.parent",
        ["q"] = "actions.close",
        ["g?"] = "actions.show_help",

        ["a"] = {
          callback = function()
            local bufnr = vim.api.nvim_get_current_buf()
            local line = vim.api.nvim_buf_line_count(bufnr)

            vim.api.nvim_buf_set_lines(bufnr, line, line, false, { "" })
            vim.api.nvim_win_set_cursor(0, { line + 1, 0 })
            vim.cmd("startinsert!")
          end,
          desc = "Add file or directory",
          mode = "n",
        },
      },
    },

    keys = {
      {
        "<leader>ee",
        function()
          require("oil").open_float()
        end,
        desc = "Open file explorer",
      },
      {
        "<leader>ec",
        function()
          require("oil").open_float(vim.fn.stdpath("config"))
        end,
        desc = "Open Neovim configuration",
      },
    },
  },
}
