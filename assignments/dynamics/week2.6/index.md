---
layout: page
title: "Homework Assignments Week 2.6: Memory Management"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_dynamics
---


<!--
# Answers

Verify your answers with the [model answers](answers).
-->

## Concepts

- What is a heap?
- What kind of data is stored on the heap?

## Reference Counting

- Explain the general ideas behind garbage collection by reference counting.
- What are the disadvantages of this strategy?

## Mark and Sweep

<src img="heap2.png"/>

Perform a mark-and-sweep garbage collection on the following data structure. Enumerate the order in which the records on the heap will be visited during both phases. Which records will be marked? Which records will be swept? Show the data structure after each sweep of a record.

## Copy Garbage Collection

<src img="heap1.png"/>

- Perform a copy collection on the given heap data structure. Show the data structure after each copying step (after pointer adjustments).
- Explain the key benefit of copy collection over mark-and-sweep garbage collection.
- Explain the effect of copy collection on the locality of data.


## Generational Collection

- What is the basic assumption of generational collection?
- How is it performed?
