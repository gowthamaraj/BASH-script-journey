#!/bin/bash

greeting=hello

echo "$greeting"

greeting+=' world'
echo "$greeting"

# last word
echo "${greeting##* }"

echo "${greeting^}."

echo "${greeting/ / : }"
