---
layout: owmx-static
title: Practicing Looping
comments: false
date: 2012-02-28 03:20
sharing: true
footer: true
callout: true
pithy: Four lefts make a loop
categories: [static, calendar]
week: 07
day: 1
---

# Big Picture
This week we're practicing with loops. At first, our goal is to write them, explore them, and try and understand them. Once we feel confident, we'll be a bit more ambitious---but, for now, we just practice.

# "To Do"
* Read Chapter 6 on looping.

# The Plan

&nbsp; |&nbsp; | &nbsp;
 :-- | :--: | :--
Activity | Time | Description
Quiz | 15 | A prep quiz on looping.
Q & A | 25 | Question and Answer
Practice | 45 | First-round practice
Piazza | 30 | Writeup a question
Practice | 45 | Second-round practice
To Do | 5 | To Do for Thursday
&nbsp; | &nbsp; | &nbsp;

# Prep Quiz

We will be staying with looping for two weeks. That said, we'll start with a quiz, and see how you all do. It's diagnostic, and will help us (individually and as a group) understand how to focus our time for next week.

# Question and Answer
We expect questions; you expect answers. This part of our relationship seems to be working out very well.

# Practice
We'll start with a few warmup questions. Develop code that produces the images below. Note that in each case, some starter / template code has been provided---you can copy/paste that code (if you want) to help get you started.

In every case, we recommend that you **talk through the solution with your programming partner first**. Get out the graph paper (or just plain paper) and think about 

1. What shapes you can draw, in
2. What colors you might use, with
3. What stroke (color, weight, etc.), and
4. Where you might position things

to produce the image that you see. These aren't meant to be hugely difficult, but they do involve critical thinking and problem solving that connects *what you see* with *what you code*. You might recognize this as a theme---the midterm asked you to read a lot of code and make sense of it, quickly. Drawing images from code is hard, but it's part of what we do as computer scientists: **we look at the world, and we represent it as a program**.

Do well. Ask questions.

## Circles

Lets start by drawing some circles that follow the mouse.
	
