---
layout: default
title: Staff
---
<h1>Staff</h1>

<div>
  {% for author in site.authors %}
    <div class="profile-card">
        <div class="profile-pic">
            <img src="{{author.image}}" alt="Фото профілю">
        </div>
        <div class="profile-info">
            <h1><a href="{{ author.url }}">{{ author.name }}</a></h1>
            <p><span class="label">@{{ author.short_name }}</span></p>
            <p><span class="label">Посада:</span> {{ author.position }}</p>
            <p><span class="label">Місто:</span> Львів, Україна</p>
        </div>
    </div>
  {% endfor %}
</div>

