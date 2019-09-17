---
layout: page
title: "Lecture 3: Parsing"
excerpt: "Parsing"
tags: ["lectures"]
context: lectures
subcontext: syntax
# image:
#    feature: "lecture.jpg"
#    credit: Delft University of Technology
#    creditlink: http://repository.tudelft.nl/view/MMP/uuid%3Aa2f25709-c56e-453e-9394-4a05acf603a4/
---

In this lecture we study how to turn syntax definitions (context-free grammars) into parsers that turn program texts into parse trees.

### Topics

- context-free grammars
  - derivations, left-most derivations, right-most derivations
  - parse trees, abstract syntax trees, terms
- grammar transformations
  - left factoring, eliminating left recursion
  - disambiguation with associativity and priority rules
- shif-reduce parsing
  - reductions, shift-reduce parsing, LR parsing
  - nullable, first, follow
- SLR parser generation


### Slides

- [PDF 2019](https://github.com/TUDelft-CS4200-2019/lectures/raw/master/03-parsing/CS4200-2019-3-parsing.pdf)
- [github](https://github.com/TUDelft-CS4200-2019/lectures/tree/master/03-parsing)

<iframe src="//www.slideshare.net/slideshow/embed_code/key/HcAB5QGvTyO7ur" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/eelcovisser/cs4200-2019-lecture-3-parsing" title="CS4200 2019 | Lecture 3 | Parsing" target="_blank">CS4200 2019 | Lecture 3 | Parsing</a> </strong> from <strong><a href="https://www.slideshare.net/eelcovisser" target="_blank">Eelco Visser</a></strong> </div>

### Reading material

- Chapter 4 on Syntactic Analysis of "Compilers: Principles, Techniques, and Tools, 2nd Edition" by Alfred V. Aho, Monica S. Lam, Ravi Sethi, Jeffrey D. Ullman. Pearson, 2007. **Read Sections 4.1, 4.2, 4.3, 4.5, 4.6**.

### Software: `Parse' language

The language that was used in the lecture to define context-free grammars, derivations, parse tables, and more is defined in this Spoofax project:

- https://github.com/TUDelft-CS4200-2018/cc.syntax.parsing

### Advanced Topics

Parsing is a vast area and could easily fill an entire course.

- Other parsing algorithms
  - top-down, LL parsing
  - generalized parsing: GLR, GLL
	- parser combinators
- Error recovery
