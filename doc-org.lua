local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node

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
				"\\input{E:/Sam/Documents/Year 3/preamble/notespreamble.tex}",
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
		{ trig = "er" },
		{
			t({"\\begin{pmatrix}", "\t"}),
			i(1),
			t({"", "\\end{pmatrix}", ""}),
		},
		{ condition = math }
	),
	s(
		{ trig = "es" },
		{
			t({"\\begin{bmatrix}", "\t"}),
			i(1),
			t({"", "\\end{bmatrix}", ""})
		},
		{ condition = math }
	),
	s(
		{ trig = "ev" },
		{
			t({"\\begin{vmatrix}", "\t"}),
			i(1),
			t({"", "\\end{vmatrix}", ""})
		},
		{ condition = math }
	),

	-- Lists
	s(
		{ trig = "eo" },
		{
			t({"\\begin{itemize}", "\t\\item "}),
			i(1),
			t({"", "\\end{itemize}", ""})
		}
	),
	s(
		{ trig = "eu" },
		{
			t({"\\begin{enumerate}", "\t\\item "}),
			i(1),
			t({"", "\\end{enumerate}", ""})
		}
	),
}