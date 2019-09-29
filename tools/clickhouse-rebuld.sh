#!/bin/bash
echo "start:"
TOOL_HOME=$(dirname $(cd $(dirname "${BASH_SOURCE-$0}"); pwd))
NTA_DB_FILE=$TOOL_HOME/conf/nta_db.sql
echo "create database:"
clickhouse-client -u default --password swad@clickhouse --query "CREATE DATABASE IF NOT EXISTS NTA_DB;"
echo "init tables:"
clickhouse-client -u default --password swad@clickhouse --query "$line"