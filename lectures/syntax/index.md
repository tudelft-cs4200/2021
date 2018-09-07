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

In this section of the course we study the syntax of programming languages.

## Lecture 2: Declarative Syntax Definition

In this lecture we study declarative syntax definition, i.e. syntax definition that focuses on the definition of the structure (abstract syntax) and notation (concrete syntax) of programs, and abstracts from the implementation of parsers.

Topics

  - program structure, syntactic categories, language constructs
	- abstract syntax, signatures, sorts, constructors
	- context-free grammars
  - concrete syntax, notation
	- lexical syntax, literals, keywords
	- ambiguity, disambiguation, associativity, priority

	<iframe src="//www.slideshare.net/slideshow/embed_code/key/JVi9jxdHornHQV" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/eelcovisser/compiler-construction-lecture-2-declarative-syntax-definition" title="Compiler Construction | Lecture 2 | Declarative Syntax Definition" target="_blank">Compiler Construction | Lecture 2 | Declarative Syntax Definition</a> </strong> from <strong><a href="https://www.slideshare.net/eelcovisser" target="_blank">Eelco Visser</a></strong> </div>

Slides

- [PDF](https://github.com/TUDelft-CS4200-2018/lectures/raw/master/02-syntax-definition/CS4200-2018-2-syntax-definition.pdf)

- on [github](https://github.com/TUDelft-CS4200-2018/lectures/tree/master/02-syntax-definition)

## Lecture 3: Parsing

In this lecture we study how to turn syntax definitions (context-free grammars) into parsers that turn program texts into parse trees.

Topics

- derivations
- parsing
- parse trees, abstract syntax trees, terms
- parser generation
- Earley parsing
- LR parsing

## Lecture 4: Syntactic Editor Services

- syntactic editor services
- pretty-printing, template productions
- syntactic completion
- error recovery
