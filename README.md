pdflatex-travis-example
=======================

compiling PDF-LATEX with travis-ci

work in progress

* sign in on travis-ci.org, grant permissions from github
* sudo gem install travis -V
* # do something like scp root@macgyver.fablab.fau.de:/home/buildserver-uploads/.ssh/id_rsa ./deployment/deployment_private_key.id_rsa
* travis login # needs github login
* travis encrypt-file ./deployment/deployment_private_key.id_rsa 
* make sure the file is decrypted on success, see current .travis.yml

TODO only publish master branch
