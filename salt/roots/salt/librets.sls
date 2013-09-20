librets:
  pkg.installed:
    - names:
      - libexpat1-dev
      - libcurl3-dev
      - libboost-dev
      - libboost-filesystem-dev
      - antlr
      - antlr3
      - libantlr-dev
      - swig
      - libboost-program-options-dev
  cmd.run:
        - cwd: /tmp/
        - name: "wget http://www.crt.realtors.org/projects/rets/librets/files/librets-1.5.3.tar.gz && tar xzf librets-1.5.3.tar.gz && cd librets-1.5.3 && ./configure --disable-perl --disable-ruby --disable-java --disable-dotnet --disable-php --enable-shared_dependencies && make && make install"
        - require:
          - pkg: libexpat1-dev
          - pkg: libcurl3-dev
          - pkg: libboost-dev
          - pkg: libboost-filesystem-dev
          - pkg: antlr
          - pkg: antlr3
          - pkg: libantlr-dev
          - pkg: swig
          - pkg: libboost-program-options-dev
