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
### B - Blackboard Bold
| Trigger | Expansion | Context | Auto |
| --- | --- | --- | --- |
| b{letter} | \mathbb{Letter} | math | :heavy_check_mark: |
| e.g. bb | $ \mathbb{B} $ | math | :heavy_check_mark: |

### D - Document related
| Trigger | Expansion | Context | Auto |
| --- | --- | --- | --- |
| dc | \chapter{} | document | :x: |
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
| el | \begin{lemma} ... \end{lemma} | document | :x: |
| eo | \begin{enumerate} ... \end{enumerate} | document | :x: |
| ep | \begin{proposition} ... \end{proposition} | document | :x: |
| er | \begin{remark} ... \end{remark} | document | :x: |
| es | \begin{bmatrix} ... \end{bmatrix} | math | :heavy_check_mark: |
| et | \begin{theorem} ... \end{theorem} | document | :x: |
| eu | \begin{itemize} ... \end{itemize} | document | :x: |
| ev | \begin{vmatrix} ... \end{vmatrix} | math | :heavy_check_mark: |
| ex | \begin{pmatrix} ... \end{pmatrix} | math | :heavy_check_mark: |

### G - Greek letters
Both capital and lower case letter are available, in the cases where these characters exist in latex.

### M - Maths
| Trigger | Expansion | Context | Auto |
| --- | --- | --- | --- |
| mi | $$ \int_{}^{}{}\,d{} $$ | math | :heavy_check_mark: |
| mp | $$ \prod_{}^{}{} $$ | math | :heavy_check_mark: |
| ms | $$ \sum_{}^{}{} $$ | math | :heavy_check_mark: |
