---
title: "Language hell."
date: 2025-01-20
draft: false
---
I've always wanted to make a programming language,  Even when I didn't know how they worked <br> and they felt like absolute magic that just runs my code using the power of the Pleides or something...
<br><br>
After I learnt about how compilers and interpreters work and the steps they require <br> to convert my code into executables or to actually execute it I had to <br> also deal with the problem of time, each time I want to start making a programming <br>
language something pops out of nowhere (usually school) and says <br>
"fuck you, you aren't doing that shit HAHAHA"
<br><br>
Now that my first semester is nearly done and I can finally do my projects in peace <br> I'm continueing on making a programming language so that I can learn more <br> practically about how they work fundementally.  <br><br>

# My language's design choices.
<br><br> For the language I'm going to work, it'll be no more than a learning project so <br> I tried to make my choices simplify the whole development process so I can <br> focus more on learning.
<br><br>
I have decided to make the language interpreted and statically typed,  why? <br> because compilation is *quite* hard at this point for me <br>(I've already struggled with lexing,  so yeah...) <br> and I want to figure out how type systems work.
<br><br>
I haven't decided much on the syntax though I'm sure I won't be much 
"creative" with it <br> As I was working on the lexer I actually decided 
some elements of the syntax.
<br><br>

# Starting the development.
<br><br> I choose to use Rust for my language's interpreter just to be able to
learn the language further <br> and improve my ability to think the Rust way,  because I think that I still do things wrong in Rust <br> most of the time.
<br><br>
I started with the easiest part (to me at lest) which is the lexer, This is what turns your code <br> into tokens that could be then parsed to make a meaning of the code.
<br><br>
I used a crate called [Logos](https://docs.rs/logos/latest/logos/) in order to make the lexer,   it is a popular choice for that purpose, <br> making the lexer was kinda non-easy but fun,  I learned a lot about lexing and some of it's quirks.
<br><br>
For example,  When lexing integers I thought I'd get away with just doing a simple ``\d+`` regex <br> to get the numbers,   But it turns out that I had to support some other formats or <br> representations of numbers,  Specifically supporting prefixes like ``0x`` (hexidecimal) <br> 0b (binary) and 0o (octal) and adding support for these was tricky as they couldn't <br> just be captured with regex,  they had to have their own parsing logic.