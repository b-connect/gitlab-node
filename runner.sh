#!/bin/sh

for i in $(echo $NPM_BUILD_PATHS | tr "," "\n")
do
  # process
  cd $i;
  npm i
  npm run build:dev
done
