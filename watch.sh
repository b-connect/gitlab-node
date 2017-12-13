#!/bin/sh

if [ -e "/app/package.json" ]
then
  cd /app
  npm i
  npm run watch
else
  echo "No packages found"
fi
