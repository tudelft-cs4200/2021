---
layout: page
title: "Homework Assignments Week 1.3: Parsing"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_syntax
---

Submit your answers in [WebLab](https://weblab.tudelft.nl/cs4200/2019-2020/) ([Assignment Week 1.3](https://weblab.tudelft.nl/cs4200/2019-2020/assignment/20444/view)).

The language that was used in the lecture to define context-free grammars, derivations, parse tables, and more is defined in this Spoofax project:

- https://github.com/TUDelft-CS4200-2018/cc.syntax.parsing

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
- Use `f(x, x)` as an example to explain why the syntax definition is ambiguous.

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
  E.Div = E "/" E
  E.Mul = E "*" E
  E.Pow = E "^" E
  E.Par = "(" E ")"
```

### Binary Operators

Consider the following grammar in the grammar formalism introduced in Lecture 4, with `$` representing end of file:

```
grammar
  productions
    E.I = ID
    E.B = E B E
    B.P = "+"
    B.S = "-"
    B.M = "*"
    B.D = "/"
```

- Demonstrate that this grammar is ambiguous by giving two different
abstract syntax terms for the sentence `ID "+" ID "*" ID` and the left-most
derivations that give rise to these trees.

- Rewrite the grammar in SDF3 notation and use declarative priority and
associativity rules to disambiguate it following standard rules. Define a
translation from the ASTs of this grammar to the ASTs of the original grammar.

- Instead of using separate disambiguation rules, transform the grammar to an
unambiguous context-free grammar

### SLR Parsing

Consider the following grammar in the grammar formalism introduced in Lecture 4, with `$` representing end of file:

```
grammar
  start S
  non-terminals S T E
  terminals ID "+"
  productions
    S = E $
    E = T "+" E
    E = T
    T = ID
```

- Construct the LR(0) automaton for the grammar using the language of item-set states defined in the lecture

- Compute the FIRST and FOLLOW sets for the grammar

- Construct the SLR parse table for the grammar

- What kind of conflict does the resulting parse table contain?

- Explain two strategies to resolve this conflict.

- Assume the conflict is resolved in favour of a shift. Use the parse table to recognise the sentence `ID "+" ID`. Show the stack and the remaining input after each step.

### LR Parsing

Consider the following grammar in the grammar formalism introduced in Lecture 4, with `$` representing end of file:

```
grammar
  start S
  non-terminals S T E
  terminals ID "+"
  productions
    S = E $
    E = ID
    E = ID "(" E ")"
    E = E "+" ID
```

- Construct the LR(0) automaton for the grammar using the language of item-set states defined in the lecture

- Compute the FIRST and FOLLOW sets for the grammar

- Construct the SLR parse table for the grammar

```
| state  | ID | "+" | "(" | ")" | $  | S  | E  |
|        |    |     |     |     |    |    |    |
```

- Is this an SLR grammar? Why (not)?

- Use the parse table to recognize the sentence `ID "(" ID "(" ID ")" "+" ID ")" $`. Show the stack and the remaining input after each step.


### Dangling Else

```
grammar
  start S
  non-terminals S E
  productions
    S.S   = E $
    E.If  = "if" E "then" E
    E.IfE = "if" E "then" E "else" E
    E.Var = ID
```

- Show that this grammar is ambiguous by presenting an input program that has (at least) two left-most derivations. Write down the program, its left-most derivations, and corresponding abstract syntax trees.

- Construct the LR(0) automaton for the grammar using the language of item-set states defined in the lecture

- Compute the FIRST and FOLLOW sets for the grammar

- Construct the SLR parse table based on the automaton

- Assuming a disambiguation policy that specifies that an `else` branch should belong to the closest `if-then`, which action should be preferred in the parse table when the parser reaches a conflict, with an `else` symbol as the lookahead?
