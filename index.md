---
layout: page
title: "Compiler Construction"
excerpt: "Compiler Construction"
tags: ["compiler construction"]
image:
    feature: "Programming_language_textbooks.jpg"
    credit: Wikimedia Commons
    creditlink: http://commons.wikimedia.org/wiki/File:Programming_language_textbooks.jpg
---

## Course Contents   

Compilers translate the source code of programs in a high-level programming language into executable (virtual) machine code. Nowadays, compilers are typically integrated into development environments providing features like syntax highlighting, content assistance, live error reporting, and continuous target code generation.

This course studies the architecture of compilers and interactive programming environments and the concepts and techniques underlying the components of that architecture. For each of the components of a compiler we study the formal theory underlying the language aspect that it covers, declarative specification languages to define compiler components, and the techniques for their implementation. The concepts and techniques are illustrated by application to small languages or language fragments.

In the course project, students apply the concepts and techniques to build a complete compiler and IDE for ChocoPy, a statically typed subset of the Python programming language.

The course formally consists of two courses CS4200-A and CS4200-B (each for 5ECTS), running in Q1 and Q2, respectively.

## CS4200-A: Front-End

In CS4200-A we study the front-end of compilers, covering the following topics:

* Syntax
  - concrete syntax, abstract syntax
  - context-free grammars
  - derivations, ambiguity, disambiguation, associativity, priority
  - parsing, parse trees, abstract syntax trees, terms
  - pretty-printing
  - parser generation
  - syntactic editor services

* Statics
  - static semantics and type checking
    - name binding, name resolution, scope graphs
    - types, type checking, type inference, subtyping
    - unification, constraints
  - semantic editor services

After this course students students should be able to

- Describe the architecture of a compiler and programming environment and the role of each component of that architecture
- Explain the basic concepts of the formalisms for the definition of the components of a compiler and apply these formalisms to define small languages
- Explain the algorithms and techniques for the implementation of compiler components and apply these techniques to examples

- Define the syntax of a programming language using declarative syntax definition that describes the concrete and abstract syntax of a programming language
- Define basic editor services
- Define the type system (name binding and typing rules) of a programming language using constraint generation rules  
- Construct tests for each of the components of a compiler in order to determine its correctness
- Integrate the components into a working compiler and programming environment


## CS4200-B: Back-End

In CS4200-B we study the back-end of compilers, covering the following topics:

* Transformation
  - rewrite rules, rewrite strategies
  - simplification, desugaring

* Dynamics
  - dynamic semantics and code generation
  - operational semantics, program execution
  - virtual machines, assembly code, byte code
  - code generation
  - memory management, garbage collection

* Data-flow analysis
  - control-flow and data-flow
  - monotone frameworks, worklist algorithm

After this course students students should be able to

- Describe the architecture of a compiler and programming environment and the role of each component of that architecture
- Explain the basic concepts of the formalisms for the definition of the components of a compiler and apply these formalisms to define small languages
- Explain the algorithms and techniques for the implementation of compiler components and apply these techniques to examples

- Define transformations on abstract syntax terms to simplify programs
- Define data-flow analyses using control-flow and data-flow rules
- Define a code generator that translates source language abstract syntax trees to object language instructions using rewrite rules
- Construct tests for each of the components of a compiler in order to determine its correctness
- Integrate the components into a working compiler and programming environment

## Expected Prior Knowledge   

* programming (required)
* software engineering (advised)
* programming languages (advised)
* formal languages and automata (advised)

## Literature

The literature for this course consists of papers from the research literature and software documentation.
