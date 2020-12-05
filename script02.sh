#!/bin/bash

# Script to make sure that user input is provided

DEST=~/Desktop/store

if [ -z $1 ]
then 
	echo provide filenames
	read FILENAMES
else 
	FILENAMES="$@"
fi

echo the following filenames been provided: $FILENAMES
for i in $FILENAMES
do
	cp $i $DEST
done
