elasticsearch:
  pkg:
    - installed
  service:
    - running
    - enable: True
    - require:
      - pkg: openjdk-7-jdk
    - watch:
      - file: /etc/elasticsearch/elasticsearch.yml
  cmd.run:
    - cwd: /tmp/
    - name: "wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.7.deb && sudo dpkg -i elasticsearch-0.90.7.deb && sudo /etc/init.d/elasticsearch start"
    - require:
      - pkg: openjdk-7-jdk
      - pkg: elasticsearch
    - unless: "/etc/init.d/elasticsearch status"

/etc/elasticsearch/elasticsearch.yml:
  file.managed:
    - source: salt://elasticsearch/elasticsearch.yml
