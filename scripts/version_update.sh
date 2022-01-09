#!/usr/bin/env bash

set -e

echo $GITHUB_REF
branch=${GITHUB_REF##*/}

lib='version-poc1'
lib@='version-poc1@'
lib@+=$branch

echo $lib@

main="main"
if [ "$branch" == "$main" ] 
then
    npm install lib
    node index.js
else
    npm install lib@
    node index.js
fi
