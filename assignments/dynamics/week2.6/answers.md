---
layout: page
title: "Homework Assignments Week 2.6: Memory Management"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_dynamics
---

<!--

## Reference Counting

- Explain the general ideas behind garbage collection by reference counting.

> Solution: For each element on the heap, a counter is maintained. At each assignment, the counter of the olde reference is decreased and the counter of the new reference increased. Heap elements with a reference count of 0 can be collected when memory for a new element needs to be allocated.

- What are the disadvantages of this strategy?

> Solution: Heap elements with cyclic references are not collected. Furthermore, the additional instructions for counting slow down the execution.

--> 
