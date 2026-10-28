local completion_enabled = false

return {
  {
    "saghen/blink.cmp",
    version = "1.*",

    opts = {
      keymap = {
        preset = "default",

        -- Toggle autocomplete with Ctrl + Space
        ["<C-Space>"] = {
          function(cmp)
            completion_enabled = not completion_enabled

            if completion_enabled then
              cmp.show()
            else
              cmp.hide()
            end

            vim.notify("Autocomplete " .. (completion_enabled and "ON" or "OFF"))

            return true
          end,
        },

        -- Enter always inserts a newline
        ["<CR>"] = { "fallback" },

        -- Accept the selected suggestion
        ["<Tab>"] = { "select_and_accept", "fallback" },
      },

      completion = {
        menu = {
          auto_show = function()
            return completion_enabled
          end,
          max_height = 3,
        },

        list = {
          selection = {
            preselect = true,
            auto_insert = false,
          },
        },

        documentation = {
          auto_show = false,
        },

        ghost_text = {
          enabled = false,
        },
      },

      cmdline = {
        enabled = false,
      },
    },
  },
}
