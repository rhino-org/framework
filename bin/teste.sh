#!/usr/bin/env bash

echo 'NOME: '
echo $TESTE
echo '----- filter'
git filter-branch --subdirectory-filter css/ -f
echo '----- set-url'
git remote set-url origin https://brunogoncalves:$GIT_TOKEN@github.com/rhino-org/rhino.css.git
#echo '----- prune origin'
#git remote prune origin
echo '----- fetch'
git fetch origin
echo '----- push'
git remote -v
git push origin main