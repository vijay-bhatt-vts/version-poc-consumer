#!/usr/bin/env bash

set -e

echo $GITHUB_REF
branch=${GITHUB_REF##*/}

echo $branch

lib='version-poc1@'
lib+=$branch

echo $lib

npm install $lib
node index.js