#!/bin/bash

CWD=`pwd`
PARAM="$*"
if [ -z "$*" ]
then
    PARAM="pull"
fi

for Files in `find . -name ".git"`
do
    cd $Files
    cd ..
    echo "Performing git $PARAM in `pwd`"
    git $PARAM
    cd $CWD
done
