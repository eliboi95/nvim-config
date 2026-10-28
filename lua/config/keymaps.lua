-- Yank to system clipboard without affecting delete/change
vim.keymap.set({ "n", "x" }, "y", '"+y', {
  desc = "Yank to system clipboard",
})
