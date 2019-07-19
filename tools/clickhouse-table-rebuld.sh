#!/bin/bash

echo "start:"
f=$(cat nta_db.sql)
echo "$f"
# clickhouse-client -h 127.0.0.1 -u default --password swad@clickhouse --query "$f"
