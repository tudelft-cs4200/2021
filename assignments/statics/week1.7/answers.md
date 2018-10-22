---
layout: page
title: "Homework Assignments Week 1.7: Specifications with NaBL2 (Answers)"
excerpt: "Assignments"
tags: ["assignments"]
context: assignments
subcontext: assignments_statics
---

## Writing NaBL2 Rules

The rules for sequential let are

    [[ LetSeq(binds, e) ^ (s) : ty ]] :=
      new s_let,
      BindSeq[[ binds ^ (s, s_let) ]],
      [[ e ^ (s_let) : ty ]].

    BindSeq[[ [] ^ (s, s_let) ]] :=
      s_let ---> s.

    BindSeq[[ [Bind(x, e)|binds] ^ (s, s_let) ]] :=
      new s_bind, s_bind ---> s,
      s_bind -> Var{x}, Var{x} : ty,
      [[ e ^ (s) : ty ]],
      BindSeq[[ binds ^ (s_bind, s_let) ]].

    [[ VarRef(x) ^ (s) : ty ]] :=
      Var{x} -> s, Var{x} |-> d, d : ty.

## Applying NaBL2 Rules

&nbsp;1. Step by step application of the rules to the program gives:

       [[ LetRec([Bind("x"{1},IntLit(42)),Bind("y"{2},VarRef("x"{3}))],VarRef("y"{4})) ^ (s) : ty ]]
    => new s_let, s_let ---> s,
       Map1[[ [Bind("x"{1},IntLit(42)),Bind("y"{2},VarRef("x"{3}))] ^ (s_let) : ty ]],
       [[ VarRef("y"{4}) ^ (s_let) : ty ]]
    => new s_let, s_let ---> s,
       [[ Bind("x"{1},IntLit(42)) ^ (s_let) ]],
       [[ Bind("y"{2},VarRef("x"{3})) ^ (s_let) ]],
       [[ VarRef("y"{4}) ^ (s_let) : ty ]]
    => new s_let, s_let ---> s,
       Var{"x"@1} <- s_let, Var{"x"@1} : ty1, [[ IntLit(42) ^ (s_let) : ty1 ]],
       [[ Bind("y"{2},VarRef("x"{3})) ^ (s_let) ]],
       [[ VarRef("y"@4) ^ (s_let) : ty ]]
    => new s_let, s_let ---> s,
       Var{"x"@1} <- s_let, Var{"x"@1} : ty1, ty1 == INT(),
       [[ Bind("y"{2},VarRef("x"{3})) ^ (s_let) ]],
       [[ VarRef("y"@4) ^ (s_let) : ty ]]
    => new s_let, s_let ---> s,
       Var{"x"@1} <- s_let, Var{"x"@1} : ty1, ty1 == INT(),
       Var{"y"@2} <- s_let, Var{"y"@2} : ty2, [[ VarRef("x"{3}) ^ (s_let) : ty2 ]].
       [[ VarRef("y"@4) ^ (s_let) : ty ]]
    => new s_let, s_let ---> s,
       Var{"x"@1} <- s_let, Var{"x"@1} : ty1, ty1 == INT(),
       Var{"y"@2} <- s_let, Var{"y"@2} : ty2, Var{"x"@3} -> s_let, Var{"x"@3} |-> d1, d1 : ty2,
       [[ VarRef("y"@4) ^ (s_let) : ty ]]
    => new s_let, s_let ---> s,
       Var{"x"@1} <- s_let, Var{"x"@1} : ty1, ty1 == INT(),
       Var{"y"@2} <- s_let, Var{"y"@2} : ty2, Var{"x"@3} -> s_let, Var{"x"@3} |-> d1, d1 : ty2,
       Var{"y"@4} -> s_let, Var{"y"@4} |-> d2, d2 : ty

&nbsp;2. Only the rules for let and bind have to be changed. The rules
are changed in such a way that the expressions in the binds are not
checked in the let scope, but in the surrounding lexical scope. These
are the rules for parallel lets:

    [[ LetRec(binds) ^ (s) : ty ]] :=
      new s_let, s_let ---> s,
      Map1[[ binds ^ (s, s_let) ]],
      [[ e ^ (s_let) : ty ]].

    [[ Bind(x, e) ^ (s, s_let) ]] :=
      Var{x} <- s_let, Var{x} : ty,
      [[ e ^ (s) : ty ]].
