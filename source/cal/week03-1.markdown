---
layout: owmx-static
title: Variables and Types
comments: false
date: 2012-01-04 03:20
sharing: true
footer: true
callout: true
pithy: ...
categories: [static, calendar]
week: 03
day: 1
---

# Big Picture
Simplifying the process of modifying our pieces.

# "To Do"
* Read Chapter 5 in *Studying Programming* (Sakai)
* Read Chapter 3 in LP.
* Type in and test examples from Chapter 3. 
* Watch (or rewatch) the [pencasts](../resources/resources.html) regarding variables.
* Analogy Development (see below)

# The Plan

&nbsp; |&nbsp; | &nbsp;
 :-- | :--: | :--
 10 | Prep Quiz | Short prep quiz from LP.
 30 | Q & A | Regarding quiz, readings.
 15 | Sharing | Discussing analogies.
 \*  | Posting | Posting Analogies to Piazza.
 15 | Discuss | Discuss examples from Ch 3.
 45 | Experimentation | Three Short Experiments.
 5 | Check In | Check in with instructor/TA.
 15 | Experimentation | Experiment Four.
 25 | Experimentation | Experiment Five.
 20 | Homework | Get started on homework for Thursday.
 &nbsp; | &nbsp; | &nbsp;
 
# Analogy Development (To Do)

We're reading and using *variables*, but... what are they? I've suggested they're like a box (a simile). Can you come up with a way of describing them from your own personal background and/or course of study? Specifically, imagine that you are trying to describe what a variable is to a classmate in another discipline: how would you do it?

The idea here is not to resort to talking about Excel (or computers), but instead to think about what you study and do and find a way to relate variables to something in that discipline.

# Prep Quiz

A short prep quiz.

# Q & A 

Explanation of quiz and any additional questions from the reading.

# Sharing

Discussion of analogies from homework.

# Posting

Posting of analogies into Piazza.

# Discuss

With your partner, go through the examples from chapter three. You should have both typed them in and experimented with them on your own as part of your reading/preparation. 

You should have read the text that goes with the examples and, perhaps, experimented with the code. If you didn't, take some time now with your partner to load up some of the programs you typed (bring them in, perhaps, on a USB stick?), and see what kinds of things happen when you make changes. For example, are there any critical values in these examples? What happens if you swap variables around?

# Experiment Number One

Write a Processing program that begins with a solid black screen of size
256 by 256. As the user moves the mouse across the
screen, the color of the screen should change to a shade of gray equal
to the current x value of the mouse (so moving from left to right should
brighten the screen, moving from right to left should darken it).

# Experiment Number Two

Write a Processing program that begins with a  screen of size 256 by 256
and a solid white background. As the
mouse is moved, a line is drawn from the previous mouse position to the
current mouse position (just as in example 3.4). However, the color of the
line should have an RGB value equal to the current x position, the current y
position, and the previous x position. As the mouse is moved across the
screen a path will be drawn, but the color of the path will change
depending on the position of the mouse. (For instance, if the mouse
moved from (23,150) to (28,135), the line drawn will have color RGB =
(28,135,23).)

# Experiment Number Three

Write a Processing program that draws a square at the current mouse
position whenever the user clicks the mouse.
Whenever a key is clicked, draw a circle
at the current mouse location.

# Check In

At this point, check in with the TA and/or instructor regarding where you are at. We'll ask you to describe the process you went through, what kinds of challenges you encountered, and so on. 

Further, we'll ask to see your lab notebook to see if you've been tracking errors and other "learning moments" from your readings/experimentation before class as well as in class today.

# Experiment Number Four

Create a new variable representing a "fill value" (a shade of gray). Write
a program that initializes this fill value to 0 (black), and increases
it by 5 each time a key is pressed.

(This one involves some new learning on your part. It might be a bit trickier than the previous ones.)

# Experiment Number Five


Create two variables. Initially, they should both be set to half the
width and half the height of the screen, respectively (e.g., for a 300
by 400 screen the variables would have initial values of 150 and 200,
respectively). When a key is pressed, set these variables
equal to the current mouse position (one for x, the other for y).
When the mouse is clicked, draw a line from your ``saved'' point to the
current mouse position. You should get lines radiating from a common
point; pressing a key changes this common point.

# For Thursday

Write a Processing program that uses a combination of key presses,
mouse movements, and mouse clicks to enable the user to create an
interactive work of art. The exercises above show how the position of
the mouse can be used to control things like color, the exercises in the
book show how mouse clicks and key presses can do things like clear the
screen or draw shapes. 

The draw method should be non-empty and should do something ``dynamic,''
controlled by the mouse or by keys or both.

In the comments preceding your program, include your name and a brief
``user's guide'' to your program, explaining exactly how to control
what happens on the screen.

Use built-in variables like  pmouseX and mouseY, but also variables you
have defined. Use the mouse and keyboard to control these variables.
