#!/usr/bin/env bash

set -e
set -x

CURRENT_BRANCH="main"

function split()
{
    SHA1=`./bin/splitsh-lite --prefix=$1`
    git push $2 "$SHA1:refs/heads/$CURRENT_BRANCH" -f
}

function remote()
{
    git remote add $1 $2 || true
}


git pull origin $CURRENT_BRANCH

remote css https://$GIT_USER:$GIT_TOKEN@github.com/rhino-org/rhino.css.git
remote js https://$GIT_USER:$GIT_TOKEN@github.com/rhino-org/rhino.js.git

split 'css/' css
split 'js/' js