shorewall:
  pkg:
    - installed
    - name: shorewall
  service.running:
    - enable: True
    - require:
      - pkg: shorewall
    - watch:
      - file: /etc/shorewall/interfaces
      - file: /etc/shorewall/policy
      - file: /etc/shorewall/rules
      - file: /etc/shorewall/zones

/etc/shorewall/interfaces:
  file.managed:
    - source: salt://shorewall/files/interfaces
  require:
      - pkg: shorewall

/etc/shorewall/policy:
  file.managed:
    - source: salt://shorewall/files/policy
  require:
      - pkg: shorewall

/etc/shorewall/rules:
  file.managed:
    - source: salt://shorewall/files/rules
  require:
      - pkg: shorewall

/etc/shorewall/zones:
  file.managed:
    - source: salt://shorewall/files/zones
  require:
      - pkg: shorewall
