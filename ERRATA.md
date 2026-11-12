# Errata

Known errors in [`AZ_ISUFI_Thesis.pdf`](AZ_ISUFI_Thesis.pdf) (2022). The LaTeX source is lost, so the PDF is left
as it was and the corrections are listed here. Page numbers are the printed ones. Most of these errors also
appear in the slides.

## Chapter 1

- p. 1, Def. 1: the symplectic matrix J is 2N × 2N, not N × N.
- p. 2, (1.4): with the bracket (1.3) the canonical relation is {q<sub>i</sub>, p<sub>j</sub>} = δ<sub>ij</sub>
  (as used on p. 13), not {p<sub>i</sub>, q<sub>j</sub>} = δ<sub>ij</sub>.
- p. 2, Def. 3: H̃(q̃, p̃) = H(T(q̃, p̃)).
- p. 4–5, Def. 5 and Thm 2: n and N are used for the same number of degrees of freedom.
- p. 4: the sentence "We can now" is unfinished.
- p. 6, Thm 3: the traces tr(L<sup>k</sup>) are integrals of motion, not necessarily all of them.
- p. 6, Example 2: the equations of motion are q̇ = p, ṗ = −ω²q.

## Chapter 2

- (2.1) and the following Hamiltonians, e.g. (2.11): the pair potential should be summed over i < j
  (or carry a factor ½ over i ≠ j). Otherwise each pair is counted twice and the factors do not match the
  Lax equations.
- p. 9, §2.2.2: the KKS construction described there gives H<sub>eCM</sub>, the rational system with external
  harmonic potential, not H<sub>rCM</sub>.
- p. 10, (2.17)–(2.18): the change of variables is not canonical (p̂ should be 2ia q p), and with the map as
  written the trigonometric potential gets the wrong sign. The intended result is the tCM Hamiltonian with
  V = a²/sin² a(q̂<sub>i</sub> − q̂<sub>j</sub>), up to a time rescaling. The same normalization issue affects (2.20).
- p. 10, §2.3: "As mentioned above" refers to something that is not mentioned before.
- p. 14, Observation 1: L̇ − [L, M] = −ω²Q, with the reduced matrix Q, not X.
- p. 15, (2.52a): sinh² a(q<sub>n</sub> − q<sub>m</sub>), without the extra square.
- (2.53b) and (3.9b): the last term of the ż<sub>n</sub> equation is iωz<sub>n</sub>, not iωx<sub>j</sub>.
- (2.53b)–(2.57b), (3.9b), (3.11b), (3.18b): in the ż<sub>n</sub> equations the sum over z<sub>m</sub> runs up to M and
  the sum over x<sub>l</sub> runs up to N.

## Chapter 3

- p. v (Introduction): the rational system with external harmonic potential is eCM, not hCM (hCM is the
  hyperbolic system).
- p. 18, (3.3): the poles of the KdV soliton are at x<sub>0</sub> + ct + iπ(n + ½)/b.
- p. 19, (3.10): the harmonic terms are ω²x<sub>j</sub>² and ω²z<sub>n</sub>².
- p. 20, (3.12b): V(z<sub>m</sub> − z<sub>n</sub>), without the extra square.
- Figs 3.2–3.6: the horizontal axis is the sample index, not the time t. Time is t = 0.1 × index in Figs 3.2–3.3
  and t = 0.01 × index in Figs 3.4–3.6. The notebook now plots against t.
- Fig. 3.4a: the second initial value is z<sub>2</sub>(0) = 0.1 − 2i, not −1.1 − 2i (see the notebook).
- p. 23, Observation 3: ln|x<sub>j</sub> − z<sub>n</sub>| = ½[ln(x<sub>j</sub> − z<sub>n</sub>) + ln(x<sub>j</sub> − z̄<sub>n</sub>)]
  (a sum, not a product). In (3.21) the derivative is ∂/∂x<sub>j</sub>.
- p. 24, Conclusions: the first sentence is garbled ("we found some particular In §3.2 we constructed").

## References

- [19] is by V. I. Arnol'd alone (K. Vogtmann and A. Weinstein are the translators). Likewise, E. Khukhro
  in [9] and A. G. Reyman in [23] are translators, not co-authors.
- [16]: "about a fixed point", not "about a fixed axis".
