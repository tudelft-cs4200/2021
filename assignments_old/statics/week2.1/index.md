---
layout: page
title: "Homework Assignments Week 2.1: Data-Flow Analysis"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_statics
---

# Control-Flow

Give three examples of control-flow in an imperative language. 

# Control-Flow Graphs

Consider the following code in an intermediate representation. Construct a control-flow graph of the program. 

```
     c := r3
     a := r1
     b := r2
     d := 0
     e := a
l1:  d := d + b
     e := e - 1
     if e > 0 goto l1
     r1 := d
     r3 := c
     return
```

## Basic blocks

Construct a control-flow graph with basic blocks. 

# Live Variables

1. Explain what it means for a variable to be live. 

2. Show the results of a live variables analysis on the above program for each line, at the point in the program before that line is executed. Consider variables `r1`, `r2` and `r3` live outside the program. 

# Answers

Verify your answers with the [model answers](answers).
