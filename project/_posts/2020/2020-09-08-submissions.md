---
layout: talk
title: "Git(Lab) and Submissions"
tag: project
categories: []
kind: Project
series: project
speaker:
authors:
pdf:
image:
talkURL:
eventURL:
event:
date: 2020-09-08 12:01
admin: true
---

We use the Git version control system with [gitlab.ewi.tudelft.nl](https://gitlab.ewi.tudelft.nl) to manage submissions and grade assignments.


## Git

Download and install Git from [this page](https://git-scm.com/downloads). We will be using the Git command-line, since it is more powerful and easier to troubleshoot than GUI clients. On Linux and macOS, installing Git should provide a `git` command on your shell. On Windows, Git installs `Git BASH` to provide a command-line shell, which you need to start to use Git from the command-line.

We will explain the steps needed to work on and submit assignments on this page. To learn the basics of git, read [git - the simple guide](http://rogerdudler.github.io/git-guide/) and [try out the Git command-line](https://try.github.io/). If you'd like to learn more, [have a look at these resources](https://help.github.com/articles/good-resources-for-learning-git-and-github/).


## Repository Structure

Let's look at the repository structure first.

On GitLab, we will create a private git repository for you, which is owned by us, and is only visible to you and the compiler construction team. This repository will host assignment templates and your submissions in **protected** branches. Note that you **do not** have write access to protected branches. You can only read from it and submit assignments to it by opening merge requests. This is to ensure that you cannot mess with submitted assignments after the deadline. You **do** have access to non-protected branches, and this is where you can push your work frequently.


## Getting started

First, find your private repository in the [CS4200/2020-2021](https://gitlab.ewi.tudelft.nl/CS4200/2020-2021) group on GitLab, it should be called `student-id` where `id` is your NetID.

To actually do work in the Git repository, you need to make a *local* clone of the repository on your computer. You can find the URL needed to clone on the bottom right of the page, be sure to use `HTTPS`.

![Clone URL](/project/2020/00-submissions/clone_url.png)

Open up the command line and make a local clone with your URL:

```shell
git clone https://gitlab.ewi.tudelft.nl/CS4200/2020-2021/student-id.git
```

Now cd into the local clone and confirm that it works:

```shell
cd student-id
git status
```

which should output something like:

```shell
On branch master
Your branch is up-to-date with 'origin/master'.
nothing to commit, working directory clean
```

Your local repository is set up now! Follow the steps below to work on an assignment.

## Workflow

### Starting an assignment

You work on each assignment in its own development branch, named `milestone-0-develop`, `milestone-0-develop`, etc.
The correct assignment branch must be checked out in your local Git repository to be able to work on it.
The steps to check out a branch depend on whether we provide you with a template, or if you continue with work from a previous assignment.

#### Template

If the assignments asks you to check out a template, which for example `milestone-0-template` does, use the following steps:

```shell
git fetch origin
git checkout -b milestone-0-develop origin/milestone-0-template
git push -u origin milestone-0-develop
```

This checks out a fresh branch from the remote repository. It does not contain any of your previous work.

#### Continue from previous assignment

If the assignment asks you to continue from the previous assignment, which for example milestone 2 does, use the following steps instead:

```shell
git checkout -b milestone-2-develop
git push -u origin milestone-2-develop
```

The new `milestone-2-develop` branch will be in an identical state to the `milestone-1-develop` branch, but changes will only be committed to the `milestone-2-develop` branch, leaving the `milestone-1-develop` branch as is.
Now you have the assignment branch checked out in your local repository and can start working.

### Saving work

Whenever you have changes that you'd like to save, such as after getting (a part of) the assignment working, you need to add, commit, and push your changes:

```shell
git add --all
git commit -m "Message describing your changes"
git push
```


### Submitting a milestone

[Merge requests](https://docs.gitlab.com/ee/gitlab-basics/add-merge-request.html) are used to submit a milestone from your *develop* branch to its corresponding *submission* branch.

Make sure you've pushed all your changes first, then go to your repository on GitLab.
Navigate to **Merge Requests** and click the **New merge request** button:

![New merge request](/project/2020/00-submissions/new_merge_request.png)

Select the *develop* branch as source and its corresponding *submission* branch as target.
Click *Compare branches and continue*.

If all is well, you can review your changes and you can press the `Submit merge request` button to submit your milestone. If not, check the troubleshooting section.

![Merge request](/project/2020/00-submissions/merge_request.png)

We will grade your milestone and post the results as an issue in your project, so check back later.


### Switching to another milestone

If you'd like to work on an another milestone, for example to fix things for a new submission, you can just check out the branch for that milestone.
Be sure to push any changes to your current branch first, then check out the branch for the milestone you wish to switch to:

```shell
git checkout milestone-1-develop
```

### Pulling in changes from template

If there's something wrong in the template for a milestone, we fix it in the *template* branch, and you have to merge in those changes.
Use the following commands to merge in changes (use the correct branch!):

```shell
git fetch origin
git merge origin/milestone-1-template
git push
```

In most cases, Git will automatically merge in any changes, but sometimes conflicts can occur. See [Resolving a merge conflict](https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line/) on how to resolve conflicts.


## Git GUI clients

This guide uses command-line Git commands, but if you'd rather use a GUI, use [SourceTree](https://www.sourcetreeapp.com/).


## Troubleshooting

### Cannot push

#### No access/rights

When Git complains about not being able to push because you do not have access or rights to the repository, this probably means that you're trying to push to a *template* or *submission* branch rather than a *develop* branch.

#### Out of date branch

You cannot push changes to a remote when that remote has changes that you haven't yet pulled, you'll get an error like:

```shell
git push
To ...
 ! [rejected]        milestone-1-develop -> milestone-1-develop (non-fast-forward)
error: failed to push some refs to '...'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
```

First pull changes with `git pull` and then push your changes.

### Cannot pull

#### Local changes

When you have changes in your local repository that you have not committed yet, and you try to pull, Git may complain about your changes being overwritten.
First add and commit your changes locally with:

```shell
git add --all
git commit -m "Message describing your changes"
```

and then pull changes with `git pull`.

### Cannot automatically merge merge request

If a merge request cannot be automatically merged, your branch is out of date with the *template* branch.
Merge in changes from the template (use the correct branch!):

```shell
git fetch origin
git merge origin/milestone-1-template
git push
```

### Resolving merge conflicts

See [Resolving a merge conflict](https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line/) on how to resolve merge conflicts.
You can also try a GUI merge tool such as [DiffMerge](https://sourcegear.com/diffmerge/) to resolve merge conflicts.
