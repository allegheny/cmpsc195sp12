---
layout: owmx-static
title: Conditionally Pong
comments: false
date: 2012-02-14 03:20
sharing: true
footer: true
callout: true
pithy: Lather, rinse, repeat...
categories: [static, calendar]
week: 05
day: 1
---

# Big Picture
Put conditionals into practice.

# "To Do"
* Read chapter 5 (Conditionals)

# The Plan

&nbsp; |&nbsp; | &nbsp;
 :--: | :-- | :--
20 | Q & A | Question and answer re: conditionals
30 | Quiz | A quiz on conditionals.
2 | Pong History | A brief history of Pong and video games.
30 | Pong Planning | Plan what goes into pong.
45 | Pong Implementation | Write the code for Pong.
&nbsp; | &nbsp; | &nbsp;

# Pong History

The game of Pong ([online game](http://zinid.com/jspong/), [Wikipedia](http://en.wikipedia.org/wiki/Pong)) has captivated billions, and it has served as the inspiration for every single video game ever invented, even if the game ends up looking nothing like pong. 

<hr/>

For example, this is how Tetris was written:

**Game Developer** I think I'm going to write a game.

**Friend** Oh, yeah? What will it be about?

**Game Developer** I don't know. I think I'll start with Pong, take away the ball, make the paddle fall from the sky, and have people stack all the paddles up.

**Friend** That sounds awesome!

<hr/>

Also, this is how Angry Birds came into being:

**Game Developer** I think I'm going to write a game.

**Friend** Oh, yeah? What will it be about?

**Game Developer** I don't know. I think I'll start with Pong, repurpose the ball so that you throw a red ball at a bunch of green balls, and I'll use a bunch of paddles to protect the green balls.

**Friend** That sounds awesome!

<hr/>

In fact, most people don't realize that Microsoft Windows was developed by Bill Gates in much the same way.

**Bill Gates** I think I'm going to write an operating system.

**Friend** Oh, yeah? What will it be about?

**Bill Gates** I don't know. I think I'll start with Pong, make the ball something people click around with, and I'll use the paddle at the bottom of the screen as a place for other paddles that tell people stuff.

**Friend** That sounds awesome!

# Pong Planning

Before you get down to programming, we would claim you need to *understand the problem*. Most students of computing don't do this: they start hacking. Then, they get confused, and then they write more code, and get more confused, and before they're done, they're lost and upset and hate life. We've done well avoiding that so far, so we're going to think through the problem first.

## Variables

We're going to need some variables. Take a look at the image below.

<!-- ![Pong, Completed.]({{site.url}}/images/pong-actual.png) -->

{% img http://rockalypse.org/courses/cmpsc195sp12/images/pong-actual.png 500 %}

There's a ball and a paddle, and each of them needs to be able to move. Anything that moves or changes in Processing implies, to me, a *variable*. So, the first thing you should think about is this: how many variables do we need, and what will they represent? Make a list of variables, give each of them a name, decide on what type of information each of those variables will be, and decide what each will do/be used for. 

Feel free to ask for some feedback at this point, or (better yet) check in with some people around you and see how your variable choices compare. 

## Moving the paddle

One of the simplest things you can work on is the paddle. We want to be able to move it up and down with the mouse. However, we don't want it to go off the screen. We recommend using the <code>constrain()</code> method, which you can [read the documentation regarding constrain](http://processing.org/reference/constrain_.html), and you can also [experiment with an example online](http://processing.org/learning/basics/constrain.html). Using <code>rectMode(CORNERS)</code> will probably make this easier.

![Constrain the Paddle]({{site.url}}/images/pong-paddle-constrain.png)

When you're done, you should have a paddle that follows the mouse up-and-down one side of the screen without going off.

## Move the ball

If we can't move the ball, then we're in trouble---or, we'll have the most boring game of Pong ever.

The ball will move in both the X and the Y directions. It's position will be updated by some distance in X and Y each frame. Now, it might seem easy: just move one pixel each frame. Of course, the question is: do we move to the right (positive X), or the left (negative X)? 

![Moving in X and Y.]({{site.url}}/images/pong-dxdy.png)

Assuming your radius and ball position are given by variables, start the ball out at <code>(height/2, radius*2)</code>, and get it moving to the right. It will wander off the screen for now, but that's good.

It is probably best if the ball is drawn using <code>ellipseMode(RADIUS)</code>;

## Bounce the ball off the paddle

How can we tell if the ball has hit the paddle? 

![Bouncing off the paddle.]({{site.url}}/images/pong-ball-paddle.png)

If we're drawing the ball in <code>RADIUS</code> mode, it means that we're keeping track of where the center of the ball is. Although you might think of the edge of the ball bouncing off the edge of the paddle, we really need to ask: at what point has the *center* of the ball gone too far? 

At that point, we need to change the direction of the ball from positive X to negative X. That way, when we update the position of the ball, we're subtracting one pixel every frame instead of adding one pixel. HINT: If the direction starts off as positive one, what could we multiply it by to give us the opposition direction?

## Bounce the ball off the back wall

Bouncing off the back wall is just like bouncing off the paddle... except it is easier, because there are fewer things to keep track of.

![Bouncing off the paddle.]({{site.url}}/images/pong-ball-back-wall.png)

Again, when we hit the back wall, we reverse the direction of the ball.

## Finally, handle the top and bottom of the play area

There's a small trick to getting the ball to go up or down; for now, it is enough to handle the case when the ball hits either the bottom or the top of the screen. When that happens, reverse the direction the ball goes in.

![Handle the top and bottom.]({{site.url}}/images/pong-reverse-y-direction.png)

# Getting Started on the Code

You've thought through all of the critical cases in your program. Now is the time to create your very first video game. 

<pre>
// Variables for the ball
float dirX, dirY;

// Variables for the paddle

// Setup
// Assign each variable a reasonable value.
void setup () {
  // Play area
  size (600, 300);

  // Initialize the ball variables

  // Initialize the paddle variables

  // We should start out moving in the positive X 
  // direction, but not moving in Y at all.
  dirX = 1;
  dirY = 0;

  // These seem reasonable.
  ellipseMode(RADIUS);
  noStroke();
  smooth();
}

void draw () {
  // Clear the screen
  background(255);

  // Draw the paddle
  // You'll need to constrain the paddle so it only moves in Y, not X.

  // Check if the ball hit the paddle
  // If the ball is far enough back to reach the paddle...
  // ... AND if the ball is somewhere between the top and
  //     bottom of the paddle...
  // ... THEN change the direction of the ball.

  // Check if the ball hit the back wall
  // Change the X direction accordingly if it did

  // Check to see if the ball hit the top of the screen
  // If so, flip the Y direction.

  // Check to see if the ball hit the bottom of the screen
  // If so, flip the Y direction.

  // Move the ball

  // Draw the ball

}
</pre>

# Assessment
The Pong game will be assessed as follows:

1. Did you follow the submission instructions below?
1. Did you record your initial planning in your lab notebook? Specifically, did you create diagrams and develop a clear sense for the solution before proceeding to writing code?
1. Did you get your planning checked off by an instructor or TA?
1. Does your solution use variables to represent the position and size of the ball and paddle?
1. Does your solution correctly handle all the possible collision cases in the game?

# Submission
* At the top of your program add two lines, each beginning with <code>//</code>. The first should contain your name and, if you worked as a pair, your partner's name:

<pre>
// Leonardo D. Finchy
// Ian P. Freely
void setup() {
... (etc.) ...
}

void draw() {
... (etc.) ...
}
</pre>

* In your program, be sure your statements line up neatly---use the "Edit/Auto Format" command to achieve this.

* Save each of your program under a different name using the "File/Save" command. We recommend a name that looks something like this: <code>lab4-mjadud-rroos.pde</code>. Notice how the names of both partners end up in the filename.

* Next, go to the "Tools" menu and select the "Archive Sketch" menu item. This will create a file with the name you gave the original file, followed by the date, followed by the letters <code>.zip</code>. Each zipfile should start with <code>lab4-</code>.

* On the Sakai web site for the course, locate your drop box. Create a new folder in your drop box named "Lab4". In this new folder, upload each of the three "<code>.zip</code>" files you created as well as any other files (eg. your PDF) that are part of the submission.


# Assigned
This was assigned on Tuesday, February 13, 2012.

# Due
This will be due by Sunday, February 19, 2012 at noon.

# Feedback
You will receive feedback on this work on Thursday, February 23, 2012.


