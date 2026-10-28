local function show_startup()
  if vim.fn.argc() > 0 then
    return
  end

  -- Original tank artwork, with its spacing preserved
  local tank = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                    ⣠⣴⠟⢿⣿⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⠀⠀⠀⠀⠀⣴⣶⠲⣶⢦⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⠶⠋⠁⢈⣷⠾⠟⠉
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⠀⠀⠀⠀⠐⣿⣶⣺⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⠞⠋⠀⣠⡴⠞⠉⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⡏⡍⠉⢹⡞⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡴⠞⠋⠘⣿⣶⠶⠋⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣷⣄⣴⠿⠦⠤⣤⣀⣸⡇⠳⠶⠘⣧⣀⣀⣀⣀⠀⠀⠀⠀⣀⡤⠞⣏⠀⣀⡤⠖⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣤⣶⣦⣼⡿⢦⣿⡀⢐⠐⣿⠉⢽⡿⠿⠿⠿⠿⠿⣿⠿⠿⣧⣤⠶⢿⠁⣀⡤⠞⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⠿⢿⣯⣿⣥⣤⣤⣽⠿⣶⡶⠦⠀⠙⠂⠐⢦⢀⣺⠿⣶⡞⠉⠀⣠⣾⡿⣿⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡘⣆⠋⢀⡔⠋⢠⠞⠀⣴⠛⠶⣄⠀⠀⠑⡶⠞⢫⣠⠞⢀⣱⢶⣿⠇⣠⠟⣶⡿⢷⣽⣿⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣈⣓⣾⣦⣀⣱⣄⣈⣧⣀⣘⣦⣀⣘⣦⣀⡼⠓⠶⠛⣣⣤⠟⠛⣻⣯⣾⣿⣿⣷⣾⣿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢠⣤⣤⣴⣶⣶⣿⣿⣿⣏⣵⣿⣷⣶⣷⣿⣿⣿⠿⠶⠶⣶⣶⣶⡶⠾⠾⠿⢿⣟⣛⠛⢻⣛⣛⣉⣉⣉⣉⡉⢹⣯⡙⠛⢿⣛⠻⣗⣒⠶⠦⢤⣄⣀⡀⠀⠀⠀⠀
⣾⣿⠶⣿⣿⠧⢾⣧⠀⡇⠀⠀⠀⠇⠀⢹⠉⠉⡟⠲⢤⡀⠀⠈⣉⣙⣒⣲⣦⣤⣉⣻⣏⣉⠉⠉⠉⠉⠉⠁⠀⠀⠙⢦⣀⡼⣷⣤⡈⠉⠓⢲⣶⣾⣿⣿⡳⢶⡄
⠚⣿⣠⣿⡇⠀⣾⡿⠒⡿⠒⢶⣆⣱⣤⣤⣤⠀⣇⠀⠈⣇⡴⠻⠛⠛⠛⠋⠉⠉⠉⢿⠿⠿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠞⠛⠛⠳⣄⡴⠋⠀⠀⠀⢀⣀⣀⣿
⠀⠛⠛⢻⡆⠀⣿⣧⠀⠁⠀⠀⠀⡇⠀⠈⠉⠉⡇⠀⠀⣿⠃⠀⣀⣤⣴⣶⣶⣶⣤⠬⣷⣤⣤⣤⣤⣤⣤⣶⣶⣶⣶⣖⣶⣶⡶⠾⢿⡿⣷⣤⣴⣶⣿⣿⣿⣿⠛
⠀⠀⠀⠈⣷⣿⣷⣬⠀⠀⠒⠒⠒⢶⠤⠬⢤⣀⣀⠀⠀⣯⣴⣿⣿⡿⢿⣿⣛⠻⣷⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⣠⢿⣿⣷⣿⣿⣟⣸⣿⣿⡿⠀
⠀⠀⠀⠀⠹⣿⣿⣿⣶⣶⣤⣤⣀⣸⣄⠀⠀⠀⠘⣠⣴⣿⣿⣿⣿⣿⣟⣛⣛⣻⣯⣀⣀⣀⣀⣀⡀⠀⢀⣠⣤⣤⣤⣤⣤⣄⣞⣡⠟⢉⣿⣿⣿⣲⣿⣿⡿⠃⠀
⠀⠀⠀⠀⠀⠹⣿⣿⣾⣿⣼⣿⣏⢸⣿⡋⢹⣶⠋⢹⣿⡟⠛⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣼⣇⣼⣿⡅⢳⣀⣿⣿⠿⠿⢿⣿⠟⠁⠀⠀
⠀⠀⠀⠀⠀⠀⠙⠻⠿⢿⣿⣿⣿⣿⣿⣷⣾⣿⣇⣾⣿⣇⣸⣿⣿⣿⣛⠃⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣽⢟⣱⣿⣿⠟⠁⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣥⣾⣿⣿⣿⣿⠿⠿⠿⠿⠟⠛⠛⠛⠛⠋⠉⠉⠉⠙⠛⠛⠛⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠙⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
]]

  -- Large PANZER VOR! title
  local title = [[
██████╗  █████╗ ███╗   ██╗███████╗███████╗██████╗     ██╗   ██╗ ██████╗ ██████╗ ██╗
██╔══██╗██╔══██╗████╗  ██║╚══███╔╝██╔════╝██╔══██╗    ██║   ██║██╔═══██╗██╔══██╗██║
██████╔╝███████║██╔██╗ ██║  ███╔╝ █████╗  ██████╔╝    ██║   ██║██║   ██║██████╔╝██║
██╔═══╝ ██╔══██║██║╚██╗██║ ███╔╝  ██╔══╝  ██╔══██╗    ╚██╗ ██╔╝██║   ██║██╔══██╗╚═╝
██║     ██║  ██║██║ ╚████║███████╗███████╗██║  ██║     ╚████╔╝ ╚██████╔╝██║  ██║██╗
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝╚══════╝╚══════╝╚═╝  ╚═╝      ╚═══╝   ╚═════╝ ╚═╝  ╚═╝╚═╝
]]

  local footer = {
    "Welcome back, commander.",
    "",
    "Space ff   Find files",
    "Space ec   Open config",
    "Space sg   Search project",
    "Space t    Open terminal",
    "",
    "Ready for battle.",
  }

  local buf = vim.api.nvim_get_current_buf()
  local win = vim.api.nvim_get_current_win()
  local ns = vim.api.nvim_create_namespace("panzer_startup")

  -- Prepare the multiline ASCII title
  local title_lines = vim.split(title, "\n", { plain = true })

  while #title_lines > 0 and title_lines[1]:match("^%s*$") do
    table.remove(title_lines, 1)
  end

  while #title_lines > 0 and title_lines[#title_lines]:match("^%s*$") do
    table.remove(title_lines)
  end

  -- Convert Unicode blank cells to ordinary spaces
  local raw_lines = vim.split(tank:gsub("⠀", " "), "\n", { plain = true })

  -- Remove only completely blank rows around the artwork
  while #raw_lines > 0 and raw_lines[1]:match("^%s*$") do
    table.remove(raw_lines, 1)
  end

  while #raw_lines > 0 and raw_lines[#raw_lines]:match("^%s*$") do
    table.remove(raw_lines)
  end

  -- Keep the original spacing inside every artwork row
  local tank_lines = {}
  local tank_width = 0

  for _, line in ipairs(raw_lines) do
    line = line:gsub("%s+$", "")
    table.insert(tank_lines, line)
    tank_width = math.max(tank_width, vim.fn.strdisplaywidth(line))
  end

  -- Welcome buffer
  vim.bo[buf].buftype = "nofile"
  vim.bo[buf].bufhidden = "wipe"
  vim.bo[buf].swapfile = false
  vim.bo[buf].buflisted = false

  -- Clean window appearance
  vim.wo[win].number = false
  vim.wo[win].relativenumber = false
  vim.wo[win].signcolumn = "no"
  vim.wo[win].wrap = false
  vim.wo[win].cursorline = false
  vim.wo[win].scrolloff = 0

  -- Original Gruvbox colors (unchanged)
  vim.api.nvim_set_hl(0, "PanzerTitle", {
    fg = "#fabd2f",
    bold = true,
  })

  vim.api.nvim_set_hl(0, "PanzerTank", {
    fg = "#fabd2f",
  })

  vim.api.nvim_set_hl(0, "PanzerText", {
    fg = "#ebdbb2",
  })

  local function render()
    if
      not vim.api.nvim_buf_is_valid(buf)
      or not vim.api.nvim_win_is_valid(win)
      or vim.api.nvim_win_get_buf(win) ~= buf
    then
      return
    end

    local width = vim.api.nvim_win_get_width(win)
    local height = vim.api.nvim_win_get_height(win)

    local function center(line)
      local padding = math.max(0, math.floor((width - vim.fn.strdisplaywidth(line)) / 2))
      return string.rep(" ", padding) .. line
    end

    -- Center the whole tank, preserving each row's position
    local left = math.max(0, math.floor((width - tank_width) / 2))

    local content = {}

    -- Multiline title: center each row separately
    for _, line in ipairs(title_lines) do
      table.insert(content, center(line))
    end

    table.insert(content, "")

    local tank_start_in_content = #content

    for _, line in ipairs(tank_lines) do
      table.insert(content, string.rep(" ", left) .. line)
    end

    table.insert(content, "")

    for _, line in ipairs(footer) do
      table.insert(content, center(line))
    end

    -- Vertical centering
    local top = math.max(0, math.floor((height - #content) / 2))

    local lines = {}

    for _ = 1, top do
      table.insert(lines, "")
    end

    vim.list_extend(lines, content)

    vim.bo[buf].modifiable = true
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
    vim.bo[buf].modifiable = false

    -- Highlights
    vim.api.nvim_buf_clear_namespace(buf, ns, 0, -1)

    -- Highlight all title rows
    for row = top, top + #title_lines - 1 do
      vim.api.nvim_buf_add_highlight(buf, ns, "PanzerTitle", row, 0, -1)
    end

    -- Highlight the tank
    local tank_start = top + tank_start_in_content

    for row = tank_start, tank_start + #tank_lines - 1 do
      vim.api.nvim_buf_add_highlight(buf, ns, "PanzerTank", row, 0, -1)
    end

    -- Highlight the footer
    local footer_start = tank_start + #tank_lines + 1

    for row = footer_start, #lines - 1 do
      vim.api.nvim_buf_add_highlight(buf, ns, "PanzerText", row, 0, -1)
    end

    -- Keep the screen at the correct scroll position
    vim.api.nvim_win_set_cursor(win, { 1, 0 })

    vim.api.nvim_win_call(win, function()
      vim.cmd("normal! zt")
    end)
  end

  render()

  -- Respond to terminal resizing
  local group = vim.api.nvim_create_augroup("PanzerStartupResize", { clear = true })

  vim.api.nvim_create_autocmd({ "VimResized", "WinResized" }, {
    group = group,
    callback = function()
      vim.schedule(render)
    end,
  })
end

vim.api.nvim_create_autocmd("VimEnter", {
  callback = show_startup,
})
