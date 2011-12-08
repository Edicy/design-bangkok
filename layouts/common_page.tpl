<!DOCTYPE html>
<html>
<head>
{% include "SiteHeader" %}
</head>
<body>
<div id="page-top">
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
<div id="page-bottom">
  <div id="wrap">
    <div id="content-wrap" class="clear">
      {% include "Mobilemenu" %}
      <div id="sidebar"> {% include "Submenu" %} </div>
      <!-- //sidebar -->
      <div id="content"> {% content %} </div>
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