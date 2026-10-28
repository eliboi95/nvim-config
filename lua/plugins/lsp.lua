return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,

    config = function()
      -- Enable language servers
      vim.lsp.enable("rust_analyzer")
      vim.lsp.enable("pyright")

      -- LSP keybindings
      local map = vim.keymap.set

      map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })

      map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })

      map("n", "gr", vim.lsp.buf.references, { desc = "Find references" })

      map("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })

      map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
    end,
  },
}
