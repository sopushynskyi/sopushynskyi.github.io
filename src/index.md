---
layout: default
title: "Головна"
---

Ласкаво просимо до мого блогу!

Останні пости:

{% for post in site.posts %}
<div>
    <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
    {{ post.excerpt }}
</div>
{% endfor %}