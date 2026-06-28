
local ls = require("luasnip")

-- This is a snippet creator
-- s(<trigger>, <nodes>)

local s = ls.snippet

-- this is a formate node.
-- it takes a formate string, and list of nodes
-- fmt(<fmt_string>, {.. nodes})

local fmt = require("luasnip.extras.fmt").fmt

-- this is an insert node 
-- It takes a position (like $1) and optionally some default text
-- i(<position>, [default_text])

local i = ls.insert_node

-- Repeats a nodes
-- rep(<position>)

local rep = require("luasnip.extras").rep


-- ls.snippets = {
--     lua = {
--         -- Lua specific snippets go here.
--         s("req", fmt("local {} = require('{}')", { i(1, "default"), rep(1)})),
--     }
-- }



return {
        s("req", fmt("local {} = require('{}')", { i(1, "default"), rep(1)})),
}


