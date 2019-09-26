---
layout: page
title: "Transformation"
excerpt: "Transformation"
tags: ["lecture"]
context: lectures
subcontext: transformation
---

In this section of the course we study transformations on abstract syntax trees and how to define these using rewrite rules and rewriting strategies.

## Lecture 5: Transformation by Term Rewriting

Topics

- program transformation
  - simplification, desugaring
- rewrite rules
  - match, build, scope
  - conditional rules
- programmable rewriting strategies
  - strategy combinators
  - generic traversal, traversal combinators
  - type-unifying transformations

Slides

<iframe src="//www.slideshare.net/slideshow/embed_code/key/bfWbk7rEPRacvT" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/eelcovisser/compiler-construction-lecture-5-transformation-by-term-rewriting" title="Compiler Construction | Lecture 5 | Transformation by Term Rewriting" target="_blank">Compiler Construction | Lecture 5 | Transformation by Term Rewriting</a> </strong> from <strong><a href="https://www.slideshare.net/eelcovisser" target="_blank">Eelco Visser</a></strong> </div>

- [PDF](https://github.com/TUDelft-CS4200-2019/lectures/raw/master/05-transformation/CS4200-2019-5-transformation.pdf)
- [github](https://github.com/TUDelft-CS4200-2019/lectures/tree/master/05-transformation)

Reading Material

- Eelco Visser, Zine-El-Abidine Benaissa, Andrew P. Tolmach. [Building Program Optimizers with Rewriting Strategies](http://doi.acm.org/10.1145/289423.289425). In Matthias Felleisen, Paul Hudak, Christian Queinnec, editors, Proceedings of the third ACM SIGPLAN international conference on Functional programming. pages 13-26, ACM, Baltimore, Maryland, United States, 1998. [[DOI](http://doi.acm.org/10.1145/289423.289425)] This paper introduces the initial idea of programmable rewriting strategies and decomposing rewrite rules into first-class operations for matching and building terms.

- Eelco Visser. [Program Transformation with Stratego/XT: Rules, Strategies, Tools, and Systems in Stratego/XT 0.9](https://doi.org/10.1007/978-3-540-25935-0_13). In Christian Lengauer, Don S. Batory, Charles Consel, Martin Odersky, editors, Domain-Specific Program Generation, International Seminar, Dagstuhl Castle, Germany, March 23-28, 2003, Revised Papers. Volume 3016 of Lecture Notes in Computer Science, pages 216-238, Springer, 2003. [doi](https://doi.org/10.1007/978-3-540-25935-0_13) This paper provides an easy to read high-level overview of Stratego and its role in the Stratego/XT transformation tool suite.

- [Transformation with Stratego](http://www.metaborg.org/en/latest/source/langdev/meta/lang/stratego/index.html). Documentation

- Martin Bravenboer, Arthur van Dam, Karina Olmos, Eelco Visser. [Program Transformation with Scoped Dynamic Rewrite Rules](https://content.iospress.com/articles/fundamenta-informaticae/fi69-1-2-06). Fundamenta Informaticae, 69(1-2):123-178, 2006. [IOS Press](https://content.iospress.com/articles/fundamenta-informaticae/fi69-1-2-06) This paper formally defines the semantics of Stratego including its extension with dynamic rewrite rules feature. Consult this paper if you want to dig deeper.
