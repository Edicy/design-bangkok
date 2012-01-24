{% if site.search.enabled %}
<form action="#" method="post" id="search" class="clear edys-search">
    <p class="left"><input type="text" name="" id="onpage_search" class="edys-search-input" placeholder="{{ "search"|lc }}" /></p>
    <p id="search-btn"><input type="submit" name="" value="Search" class="search-submit" /></p>
</form>
{% endif %}