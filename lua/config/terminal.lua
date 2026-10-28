-- Store the terminal buffer
local terminal_buf = nil

local function toggle_terminal()
  -- Hide the terminal if it's visible
  if terminal_buf and vim.api.nvim_buf_is_valid(terminal_buf) then
    local wins = vim.fn.win_findbuf(terminal_buf)

    if #wins > 0 then
      vim.api.nvim_win_close(wins[1], true)
      return
    end
  end

  -- Open a bottom split
  vim.cmd("botright 80vsplit")

  if terminal_buf and vim.api.nvim_buf_is_valid(terminal_buf) then
    vim.api.nvim_win_set_buf(0, terminal_buf)
  else
    vim.cmd("terminal")
    terminal_buf = vim.api.nvim_get_current_buf()
  end

  vim.cmd("startinsert")
end

-- Toggle terminal
vim.keymap.set("n", "<leader>t", toggle_terminal, {
  desc = "Toggle terminal",
})

-- Escape terminal mode into Normal mode
vim.keymap.set("t", "<Esc><Esc>", [[<C-\><C-n>]], {
  desc = "Terminal normal mode",
})

-- Hide line numbers in terminal
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.opt_local.number = false
    vim.opt_local.relativenumber = false
  end,
})
