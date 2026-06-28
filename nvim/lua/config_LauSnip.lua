local ls = require("luasnip")

-- Somewhere in your Neovim startup, e.g. init.lua
ls.config.set_config({ -- Setting LuaSnip config

	-- Enable autotriggered snippets
	enable_autosnippets = true,

	-- Use Tab (or some other key if you prefer) to trigger visual selection
	store_selection_keys = "<Tab>",
})

local map = vim.keymap

-- <c-k> is my expansion key
-- this will expand the current item or jump to the next item within the sippet.
map.set({"i", "s" }, "<c-k>", function()
    if ls.expand_or_jumpable() then 
        ls.expand_or_jump()
    end
end,{ silent = true}, { desc = " Expansion"} )


-- <c-j> is my jump backwards key
-- this always moves to the preivous item within the snippet 
map.set({"i", "s" }, "<c-j>", function()
    if ls.jumpable(-1) then 
        ls.jump(-1)
    end
end,{ silent = true}, { desc = " jump backward"})

-- <c-l> is slecting within a list of options.
-- this is useful for choice nodes (Introduced in the forthcomming epside 2)


map.set({"i", "s" }, "<c-l>", function()
    if ls.choice_active() then 
        ls.change_choice(1)
    end
end,{ silent = true}, { desc = " listing "})



