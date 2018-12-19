---
layout: page
title: "Lecture 14: Interpreters"
excerpt: "Interpreters"
tags: ["lecture"]
context: lectures
subcontext: dynamics
---


## Topics

- Dynamics semantics
  - behaviour of programs
- Definitional interpreters
- Operational semantics
- DynSem meta-DSL
  - reduction rules
  - semantic components: environments, stores
  - implicit propagation
  - interpreter generation
- Partial evaluation
  - program specialization
  - Futumura projections
- Other topics
  - AST interpreters
  - Bytecode interpreters
  - Just-in-time compilers


## Slides

<iframe src="//www.slideshare.net/slideshow/embed_code/key/6GilXUQrdGEb7l" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/eelcovisser/compiler-construction-lecture-14-interpreters" title="Compiler Construction | Lecture 14 | Interpreters" target="_blank">Compiler Construction | Lecture 14 | Interpreters</a> </strong> from <strong><a href="https://www.slideshare.net/eelcovisser" target="_blank">Eelco Visser</a></strong> </div>

- [PDF](https://github.com/TUDelft-CS4200-2018/lectures/raw/master/14-interpreters/CS4200-2018-14-interpreters.pdf)
- [github](https://github.com/TUDelft-CS4200-2018/lectures/tree/master/14-interpreters)

## Reading Material

* Vlad A. Vergu, Pierre Néron, Eelco Visser. [DynSem: A DSL for Dynamic Semantics Specification](http://drops.dagstuhl.de/opus/volltexte/2015/5208/). In Maribel Fernández, editor, 26th International Conference on Rewriting Techniques and Applications, RTA 2015, June 29 to July 1, 2015, Warsaw, Poland. Volume 36 of LIPIcs, pages 365-378, Schloss Dagstuhl - Leibniz-Zentrum fuer Informatik, 2015. [PDF](http://drops.dagstuhl.de/opus/volltexte/2015/5208/pdf/28.pdf)

* Vlad A. Vergu, Eelco Visser. [Specializing a meta-interpreter: JIT compilation of dynsem specifications on the graal VM](https://doi.org/10.1145/3237009.3237018). In Eli Tilevich, Hanspeter Mössenböck, editors, Proceedings of the 15th International Conference on Managed Languages & Runtimes, ManLang 2018, Linz, Austria, September 12-14, 2018. ACM, 2018.
