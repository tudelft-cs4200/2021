---
layout: page
title: "Homework Assignments Week 2.3: Virtual Machines"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_dynamics
---

In these assignments you explore the Java Virtual Machine.

Verify your answers with the [model answers](answers).

## Java Virtual Machine

- What are the steps to call a method in Java Bytecode?
- How does the Java Virtual Machine handle a method call?
- Where are the parameters of a method stored?
- What are the steps to return from a method in Java Bytecode?
- How does the Java Virtual Machine handle a return?


## Bytecode Execution

Execute the bytecode instructions of `A/main()V`, starting with an empty stack.
The initial value of local variable `0` is `4242 4103`, pointing to an object of class A. Show stacks and local variables after each instruction.

Code for `A/main()V`
```
aload_0
bipush 5
iconst_4
isub
invokevirtual A/m(I)V
```

Code for `A/m(I)V`
```
    goto l2
l1: iinc 1 -1
l2: iload_1
    ifne l1
return
```

Code for `Hint: iinc 1 -1`
```
iload_1
ldc -1
iadd
istore_1
```

## Bytecode Execution

Execute the bytecode instructions of `Main/main()V`, starting with an empty stack. The initial value of local variable `0` is `4242 4303`, pointing to an object of class `Foo`. Show stacks and local variables after each instruction. If you have to invoke a method, execute the bytecode of this method as well. Make clear when stack frames are created and destroyed, and which data is passed between frames.

Code for `Main/main()V`:
```
    aload_0
    bipush 4
    iconst_2
    isub
    invokevirtual Foo/f(I)V
```

Code for `Foo/f(I)V`
```
    iload_1
    goto l2
l1: iload_1
    ldc -2
    iadd
    dup
    istore_1
l2: ifne l1
    return
```

## Bytecode Execution

Execute the bytecode instructions of `Main/main()V`, starting with an empty stack. If you have to invoke a method, execute the bytecode of this method as well. The initial value of local variable `0` is `4242 4303`, pointing to an object of class Foo. Show stacks and local variables after each instruction.

Code for `Main/main()V`
```
aload_0
bipush 3
iconst_2
isub
invokevirtual Foo/f(I)V
```

Code for `Foo/f(I)V`
```
    goto l2
l1: iinc 1 -1
l2: iload_1
    ifne l1
    return
```

Hint: `iinc 1 -1`
```
iload_1
ldc -1
iadd
istore_1
```

## Bytecode Execution

Execute the following bytecode instructions, starting with an empty stack. Show the stack after each instruction. If an instruction performs a jump, name the next instruction.

```
    bipush 21
    ldc 5
    iconst_4
    dup
    imul
    iadd
    isub
    ifeq l1
    iconst_1
l1: nop
```

## Stack Frames

A Java class A defines a method `int m(int p1, int p2)`.

- Which steps (on bytecode level) are needed to call `m(1,2)` on an object a of type A? Which steps are needed to return from a call?
- Explain how the Java Virtual Machine handles the call and the return.
- Explain single dispatch as used by the Java Virtual Machine. Compare this approach with two other kinds of dispatch.
