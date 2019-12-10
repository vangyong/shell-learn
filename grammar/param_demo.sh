#!/bin/bash

echo "shell 传递参数";
echo "执行的文件名:$0"
echo "第一个参数:$1"
echo "第二个参数:$2"
echo "$*"

echo "当前进程号:$$"
echo "后台运行最后一个进程号:$!"

echo "--\$* 演示--"
for i in "$*";do
    echo $i
done

echo "--\$@ 演示--"
for i in "$@";do
    echo $i
done
