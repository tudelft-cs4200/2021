---
layout: page
title: "Homework Assignments Week 1.8: Constraint Resolution"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_statics
---

## Unification

1. Given the following equalities:

        f(a,g()) == d, 
        h(d) == e, 
        k(c,x) == k(g(),c), 
        e == h(f(b,c))

   and the following unifier:

       a -> h(y), 
       b -> h(y), 
       c -> g(), 
       d -> f(h(y), g()), 
       e -> h(f(h(y), g())), 
       x -> g()

   explain the concept of a most general unifier, and state if the
   given unifier is most general or not. Illustrate your explanation
   by giving another unifier for these equalities (less general if the
   given unifier is most general, or more general otherwise).

2. Given the following equalities:

       f(g(a,b),h(b,c)) == f(c,e), 
       g(h(e,a),b) == g(d,b), 
       h(a,i()) == h(a,b)

   give a unifying substitution.

3. Given the following type equalities:

       f(a) == b, 
       g(b,d) == g(f(c),f(e)), 
       h() == e

   give a substitution that satisfies the equalities.

4. Explain the concept of principality in terms of your previous
    answer. Illustrate your answer with a different unifier that would
    also satisfy the constraints of (3).

## Constraint Semantics

Explain what constraint semantics are, and discuss the relation between
semantics and solver in terms of soundness, completeness, and principality.

## Answers

Verify your answers with the [model answers](answers).
