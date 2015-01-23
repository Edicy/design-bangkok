<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
</head>
<body id="front">
<div id="wrap" class="content-hyphenate">
  <div id="header" class="clear">
      {% include "Langmenu" %}
    <div id="logo">{% editable site.header %}</div>
    {% include "Search" %}
  </div>
  <!-- //header -->
  {% include "Mainmenu" %}
  <div id="content-wrap" class="clear">
    <div id="left-column" data-search-indexing-allowed="true">
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