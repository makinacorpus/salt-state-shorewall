include:
  - init

/usr/share/shorewall/macro.SaltMaster:
  file.managed:
    - source: salt://shorewall/files/macro.SaltMaster
  require:
      - pkg: shorewall

/etc/shorewall/rules:
  file.append:
    - text: 'SaltMaster(ACCEPT)	net		$FW'
