vim.g.mapleader = " "

-- replace selected text WITHOUT losing what you yanking.
vim.keymap.set("x","p",[["_dP]], { desc = "Paste over selection without losing yanked text"})


-- Delete text without saving it to any register
vim.keymap.set({"n","v"}, "<leader>d", [["_d]], { desc = "Delete without yanking" })

vim.keymap.set("n","<leader><leader>x",":source %<CR>", {desc = "Restart Nvim"})
vim.keymap.set("i", "jk" , "<Esc>")
vim.keymap.set("n", "<Esc>", ":nohl<CR>", { desc = "Clear search highlighting", silent = true})


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move lines down in visual selection"})
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv", { desc = "move lines up in visual selection"})

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centred"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centred"})

vim.keymap.set("n", "n", "nzzzv", { desc = "next search result curseor centered"})
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result curseor centered"})


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word cursor"})


vim.keymap.set("n","<leader>w",":w<CR>", { desc = "save file"})
vim.keymap.set("n","<leader>q",":q<CR>", { desc = " Quit "})
-- native undotree
-- vim.keymap.set("n", "<leader>u", function()
--     vim.cmd.packadd("nvim.undotree")
--     require("undotree").open()
-- end, { desc = "Tooggle Builtin Undotree"})

-- =====================
-- KEY MAP FOR NVIM-TREE
-- =====================

vim.keymap.set("n", "<leader>e", function()
    require("nvim-tree.api").tree.toggle()
end, { desc = "Toggle NvimTree"})



-- ===================
-- KEY MAP FOR FZF-LAU
-- ===================

vim.keymap.set("n", "<leader>ff", function()
    require("fzf-lua").files()
end, { desc = "Fzf file"})

vim.keymap.set("n", "<leader>fg", function()
    require("fzf-lua").live_grep()
end, { desc = "fzf live grep"})

vim.keymap.set("n","<leader>fb", function()
    require("fzf-lua").buffers()
end, { desc = "fzf buffers"})

vim.keymap.set("n","<leader>fh", function()
    require("fzf-lua").help_tags()
end, { desc = "fzf help Tags"})

vim.keymap.set("n","<leader>fx", function()
    require("fzf-lua").diagnostics_document()
end, { desc = "fzf diagonsitic document "})

vim.keymap.set("n","<leader>fX", function()
    require("fzf-lua").diagnostics_workspace()
end, { desc = "fzf diagonsitic workspaces  "})


-- ===================================================
-- KEY MAP FOR TINYMIST                               
-- ===================================================



vim.keymap.set("n","<leader>tp",":TypstPreview<CR>",{ desc = "Typst Preview"})
vim.keymap.set("n","<leader>te",":TypstPreviewStop<CR>",{ desc = "Typst Preview Stop"})




