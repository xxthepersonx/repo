#!/bin/bash

dpkg-scanpackages -m ./Tweaks /dev/null > Packages

gzip -cf Packages > Packages.gz
xz -9fkev Packages > Packages.xz
bzip2 -cf Packages > Packages.bz2

find . -name '.DS_Store' -type f -delete

git add -A
git commit -m "added experimental deb"
git push -u origin master
