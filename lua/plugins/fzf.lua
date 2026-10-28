return {
  {
    "ibhagwan/fzf-lua",

    dependencies = {
      "nvim-mini/mini.icons",
    },

    opts = {
      "default",

      -- Floating window
      winopts = {
        border = "rounded",
        height = 0.80,
        width = 0.80,
        preview = {
          layout = "vertical",
        },
      },

      -- Use the same dark Gruvbox background as Oil
      hls = {
        normal = "FzfLuaNormal",
        border = "FzfLuaBorder",
        preview_normal = "FzfLuaPreviewNormal",
        preview_border = "FzfLuaPreviewBorder",
      },

      -- Colors inside the fuzzy finder
      fzf_colors = {
        true,
        ["bg"] = { "bg", "FzfLuaNormal" },
        ["fg"] = { "fg", "FzfLuaNormal" },
        ["bg+"] = { "bg", "FzfLuaSelected" },
        ["fg+"] = { "fg", "FzfLuaNormal" },
        ["gutter"] = { "bg", "FzfLuaNormal" },
      },

      -- Exclude unwanted files
      files = {
        fd_opts = table.concat({
          "--color=never",
          "--type f",
          "--type l",
          "--exclude .git",
          "--exclude .venv",
          "--exclude venv",
          "--exclude env",
          "--exclude __pycache__",
          "--exclude '*.pyc'",
          "--exclude .pytest_cache",
          "--exclude .mypy_cache",
          "--exclude .ruff_cache",
          "--exclude site-packages",
        }, " "),
      },

      -- Exclude unwanted files from text search
      grep = {
        rg_opts = table.concat({
          "--column",
          "--line-number",
          "--no-heading",
          "--color=always",
          "--smart-case",
          "--glob '!.git'",
          "--glob '!.venv'",
          "--glob '!venv'",
          "--glob '!env'",
          "--glob '!__pycache__'",
          "--glob '!*.pyc'",
          "--glob '!.pytest_cache'",
          "--glob '!.mypy_cache'",
          "--glob '!.ruff_cache'",
          "--glob '!site-packages'",
        }, " "),
      },
    },

    keys = {
      {
        "<leader>ff",
        function()
          local fzf = require("fzf-lua")

          -- Search tracked files in Git projects
          local inside_git = vim.fn.system({
            "git",
            "rev-parse",
            "--is-inside-work-tree",
          })

          if vim.v.shell_error == 0 and inside_git:match("true") then
            fzf.git_files()
          else
            fzf.files()
          end
        end,
        desc = "Find files",
      },
      {
        "<leader>sg",
        function()
          require("fzf-lua").live_grep()
        end,
        desc = "Search project text",
      },
      {
        "<leader>sb",
        function()
          require("fzf-lua").buffers()
        end,
        desc = "Search buffers",
      },
      {
        "<leader>fr",
        function()
          require("fzf-lua").oldfiles()
        end,
        desc = "Find recent files",
      },
    },
  },
}
