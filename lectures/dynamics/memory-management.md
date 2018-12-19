---
layout: page
title: "Lecture 15: Memory Management"
excerpt: "Garbage Collection"
tags: ["lecture"]
context: lectures
subcontext: dynamics
---

## Topics

- Memory management
- Memory safety
  - Spatial safety
	- Temporal safety
- Garbage collection
  - reference counting
	- mark and sweep
	- copying collection
	- generational collection
- Language-parametric memory management
  - scopes describe frames

## Slides

<iframe src="//www.slideshare.net/slideshow/embed_code/key/Clntqp4vZINdT" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/eelcovisser/compiler-construction-lecture-15-memory-management" title="Compiler Construction | Lecture 15 | Memory Management" target="_blank">Compiler Construction | Lecture 15 | Memory Management</a> </strong> from <strong><a href="https://www.slideshare.net/eelcovisser" target="_blank">Eelco Visser</a></strong> </div>

- [github](https://github.com/TUDelft-CS4200-2018/lectures/tree/master/15-memory-management)
[PDF](https://github.com/TUDelft-CS4200-2018/lectures/raw/master/15-memory-management/CS4200-2018-15-memory-management.pdf)

## Reading Material

1. Andrew W. Appel and Jens Palsberg (2002). Garbage Collection. In *Modern Compiler Implementation in Java*, 2nd edition. Cambridge University Press.

    The lecture closely follows the discussion of *mark-and-sweep collection*, *reference counts*, *copying collection*, and *generational collection* in this chapter. This chapter also provides detailed cost analyses and discusses advantages and disadvantages of the different approaches to garbage collection.

## Further Reading

2. Apple. [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html) in [The Swift Programming Language (Swift 3.0.1)](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/index.html#//apple_ref/doc/uid/TP40014097-CH3-ID0)

3. Oracle. [Java Garbage Collection Basics](http://www.oracle.com/webfolder/technetwork/tutorials/obe/java/gc01/index.html).

    This tutorial covers the basics of how garbage collection works with the Hotspot JVM.
  It explains mark-and-sweep, mark-and-compact, and generational collection.
  It further explains how to monitor the garbage collection process using Visual VM,
  and which garabage collectors are available in the Java SE 7 Hotspot JVM.

4. [Java HotSpot Garbage Collection](http://www.oracle.com/technetwork/java/javase/overview/index-jsp-140228.html). In particular: [Memory Management Whitepaper](http://www.oracle.com/technetwork/java/javase/tech/memorymanagement-whitepaper-1-150020.pdf)
