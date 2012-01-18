---
layout: owmx-static
title: Calendar
comments: false
date: 2012-01-04 03:20
sharing: true
footer: true
callout: true
pithy: Save the cheerleader, save the world...
categories: [static, administrivia]
---

# Big Picture

We intend to cover material from the first twelve chapters of [Learning Processing](http://www.learningprocessing.com/buy-the-book/).

| | | 
 :--: | :-- | :-- | :--
 **Week** | **Day** | **Project** | **Description**
  |  |  |
1 | Thur | [Intro](cal/week01.html) | Get to know each-other.
2 | Tues | [Exploring](cal/week02t.html) | Modern modern art.
2 | Thur | [Studying](cal/week02r.html) | Studying programming
3 | Tues | [Variables](cal/week03t.html) | Introducing variables. 
3 | Thur | [Interaction](ca/week03r.html) | Mousing around. 
| | |

# The Details

<ul>
{% for post in site.static['calendar'] %}
	<li> <a href="{{ post.url | replace_first: '/','' | prepend:site.url | replace:' ','' }} ">{{ post.title }}</a><br/><p>{{post.pithy}}</p> </li>
{% endfor %}
</ul>