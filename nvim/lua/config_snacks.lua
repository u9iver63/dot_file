-- 2. Pass your options directly to the setup module
require("snacks").setup({
  picker    = { enabled = true },  -- Activates the high-speed fuzzy finder
  explorer  = { enabled = true },  -- Activates the clean file tree navigator
  dashboard = { enabled = true },  -- Gives you a beautiful startup home menu
  terminal  = { enabled = true },  -- Spawns floating popup terminal panels
  bigfile   = { enabled = true },  -- Prevents Neovim from lagging on massive text files
  notifier  = { enabled = true },  -- Makes standard vim.notify blocks float beautifully
})


local map = vim.keymap.set

-- Universal Fuzzy Search Layouts
map("n", "<leader><space>", function() Snacks.picker.smart() end, { desc = "Smart Find Files" })
map("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find Files" })
map("n", "<leader>fg", function() Snacks.picker.grep() end, { desc = "Live Grep Project" })
map("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Search Open Buffers" })

-- Toggle the File Tree & Floating Terminal View
map({ "n", "t" }, "<C-/>", function() Snacks.terminal.toggle() end, { desc = "Toggle Float Terminal" })
