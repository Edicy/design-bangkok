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
     <div id="content">
       {% if tags %}
            <div class="tagged-list-header">
                <div class="header-tag-icon"></div>
                {% if tags == empty %}
                    {{ "no_posts_tagged" | lc }}
                {% else %}
                    {{ "posts_tagged" | lc }} '{{ tags | sort:"name" | map:"name" | join:"', '"}}'.
                {% endif %}
            </div>
        {% endif %}
      
       {% if editmode %}<p>{% addbutton class="add-article" %}</p>{% endif %}
        <ul id="blog-list">
          {% for article in articles %}
          <li> <span class="date">{{article.created_at | format_date:"%d.%m"}}</span>
            <div class="text-container">
              <h2><a href="{{article.url}}">{{article.title}}</a></h2>
              <p><span class="author">{{article.author.name}}</span> / <a href="{{article.url}}">{% case article.comments_count %}{% when 0 %}{{"Write_first_comment" | lc}}{% else %}{{"comments" | lc}} ({{article.comments_count}}){% endcase %}</a></p>
              {{article.excerpt}} <a class="more" href="{{article.url}}">{{"read_more"|lc}}</a> </div>
          </li>
          {% endfor %}
        </ul>
      </div>
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