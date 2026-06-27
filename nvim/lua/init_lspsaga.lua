-- Initialize Lspsaga
local saga = require("lspsaga")

saga.setup({
  ui = {
    border = "rounded",
    devicon = true, -- binds to nvim-web-devicons
  }
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local map = function(mode, lhs, rhs)
			vim.keymap.set(mode, lhs, rhs, { buffer = ev.buf, remap = false })
		end
		-- Go to definition in a new vertical split window (left/right)

		map("n", "gp","<cmd>Lspsaga peek_definition <CR>")
		map("n", "gd","<cmd>Lspsaga goto_definition <CR>")
		-- map("n", "gD", vim.lsp.buf.declaration)
		map("n", "H", "<cmd>Lspsaga hover_doc<CR>")

        map("n","<c-e>","<cmd>Lspsaga show_line_diagnostics<CR>")
        map("n","[d", "<cmd>Lspsaga diagonstic_jum_prev<CR>")
        map("n","d]", "<cmd>Lspsaga diagonstic_jum_next<CR>")


		map("n", "<leader>ca", vim.lsp.buf.code_action)
		map("n", "<leader>f", function()
			vim.lsp.buf.format({ async = true })
		end)
        map("n","<leader>rn","<cmd>Lspsaga rename<CR>")
	end,
})
