#!/bin/bash

for i in $(cat ~/Desktop/data)
do
	USER=${i%%,*}
	USER=${USER#*=}
	echo $USER>>~/Desktop/users
done

for j in $(cat ~/Desktop/users)
do
	echo $j
done 

exit 0
