<!DOCTYPE html>
<html>
<head>
{% include "SiteHeader" %}
</head>
<body id="front">
<div id="wrap">
  <div id="header" class="clear">
      {% include "Langmenu" %}
    <div id="logo">{% editable site.header %}</div>
    {% include "Search" %}
  </div>
  <!-- //header -->
  {% include "Mainmenu" %}
  <div id="content-wrap" class="clear">
    <div id="left-column">
      {% content %}
    </div>
    <div id="right-column">
     {% if site.latest_articles.size > 0 %}{% include "News" %}{% else %}{% content name="sidebar" %}{% endif %}
    </div>
  </div>
  <!-- //content wrap -->
    {% include "Footer" %}
  <!-- //footer -->
</div>
<!-- //wrap -->
{% include "JS" %}
</body>
</html>