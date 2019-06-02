#!/bin/bash
#一个for循环1000次，顺序执行1000次任务

start_time=`date +%s` #定义脚本运行的开始时间

for ((i=1;i<=1000;i++))
do
        sleep 1  #sleep 1用来模仿执行一条命令需要花费的时间（可以用真实命令来代替）
        echo 'success'$i;
done

stop_time=`date +%s`  #定义脚本运行的结束时间

echo "TIME:`expr $stop_time - $start_time`"