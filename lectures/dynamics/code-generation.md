---
layout: page
title: "Lecture 13: Code Generation"
excerpt: "Code Generation"
tags: ["lecture"]
context: lectures
subcontext: dynamics
---

In this lecture we study the definition of code generators that transform source language abstract syntax trees into target language programs.

## Topics

- Compilation schemas

- Correctness of generated code
	- syntactic correctness
	- type correctness
	- semantics preservation

- Mechanics of code generation
  - string interpolation
  - code generation by term transformation
	- meta-programming with concrete object syntax

- Optimizing generated code
  - peephole optimizations
	- tail recursion elimination

## Slides

<iframe src="//www.slideshare.net/slideshow/embed_code/key/mPsydG5g2Z7xkR" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/eelcovisser/compiler-construction-lecture-13-code-generation" title="Compiler Construction | Lecture 13 | Code Generation" target="_blank">Compiler Construction | Lecture 13 | Code Generation</a> </strong> from <strong><a href="https://www.slideshare.net/eelcovisser" target="_blank">Eelco Visser</a></strong> </div>

- [PDF](https://github.com/TUDelft-CS4200-2018/lectures/raw/master/13-code-generation/CS4200-2018-13-code-generation.pdf)
- [github](https://github.com/TUDelft-CS4200-2018/lectures/tree/master/13-code-generation)

## Reading Material

- Eelco Visser. Meta-programming with Concrete Object Syntax. In Don S. Batory, Charles Consel, Walid Taha, editors, Generative Programming and Component Engineering, ACM SIGPLAN/SIGSOFT Conference, GPCE 2002, Pittsburgh, PA, USA, October 6-8, 2002, Proceedings. Volume 2487 of Lecture Notes in Computer Science, pages 299-315, Springer, 2002. [doi:10.1007/3-540-45821-2_19]<https://doi.org/10.1007/3-540-45821-2_19>
