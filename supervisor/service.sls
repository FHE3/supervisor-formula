{% from "supervisor/map.jinja" import supervisor with context %}

include:
  - supervisor.config

supervisor_service:
  service.running:
    - name: {{ supervisor.service }}
    - enable: True
    {%- if supervisor.restart_on_change %}
    - watch:
      - file: supervisor-config
    {% endif %}
    - require:
      - pkg: {{ supervisor.pkg }}

