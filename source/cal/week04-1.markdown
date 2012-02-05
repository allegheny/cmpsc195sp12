---
layout: owmx-static
title: "Variables"
comments: false
date: 2012-02-05 16:20
sharing: true
footer: true
callout: true
pithy: "Maybe this, maybe that..."
categories: [static, calendar]
week: 04
day: 1
---

# Big Picture
Getting fully into the declaration and use of variables.

# "To Do"
* Read Chapter 4 in *Learning Processing*
* [Ask questions in Piazza](http://piazza.com/class#spring2012/cmpsc195) that you have from the reading/prep material.

If you ask questions *before* class, I can create pencasts/screencasts to answer your questions. This way, they serve you, and everyone else, as they prep for the week. If you put off questions until the day before, or the start of lab, it is harder to generate these resources in a timely manner.

# The Plan

&nbsp; |&nbsp; | &nbsp;
 :-- | :--: | :--
Quiz | Prep Quiz | Let's see what stuck.
Q & A | Questions | What needs further exploration?
Reinforce | Cheat Sheet | Make a cheat sheet regarding variables and types.
Recreate | Variable Sketches | Recreate several images using variables only.
Recreate | Random Practice | Do something with <code>random()</code> for practice.
&nbsp; | &nbsp; | &nbsp;

# Prep Quiz

We'll start with a prep quiz on material from Chapter 4 of *Learning Processing*

# Questions

This is a good time to ask questions. If you're able to [ask questions in advance](http://piazza.com/class#spring2012/cmpsc195), that would be ideal. This way, I might be able to crank out a pencast or screencast to answer your question before class.

# Cheat Sheet

Develop a cheat sheet in your lab book that summarizes the essentials that you need to know for declaring and using variables. Information about the syntax, types, and so on is all "fair game."

When you're done, [post your cheats into Piazza](http://piazza.com/class#spring2012/cmpsc195/11). By responding to my starter note in Piazza, we'll create a class-wide resource on variables that we can all take advantage of.

# Variable Sketches

Below are three images from *Learning Processing*. In each case, write a short Processing program that recreates the images. As a challenge, **you may not use any constant expressions**. What does this mean? For example:

<pre>
ellipse(200, 200, 100, 100);
</pre>

The line of code above has four constants: 200, 200, 100, and 100. If we knew our window to be of <code>size(200, 200)</code>, we could instead write the following:

<pre class="code">
ellipse(width, height, width/2, height/2);
</pre>

This would draw the same picture, but more importantly, it would draw a *proportional* image regardless of how we sized the screen.

With each of the following images, express your drawing in terms of <code>width</code> and <code>height</code>. You can create additional variables, if you wish, but they should only refer to width and height (or other variables you defined). For example, 

<pre>
int halfwidth = width / 2;
</pre>

would be acceptable, but

<pre>
int spacing = 300;
</pre>

would not.

In each case, some starter code has been provided.


## Four Circles

<pre>

	void setup() {
	  size(400, 400);
	  background(255);
	}

	void draw() {
	  strokeWeight(2);
	  fill(127);
	  // Your code here
	}

</pre>

![Four Circles](http://rockalypse.org/courses/snaps/sketch_feb05a-20120205-163444.jpg)

## Three Lines

<pre>

	void setup() {
	  size(400, 400);
	  background(255);
	}

	void draw() {
	  strokeWeight(2);
	  // Your code here
	}

</pre>

![Three Lines](http://rockalypse.org/courses/snaps/sketch_feb05a-20120205-163659.jpg)

## Square and Circle

<pre>

	void setup() {
	  size(400, 400);
	  background(255);
	}

	void draw() {
	  strokeWeight(2);
	  // Your code here
	}

</pre>

![Square and Circle](http://rockalypse.org/courses/snaps/sketch_feb05a-20120205-163952.jpg)

Hint: Use a piece of paper or ruler to "guestimate" what proportions to use for 1) the offset of the square and 2) the size of the circle.

# Randomness

Some of you may have explored this, but it's a good idea to practice things that we'll use again in the future.

Below is some starter code. Use it to draw a collection of random rectangles, ellipses, lines, or other shapes of your choosing.

<pre>
	// Declare variables that will hold the
	// red, green, blue, and transparency parts
	// of a color in Processing. 
	// All four variables should be of type "int".

	void setup() {
	  size(400, 400);
	  background(255);
	}

	void draw() {
	  strokeWeight(0);
	  // Randomly assign colors to the 
	  // r, g, and b variables.

	  // Set the fill color to this new, random color.

	  // Draw a randomly sized rectangle.
	  // Hint: Declare some variables in 'draw' to store
	  // those random values if it helps. What type should they be?
	}	
</pre>

![Random Rectangles](http://rockalypse.org/courses/snaps/sketch_feb05a-20120205-165019.jpg)

# Modulo
Our last piece of practice has to do with the **modulus** operator. 