#!/usr/bin/env bash

git remote -v
git push origin HEAD:main
git filter-branch --subdirectory-filter css/ -f
git remote set-url origin https://github.com/rhino-org/rhino.css.git
git fetch origin
git push