  {% macro render(value) %}
  {% set itemURL = value.split('||')[0] | replace('//', '/', 'g') | trim %}
  <li data-url={{ url_for(itemURL) }} class="menu-item menu-item-{{ itemName | replace(' ', '-', 'g') }}{{ item_active(itemURL, 'menu-item-active') }}">
    <a href="{{ url_for(itemURL) }}" rel="section">
      {% if theme.menu_settings.icons %}{#
      #}<i class="menu-item-icon fa fa-fw fa-{{ value.split('||')[1] | trim | default('question-circle') }}"></i> <br />{#
    #}{% endif %}{#
#}{% endmacro %}
