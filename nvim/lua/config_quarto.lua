-- 1. Configure Quarto to use Iron
require('quarto').setup({
  -- ... keep your other settings the same ...
  codeRunner = {
    enabled = true,
    default_method = 'iron', -- Switch this from 'slime' to 'iron'
  },
})

-- 2. Configure iron.nvim
local iron = require('iron.core')

iron.setup({
  config = {
    -- Whether a new repl window or an already running repl should be used
    scratch_repl = true,
    -- Define the REPL for python
    repl_definition = {
      python = {
        command = { "ipython", "--no-autoindent" },
        format = require("iron.fts.common").bracketed_paste,
      },
    },
    -- How the REPL window opens (below, right, top, left)
    repl_open_cmd = "vertical botright 80 split",
  },
  -- Iron doesn't set keymaps by default, you can define them here or use Quarto's runner
  keymaps = {
    send_motion = "<space>sc",
    visual_send = "<space>sc",
    send_file = "<space>sf",
    clear = "<space>cl",
  },
})
local runner = require("quarto.runner")
vim.keymap.set("n", "<localleader>rc", runner.run_cell,  { desc = "run cell", silent = true })
vim.keymap.set("n", "<localleader>ra", runner.run_above, { desc = "run cell and above", silent = true })
vim.keymap.set("n", "<localleader>rA", runner.run_all,   { desc = "run all cells", silent = true })
vim.keymap.set("n", "<localleader>rl", runner.run_line,  { desc = "run line", silent = true })
vim.keymap.set("v", "<localleader>r",  runner.run_range, { desc = "run visual range", silent = true })
vim.keymap.set("n", "<localleader>RA", function()
  runner.run_all(true)
end, { desc = "run all cells of all languages", silent = true })


