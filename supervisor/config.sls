# -*- coding: utf-8 -*-
# vim: ft=sls

include:
  - supervisor.install

{% from "supervisor/map.jinja" import supervisor with context %}

supervisor-config:
  file.managed:
    - name: {{ supervisor.config }}
    - source: salt://supervisor/templates/supervisor.conf.jinja
    - mode: 644
    - user: root
    - group: root
    - template: jinja
    - require:
      - pkg: {{ supervisor.pkg }}
