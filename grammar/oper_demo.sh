#!/bin/bash

a=10
b=20 

echo "算术运算符"
val1=`expr 2 + 2`
echo "两个数和: $val1"
val2=`expr 4 \* 7`
echo "乘法: $val2"

if [ $a == $b ]
then 
   echo "a 等于 b"
fi
if [ $a != $b ]
then 
    echo "a不等于b"
fi

echo “关系运算符”
if [ $a -eq $b ]
then 
    echo "$a -eq $b : a 等于 b"
else
    echo "$a -eq $b : a 不等于 b"
fi

echo "布尔运算"
if [ $a != $b ]
then
   echo "$a != $b : a 不等于 b"
else
   echo "$a == $b: a 等于 b"
fi

echo "逻辑运算"
if [[ $a -lt 100 && $b -gt 100 ]]
then 
    echo "返回true"
else 
    echo "返回false"
fi

echo "字符串运算"
s1="abc"
s2="efg"
if [ -z $a ]
then 
    echo "-z $a :字符串长度为0"
else 
    echo "-z $a :字符串长度不为0"
fi













