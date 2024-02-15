local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local math = function()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
	s({ trig = "la", snippetType = "autosnippet" }, {
		t("\\left\\langle "),
		i(1),
		t(" \\right\\rangle"),
	}, { condition = math }),
	s({ trig = "lb", snippetType = "autosnippet" }, {
		t("\\left[ "),
		i(1),
		t(" \\right]"),
	}, { condition = math }),
	s({ trig = "lc", snippetType = "autosnippet" }, {
		t("\\left\\{ "),
		i(1),
		t(" \\right\\}"),
	}, { condition = math }),
	s({ trig = "ld", snippetType = "autosnippet" }, {
		t("\\lfloor "),
		i(1),
		t(" \\rfloor"),
	}, { condition = math }),
	s({ trig = "lp", snippetType = "autosnippet" }, {
		t("\\left( "),
		i(1),
		t(" \\right)"),
	}, { condition = math }),
	s({ trig = "lu", snippetType = "autosnippet" }, {
		t("\\lceil "),
		i(1),
		t(" \\rceil"),
	}, { condition = math }),
}
