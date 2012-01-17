---
layout: owmx-static
title: Syllabus
date: 2012-01-01 14:41
comments: false
sharing: true
footer: true
callout: true
categories: [static, administrivia]
---

# Contact

The course mailing list, <a href="mailto:compilers@rockalypse.org">compilers@rockalypse.org</a> should be your first stop for questions. If you have a question, it is likely someone else either 1) would benefit from the answer or 2) might be able to answer it before I can. For all course-related questions, please use the list.

Obviously, direct email is fine for things that don't seem appropriate for the list.

You're welcome to give a call as well. The phone routes to voicemail after 9PM, but your voicemail will be emailed to me.

 | 
-- | :--
**Email** | mjadud@allegheny.edu 
**Phone** | +1 (925)-238-3692

{% callout hotpink %}
I pay for SMS messages. If you send a text, you will be charged $0.25.
{% endcallout %}

# Course Textbook
{% img right images/book-cover.jpg 120 %}

We have one required text this semester. You should buy it, because we're going to read it, and use it, and stuff like that.

[The Elements of Computing Systems: Building a Modern Computer from First Principles](http://www1.idc.ac.il/tecs/)

# Software
Likewise, we'll be using a few pieces of software this term.

* [ [The TECS Software Suite](http://www1.idc.ac.il/tecs/software.html) ] This is the software that is coupled with the book. If you want to be able to work on projects on your own computer, you should install this and get it working before we dive into things.
* [ [Racket](http://racket-lang.org) ] This is a free and open implementation of the Racket programming language. It looks a lot like Scheme. (When it comes to writing a compiler, we'll deviate from the course text and do our work in Racket.)

# Outcomes

1. Construct a functioning CPU as described in **EoCS**, and write software in microcode and assembly to drive said CPU.
1. Implement a front-to-back, [nano-pass compiler](http://dl.acm.org/citation.cfm?doid=1016850.1016878) for a variant of the Hack programming language.
1. Extend, invent, or otherwise awesomeize something explored during the course of the semester as part of an independent or small-group project.

# Weekly Peer Assessment

Every Thursday we will pair off and discuss the work of the week with each-other. Interactively, you will quiz each-other, exploring how well your partner understands the material---and, in doing so, exploring how well *you* understand the material. A critical outcome of this process is the generation of questions that you still have at the end of the week, which you will share back with the rest of the class.

After Q&A and discussion, you will then give your partner a grade for the week:

{% callout red %}
It is likely that your partner did not spend any substantial time on the course this week. Or, if they did, they failed to ask questions of the group in a timely manner, meaning they failed to get past blocks and develop a deeper understanding. This is considered <strong>Poor</strong>.
{% endcallout %}

{% callout yellow %}
<strong>Average</strong> understanding means they have the gist, but not the depth, of the material from the week.
{% endcallout %}

{% callout blue %}
<strong>Good</strong> understanding means they can answer most questions when pressed, but have not developed mastery. They are still confused on some points, but have clearly made an effort to master the material.
{% endcallout %}

{% callout green %}
If they know it cold, that's <strong>Excellent</strong>.
{% endcallout %}

The purpose of this is three-fold:

1. **Learning**. You yourself will need to work hard and ask questions to understand the material before coming to class. The peer assessment is a checkpoint on your own learning.
1. **Accountability**. In a small seminar, *we* make the course. Your contribution is the effort you make in mastering the concepts necessary to implement a CPU and compiler.
1. **Direction**. The questions you come up with will help pace the course as well as guide our next steps.

# Grading

The majority of the credit for the course will come from our work on the assignments (~50%), from our collaboration on our learning in class (~30%), and from exams (~20%). 

# "What is my grade?"

Don't ask. I won't know.

You are entitled to prompt feedback on any given assignment or exam. If you can't figure out how you're doing based on that feedback, I can't help you.

If I think you're doing poorly, I will let you know, through personal conversation and/or APRs. I will let you know because *I want you to excel*.

But I'm tired of people asking what their grade is. It's game-theoretic, and has almost nothing to do with *learning*.

# (Meta) Background Reading

* [Taming Complexity in Large Scale Systems Projects](http://shimonschocken.com/wp-content/uploads/2011/10/Taming-Complexity.pdf), written by the second author of our text, is going to be presented in the spring, and it provides some background to the tools and technologies you'll be working with, as well as the history of the book.
* [Confessions of a Converted Lecturer](http://www.youtube.com/watch?v=WwslBPj8GgI) is a talk by Erik Mazur that captures many (data-driven) reasons that this course will focus on collaboration and interaction as opposed to lecture.

