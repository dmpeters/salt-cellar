nginx:
  pkg:
    - installed
  service:
    - running
    - enable: True
    - require:
      - pkg: nginx
    - watch:
      - file: /etc/nginx/nginx.conf

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx/nginx.conf
