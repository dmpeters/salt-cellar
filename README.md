## Salt-Cellar

A personal repo for my salt states and a playground to play locally with
saltstack and a virtualbox vm on my Mac OSX machine.

#### Requirements
 - homebrew
 - virtualbox
 - vagrant
 - virtualenv and/or mkvirtualenv

#### To Use
 - brew install python swig zmq
 - virtualenv salt or mkvirtualenv salt
 - pip install salt yolk
 - sudo launchctl limit maxfiles 4096 8192
 - sudo salt-master --log-level=all
 - ln -s salt /etc/salt
 - ln -s srv /srv
 - vagrant up
 - sudo salt '*' test.ping

Instructional Reference can be found here: http://goo.gl/NFJMch
