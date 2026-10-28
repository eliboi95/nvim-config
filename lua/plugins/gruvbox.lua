return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,

    config = function()
      require("gruvbox").setup({
        transparent_mode = true,
        overrides = {

          -- Fzf-lua popup
          FzfLuaNormal = {
            fg = "#ebdbb2",
            bg = "#1d2021",
          },

          FzfLuaPreviewNormal = {
            fg = "#ebdbb2",
            bg = "#1d2021",
          },

          FzfLuaBorder = {
            fg = "#928374",
            bg = "#1d2021",
          },

          FzfLuaPreviewBorder = {
            fg = "#928374",
            bg = "#1d2021",
          },

          -- Slightly lighter selected row
          FzfLuaSelected = {
            bg = "#3c3836",
          },

          -- Grey out everything else
          FlashBackdrop = {
            fg = "#665c54",
          },

          -- Subtle highlight for matching text
          FlashMatch = {
            fg = "#ebdbb2",
            bg = "#504945",
          },

          -- Current match
          FlashCurrent = {
            fg = "#ebdbb2",
            bg = "#665c54",
          },

          -- ONLY the jump letter
          FlashLabel = {
            fg = "#282828",
            bg = "#fabd2f",
            bold = true,
          },
          --Oil Popup less transparent
          OilDark = { bg = "#1d2021", fg = "#ebdbb2" },
          OilDarkBorder = { bg = "#1d2021", fg = "#928374" },
          -- Variables: soft green
          ["@variable.python"] = { fg = "#8ec07c" },
          ["@variable.parameter.python"] = { fg = "#8ec07c" },

          -- Values: warm beige
          ["@constant.python"] = { fg = "#ebdbb2" },
          ["@number.python"] = { fg = "#ebdbb2" },
          ["@number.float.python"] = { fg = "#ebdbb2" },
          ["@boolean.python"] = { fg = "#ebdbb2" },
          ["@string.python"] = { fg = "#ebdbb2" },

          -- Keywords: light purple
          ["@keyword.python"] = { fg = "#d3869b" },
          ["@keyword.function.python"] = { fg = "#d3869b" },
          ["@keyword.conditional.python"] = { fg = "#d3869b" },
          ["@keyword.repeat.python"] = { fg = "#d3869b" },
          ["@keyword.operator.python"] = { fg = "#d3869b" },
          ["@keyword.import.python"] = { fg = "#d3869b" },
          ["@keyword.exception.python"] = { fg = "#d3869b" },

          -- Return: stays red
          ["@keyword.return.python"] = { fg = "#fb4934" },

          -- Fuctions: non bold
          ["@function.call.python"] = { fg = "#b8bb26" },
          ["@function.python"] = { fg = "#b8bb26", bold = false },
          ["@function.method.call.python"] = { fg = "#b8bb26", bold = false },
        },
      })

      vim.cmd.colorscheme("gruvbox")
    end,
  },
}
