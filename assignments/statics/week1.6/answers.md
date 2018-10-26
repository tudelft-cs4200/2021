---
layout: page
title: "Homework Assignments Week 1.6: Type Checking (Answers)"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_statics
---

## Type Checking

Points that may be included are:

- types are a classification of expressions
- types approximate the values that are computed at runtime
- types are used to restrict the set of programs accepted by the grammar
- types are used to prevent certain runtime problems
- an under-approximating type system is unsound
- types can also be used to ensure other correctness properties

## Type Checking with Constraints

Include:

- two phase approach; constraint generation and constraint solving
- constraint generation maps program to constraints; language-dependent
- constraint solving checks if constraints are satisfiable; language-independent
- program is well-typed if constraints are satisfiable