![Circles following the mouse](http://rockalypse.org/courses/snaps/circles-follow-mouse-20120227-224441.png)

You can copy-paste the following code as a starter.

<pre>
void setup () {
  background(255);
  size(500, 500);
  ellipseMode(CENTER);
  fill(0, 0, 0, 0);
}

void draw () {
  background(255);
  /* As long as the radius of the ellipse fits within the
     screen, draw an ellipse centered on the mouse. Increase
     by 15 each time through the loop. */
  while (...) { 
    ...
  }
}
</pre>

Your code will need to replace the **...** above.


# Matt's Doodles

I used to draw these in class all the time. They were amongst my favorite doodles---with a grid, you can create the appearance of a curved line using only straight lines. This takes it to a new extreme.

![Matt's Doodles](http://rockalypse.org/courses/snaps/sketch_feb27a-20120227-101634.png)

<pre>
void setup () {
   background(255);
   size(500,500);
}

void draw () {
  // Start x at zero and y at height.
  
  while (x < ...) {
    // Draw a line from x, 0 to 0, y.
    ...
    // Increment x and decrement y.
    ...
  }
}
</pre>

If you make the increment and decrement larger (but equal), you'll see more of how this works:

![Matt's Doodles Expanded](http://rockalypse.org/courses/snaps/matts-doodles2-20120227-230141.png)

**Bonus** You could add a line or two to this one that would change the increment for x and y based on the mouse position. This would probably look really cool.

## Purple Waves

![Purple Waves with a Grain](http://rockalypse.org/courses/snaps/purple-waves-with-a-grain-20120227-225229.png)

This one involves drawing lines... lots and lots of lines. You'll have to think about where they're drawn from and to (it should be **somewhat** obvious from the drawing above, but that doesn't mean you won't have to think). Then, when you get your loop running, you'll probably discover that you have to loop further than is typical.

<pre>
void setup () {
  background(255);
  size(500, 500);
}

void draw () {
  /* Draw lines from zero to a location
     on the x and y axes. The color should
     change with that location (modulo 255).
     You'll need to go past the width.
  */
  int loc = ... ;
  while (loc < ...) {
    ...
  }
}
</pre>

## Soft Circles

![Soft Circles](http://rockalypse.org/courses/snaps/soft-circle-20120227-101132.png)

In this one, we need to draw circles that get smaller and smaller. So, we start at the outside, and work our way in. This way, as we draw darker and darker circles, we can see them on top of each-other.

<pre>
void setup () {
   background(255);
   size(500,500);
   noStroke();
}

void draw () {
  int diameter = ...;
  while (diameter > ...) {
    fill(diameter/2);
	...
  }
}
</pre>

# Write up a Question

Now that you've worked through a few examples, it's time to write up two questions on Piazza.

Specifically, you're going to create challenges just like the ones I've developed above.

1. With your partner, explore how you can use while and/or for loops to create interesting effects. You should explore how you can use mouseX, mouseY, % (modulo), width, height, color (fill and stroke) to create an interesting image. 
2. Go into Piazza, and post a new question. It should provide a setup/description like I've provided above: an image and a portion of the code. Use comments to help provide guidance where you believe it is necessary.
3. Read your question, and make sure (with your programming partner) that you think you have provided enough information for someone to puzzle through your challenge/question.

When you're done, move on to the last set of challenges below. A few notes:

1. When posting your challenges to Piazza, post them as "Questions," not "Notes."
2. After you post the text of your challenge, you can then attach an image. In Ubuntu (which we use in the lab), you can take a screenshot with the "Print Screen" button. It will then let you save the screenshot image. Use Piazza's "Attachment" feature to attach the image to your question.

# Second Round Practice

After you've created your two challenges and posted them to Piazza, you're encouraged to try your hand at this one.


![Follow the Mouse](http://rockalypse.org/courses/snaps/color-follow-mouse1-20120227-221757.png)

![Follow the Mouse More](http://rockalypse.org/courses/snaps/color-follow-mouse2-20120227-221831.png)


<pre>
void setup () {
  background(255);
  size(500, 500);
}

void draw () {
  // Draw the lines that go to the x axis and bottom of the screen...
  for (int x = ... ; x < ... ; ...) {
    // The lines going to the top should be green (modulo the x position)

    // The lines going to the bottom should be red (mod x position)
    
  }

  for (int y = ... ; y < ... ; ...) {
    // This will be very similar to the code for x, but
    // it will draw lines from the mouse pointer to the sides.
  }
}
</pre>

# To Do for Thursday

Go into Piazza sometime between now and Thursday morning. "Claim" two problems for you and your partner to work on. Every group created two problems, so that means we have enough for you to do two each. 

Thursday, we'll solve those two challenges in addition to some discussion of "what comes next."

# Assessment

In addition to submitting your two problems to Piazza, put together a document that contains the problem descriptions and screen shots. It should present each problem on one page. This document should be called

<pre>lab6-mjadud-rroos-loop-challenges.docx</pre>

(substituting your usernames as apporpriate), and it should be uploaded to Sakai. If you do this in lab, you are welcome (and encouraged) to use the open source word processor in the Open Office suite of tools. (Files saved from it have a **.odt** extension.)

* An **A** on this work means that the two pages are clearly formatted (using the typeface Courier for code where appropriate), free of typographic errors, and named correctly. The problems are visually interesting and provide challenge without being impossible and/or a matter of blind guesswork --- good hints should be provided in the code, either by its structure or by the comments.
* A **C** on this work contains errors, is poorly formatted, and leaves the programmer little idea as to how to proceed. 



<!--
http://rockalypse.org/courses/snaps/circles-and-squares-20120227-224109.png
void setup () {
  background(255);
  size(500, 500);
  rectMode(CENTER);
  ellipseMode(CENTER);
      fill(0, 0, 0, 0);

}

void draw () {
  int radius = 0;

  while (radius < width) {

    // If the radius mod 10 is zero
    if (radius % 10 == 0) {
      // Set the stroke color to a shade of 
      // blue/purple based on the radius/2, and
      // then draw a rectangle.
      stroke(radius/2, 0, 255);
      rect (width/2, height/2, radius, radius);
    } 
    else {
      ellipse (width / 2, height / 2, radius, radius);
    }
    radius += 5;
  }
}




// http://rockalypse.org/courses/snaps/sketch_feb27a-20120227-101634.png
void setup () {
   background(255);
   size(500,500);
}

void draw () {
  int startX = 0;
  int endY = height;
  
  while (startX < width) {
    line (startX, 0, 0, endY);
    startX = startX + 1;
    endY = endY - 1;

  }
}

// http://rockalypse.org/courses/snaps/sketch_feb27a-20120227-102242.png
void setup () {
  background(255);
  size(500, 500);
}

void draw () {
  int x,y;
  int dia = 0;
  int start = 0 - width;

  while (start < width) {
    x = start;
    y = 0;
    while (x < width) {
      x = x + 10;
      y = y + 10;
      dia = x % 50;

      fill (x % 255, y % 255, 0);
      ellipse (x, y, dia, dia);
    }
    
    start = start + 30;
  }
}

// http://rockalypse.org/courses/snaps/color-follow-mouse1-20120227-221757.png
// http://rockalypse.org/courses/snaps/color-follow-mouse2-20120227-221831.png

void setup () {
  background(255);
  size(500, 500);
}

void draw () {
  
  for (int x = 0 ; x < width ; x++) {
    stroke(0, x % 255, 0);
    line (mouseX, mouseY, x, 0);
    stroke(x % 255, 0, 0);
    line (mouseX, mouseY, x, height);
  }

  for (int y = 0 ; y < width ; y++) {
    stroke(0, 0, y % 255);
    line (mouseX, mouseY, 0, y);
    stroke(y % 255, y % 255, 0);
    line (mouseX, mouseY, width, y);
  }
}

-->