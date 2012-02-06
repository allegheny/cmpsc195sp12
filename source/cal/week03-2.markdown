---
layout: owmx-static
title: Introducing Variables
comments: false
date: 2012-02-02 03:20
sharing: true
footer: true
callout: true
pithy: ...
categories: [static, calendar]
week: 03
day: 2
---

# Big Picture
Reinforce our work from Tuesday.

# "To Do"
* Read/revisit the material from Chapter 3 in LP.
* [Ask questions in Piazza](http://piazza.com/class#spring2012/cmpsc195) regarding the content of Chapter 3.
* Watch (or rewatch) the [pencasts](../resources/resources.html) regarding variables.

# The Plan
&nbsp; |&nbsp; | &nbsp;
 :-- | :-- | :--
 20 | Q & A | We'll start with Q & A based on questions asked in Piazza.
 30 | Alien Planning | Develop an alien on paper, relative to a mouse click.
 20 | Alien Hacking | Convert the alien into code; demonstrate before the end of class to checkout.

# Q & A
We'll start with Q & A based on Piazza questions or questions you have in class.

# Alien Planning
On graph paper, we'll do the following:

**Develop an alien.** On graph paper, develop an alien (like Zoog, but not Zoog). 


**Calculate coordinates.** The reason for using graph paper is to be able to figure out what coordinates you want to use before writing code. Figure out where the corners of rectangles and centers of ellipses are on paper. For example:

<br/>
![My Alien](../images/20120130-my-alien.png)
<br/>

It looks like the ellipse has an upper corner at (100, 100), and a width and height of 50. The rectangle seems to have a start at (160, 110), a width of 50, and a height of 60. By doing this on graph paper first, I'm able to easily get "close" with my alien program. So far, my alien would look something like:

<pre>
	ellipse(100, 100, 50, 50);
	rect (160, 100, 50, 60);
</pre>


**Convert using mouse variables.** Now, here's the trick. In the above image, assume that the user clicked at the point (100, 100). Now, I want to convert my above program into one that uses the <code>mouseX</code> and <code>mouseY</code> variables. That means my ellipse is no longer at (100, 100), but at (mouseX, mouseY).

<pre>
	ellipse(mouseX, mouseY, 50, 50);
</pre>

Then, my rectangle would be at...

<pre>
	rect(mouseX + 60, mouseY, 50, 60);
</pre>

With your alien, convert all of the coordinates so they are relative to where the user clicks.

# Alien Hacking
Once you know where everything should go, code your alien up in Processing. Remember, you'll want this to be in the <code>mousePressed()</code> function.

<pre>
	void setup() {
		...
	}
	
	void draw() {
		...
	}
	
	void mousePressed() {
		...
	}
</pre>

# Checkout

When you're done, print your code, and paste both your code and your graph paper drawing into your lab notebook. Then, check out with an instructor or TA.

		