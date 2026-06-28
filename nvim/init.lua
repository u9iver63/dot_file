-- =====================
-- PLUGINS ( vim.pack ) 
-- =====================
--

vim.pack.add({
    "https://github.com/nvim-tree/nvim-tree.lua",
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/ibhagwan/fzf-lua",
    "https://github.com/nvim-mini/mini.nvim",
    "https://github.com/lewis6991/gitsigns.nvim",
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/mason-org/mason-lspconfig.nvim",
    "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
    "https://github.com/chomosuke/typst-preview.nvim",
    "https://github.com/darkvoid-theme/darkvoid.nvim",
    "https://github.com/rebelot/kanagawa.nvim",
    "https://github.com/hrsh7th/nvim-cmp",
    "https://github.com/hrsh7th/cmp-nvim-lsp",
	{
		src = "https://github.com/rose-pine/neovim",
		name = "rose-pine",
	},
    "https://github.com/mbbill/undotree",
    "https://github.com/Vigemus/iron.nvim",
    "https://github.com/nvimdev/lspsaga.nvim",
    {
        src = "https://github.com/catppuccin/nvim",
        name = "catppuccin"
   },
   "https://github.com/folke/snacks.nvim",
   "https://github.com/neovim-treesitter/treesitter-parser-registry",
   "https://github.com/jmbuhr/otter.nvim",
   "https://github.com/quarto-dev/quarto-nvim",
   "https://github.com/L3MON4D3/LuaSnip"
})

local function packadd(name)
    vim.cmd("packadd " .. name)
end

packadd("nvim-tree.lua")
packadd("nvim-web-devicons")
packadd("fzf-lua")
packadd("mini.nvim")
packadd("gitsigns.nvim")
packadd("nvim-treesitter")
packadd("nvim-lspconfig")
packadd("mason.nvim")
packadd("mason-lspconfig.nvim")
packadd("mason-tool-installer.nvim")
packadd("typst-preview.nvim")
packadd("darkvoid.nvim")
packadd("kanagawa.nvim")
packadd("nvim-cmp")
packadd("cmp-nvim-lsp")
packadd("undotree")
packadd("iron.nvim")
packadd("lspsaga.nvim")
packadd("snacks.nvim")
packadd("treesitter-parser-registry")
packadd("otter.nvim")
packadd("quarto-nvim")
packadd("LuaSnip")









require("options")
require("keymaps")
require("config")
require("lsp")
require("typst")
require("colors")
require("undotree")
require("init_lspsaga")
require("config_quarto")
require("config_snacks")
-- ==============================================
-- color scheme                                  
-- ==============================================

