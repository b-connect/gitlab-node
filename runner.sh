#!/bin/sh

for i in $(echo $NPM_BUILD_PATHS | tr "," "\n")
do
  # process
  if [ -e "${i}/package.json" ]
  then
    cd $i;
    npm i
    npm run build:dev
  else
    echo "No package"
  fi

done
