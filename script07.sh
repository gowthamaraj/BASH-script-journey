#!/usr/bin/env bash
echo "The Name Script"
echo "usage: names 'My Full Name'"; echo

first=${1%% *} last=${1##* } middle=${1#$first} middle=${middle%$last}
echo "Your first name is: $first"
echo "Your last name is: $last"
echo "Your middle names are: $middle"
