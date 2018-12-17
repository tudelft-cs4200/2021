---
layout: page
title: "Homework Assignments Week 2.5: Interpreters"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_dynamics
---

<!--

# Answers

Verify your answers with the [model answers](answers).

-->

### Semantics

- What is the meaning of a program?
- Describe two approaches to define the semantics of programs in a language
- How are these approaches related?
- What does it mean for a compiler to be correct?
- How can we ensure that a compiler is correct?

### DynSem

Consider the following DynSem rules:

```
rules
  If(BoolV(true), e1, _) --> e1.  
  If(BoolV(false), _, e2) --> e2.
```

- Explain what these rules mean using their explicated form
- Construct a program fragment AST that let's an interpreter according to these rules get stuck
- How could the semantics be made more robust?


### Partial Evaluation

- What is partial evaluation?
- Why would you want to use it?
- Give the three Futumara projections and explain their meaning 
