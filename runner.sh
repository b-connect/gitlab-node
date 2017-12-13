#!/bin/sh

for i in $(echo $NPM_BUILD_PATHS | tr "," "\n")
do
  # process
  if [ -e "${i}/package.json" ]
  then
    cd $i;
    npm i
    npm run build:dev &
    echo "Start processing ${i}"
  else
    echo "No package found on ${i}"
  fi

done
