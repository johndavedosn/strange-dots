---
title: "Extremist modularity"
date: 2025-06-08
draft: false
---

As we all know pretty damn well,  There's thousands upon thousands of ways to do the same thing in tech,  From different paradigms to different viewpoints and no solution is the same,  Some are more efficient and others are faster to implement,  There's many shovels to dig.

Today,  I've decided to show you one shovel I like using,  Though I don't get to use it a lot but I enjoy following this paradigm as it makes programming and software development extremely fun and simple.

## What is it?
Extremist modularity is a paradigm where you divide your code into extremely isolated and immutable parts wherein each part corressponds to a single primary or secondary functionality of the software, Each of these modules holds its own internal logic and state that may depend on other modules but it is preferred not to.

For this approach to be *totally extremist*, These modules MUST be controlled,  Monitored and generally handled by a *Component manager* - a piece of software that is supposed to be the central controller that manages all the modules.

The component manager is the one responsible for whether a module is enabled or not and for monitoring the performance of the module *if possible*,  Also if the module includes additional side functionality for error handling or similar stuff, The component manager is supposed to decide whether to run this functionality or not.

Additionally, This component manager has to be configurd by the user of the software either through GUI or configuration files depending on the target userbase,  The configuration is where the component manager *knows* what to do with each module and it"s where you actually declare the existence of a certain module.

## 👍 Pros
Generally,  This approach forces you to build easily expandable APIs and lego-bricks style software, Making your project more welcoming for open-source contributions if it is open source and more intuitive to deal with for newer team members if it is entreprise-grade software.

Moreover, A project that is split on multiple part is generally easier to debug as it'll be super simple to pin-point where exactly an issue happens and fix it,  And the approach is mostly TDD-compatible (type-driven-development) and is more helpful in strongly-typed languages.
## 👎 Cons
The biggest issue I've thought of with this kind of approach is that it makes software incredibly hard to ship fast,  As the design of APIs and the component manager specifically adds to the complexity of a project and makes the inital build of it very slow.

Also,  There **might** be extreme performance drawbacks to this approach as software designed this way will do additional jobs in the management of modules,  But this is not assured as I haven't seen or made any banchmarks or tests that might prove it.

## What is this approach more suited towards?
If your project is not something performance-critical and/or a long-term project that will be maintained by multiple people, It can certainly benefit from either this exact way or a variant to it adjusted to the specific needs of the project.

After all,  This blog post only demonstrates the *extremist* form of modularity and it can certainly be stripped down or adjusted to meet to requirements of any project.

