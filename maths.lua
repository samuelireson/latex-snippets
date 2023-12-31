local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local math = function()
	return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
	-- A - Logical operators
	s(
		{ trig = "ab", snippetType="autosnippet" },
		{
			t("\\impliedby ")
		},
		{ condition = math }
	),
	s(
		{ trig = "ae", snippetType="autosnippet" },
		{
			t("\\iff ")
		},
		{ condition = math }
	),
	s(
		{ trig = "af", snippetType="autosnippet" },
		{
			t("\\forall ")
		},
		{ condition = math }
	),
	s(
		{ trig = "at", snippetType="autosnippet" },
		{
			t("\\implies ")
		},
		{ condition = math }
	),
	s(
		{ trig = "ai", snippetType="autosnippet" },
		{
			t("\\in ")
		},
		{ condition = math }
	),
	s(
		{ trig = "ac", snippetType="autosnippet" },
		{
			t("\\ni ")
		},
		{ condition = math }
	),
	s(
		{ trig = "ar", snippetType="autosnippet" },
		{
			t("\\subset ")
		},
		{ condition = math }
	),
	s(
		{ trig = "a-r", snippetType="autosnippet" },
		{
			t("\\subseteq ")
		},
		{ condition = math }
	),
	s(
		{ trig = "as", snippetType="autosnippet" },
		{
			t("\\supset ")
		},
		{ condition = math }
	),
	s(
		{ trig = "a-s", snippetType="autosnippet" },
		{
			t("\\supseteq ")
		},
		{ condition = math }
	),
	s(
		{ trig = "ay", snippetType="autosnippet" },
		{
			t("\\not")
		},
		{ condition = math }
	),
	s(
		{ trig = "ax", snippetType="autosnippet" },
		{
			t("\\exists ")
		},
		{ condition = math }
	),
	s(
		{ trig = "am", snippetType="autosnippet" },
		{
			t("\\setminus ")
		},
		{ condition = math }
	),
	s(
		{ trig = "an", snippetType="autosnippet" },
		{
			t("\\neq")
		},
		{ condition = math }
	),
	s(
		{ trig = "az", snippetType="autosnippet" },
		{
			t("\\equiv")
		},
		{ condition = math }
	),
	s(
		{ trig = "aa", snippetType="autosnippet" },
		{
			t("\\cap ")
		},
		{ condition = math }
	),
	s(
		{ trig = "au", snippetType="autosnippet" },
		{
			t("\\cup ")
		},
		{ condition = math }
	),


	-- Blackboard bold
	s(
		{ trig = "b(%a)", regTrig = true, snippetType = "autosnippet" },
		{
			f(function(_, snip)
				return "\\mathbb{" .. string.upper(snip.captures[1]) .. "}"
			end, {})
		},
		{ condition = math}
	),

	-- Caligraphic
	s(
		{ trig = "c(%a)", regTrig = true, snippetType = "autosnippet" },
		{
			f(function(_, snip)
				return "\\mathcal{" .. string.upper(snip.captures[1]) .. "}"
			end, {})
		},
		{ condition = math}
	),

	-- Greek letters
	s(
		{ trig = "ga", snippetType = "autosnippet" },
		{
			t("\\alpha")
		},
		{ condition = math }
	),
	s(
		{ trig = "gb", snippetType = "autosnippet" },
		{
			t("\\beta")
		},
		{ condition = math }
	),
	s(
		{ trig = "gg", snippetType = "autosnippet" },
		{
			t("\\gamma")
		},
		{ condition = math }
	),
	s(
		{ trig = "gG", snippetType = "autosnippet" },
		{
			t("\\Gamma")
		},
		{ condition = math }
	),
	s(
		{ trig = "gd", snippetType="autosnippet" },
		{
			t("\\delta")
		},
		{ condition = math }
	),
	s(
		{ trig = "gD", snippetType="autosnippet" },
		{
			t("\\Delta")
		},
		{ condition = math }
	),
	s(
		{ trig = "ge", snippetType="autosnippet" },
		{
			t("\\epsilon")
		},
		{ condition = math }
	),
	s(
		{ trig = "gz", snippetType="autosnippet" },
		{
			t("\\zeta")
		},
		{ condition = math }
	),
	s(
		{ trig = "gh", snippetType="autosnippet" },
		{
			t("\\eta")
		},
		{ condition = math }
	),
	s(
		{ trig = "gth", snippetType="autosnippet" },
		{
			t("\\theta")
		},
		{ condition = math }
	),
	s(
		{ trig = "gTh", snippetType="autosnippet" },
		{
			t("\\Theta")
		},
		{ condition = math }
	),
	s(
		{ trig = "gi", snippetType="autosnippet" },
		{
			t("\\iota")
		},
		{ condition = math }
	),
	s(
		{ trig = "gk", snippetType="autosnippet" },
		{
			t("\\kappa")
		},
		{ condition = math }
	),
	s(
		{ trig = "gl", snippetType="autosnippet" },
		{
			t("\\lambda")
		},
		{ condition = math }
	),
	s(
		{ trig = "gL", snippetType="autosnippet" },
		{
			t("\\Lambda")
		},
		{ condition = math }
	),
	s(
		{ trig = "gm", snippetType="autosnippet" },
		{
			t("\\mu")
		},
		{ condition = math }
	),
	s(
		{ trig = "gn", snippetType="autosnippet" },
		{
			t("\\nu")
		},
		{ condition = math }
	),
	s(
		{ trig = "gx", snippetType="autosnippet" },
		{
			t("\\xi")
		},
		{ condition = math }
	),
	s(
		{ trig = "gX", snippetType="autosnippet" },
		{
			t("\\Xi")
		},
		{ condition = math }
	),
	s(
		{ trig = "gp", snippetType="autosnippet" },
		{
			t("\\pi")
		},
		{ condition = math }
	),
	s(
		{ trig = "gP", snippetType="autosnippet" },
		{
			t("\\Pi")
		},
		{ condition = math }
	),
	s(
		{ trig = "gr", snippetType="autosnippet" },
		{
			t("\\rho")
		},
		{ condition = math }
	),
	s(
		{ trig = "gs", snippetType="autosnippet" },
		{
			t("\\sigma")
		},
		{ condition = math }
	),
	s(
		{ trig = "gS", snippetType="autosnippet" },
		{
			t("\\Sigma")
		},
		{ condition = math }
	),
	s(
		{ trig = "gta", snippetType="autosnippet" },
		{
			t("\\tau")
		},
		{ condition = math }
	),
	s(
		{ trig = "gu", snippetType="autosnippet" },
		{
			t("\\upsilon")
		},
		{ condition = math }
	),
	s(
		{ trig = "gU", snippetType="autosnippet" },
		{
			t("\\Upsilon")
		},
		{ condition = math }
	),
	s(
		{ trig = "gf", snippetType="autosnippet" },
		{
			t("\\phi")
		},
		{ condition = math }
	),
	s(
		{ trig = "gF", snippetType="autosnippet" },
		{
			t("\\Phi")
		},
		{ condition = math }
	),
	s(
		{ trig = "gvf", snippetType="autosnippet" },
		{
			t("\\varphi")
		},
		{ condition = math }
	),
	s(
		{ trig = "gc", snippetType="autosnippet" },
		{
			t("\\chi")
		},
		{ condition = math }
	),
	s(
		{ trig = "gw", snippetType="autosnippet" },
		{
			t("\\psi")
		},
		{ condition = math }
	),
	s(
		{ trig = "gW", snippetType="autosnippet" },
		{
			t("\\Psi")
		},
		{ condition = math }
	),
	s(
		{ trig = "go", snippetType="autosnippet" },
		{
			t("\\omega")
		},
		{ condition = math }
	),
	s(
		{ trig = "gO", snippetType="autosnippet" },
		{
			t("\\Omega")
		},
		{ condition = math }
	),

	-- Maths Operators/operations
	s(
		{ trig = "mi", snippetType="autosnippet" },
		{
			t("\\int_{"),
			i(1),
			t("}^{"),
			i(2),
			t("}{"),
			i(3),
			t("}\\,d "),
			i(4)
		},
		{ condition = math }
	),
	s(
		{ trig = "ms", snippetType="autosnippet" },
		{
			t("\\sum_{"),
			i(1),
			t("}^{"),
			i(2),
			t("}{"),
			i(3),
			t("}")
		},
		{ condition = math }
	),
	s(
		{ trig = "mp", snippetType="autosnippet" },
		{
			t("\\prod_{"),
			i(1),
			t("}^{"),
			i(2),
			t("}{"),
			i(3),
			t("}")

		},
		{ condition = math }
	),
	s(
		{ trig = "ma", snippetType="autosnippet" },
		{
			t("\\bigcap_{"),
			i(1),
			t("}^{"),
			i(2),
			t("}{"),
			i(3),
			t("}")
		},
		{ condition = math }
	),
	s(
		{ trig = "mu", snippetType="autosnippet" },
		{
			t("\\bigcup_{"),
			i(1),
			t("}^{"),
			i(2),
			t("}{"),
			i(3),
			t("}")
		},
		{ condition = math }
	),
	s(
		{ trig = "mf", snippetType="autosnippet" },
		{
			t("\\frac{"),
			i(1),
			t("}{"),
			i(2),
			t("}")
		},
		{ condition = math }
	),
	s(
		{ trig = "_", snippetType="autosnippet" },
		{
			t("_{"),
			i(1),
			t("}")
		},
		{ condition = math }
	),
	s(
		{ trig = "^", snippetType="autosnippet" },
		{
			t("^{"),
			i(1),
			t("}")
		},
		{ condition = math }
	),
	s(
		{ trig = "ml", snippetType="autosnippet" },
		{
			t("\\lim_{"),
			i(1),
			t("}{"),
			i(2),
			t("}")
		},
		{ condition = math }
	),
	s(
		{ trig = "mm", snippetType="autosnippet" },
		{
			t("\\inf_{"),
			i(1),
			t("}{"),
			i(2),
			t("}")
		},
		{ condition = math }
	),
	s(
		{ trig = "mn", snippetType="autosnippet" },
		{
			t("\\sup_{"),
			i(1),
			t("}{"),
			i(2),
			t("}")
		},
		{ condition = math }
	),
	s(
		{ trig = "md(%d)", snippetType="autosnippet", regTrig = true },
		{
			f(function(_, snip)
				if snip.captures[1] == "1" then
					return "\\frac{d "
				else
					return "\\frac{d^" .. snip.captures[1] .. " "
				end
			end, {}),
			i(1),
			t("}{d "),
			i(2),
			f(function(_, snip)
				if snip.captures[1] == "1" then
					return "}"
				else
					return "^" .. snip.captures[1] .. "}"
				end
			end, {})

		},
		{ condition = math }
	),
	s(
		{ trig = "me(%d)", snippetType="autosnippet", regTrig = true },
		{
			f(function(_, snip)
				if snip.captures[1] == "1" then
					return "\\frac{\\partial "
				else
					return "\\frac{\\partial^" .. snip.captures[1] .. " "
				end
			end, {}),
			i(1),
			t("}{\\partial "),
			i(2),
			f(function(_, snip)
				if snip.captures[1] == "1" then
					return "}"
				else
					return "^" .. snip.captures[1] .. "}"
				end
			end, {})

		},
		{ condition = math }
	),
	s(
		{ trig = "mv", snippetType="autosnippet" },
		{
			t("\\vec{"),
			i(1),
			t("}")
		},
		{ condition = math }
	),
	s(
		{ trig = "mx", snippetType="autosnippet" },
		{
			t("\\times ")
		},
		{ condition = math }
	),
	s(
		{ trig = "mz", snippetType="autosnippet" },
		{
			t("\\infty")
		},
		{ condition = math }
	),


	-- F - Functions
	s(
		{ trig = "fn", snippetType="autosnippet" },
		{
			t("\\to ")
		},
		{ condition = math }
	),
	s(
		{ trig = "fm", snippetType="autosnippet" },
		{
			t("\\mapsto ")
		},
		{ condition = math }
	),
	s(
		{ trig = "fo", snippetType="autosnippet" },
		{
			t("\\circ ")
		},
		{ condition = math }
	),
	s(
		{ trig = "fsin", snippetType="autosnippet" },
		{
			t("\\sin("),
			i(1),
			t(")")
		},
		{ condition = math }
	),
	s(
		{ trig = "fcos", snippetType="autosnippet" },
		{
			t("\\cos("),
			i(1),
			t(")")
		},
		{ condition = math }
	),
	s(
		{ trig = "ftan", snippetType="autosnippet" },
		{
			t("\\tan("),
			i(1),
			t(")")
		},
		{ condition = math }
	),
	s(
		{ trig = "fexp", snippetType="autosnippet" },
		{
			t("\\exp("),
			i(1),
			t(")")
		},
		{ condition = math }
	),
	s(
		{ trig = "flog", snippetType="autosnippet" },
		{
			t("\\log("),
			i(1),
			t(")")
		},
		{ condition = math }
	),
	s(
		{ trig = "fln", snippetType="autosnippet" },
		{
			t("\\ln("),
			i(1),
			t(")")
		},
		{ condition = math }
	),
	s(
		{ trig = "farcsin", snippetType="autosnippet" },
		{
			t("\\arcsin("),
			i(1),
			t(")")
		},
		{ condition = math }
	),
	s(
		{ trig = "farccos", snippetType="autosnippet" },
		{
			t("\\arccos("),
			i(1),
			t(")")
		},
		{ condition = math }
	),
	s(
		{ trig = "farctan", snippetType="autosnippet" },
		{
			t("\\arctan("),
			i(1),
			t(")")
		},
		{ condition = math }
	),

	-- P - Presentation
	s(
		{ trig = "pf" },
		{
			t({"\\begin{frame}", "\\frametitle{"}),
			i(1),
			t({"}", ""}),
			i(2),
			t({"", "\\end{frame}", ""})
		}
	),
	s(
		{ trig = "ps" },
		{
			t({"\\begin{slide}", ""}),
			i(1),
			t({"", "\\end{slide}", ""})
		}
	),
	s(
		{ trig = "pu" },
		{
			t({"\\begin{itemize}[<+-| alert@+>]", ""}),
			i(1),
			t({"", "\\end{itemize}", ""})
		}
	),
	s(
		{ trig = "pl" },
		{
			t("\\lecture{"),
			i(1),
			t("}{"),
			i(2),
			t("}","")
		}
	),

	-- T - Type faces
	s(
		{ trig = "tf", snippetType="autosnippet" },
		{
			t("\\frak{"),
			i(1),
			t("}")
		},
		{ condition = math }
	),
	s(
		{ trig = "to", snippetType="autosnippet" },
		{
			t("\\overline{"),
			i(1),
			t("}")
		},
		{ condition = math }
	),
	s(
		{ trig = "tt", snippetType="autosnippet" },
		{
			t("\\tilde{"),
			i(1),
			t("} ")
		},
		{ condition = math }
	),
	s(
		{ trig = "th", snippetType="autosnippet" },
		{
			t("\\hat{"),
			i(1),
			t("} ")
		},
		{ condition = math }
	),
	s(
		{ trig = "td", snippetType="autosnippet" },
		{
			t("^{\\dagger}")
		},
		{ condition = math }
	),
	s(
		{ trig = "ts", snippetType="autosnippet" },
		{
			t("^{*}")
		},
		{ condition = math }
	),
	s(
		{ trig = "tr", snippetType="autosnippet" },
		{
			t("\\mathrm{"),
			i(1),
			t("}")
		},
		{ condition = math }
	),

	-- Quantum mechanics specific
	s(
		{ trig = "q-b", snippetType="autosnippet" },
		{
			t("\\langle "),
			i(1),
			t(" | ")
		},
		{ condition = math }
	),
	s(
		{ trig = "q-k", snippetType="autosnippet" },
		{
			t("| "),
			i(1),
			t(" \\rangle ")
		},
		{ condition = math }
	),
	s(
		{ trig = "qbk", snippetType="autosnippet" },
		{
			t("\\langle "),
			i(1),
			t(" | "),
			i(2),
			t(" \\rangle ")
		},
		{ condition = math }
	),
	s(
		{ trig = "qp", snippetType="autosnippet" },
		{
			t("\\oplus ")
		},
		{ condition = math }
	)
}
