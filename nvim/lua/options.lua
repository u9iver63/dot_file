-- This hide the banner in Ex
vim.g.netrw_banner = 0
-- ==============================================
-- OPTIONS
-- ==============================================
-- command for number line, realtive number line, tap while using visual line
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.mouse = "a"

-- this is text no warp
vim.opt.wrap = false
vim.opt.smartindent = true

-- this give preview using change thing using %s/old/new 
vim.opt.inccommand = "split"

-- this make new tab either on below or on right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- this will make :command line case insentitive 
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.laststatus = 3

vim.opt.swapfile = false -- Donot create a swap file
vim.opt.backup = false -- donot create a backup file 
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true
vim.opt.updatetime = 300 -- faster completion
vim.opt.timeoutlen = 500 -- time out duration
vim.opt.ttimeoutlen = 0 -- key code timeout
vim.opt.autoread = true -- auto-reload changes if outside of neovim
vim.opt.autowrite = false -- do not auto-save 

vim.opt.clipboard:append("unnamedplus")
vim.opt.isfname:append("@-@")
-- n-v-c: Block (Normal, Visual, Command)
-- i-ci-ve: Vertical line (Insert, Command-insert, Visual-exclude)
-- r-cr-o: Horizontal bar (Replace, Command-replace, Operator-pending)
-- vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr-o:hor20"   
vim.opt.scrolloff = 10
vim.opt.cursorline = true -- turn off the highlight the line 

-- this give the kind of padding for left side of column
--
vim.o.cmdheight = 1
vim.opt.colorcolumn = "0"
vim.opt.signcolumn = "yes"

-- vim.o.cmdheight = 0
vim.opt.termguicolors = true

vim.opt.showmode = false

vim.api.nvim_create_autocmd("TextYankPost",{
    desc = "Heightlight when yanking (copying) text",
    callback = function()
        vim.hl.on_yank()
    end,
})

-- wrap, linebreak and spell check on markdown and text file
vim.api.nvim_create_autocmd("FileType",{
    group = augroup,
    pattern = { "markdown","text","gitcommit","typst"},
    callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
        vim.opt_local.spell = true
        vim.opt.showbreak = "↪ "
        end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  end,
})


-- go to definition keymap 
--
vim.api.nvim_create_autocmd("LspAttach",{
    callback = function()
        vim.keymap.set("n","gd", vim.lsp.buf.definition)
        vim.keymap.set("n","H", vim.lsp.buf.hover)
        vim.keymap.set("n","<leader>f", vim.lsp.buf.format)
    end,
})
