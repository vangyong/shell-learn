#!/bin/bash
# Copyright (c) http://c.biancheng.net/shell/
echo "What is your name?"
read PERSON
echo "Hello, $PERSON"

var_name="变量1"
echo $var_name
echo ${#var_name}
echo ${var_name:1:2}
echo `expr index "$var_name" 量`

for skill in Ada Coffe Action Java; do
   echo "I am good at ${skill}Script"
done

array_name=(value0 value1 value2 value3)
length = ${#array_name[@]}
echo $length
