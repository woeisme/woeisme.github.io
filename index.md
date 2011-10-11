---
layout: default
title: Home
---

--------------------

Recents Rants
-------------
{% for post in site.posts limit: 7 %}
- &raquo; [{{post.title}}]({{post.url}})
{% endfor %}
- ...[more](/blog)

