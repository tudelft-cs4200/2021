---
layout: talk
title: "Week 2.1: Transformation with Rewrite Rules"
tag: homework
categories: []
kind: Homework
series: homework
speaker:
authors:
pdf:
image:
talkURL:
eventURL:
event:
permalink: /homwork/2-1
redirect_from:
- /homework/2-1
---

In this week's homework assignments we explore program transformation using rewrite rules in Stratego.

<!-- ### Making Stratego Assignments in Spoofax

In order to make the Stratego assignments in Spoofax, you can use the [project]({{site.baseurl}}/homework/1-3-a) you set up for Statix. Apply the following adaptations.

#### Solution Directory

For each assignment create a directory with the SDF3 file that you can copy from WebLab, and the Stratego solution that you create based on the template from WebLab. Also copy the tests from `Your Tests` into an SPT file.

#### Syntax

In the main syntax definition file import the `solution.sdf3` from WebLab. For example:

```
imports homework/week2-1/w1-01/solution-def   
```

You may have to rename the module name. -->

<!-- #### Transform Strategy

In the main Stratego file in the `/trans/` directory of your project import your Stratego solution, i.e. something like:

```
imports homework/week2-1/w1-01/solution
```

Add the following rules:

```
rules // Transform

  editor-transform:
    (node, _, _, path, project-path) -> (filename, result)
    with
      filename := <guarantee-extension(|"aterm")> path
    ; result   := <transform>node

  editor-transform-pp:
    (node, _, _, path, project-path) -> (filename, result)
    with
      filename := <guarantee-extension(|"trans.sol")> path
    ; result   := <transform; pp-debug>node
```

#### Transform Menu

In `editor/Syntax.esv` extend the menus of the language with:

```
  menu: "Transform" (openeditor)
    action: "Transform"     = editor-transform-pp (source)
    action: "Transform AST" = editor-transform (source)
``` -->
