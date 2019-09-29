#!/bin/bash

service mysqld start
sleep 1
defaultmysqlpwd=`grep 'A temporary password' /var/log/mysqld.log | awk -F"root@localhost: " '{ print $2}' `
/usr/bin/mysql -uroot -p${defaultmysqlpwd} <<EOF
set global validate_password_policy = 0;
SET PASSWORD = PASSWORD('Csoc@123456');
grant all privileges on *.* to root@'%' identified by 'Csoc@123456';
EOF
sleep 1
service mysqld restart
