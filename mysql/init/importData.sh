#!/bin/bash
#　导入sql数据

host='127.0.0.1'
port='3308'
database='buyer'
password='pidayBuyer01!'

mysql -u buyer -h$host -P$port -p$password << EOF
use $database
source Structure.sql
EOF
printf 'finished'