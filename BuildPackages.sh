#!/bin/bash

dpkg-scanpackages -m ./Tweaks /dev/null > Packages

gzip -cf Packages > Packages.gz
xz -9fkev Packages > Packages.xz
bzip2 -cf Packages > Packages.bz2

git add -A
git commit -m "Trying out new Repo template"
git push -u origin master