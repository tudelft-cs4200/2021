---
layout: page
title: "Syntax"
excerpt: "Syntax"
tags: ["lectures"]
context: lectures
subcontext: syntax
# image:
#    feature: "lecture.jpg"
#    credit: Delft University of Technology
#    creditlink: http://repository.tudelft.nl/view/MMP/uuid%3Aa2f25709-c56e-453e-9394-4a05acf603a4/
---

In this section of the course we study the syntax of programming languages: how to represent the structure of programs, how to declaratively define syntax, how to implement parsers based on such definitions, and how to provide editor services based on syntax definitions.

## Lecture 2: Declarative Syntax Definition

In this lecture we study declarative syntax definition, i.e. syntax definition that focuses on the definition of the structure (abstract syntax) and notation (concrete syntax) of programs, and abstracts from the implementation of parsers.

Topics

  - program structure, syntactic categories, language constructs
  - abstract syntax, signatures, sorts, constructors
  - context-free grammars
  - concrete syntax, notation
  - lexical syntax, literals, keywords
  - ambiguity, disambiguation, associativity, priority

Slides

  - [PDF](https://github.com/TUDelft-CS4200-2018/lectures/raw/master/02-syntax-definition/CS4200-2018-2-syntax-definition.pdf)
  - on [github](https://github.com/TUDelft-CS4200-2018/lectures/tree/master/02-syntax-definition)

<iframe src="//www.slideshare.net/slideshow/embed_code/key/JVi9jxdHornHQV" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/eelcovisser/compiler-construction-lecture-2-declarative-syntax-definition" title="Compiler Construction | Lecture 2 | Declarative Syntax Definition" target="_blank">Compiler Construction | Lecture 2 | Declarative Syntax Definition</a> </strong> from <strong><a href="https://www.slideshare.net/eelcovisser" target="_blank">Eelco Visser</a></strong> </div>

Reading material

* Lennart C. L. Kats, Eelco Visser, Guido Wachsmuth. [Pure and declarative syntax definition: paradise lost and regained.](https://doi.org/10.1145/1932682.1869535) In William R. Cook, Siobhán Clarke, Martin C. Rinard, editors, Proceedings of the 25th Annual ACM SIGPLAN Conference on Object-Oriented Programming, Systems, Languages, and Applications, OOPSLA 2010, October 17-21, 2010, Reno/Tahoe, Nevada, USA. pages 918-932, ACM, Reno/Tahoe, Nevada, 2010. <https://doi.org/10.1145/1932682.1869535>

* Lennart C. L. Kats, Rob Vermaas, Eelco Visser. [Integrated language definition testing: enabling test-driven language development.](https://doi.org/10.1145/2076021.2048080) In Cristina Videira Lopes, Kathleen Fisher, editors, Proceedings of the 26th Annual ACM SIGPLAN Conference on Object-Oriented Programming, Systems, Languages, and Applications, OOPSLA 2011, part of SPLASH 2011, Portland, OR, USA, October 22 - 27, 2011. pages 139-154, ACM, 2011. <https://doi.org/10.1145/2076021.2048080>

* [Syntax Definition with SDF3](http://www.metaborg.org/en/latest/source/langdev/meta/lang/sdf3/index.html). Documentation of the SDF3 syntax definition formalism

[Homework assignments](/assignments/week1.2/)

## Lecture 3: Syntactic Editor Services

In this lecture we take a further look at declarative syntax definition, with the specification of lexical syntax and the desugaring of context-free syntax and lexical syntax into a core grammar formalism.
Further we study applications of syntax definitions in various _syntactic editor services_, tools that are applied by integrated development environments (IDEs) to assist programmers, such as syntax checking, syntax coloring/highlighting, formatting, and code completion. In particular, we look into how such tools can be automatically and generically be generated from syntax definitions.

Topics

- lexical syntax, layout, whitespace, comments
- syntactic editor services
- pretty-printing, template productions
- syntactic completion
- error recovery

Slides

- [PDF](https://github.com/TUDelft-CS4200-2018/lectures/raw/master/03-syntactic-services/CS4200-2018-3-syntactic-services.pdf)
- [github](https://github.com/TUDelft-CS4200-2018/lectures/tree/master/03-syntactic-services)

<iframe src="//www.slideshare.net/slideshow/embed_code/key/70PkRXSeHag2hI" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/eelcovisser/compiler-construction-lecture-3-syntactic-editor-services" title="Compiler Construction | Lecture 3 | Syntactic Editor Services" target="_blank">Compiler Construction | Lecture 3 | Syntactic Editor Services</a> </strong> from <strong><a href="https://www.slideshare.net/eelcovisser" target="_blank">Eelco Visser</a></strong> </div>

Reading material

- Tobi Vollebregt, Lennart C. L. Kats, Eelco Visser. [Declarative specification of template-based textual editors](https://doi.org/10.1145/2427048.2427056). In Anthony Sloane, Suzana Andova, editors, International Workshop on Language Descriptions, Tools, and Applications, LDTA '12, Tallinn, Estonia, March 31 - April 1, 2012. pages 1-7, ACM, 2012. <https://doi.org/10.1145/2427048.2427056>

- Luis Eduardo de Souza Amorim, Sebastian Erdweg, Guido Wachsmuth, Eelco Visser. [Principled syntactic code completion using placeholders](https://doi.org/10.1145/2997364.2997374). In Tijs van der Storm, Emilie Balland, Dániel Varró, editors, Proceedings of the 2016 ACM SIGPLAN International Conference on Software Language Engineering, Amsterdam, The Netherlands, October 31 - November 1, 2016. pages 163-175, ACM, 2016. <https://doi.org/10.1145/2997364.2997374>

## Lecture 4: Parsing

In this lecture we study how to turn syntax definitions (context-free grammars) into parsers that turn program texts into parse trees.

Topics

- context-free grammars
  - derivations, left-most derivations, right-most derivations
	- parse trees, abstract syntax trees, terms
- grammar transformations
  - left factoring, eliminating left recursion
	- disambiguation with associativity and priority rules
- top-down parsing
- bottom-up parsing
  - reductions, shift-reduce parsing, LR parsing
	- first and follow
- parser generation

Slides

- [PDF](https://github.com/TUDelft-CS4200-2018/lectures/raw/master/04-parsing/CS4200-2018-4-parsing.pdf)
- [github](https://github.com/TUDelft-CS4200-2018/lectures/tree/master/04-parsing)

<iframe src="//www.slideshare.net/slideshow/embed_code/key/tSZUWlmdRmknjO" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/eelcovisser/compiler-construction-lecture-4-parsing" title="Compiler Construction | Lecture 4 | Parsing " target="_blank">Compiler Construction | Lecture 4 | Parsing </a> </strong> from <strong><a href="https://www.slideshare.net/eelcovisser" target="_blank">Eelco Visser</a></strong> </div>

Reading material

- Chapter 4 on Syntactic Analysis of "Compilers: Principles, Techniques, and Tools, 2nd Edition" by Alfred V. Aho, Monica S. Lam, Ravi Sethi, Jeffrey D. Ullman. Pearson, 2007. **Read Sections 4.1, 4.2, 4.3, 4.5, 4.6**.
