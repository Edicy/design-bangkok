<!DOCTYPE html>
<html lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}
</head>
<body>
<div id="page-top" class="content-hyphenate">
  <div class="header-wrap">
    <div id="header" class="clear">
          {% include "Langmenu" %}
      <div id="logo">{% editable site.header %}</div>
      {% include "Search" %}
 </div>
    <!-- //header -->
    {% include "Mainmenu" %} </div>
</div>
<!-- //page-top -->
<div id="page-bottom" class="content-hyphenate">
  <div id="wrap">
    <div id="content-wrap" class="clear">
      {% include "Mobilemenu" %}
      <div id="sidebar"> {% include "Submenu" %} </div>
      <!-- //sidebar -->
      <div id="content" data-search-indexing-allowed="true"> {% content %} </div>
      <!-- //content -->
    </div>
    <!-- //content wrap -->
    {% include "Footer" %}
    <!-- //footer -->
  </div>
  <!-- //wrap -->
</div>
{% include "JS" %}
</body>
</html>