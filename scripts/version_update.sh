#!/usr/bin/env bash

set -e

echo $GITHUB_REF
branch=${GITHUB_REF##*/}

lib='version-poc1'
libtag='version-poc1@'
libtag+=$branch

echo $libtag

main="main"
if [ "$branch" == "$main" ] 
then
    npm install lib
    node index.js
else
    npm install libtag
    node index.js
fi
