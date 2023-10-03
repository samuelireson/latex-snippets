# Latex Snippets

A collection of snippets for maths note taking. Snippets are organised logically
by first letter, with the second letter indicating the function of the snippet.
See below for full reference.

## Reference
The trigger of the snippet refers to the combination of letters from which the
snippet will be expanded. The expansion is what the snippet will expand to. The
context makes reference to the places in a latex document in which the snippet
will expand. If a snippet is Auto - :heavy_check_mark: , there is no need to press TAB for
expansion.

### A - Logical operators
| Trigger | Expansion | Context | Auto |
| --- | --- | --- | --- |
| aa | \equiv | math | :heavy_check_mark: |
| ab | \impliedby | math | :heavy_check_mark: |
| ac | \ni | math | :heavy_check_mark: |
| ae | \iff | math | :heavy_check_mark: |
| af | \forall | math | :heavy_check_mark: |
| ai | \in | math | :heavy_check_mark: |
| am | \setminus | math | :heavy_check_mark: |
| an | \neq | math | :heavy_check_mark: |
| ar | \subset | math | :heavy_check_mark: |
| a-r | \subseteq | math | :heavy_check_mark: |
| as | \supset | math | :heavy_check_mark: |
| a-s | \supseteq | math | :heavy_check_mark: |
| at | \implies | math | :heavy_check_mark: |
| ax | \not | math | :heavy_check_mark: |



### B - Blackboard Bold
| Trigger | Expansion | Context | Auto |
| --- | --- | --- | --- |
| b{letter} | \mathbb{Letter} | math | :heavy_check_mark: |
| e.g. bb | \mathbb{B} | math | :heavy_check_mark: |

### C - Caligraphic
| Trigger | Expansion | Context | Auto |
| --- | --- | --- | --- |
| b{letter} | \mathbb{Letter} | math | :heavy_check_mark: |
| e.g. bb | \mathbb{B} | math | :heavy_check_mark: |

### D - Document related
| Trigger | Expansion | Context | Auto |
| --- | --- | --- | --- |
| dc | \chapter{} | document | :x: |
| di | \input{chapter-} | document | :x: |
| dn | *Notes template* | document | :x: |
| ds | \section{} | document | :x: |
| dt | \subsection{} | document | :x: |

### E - Environment related
| Trigger | Expansion | Context | Auto |
| --- | --- | --- | --- |
| eb | \begin{} ... \end{} | document | :x: |
| ec | \begin{corollary} ... \end{corollary} | document | :x: |
| ed | \begin{definition} ... \end{definition} | document | :x: |
| ee | \begin{example} ... \end{example} | document | :x: |
| ei | \$ ... \$ | document | :x: |
| ej | \$\$ ... \$\$ | document | :x: |
| el | \begin{lemma} ... \end{lemma} | document | :x: |
| eo | \begin{enumerate} ... \end{enumerate} | document | :x: |
| ep | \begin{proposition} ... \end{proposition} | document | :x: |
| er | \begin{remark} ... \end{remark} | document | :x: |
| es | \begin{bmatrix} ... \end{bmatrix} | math | :heavy_check_mark: |
| et | \begin{theorem} ... \end{theorem} | document | :x: |
| eu | \begin{itemize} ... \end{itemize} | document | :x: |
| ev | \begin{vmatrix} ... \end{vmatrix} | math | :heavy_check_mark: |
| ex | \begin{pmatrix} ... \end{pmatrix} | math | :heavy_check_mark: |

### F - Functions
| Trigger | Expansion | Context | Auto |
| --- | --- | --- | --- |
| farccos | \\arccos() | math | :heavy_check_mark: |
| farcsin | \\arcsin() | math | :heavy_check_mark: |
| farctan | \\arctan() | math | :heavy_check_mark: |
| fcos | \\cos() | math | :heavy_check_mark: |
| fexp | \\exp() | math | :heavy_check_mark: |
| fln | \\ln() | math | :heavy_check_mark: |
| flog | \\log() | math | :heavy_check_mark: |
| fm | \\to | math | :heavy_check_mark: |
| fsin | \\sin() | math | :heavy_check_mark: |
| ftan | \\tan() | math | :heavy_check_mark: |

### G - Greek letters
Both capital and lower case letter are available, in the cases where these characters exist in latex.

### L - Left-right brackets
| Trigger | Expansion | Context | Auto |
| --- | --- | --- | --- |
| la | \left\langle ... \right\rangle | math | :heavy_check_mark: |
| lb | \left[ ... \right] | math | :heavy_check_mark: |
| lc | \left\{ ... \right\} | math | :heavy_check_mark: |
| lp | \left( ... \right) | math | :heavy_check_mark: |

### M - Maths
| Trigger | Expansion | Context | Auto |
| --- | --- | --- | --- |
| md{#} | \frac{d^# }{d ^#} | math | :heavy_check_mark: |
| me{#} | \frac{\partial^# }{\partial ^#} | math | :heavy_check_mark: |
| mf | \frac{}{} | math | :heavy_check_mark: |
| mi | \int_{}^{}{}\,d{} | math | :heavy_check_mark: |
| ml | \lim_{}{} | math | :heavy_check_mark: |
| mm | \inf_{}{} | math | :heavy_check_mark: |
| mn | \sup_{}{} | math | :heavy_check_mark: |
| mp | \prod_{}^{}{} | math | :heavy_check_mark: |
| ms | \sum_{}^{}{} | math | :heavy_check_mark: |
| mv | \vec{} | math | :heavy_check_mark: |
| mx | \times | math | :heavy_check_mark: |
| mz | \infty | math | :heavy_check_mark: |
| ^ | ^{} | math | :heavy_check_mark: |
| \_ | \_{} | math | :heavy_check_mark: |

### P - Presentation
| Trigger | Expansion | Context | Auto |
| --- | --- | --- | --- |
| pf | \begin{frame} ... \end{frame} | document | :x: |
| pl | \lecture{} | document | :x: |
| ps | \begin{slide} ... \end{slide} | document | :x: |
| pu | \begin{itemze}[] ... \end{itemize} | document | :x: |

### T - Type faces
| Trigger | Expansion | Context | Auto |
| --- | --- | --- | --- |
| tf | \frak{} | math | :heavy_check_mark: |
| to | \overline{} | math | :heavy_check_mark: |
