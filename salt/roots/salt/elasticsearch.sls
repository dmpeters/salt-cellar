elasticsearch:
  pkg.installed:
    - names:
      - openjdk-7-jdk
  cmd.run:
    - cwd: /tmp/
    - name: "wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.5.deb && sudo dpkg -i elasticsearch-0.90.5.deb && sudo /etc/init.d/elasticsearch start"
    - require:
          - pkg: openjdk-7-jdk
