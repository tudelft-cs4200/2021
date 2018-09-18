---
layout: page
title: "Homework Assignments Week 1.3"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_syntax
---

Submit your answers in [WebLab](https://weblab.tudelft.nl/cs4200/2018-2019/) ([Assignment Week 1.3](https://weblab.tudelft.nl/cs4200/2018-2019/assignment/20444/view)) by Tuesday, September 18, 2018.


## Ambiguity and Disambiguation

### Derivations

Consider the following syntax definition, assuming that `ID` is defined as alphanumeric identifiers as usual:

```
sorts S E ID
context-free syntax
  S.S   = E
  E.Var = ID
  E.Add = E "+" E
  E.Mul = E "*" E
  E.Par = "(" E ")"
```

- Give a right-most derivation for the sentence `x + (x ∗ x)`.
- Give two different abstract syntax trees for the sentence `x + x ∗ x`.

### Derivations

Consider the following syntax definition,

```
sorts S P ID
context-free syntax
  S.S = "f" "(" P ")"
	P.V = ID
	P.C = P "," ID
	P.R = ID "," P
```

- Describe the language defined by this syntax definition in English.
- Give a left-most derivation for the sentence `f(x, x, x)`.
- Use `f(x, x)` as an example to explain why the syntax definitio is ambiguous.

### Disambiguation by Rules

Consider the following ambiguous syntax definition in SDF3 for a small expression language. Use prioritity and associativity rules to disambiguate the syntax definition. Discuss why you chose to disambiguate the operators in the way you have. Illustrate the resulting disambiguation using examples. Did you catch all ambiguities?

```
sorts S E ID
context-free syntax
  S.S   = E
  E.Var = ID
	E.Neg = "-" E
  E.Add = E "+" E
  E.Sub = E "-" E
  E.Div = E "/" E
  E.Mul = E "*" E
  E.Pow = E "^" E
  E.Par = "(" E ")"
```

### Disambiguation by Transformation

Consider the following ambiguous syntax definition in SDF3 for a small expression language. Transform the syntax definition to an unambiguous syntax definition without using disambiguation rules.

```
sorts S E ID
context-free syntax
  S.S   = E
  E.Var = ID
	E.Neg = "-" E
  E.Add = E "+" E
  E.Sub = E "-" E
  E.Mul = E "/" E
  E.Mul = E "*" E
  E.Pow = E "^" E
  E.Par = "(" E ")"
```
