---
layout: page
title: "Homework Assignments Week 1.8: Constraint Resolution (Answers)"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_statics
---

## Unification

1. The answer should include:

   - multiple unifiers may satisfy equalities

   - all possible unifiers can be created from a most-general unifier,
     by applying a substitution to the mgu
    
   - an mgu's for these equalities, is

         a -> b, c -> g(), d -> f(b, g()), e -> h(f(b, g())), x -> g()

     or

         b -> a, c -> g(), d -> f(a, g()), e -> h(f(a, g())), x -> g()

    - the unifier from the question is obtained from the mgu by
      applying `b -> h(y))` or `a -> h(y))` respectively.

2. A most general unifier is given by

       b -> i(), c -> g(a, i()), d -> h(h(i(), g(a, i())), a), e -> h(i(), g(a, i()))

3. A possible unifying substitution is:

       a -> c, b -> f(c), d -> f(h()), e -> h()

4.  A given substitution _s_ is a principal unifier if every other
    unifier _s'_ is an instance of _s_. A unifier _s'_ is an instance
    of _s_ if a substitution _s''_ exists, such that _s''_ applied to
    _s_ yields _s_.

    In the example, any substitution that fixes a term value _t_ for
    _c_ is still a unifier for the constraints. However, it would not
    be principal anymore. The substitution _s''_ in this scenario
    would be given by `s -> t`.

    Possible additions:
    - Principal unifiers are not necessarily unique. For example, the
      variables _a_ and _c_ could be swapped in our example solution
      and it would remain principle.
    - In type systems there is a similar concept: principle
      types. These are types that are supertypes of all other valid
      types for a program. For example, the identity function `\x ->
      x` may have type `Int -> Int` or `String -> String`, but its
      principal type is `forall a. a -> a`.

## Constraint Semantics

1. Include

   - constraint semantics define when constraints are satisfied
   - soundness is a property of the solver
   - it states that every outcome of the solver is valid/correct
     according to the semantics

2. Include

   - constraint semantics define when constraints are satisfied
   - completeness is a property of the solver
   - it states that if the constraints are satisfiable according to
     the semantics, the solver gives an outcome
