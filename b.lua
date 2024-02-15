local ls = require("luasnip")
local s = ls.snippet
local f = ls.function_node

local math = function()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

return {
	s({ trig = "b(%a)", regTrig = true, snippetType = "autosnippet" }, {
		f(function(_, snip)
			return "\\mathbb{" .. string.upper(snip.captures[1]) .. "}"
		end, {}),
	}, { condition = math }),
}
