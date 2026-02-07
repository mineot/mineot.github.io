---
layout: default
---
{% if site.lang == "en-US" %}
{% capture localized_readme %}{% include_relative en-us.md %}{% endcapture %}
{% else %}
{% capture localized_readme %}{% include_relative pt-br.md %}{% endcapture %}
{% endif %}

{{ localized_readme | markdownify }}
