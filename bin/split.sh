#!/usr/bin/env bash

git filter-branch --subdirectory-filter css/ -f
git remote set-url origin https://$GIT_USER:$GIT_TOKEN@github.com/rhino-org/rhino.css.git
git fetch origin
git remote -v
git push origin main