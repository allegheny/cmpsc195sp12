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

<ul>
{% for post in site.static['calendar'] %}
	<li> <a href="{{ post.url | replace_first: '/','' | prepend:site.url | replace:' ','' }} ">{{ post.title }}</a><br/><p>{{post.pithy}}</p> </li>
{% endfor %}
</ul>