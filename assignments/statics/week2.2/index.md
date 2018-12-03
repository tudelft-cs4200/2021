---
layout: page
title: "Homework Assignments Week 2.2: Monotone Frameworks"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_statics
---

# Data-Flow Analysis

Give an example of data-flow analysis used in type systems. 

# Sets

1. In traditional set based analysis, what does a transfer function look like. What are the parts that the transfer function is divided into. 

2. What is the common problem in such a transfer function when the control-flow graph does not go further than statements. 

# Monotone Frameworks

If we correctly instantiate a monotone framework with transfer functions, a lattice instance, and initial analysis information, we get a data-flow analysis with a termination guarantee. What are the requirements on the transfer functions and lattice instance that result in this termination guarantee? 

# Monotone Framework Execution

1. Executing a monotone framework instance involves propagating information along the control-flow graph. A topological order of the nodes would make sense for traversing the graph, running the transfer functions, and propagating the information. Why is it not possible to take a topological order of the control-flow graph in the general case? Is this problematic control-flow graph common?

2. What is the solution to the above problem that still allows us to use a topological order?

# Answers

Verify your answers with the [model answers](answers).
