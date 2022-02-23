#!/bin/bash

usage() {
  printf "Usage: ./brokenWordlist.sh <originalWordlist> <lastKnownWord> <outputFile>\n"
  exit 0
}


if [[ $# -ne 3 ]] ;then
  usage
fi


if [[ $(sed -n '/^'"$2"'/,$p' $1) ]]; then
    sed -n '/^'"$2"'/,$p' $1 > $3
else
   echo "ERROR: Output is empty, file not created"
   exit -1
fi


printf "Done\n"