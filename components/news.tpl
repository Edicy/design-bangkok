{% for a in site.latest_1_articles %}
<ul id="latest-news">
{% for article in site.latest_2_articles %}
<li>
    <div class="date">{{article.created_at | format_date:"%d.%m"}}</div>
    <div class="text-container">
        <h2><a href="{{article.url}}">{{article.title}}</a></h2>
        <div>{{article.excerpt | strip_html | truncate : 145}} <a class="more" href="{{article.url}}">{{"read_more"|lc}}</a></div>
     </div>
</li>
{% endfor %}
</ul>
{% endfor %}