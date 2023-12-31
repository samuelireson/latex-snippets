local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node

local math = function()
	return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
	-- Generalised environment
	s(
		{ trig = "eb", snippetType = "autosnippet" },
		{
			t("\\begin{"),
			i(1),
			t({"}", ""}),
			t("\t"),
			i(2),
			t({"","\\end{"}),
			rep(1),
			t({"}", ""}),
			i(0),
		}
	),

	-- Specific theorem type environments
	s(
		{ trig = "ed" },
		{
			t({"\\begin{definition}", ""}),
			i(1),
			t({"", "\\end{definition}", ""})
		}
	),
	s(
		{ trig = "et" },
		{
			t({"\\begin{theorem}", ""}),
			i(1),
			t({"", "\\end{theorem}", ""})
		}
	),
	s(
		{ trig = "el" },
		{
			t({"\\begin{lemma}", ""}),
			i(1),
			t({"", "\\end{lemma}", ""})
		}
	),
	s(
		{ trig = "ec" },
		{
			t({"\\begin{corollary}", ""}),
			i(1),
			t({"", "\\end{corollary}", ""})
		}
	),
	s(
		{ trig = "ep" },
		{
			t({"\\begin{proposition}", ""}),
			i(1),
			t({"", "\\end{proposition}", ""})
		}
	),
	s(
		{ trig = "ee" },
		{
			t({"\\begin{example}", ""}),
			i(1),
			t({"", "\\end{example}", ""})
		}
	),
	s(
		{ trig = "er" },
		{
			t({"\\begin{remark}", ""}),
			i(1),
			t({"", "\\end{remark}", ""})
		}
	),

	-- Specific DocOrg
	s(
		{ trig = "dc", snippetType = "snippet" },
		{
			t("\\chapter{"),
			i(1),
			t({"}",""})
		}
	),
	s(
		{ trig = "di" },
		{
			t("\\input{chapters/chapter-"),
			i(1),
			t("}")
		}
	),
	s(
		{ trig = "ds", snippetType = "snippet" },
		{
			t("\\section{"),
			i(1),
			t({"}",""})
		}
	),
	s(
		{ trig = "dt", snippetType = "snippet" },
		{
			t("\\subsection{"),
			i(1),
			t({"}",""})
		}
	),

	-- Template references
	s(
		{ trig = "dn" },
		{
			t({
				"\\documentclass[11pt]{report}",
				"",
				"\\input{E:/Sam/Documents/Year 3/preamble/final-year-notes-preamble.tex}",
				"",
				"\\title{"
			}),
			i(1),
			t({
				"}",
				"",
				"\\begin{document}",
				"",
			}),
			i(0),
			t({
				"",
				"\\end{document}"
			})
		}
	),

	s(
		{ trig = "dp" },
		{
			t({
				"\\documentclass{beamer}",
				"",
				"\\input{E:/Sam/Documents/Year 3/preamble/presentation-preamble.tex}",
				"",
				"\\title{"
			}),
			i(1),
			t({
				"}",
				"",
				"\\institute{\\large \\textbf{Learning Outcomes}: \\\\[6pt] "
			}),
			i(2),
			t({
				"}",
				"",
				"\\begin{document}",
				"\\begin{frame}",
				"\\titlepage",
				"\\end{frame}",
				"",
				"\\begin{frame}{Outline}",
				"\\tableofcontents[pausesections]",
				"\\end{frame}",
				"",
				""
			}),
			i(0),
			t({
				"",
				"\\end{document}"
			})
		}
	),
	s(
		{ trig = "df-p" },
		{
			t({"\\begin{figure}[ht]", "\\centering", "\\incfig{"}),
			i(1),
			t({"}", "\\caption{"}),
			i(2),
			t({"}", "\\label{fig:"}),
			rep(1),
			t({"}", "\\end{figure}", ""})
		}
	),
	s(
		{ trig = "df-t" },
		{
			t({"\\begin{figure}[ht]", "\\centering", "\\begin{tikzpicture}", ""}),
			i(1),
			t({"", "\\end{tikzpicture}", "\\caption{}","\\end{figure}", "\\label{fig:}"}),
		}
	),

	-- Maths related environments
	s(
		{ trig = "ei" },
		{
			t("$ "),
			i(1),
			t(" $ ")
		}
	),
	s(
		{ trig = "ej" },
		{
			t({"\\begin{align*}", "\t"}),
			i(1),
			t({"", "\\end{align*}", ""})
		}
	),

	-- Matrices
	s(
		{ trig = "ex", snippetType = "autosnippet" },
		{
			t({"\\begin{pmatrix}", "\t"}),
			i(1),
			t({"", "\\end{pmatrix}", ""}),
		},
		{ condition = math }
	),
	s(
		{ trig = "es", snippetType = "autosnippet" },
		{
			t({"\\begin{bmatrix}", "\t"}),
			i(1),
			t({"", "\\end{bmatrix}", ""})
		},
		{ condition = math }
	),
	s(
		{ trig = "ev", snippetType = "autosnippet" },
		{
			t({"\\begin{vmatrix}", "\t"}),
			i(1),
			t({"", "\\end{vmatrix}", ""})
		},
		{ condition = math }
	),

	-- Lists
	s(
		{ trig = "eu" },
		{
			t({"\\begin{itemize}", "\t\\item "}),
			i(1),
			t({"", "\\end{itemize}", ""})
		}
	),
	s(
		{ trig = "eo" },
		{
			t({"\\begin{enumerate}", "\t\\item "}),
			i(1),
			t({"", "\\end{enumerate}", ""})
		}
	),

	-- Left-right brackets
	s(
		{ trig = "la", snippetType="autosnippet" },
		{
			t("\\left\\langle "),
			i(1),
			t(" \\right\\rangle")
		},
		{ condition = math }
	),
	s(
		{ trig = "lb", snippetType="autosnippet" },
		{
			t("\\left[ "),
			i(1),
			t(" \\right]")
		},
		{ condition = math }
	),
	s(
		{ trig = "lp", snippetType="autosnippet" },
		{
			t("\\left( "),
			i(1),
			t(" \\right)")
		},
		{ condition = math }
	),
	s(
		{ trig = "lc", snippetType="autosnippet" },
		{
			t("\\left\\{ "),
			i(1),
			t(" \\right\\}")
		},
		{ condition = math }
	),
	s(
		{ trig = "lu", snippetType="autosnippet" },
		{
			t("\\left\\lceil "),
			i(1),
			t(" \\right\\rceil")
		},
		{ condition = math }
	),
	s(
		{ trig = "ld", snippetType="autosnippet" },
		{
			t("\\left\\lfloor "),
			i(1),
			t(" \\right\\rfloor")
		},
		{ condition = math }
	)
}
