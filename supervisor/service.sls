{% from "supervisor/map.jinja" import supervisor with context %}

include:
  - supervisor.config

supervisor_service:
  service.running:
    - name: {{ supervisor.service }}
    - enable: True
    - watch:
      - file: supervisor-config
    - require:
      - pkg: {{ supervisor.pkg }}

