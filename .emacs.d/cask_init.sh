#!/bin/bash

curl -fsSkL https://raw.github.com/cask/cask/master/go | python
cask upgrade
cd ~/.emacs.d
cask install
