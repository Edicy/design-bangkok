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
      <div id="content">
        <h2>{% editable article.title %}</h2>
        <p><span class="author">{{article.author.name}}</span> / {{article.created_at | format_date:"long"}}{% unless article.comments_count == 0 %} / <span class="comments">{{"comments" | lc}}</span> <a href="{{article.url}}#comments" class="comments-nr edy-site-blog-comments-count">{{article.comments_count}}</a>{% endunless %}</p>
        <div class="excerpt">{% editable article.excerpt %}</div>
        {% editable article.body %}
        {% unless article.comments_count == 0 %}
        <div id="comments">
          <h2>{% case article.comments_count %}{% when 0 %}{{"no_comments"|lc}}{% else %}{{"comments_for_count"|lc}}: <span class="edy-site-blog-comments-count">{{article.comments_count}}</span>{% endcase %}</h2>
          <ul>
            {% for comment in article.comments %}
            <li class="edy-site-blog-comment">
              <p><span class="comment-author">{{comment.author}}</span> <span class="comment-date">{{comment.created_at | format_date:"short"}}</span>{% removebutton %}</p>
              {{comment.body}} </li>
            {% endfor %}
          </ul>
        </div>
        <!-- //comments -->
        {% endunless %}
        <div id="comment-form">
          <h2>{{"add_a_comment"|lc}}</h2>
          {% commentform %}
          {% unless comment.valid? %}
          <ul class="blog-errors">
            {% for error in comment.errors %}
            <li>{{ error | lc }}</li>
            {% endfor %}
          </ul>
          {% endunless %}
          <div class="form_field">
            <label for="commentform-name">{{"name"|lc}}</label>
            <input type="text" class="form_field_textfield" id="commentform-name" value="{{comment.author}}" name="comment[author]" />
          </div>
          <div class="form_field">
            <label for="commentform-email">{{"email"|lc}}</label>
            <input type="text" class="form_field_textfield" id="commentform-email" value="{{comment.author_email}}" name="comment[author_email]" />
          </div>
          <div class="form_field">
            <label for="commentform-body">{{"comment"|lc}}</label>
            <textarea class="form_field_textarea" rows="4" cols="5" name="comment[body]">{{comment.body}}</textarea>
          </div>
          <div class="form_submit">
            <input type="submit" class="submit" value="{{"submit"|lc}}" />
          </div>
          {% endcommentform %} </div>
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