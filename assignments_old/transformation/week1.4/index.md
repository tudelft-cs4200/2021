---
layout: page
title: "Homework Assignments Week 1.4"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_transformation
---

Also on [WebLab](https://weblab.tudelft.nl/cs4200/2019-2020/assignment/20458/view)

### Map and Filter

The Stratego library provides two strategies `filter` and `map` with the following implementation:

```
map(s): []     -> []
map(s): [x|xs] -> [<s> x | <map(s)> xs]

filter(s): []     -> []
filter(s): [x|xs] -> <filter(s)> xs where not (<s> x)
filter(s): [x|xs] -> [<s> x | <filter(s)> xs]
```

Stratego also provides a strategy `inc`, which rewrites an integer number to its successor.

- What is the result of `<filter(inc)> [1, "two", 3]`? Show each step of computation.

- What is the result of `<map(inc)> [1, "two", 3]`? Show each step of computation.

- Based on the definition of `map` and `filter`, explain the differences between both strategies.

### Inverse

The Stratego library defines a strategy `inverse(|e)` with the following implementation:

```
inverse(|a): []     -> a
inverse(|a): [x|xs] -> <inverse(|[x|a])> xs
```

- Explain the semantics of `inverse` in English.

- What is the result of applying `inverse(|[]) `to the term `[1,2,3]`. Show each step of computation.

- Based on the definition of `inverse`, explain how an accumulator is used.

### Fold

The Stratego library provides a strategy `foldr(s1, s2)` with the following implementation:

```
foldr(s1, s2): []     -> <s1>
foldr(s1, s2): [x|xs] -> <s2> (x, <foldr(s1, s2)> xs)
```

Evaluate the following Stratego code. Show all intermediate steps and results.

```
<foldr(!0, add)> [1,2,3] => ... => ... => ...
```

### Boolean Operators

Consider the following algebraic signature representing the
abstract syntax of an expression language in Stratego:

```
signature
  constructors
    Var : String -> E
    Int : Int -> E
    Add : E * E -> E
    Mul : E * E -> E
    And : E * E -> E
    Or  : E * E -> E
    If  : E * E * E -> E
```

In this language integers are used to represent Boolean values, with
`Int(0)` representing false and all other integers representing true.
The Boolean operators `And` and `Or` are short-circuit operations.

- Define in Stratego a desugaring transformation to eliminate the `And` and `Or` operators.

- Give the term resulting from desugaring the term
`And(Var("x"), Or(Int(1), Var("y")))`

- Define in Stratego a strategy that, given a transformation that maps variables to expressions, applies this transformation to all variables in an expression; use only basic operators.

- Define in Stratego a constant folding transformation for desugared expressions.

### Function Application

Consider the following algebraic signature representing the
abstract syntax of an expression language in
Stratego:

```
signature
  constructors
    Var : String -> E
    Fun : List(String) * E -> E // n-ary function literal ('lambda')
    App : E * List(E) -> E      // n-ary function application
```

The language consists of variables (`Var`), n-ary function literals (`Fun`), and n-ary function applications (`App`). For example, the expression

```
   App(Fun(["x", "y"], Var("x")), [Var("a"), Var("b")])
```

is the application of a binary function to two argument expressions.

- Functions with two or more arguments can be turned into nested functions with just one argument. This is known as _currying_. Define in Stratego a transformation (rules and strategy) to _curry_ function literals and function applications in the language above. The resulting terms should be well-formed wrt the signature of expressions above. If you use a traversal strategy, provide its definition as well.

- Give the term resulting from currying the term

```
   App(Fun(["x", "y"], Var("x")), [Var("a"), Var("b")])
```

- A variable in an expression is free if it is not bound by the parameter of a surrounding function literal.
Define in Stratego a strategy `freevars` that produces the free variables of an expression.

- Stratego rules are themselves subject to desugaring to a core language of basic transformation operations. Desugar the following Stratego rule:

```
rules

  Beta : App(Fun([x], e1), [e2]) -> <alltd((Var(x) -> e2))>e1
```

### For

Consider the following algebraic signature representing the
abstract syntax of an expression language in Stratego:

```
signature
  constructors
    Var    : ID -> E             // x
    Int    : Int -> E            // i
    Plus   : E * E -> E          // e + e
    Lt     : E * E -> E          // e < e
    Assign : ID * E -> E         // x := e
    Seq    : E * E -> E          // e ; e
    While  : E * E -> E          // while(e) { e }
    For    : ID * E * E * E -> E // for(i := e to e) { e }
```

The concrete syntax in comments shows the mapping to the common programming language constructs.

The `For(x, e_from, e_to, e_body)` construct is a loop that initializes the loop iteration variable `x` to the value of the `e_from` expression and then executes `e_body`, incrementing `x` on each iteration as long as it is smaller than `e_to`.

For example, the following program computes the sum of integers from $0$ to $9$:

```
   Seq(
     Assign("sum", Int(0)),
     For("x", Int(0), Int(10),
       Assign("sum", Plus(Var("sum"), Var("x")))
     )
   )
```
- The `For` loop can be expressed as a `While` loop. Give the term resulting from desugaring the sum program above.

- Define in Stratego a transformation (rules and strategy) to _desugar_ for loops to while loops in the language above. The resulting terms should be well-formed wrt the signature of expressions above. If you use a traversal strategy, provide its definition as well.

- Stratego rules are themselves subject to desugaring to a core language of basic transformation operations. Desugar the following Stratego rule:

```
rules

  Eval : Plus(Int(i), Int(j)) -> Int(<plus>(i, j))
```

### RE to CFG

Consider the following signatures defining the abstract syntax of regular expressions and context-free grammars:

```
signature
  sorts RE
  constructors
          : String -> CC
    Wld   : RE
    Str   : STRING -> RE
    CC    : CC -> RE
    EOL   : RE
    Seq   : RE * RE -> RE
    Alt   : RE * RE -> RE
    Plus  : RE -> RE
    Star  : RE -> RE
    Opt   : RE -> RE
signature
  constructors
    Grammar : List(Prod) -> Prod
    Prod    : Symbol * List(Symbol) -> Prod
    NT      : ID -> Symbol
    T       : STRING -> Symbol
    L       : LCID -> Symbol
		CC      : CC -> Symbol
```

Define a transformation `re-to-cfg` that transforms a regular expression to a context-free grammar such that `<re-to-cfg> re => cfg` the language defined by the grammar `cfg` is the same as that of the regular expression `re`.
