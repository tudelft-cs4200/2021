---
layout: page
title: "Homework Assignments Week 1.5: Name Resolution"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_statics
---

## Name Resolution with Scope Graphs

Explain the main aspects of name resolution with scope graphs.

## Resolving in Scope Graphs

In this question you are asked to resolve references in a given scope
graph, and explain your answers in terms of resolution paths. Include
the reference, the scopes, the labels on edges, and the final
declaration in the path. Use _R_ as the label from the reference to
the first scope, and _D_ for the label from the last scope to the
declaration. An example would be: _e<sub>5</sub> &middot; R &middot;
#3 &middot; I &middot; #9 &middot; D &middot; e<sub>1</sub>_.

1. Given the following scope graph, list all reachability paths for
   reference _f<sub>8</sub>_ and for any imports used in the
   process. Explain to which declaration those imports and the
   reference resolve.
  
   ![Scope Graph](figures/name-resolution-1-question.png)

2. Given the following scope graph, list all reachability paths for
   the reference _f<sub>8</sub>_ and for any imports that are
   used. Explain to which declarations those imports and the reference
   resolve.

   ![Scope Graph](figures/name-resolution-2-question.png)

   The given _Wf_ and _Ord_ encode transitive imports. Modify them
   such that imports are no longer transitive. Explain any
   consequences this has for the resolution of _f<sub>8</sub>_.

## Constructing Scope Graphs

In this question you are asked to describe the scope graph for a given
Java program. Names are annotated with their position in the comment
right after the name. Write down using the following syntax:

    Var{x@2}, Class{A@3}                  // declarations and references
    #3, #6                                // scopes
    Var{x@3} -> #4, Var{x@3} <- #4        // declarations, reference
    #3 -P-> #1                            // labeled edges between scopes
    Var{x@3} =I=> #4, Var{x@3} <=I= #4    // associated scopes, imports

&nbsp;1. Draw the scope graph that corresponds to the following Java program:

```java
class A/*1*/ {
  int f/*2*/;
  class B/*3*/ {
    int m/*4*/(int g/*5*/) {
      return g/*6*/ + f/*7*/;
    }
  }
}
```

&nbsp;2. Draw the scope graph that corresponds to the following Java program:

```java
class A/*1*/ {
  int f/*2*/;
}

class B/*3*/ extends A/*4*/ {
  int m/*5*/(int g/*6*/) {
    return g/*7*/ + f/*8*/;
  }
}
```

## Answers

Verify your answers with the [model answers](answers).
