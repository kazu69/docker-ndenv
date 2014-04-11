#!/bin/bash

FILE=$1

if [ -n $FILE ]; then
  FILE='/root/.node_version'
fi

for VERSION in  $(cat $FILE)
do
  echo $VERSION
  ndenv install "$VERSION"
done
