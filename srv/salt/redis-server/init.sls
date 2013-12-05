redis-server:
  pkg:
    - installed
  service:
    - running
    - enable: True
    - require:
      - pkg: redis-server
    - watch:
      - file: /etc/redis/redis.conf

/etc/redis/redis.conf:
  file.managed:
    - source: salt://redis-server/redis.conf
