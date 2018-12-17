---
layout: page
title: "Homework Assignments Week 2.3: Virtual Machines"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_dynamics
---

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

<img src="stack1.png"/>

<!--
## Java Virtual Machine

- What are the steps to call a method in Java Bytecode?

> Solution:
> push object
> push parameters left-to-right
> call method

- How does the Java Virtual Machine handle a method call?

> Solution:
> allocate space (frame data, operand stack, local variables)
> store frame data (data pointer, return address, exception table)
> store parameters as local variables
> dynamic dispatch
> point pc to method code

- Where are the parameters of a method stored?

> Solution: local variables of stack frame

- What are the steps to return from a method in Java Bytecode?

> Solution: parameters in local variables leave result on operand stack
return to caller

- How does the Java Virtual Machine handle a return?

> Solution: push result on callers operand stack point pc to return address
destroy frame

-->
