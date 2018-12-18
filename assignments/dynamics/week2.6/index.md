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

#### Memory

- What is a heap?
- What kind of data is stored on the heap?

#### Reference Counting

- Describe the reference counting garbage collection algorithm.
- What are the disadvantages of this strategy?

#### Mark and Sweep

- Describe mark-and-sweep garbage collection algorithm.
- Perform a mark-and-sweep garbage collection on the following data structure. Enumerate the order in which the records on the heap will be visited during both phases. Which records will be marked? Which records will be swept? Show the data structure after each sweep of a record.

<src img="heap2.png"/>

#### Copy Garbage Collection

- Describe the copying garbage collection algorithm.
- Perform a copy collection on the given heap data structure. Show the data structure after each copying step (after pointer adjustments).
- Explain the key benefit of copy collection over mark-and-sweep garbage collection.
- Explain the effect of copy collection on the locality of data.

<src img="heap1.png"/>

#### Generational Collection

- Describe the generational garbage collection algorithm.
- What is the basic assumption of generational collection?
