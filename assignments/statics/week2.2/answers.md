---
layout: page
title: "Homework Assignments Week 2.2: Monotone Frameworks (Answers)"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_statics
---

# Data-Flow Analysis

_Give an example of data-flow analysis used in type systems._

A number of language (e.g. Ceylon) can restrict a type within an if-else statement when the condition is an subtype check. For example:
  
    ```
    void hello(String? name) {
        if (is String name) {
            // name is of type String here
            print("Hello, ``name``!");
        }
    }
    ```

# Sets

1. In traditional set based analysis, what does a transfer function look like. What are the parts that the transfer function is divided into. 

    A transfer function consists of _previousSet &setminus; kill(currentNode) &cup; gen(currentNode)_ where _kill_ is a function that computes the kill set (things to be removed) for the current node and _gen_ is a function that computes the gen set (things to be added) for the current node. 

2. What is the common problem in such a transfer function when the control-flow graph does not go further than statements. 

    Different effects of a statement can happen in a specific order. For example, the evaluation of the right-hand side expression in an assignment happens before the assignment effect. When a data-flow analysis cares about both the assignment effect and some effect of the expression (e.g. reads and writes of variables), this order will need to be taken into consideration when writing the kill and gen functions. Depending on whether the order of "remove first, then add" agrees with the order in the analysis, the gen function may need to carefully generate those things that weren't just removed by the kill. 

# Monotone Frameworks

_If we correctly instantiate a monotone framework with transfer functions, a lattice instance, and initial analysis information, we get a data-flow analysis with a termination guarantee. What are the requirements on the transfer functions and lattice instance that result in this termination guarantee?_

The lattice should have a finite height. The transfer function should be monotone increasing with respect to the lattice. This will guarantee that within a cycle the monotone framework can find a fixpoint because the functions settle on a value in the middle of the lattice or there will be a finite number of steps up the lattice until it settles at the top value. 

# Monotone Framework Execution

1. Executing a monotone framework instance involves propagating information along the control-flow graph. A topological order of the nodes would make sense for traversing the graph, running the transfer functions, and propagating the information. Why is it not possible to take a topological order of the control-flow graph in the general case? Is this problematic control-flow graph common?

    Topological order on a graph is not defined when the graph contains cycles. Cycles show up as soon as you have a loop in the control-flow, which is very common. In an inter-procedural analysis of a purely functional programming language recursion would give the cycle. 

2. What is the solution to the above problem that still allows us to use a topological order?

    We can take the topological order between the Strongly Connect Components (SCCs) of the graph. An SCC is a set of nodes where every node can reach any other node in the set.
    
    Usually an SCC will contain a single CFG node, except in the case of cycles, where one or more loops (when nested) will end up in one SCC. An SCC will need to have a fixpoint computed. The optimal order is to compute the fixpoint before continuing down the topological order of SCCs. 
