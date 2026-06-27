-- =================================================
-- LSP
-- =================================================
--
require("mason").setup({
	ui = {
		border = "rounded",
		icon = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"tinymist", -- for typst
	},
	automatically_installation = true,
	-- handler = {
	--     function(server_name)
	--         require("lspconfig")[server_name].setupt({})
	--     end,
	-- }
})

--- =============================================
--- Add a language server for a specific language
--- =============================================

-- ============================================
-- LUA LSP
-- ============================================
vim.lsp.config.lua_ls = {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { ".luarc.json", ".luarc.jsonc", ".git" },
	settings = {
		Lua = {
			diagnostics = { globals = { "vim" } },
		},
	},
}
vim.lsp.enable("lua_ls")

-- ============================================
-- JULIA LSP
-- ============================================
vim.lsp.config.julials = {
	cmd = {
		"julia",
		"--startup-file=no",
		"--history-file=no",
		"-e",
		[[
      using LanguageServer
      runserver()
    ]],
	},
}
vim.lsp.enable("julials") -- new in recent nvim!

-- ============================================
-- TYPST LSP (Tinymist)
-- ============================================
vim.lsp.config.tinymist = {
	cmd = { "tinymist" },
	filetypes = { "typst" },
	root_markers = { "typst.toml", ".git", "main.typ" },
}
vim.lsp.enable("tinymist")

-- ============================================
-- AUTOCOMPLETION
-- ============================================
vim.lsp.config.completion = {
	autocomplete = true,
}
