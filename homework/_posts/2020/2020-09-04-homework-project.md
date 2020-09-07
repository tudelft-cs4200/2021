---
layout: talk
title: "Week 1: Create Homework Project for Syntax Assignments"
tag: homework
categories: []
kind: Homework
series: homework
speaker: Eelco Visser
authors:
pdf:
image:
talkURL:
eventURL:
event:
admin: true
date: 2020-09-04 10:00
---

Homework assignments should be submitted in [WebLab](https://weblab.tudelft.nl/cs4200/2020-2021/assignment/49294/view).
Homework assignments that involve Spoofax meta-languages will be automatically graded using SPT specification tests in WebLab.
However, the programming environment on WebLab is still rather crude.
Therefore, we recommend making these assignments in Spoofax and copying the code for the solutions to WebLab.
This assignments guides you through setting that up.

#### Installing Spoofax

Follow the instructions of [Lab 1(a)](/project/2020/09/08/lab1a/) for installling Spoofax.

#### Create the Project

Create a new language project use `File ‣ New ‣ Project ‣ Spoofax Language Project` and set the following configuration parameters to create the 'homework' project:

* Project name: `solution`
* Use default location: []
* Location: some appropriate location
* Identifier: `solution`
* Name: `solution`
* Version: `0.1.0-SNAPSHOT`
* Group identifier: `org.example`
* Extensions: `sol`
* Syntax type: `SDF3`
* Analysis type: `None`

This will give you a directory `solution`.

#### Configuring the Project

You will use this project to make assignments on syntax definition.
Instead of making a new language project for each assignment, you can use this project by working as follows.

Create a directory `/homework/` in the root of the language project.

In that directory, create directories for the individual assignments.
For example, I have created a directory `/homework/week1/w1-pascal/` for the [Pascal assignment](https://weblab.tudelft.nl/cs4200/2020-2021/assignment/49956/view).

In that directory, create a file `solution.sdf3` for the syntax definition, and a file `test.spt` for tests.
Copy the templates from WebLab to those files.
Note that the name of the module should correspond to the name of the file (e.g. `homework/week1/w1-pascal/solution`), while the name of the module on WebLab should always be `solution`.
You can add example files for the language with extension `.sol` in the directory as well.

In the file `/syntax/solution.sdf3` remove everything but the module header and import all the `.sdf3` files for the assignments using imports such as
```
  imports homework/week1/pascal/solution
```
While working on an assignment, comment out all the imports but the syntax definitions for that assignment.

#### Developing a Solution

Use the usual [Spoofax development cycle](/project/2020/09/08/lab1a/#agile-language-engineering) to develop the solution for an assignment.

#### Submitting a Solution

When you are satisfied with your solution, copy the body of the module to WebLab.
Test that the specification tests succeed.
