---
layout: owmx-static
title: Looping
comments: false
date: 2012-02-23 03:20
sharing: true
footer: true
callout: true
pithy: Loops and loops and loops...
categories: [static, calendar]
week: 06
day: 2
---

# Big Picture

# "To Do"

# The Plan

&nbsp; |&nbsp; | &nbsp;
 :-- | :--: | :--
&nbsp; | &nbsp; | &nbsp;


// http://rockalypse.org/courses/snaps/soft-circle-20120227-101132.png
void setup () {
   background(255);
   size(500,500);
   noStroke();
}

void draw () {
  int diameter = width;
  while (diameter > 0) {
    fill(diameter/2);
    ellipse (width/2, height/2, diameter, diameter);
    diameter = diameter - 1;
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
    println ("Start: " + start);
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
