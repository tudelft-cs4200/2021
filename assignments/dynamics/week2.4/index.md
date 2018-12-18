---
layout: page
title: "Homework Assignments Week 2.4: Code Generation"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_dynamics
---

<!--
# Answers

Verify your answers with the [model answers](answers).
-->


### Compilation Schemas

The following assignments have you derive from a definition of the dynamic semantics of a construct of the Tiger language, a compilation schema for that construct that translates it to a JVM byte code. The full definition can be found on [github](https://github.com/MetaBorgCube/metaborg-tiger/tree/master/org.metaborg.lang.tiger/trans/dynamics/env). The definitions for abstractions such as `lookup` and `allocate` where discussed in [Lecture 14](/lectures/dynamics/interpreters.html).

#### Arithmetic Expressions

Consider the following

```
rules // integers

  Int(i) --> IntV(parseI(i))

  Uminus(e) --> Minus(Int("0"), e)

  Plus(IntV(i), IntV(j)) --> IntV(addI(i, j))  

	Leq(IntV(i), IntV(j)) --> IntV(leqI(i, j))
```


#### Function Calls

Consider the following DynSem definition of the execution of Tiger function calls. Design a compilation schema that translates a function call to JVM bytecode. What assumptions do you make on the translation of function definitions?


```
rules // function call

  Call(f : Id, args) --> v
  where
    readVar(f) --> ClosureV(params, e, E);
    evalArgs(params, args) --> E';
    E {E', E} |- e --> v

  evalArgs([], []) --> {}

  evalArgs([FArg(x : Id, _) | args], [v | es]) --> {x |--> a, E}
  where
    allocate(v) --> a;
    evalArgs(args, es) --> E
```

#### Nested Functions

Tiger has nested function definitions. Design a compilation schema for compiling such functions to JVM byte code

```
let
  function power(x: int, n: int): int =
    let
      function pow(n: int): int =
        if n = 0 then 1 else x * pow(n - 1)
     in pow(n)
 in
   power(3, 4)
```

Nested functions may mutate the local variables of their parent function:

```
let
  function power(x: int, n: int): int =
    let
      var p : int := 1
      function pow(n: int): int =
        if n = 0 then p
        else (
          p := x * p;
          pow(n - 1)
        )
     in pow(n)
 in
   power(3, 4)
```

#### Records

Consider the following DynSem definition of the execution semantics of Tiger records creation and record access. Design a compilation schema that translates a record  to JVM bytecode.

```
signature
  constructors  
    NilV : V
    RecordV : Env * Int -> V
  arrows    
    initFields(List(InitField)) --> Env

rules // records

  NilExp() --> NilV()

  Record(_, fields) --> RecordV(E, fresh)  
  where initFields(fields) --> E

  initFields([]) --> {}

  initFields([InitField(f : Id, v) | fields]) --> {f |--> a, E}
  where
    allocate(v) --> a; initFields(fields) --> E

  FieldVar(lv, x : Id) -lval-> a
  where
    read(lv) --> RecordV(E, _); E |- lookup(x) --> a
```

#### Other Compilation Schemas

Similarly consider compilation schemas for other Tiger constructs, such as:

- Let bindings with local variables
- For loop with bound iteration variable
- Break statement in for/while loop
- Array types, creation and access


### Code Generation Mechanics

#### String Generation

- List three techniques for generating strings directly
- Discuss the relative advantages and disadvantages of these techniques

#### AST Generation

- What is the advantage of AST generation over string generation?
- Are there disadvantages?
- What does it require to guarantee syntactic correctness of generated code?
- How does Stratego guarantee syntactic correctness of generated code?

#### Concrete Object Syntax

- What is concrete object syntax?
- What is the general architecture for implementation of concrete object syntax?
- What properties of generated code does concrete object syntax guarantee?

### Optimization

#### Peephole Optimization

Byte code can be optimized by considering patterns of subsequent instructions and rewriting them to more efficient instructions. Study the following Jasmin code and its sequence of optimizations on the slides of [Lecture 13](/lectures/dynamic/code-generation). What peephole optimization rules can you infer from that sequence?

```
.method public static fac0(I)I
           iload 1
           ldc 0
           if_icmpeq label0
           ldc 0
           goto label1
   label0: ldc 1
   label1: ifeq else0
           ldc 1
           goto end0
   else0:  iload 1
           iload 1
           ldc 1
           isub
           invokestatic
              Exp/fac0(I)I
           imul
   end0:   ireturn
.end method
```

#### Tail Recursion Elimination

What is the goal of tail recursion elimination? Give an example of tail recursion elimination applied to a program in a high-level programming language.
