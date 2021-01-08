#!/usr/bin/env bash

#git remote -v
echo '----- filter'
git filter-branch --subdirectory-filter css/ -f
echo '----- set-url'
git remote set-url origin https://github.com/rhino-org/rhino.css.git
echo '----- fetch'
git fetch origin
echo '----- push'
git push