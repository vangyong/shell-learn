#!/bin/bash
# Copyright (c) http://c.biancheng.net/shell/
echo "What is your name?"
read PERSON
echo "Hello, $PERSON"
echo '单引号,$PERSON'
# readonly PERSON
# PERSON="new value"

unset PERSON
echo ‘删除变量’
echo "PERSON VALUE:"$PERSON

var_name="变量1"
echo $var_name
echo ${#var_name}
echo ${var_name:1:2}
echo "查找字符串"
echo `expr index "$var_name" 量`

for skill in Ada Coffe Action Java; do
   echo "I am good at ${skill}Script"
done

echo "数组"
array_name=(value0 v1 value2 value3)
echo ${array_name[2]}
echo ${array_name[@]}
array_length=${#array_name[@]}
echo $array_length
echo "# 值:" ${#array_name[1]}
