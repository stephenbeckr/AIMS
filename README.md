# CambridgeOptimisationCourse
2 week short-course taught for Cambridge CCIMI June 2018

Taught by Stephen Becker (University of Colorado, Applied Mathematics)

Details at the [course announcement website](http://www.talks.cam.ac.uk/talk/index/104548)

To leave feedback, please see this [Google Form](https://goo.gl/forms/ajPW015U4ft4iBx72)

## Convex Optimisation References
There are many great books to suggest. The ones below are all excellent, and these are the books I used most for preparing these notes.
- [Convex Optimization](http://www.stanford.edu/~boyd/cvxbook/) by S. Boyd and L. Vandenberghe,  (Cambridge U. Press, 2004; available online at Boyd's website)
	- A popular (and rightly so) introduction to convex optimization, with many examples. This is a great source to get ideas on how to prove that your function is convex (follow the examples and exercises)
- [Numerical Optimization](https://link.springer.com/book/10.1007%2F978-0-387-40065-5) by J. Nocedal and S. Wright (Springer, 2005; available online via SpringerLink)
	- This is a comprehensive review of numerical methods; very practical, and most useful when you are implementing a method
- [First-Order Methods in Optimization](https://epubs.siam.org/doi/book/10.1137/1.9781611974997) by Amir Beck, (SIAM, 2017; available online via SIAM eBooks)
	- A recent book that is algorithmic in focus, but includes many results that are not in standard algorithmic books (e.g., the results were previously only in Bauschke and Combettes)
	- Do not confuse this with Amir Beck's other recent book, [Intro to Nonlinear Optimization](https://epubs.siam.org/doi/book/10.1137/1.9781611973655) (SIAM, 2014)
- [Convex Analysis and Monotone Operator Theory in Hilbert Spaces](https://link.springer.com/book/10.1007/978-3-319-48311-5) by H. Bauschke and P. Combettes (Springer, 2nd ed 2017; available online via SpringerLink)
	- A nearly comprehensive set of results on convex analysis, superceding Rockafellar's 1970 [Convex Analysis](http://sites.math.washington.edu/~rtr/papers/rtr025-ConvexAnalysis.djvu), and overlapping some with Rockafellar and Wets' 1997/2009 [Variational Analysis](https://sites.math.washington.edu/~rtr/papers/rtr169-VarAnalysis-RockWets.pdf)

### For analysis
On Monday June 11, we covered gradient descent and variants (sub-gradient, stochastic gradient, accelerated gradient, proximal gradient). If you're interested in the analysis, here are some references:

- Bubeck, Sébastien. [Convex optimization: Algorithms and complexity](https://arxiv.org/abs/1405.4980) Foundations and Trends in Machine Learning 8, no. 3-4 (2015): 231-357.
- Vandenberghe, Lieven. [EE236C Optimization Methods for Large-Scale Systems](http://www.seas.ucla.edu/~vandenbe/ee236c.html) course notes (some changes every year, but generally has nice simple analysis).
- Amir Beck's book mentioned above
- Bottou, Léon, Frank E. Curtis, and Jorge Nocedal. [Optimization methods for large-scale machine learning](https://arxiv.org/abs/1606.04838), hosted on arXiv as part of their 2016 ICML tutorial.

For a history of stochastic approximation, see
- Nemirovski, Arkadi, Anatoli Juditsky, Guanghui Lan, and Alexander Shapiro. [Robust stochastic approximation approach to stochastic programming](http://epubs.siam.org/doi/abs/10.1137/070704277) SIAM Journal on optimization 19, no. 4 (2009): 1574-1609.

For more on degeneracy, focused on SDP, see
- Dmitriy Drusvyatskiy, Henry Wolkowicz. [The many faces of degeneracy in conic optimization](https://arxiv.org/abs/1706.03705), Foundations and Trends in Optimization, 2017
