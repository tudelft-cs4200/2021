---
layout: page
title: "Homework Assignments Week 1.5: Name Resolution (Answers)"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_statics
---

## Name Resolution with Scope Graphs

The main aspects are:

- The name binding structure of a program is represented as a graph of
  scopes, references, and declarations.
- Resolving a reference is finding a path in the graph from the
  reference to a matching declaration.
- The paths used for resolution must be well-formed, which means the
  labels must match a given well-formedness regular expression.
- Disambiguation defines which declarations are visible if multiple
  matching declarations can be reached. Disambiguation is specified
  using an ordering on path labels.

## Resolving in Scope Graphs

1. The resolution of _f<sub>8</sub>_ involves an import of
   _A<sub>7</sub>_. This import has two reachable declarations:

   * _A<sub>7</sub> &middot; R &middot; #2 &middot; P &middot; #0 &middot; D &middot; A<sub>2</sub>_
   * _A<sub>7</sub> &middot; R &middot; #2 &middot; D &middot; A<sub>4</sub>_

   According to the label order _Ord_, the path to _A<sub>4</sub>_
   shadows the path to _A<sub>2</sub>_. Therefore, reference
   _A<sub>7</sub>_ resolves to _A<sub>4</sub>_.

   Given that, there is one reachable declaration for _F<sub>8</sub>_,
   which is:
   
   * _f<sub>8</sub> &middot; R &middot; #4 &middot; I &middot; #3 &middot; D &middot; f<sub>6</sub>_

   Because there is only a single resolution path, the reference is
   resolved to declaration _f<sub>6</sub>_.

2. The import _A<sub>5</sub>_ has one reachable declaration, which is:

   * _A<sub>5</sub>_ &middot; R &middot; #0 &middot; D &middot; _A<sub>1</sub>_

   Since there is only a single path, _A<sub>5</sub>_ resolves to _A<sub>1</sub>_.

   The import _B<sub>7</sub>_ has one reachable declaration, which is:

   * _B<sub>7</sub>_ &middot; R &middot; #3 &middot; P &middot; #0 &middot; D &middot; _B<sub>4</sub>_

   Since there is only a single path, _B<sub>7</sub>_ resolves to _B<sub>4</sub>_.

   Finally, the reference has two resolution paths, which are:

   * _f<sub>8</sub>_ &middot; R &middot; #3 &middot; P &middot; #0 &middot; D &middot; _f<sub>9</sub>_
   * _f<sub>8</sub>_ &middot; R &middot; #3 &middot; I &middot; #2 &middot; I &middot; #1 &middot; D &middot; _f<sub>3</sub>_

   According to the label order _Ord_, the path via the imports takes
   precedence over the path via the lexical parent. Therefore,
   _f<sub>8</sub>_ resolves to _f<sub>3</sub>_.

## Constructing Scope Graphs

1. The corresponding scope graph is given by:

   ![Scope Graph](figures/scopegraph-construction-1-answer.png)

2. The corresponding scope graph is given by:

   ![Scope Graph](figures/scopegraph-construction-2-answer.png)

