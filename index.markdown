---
layout: home
---
  <h1>All Skins</h1>
  {% for skin in site.skins %}
  <h2>
    <a href="{{ site.baseurl | escape }}{{ skin.url | escape}}">
      {{ skin.name }} by {{ skin.author }} 
    </a>
  </h2>
{% endfor %}