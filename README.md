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
 - pip install salty yolk
 - sudo launchctl limit maxfiles 4096 8192
 - ln -s salt /etc/salt
 - ln -s srv /srv
 - vagrant up
 - sudo salt '*' test.ping

Instructions Reference can be found here: http://goo.gl/NFJMch
