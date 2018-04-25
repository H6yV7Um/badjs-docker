#!/bin/bash

count=`ps -ef | grep 'mongod\b' | grep -v "grep" | wc -l`

pre=`date +"%Y%m%d%H%M%S"`

echo $count
echo $pre
 
if [ $count -gt 0 ]; then
     echo ${pre}" Good." >> /data/home/log/mongo_restart.log
else
     echo ${pre}" Down!" >> /data/home/log/mongo_restart.log
     # restart mongodb
     # /data/home/server/mongodb34/bin/mongod --port 27018 --dbpath=/data/data2/mongodb34/badjs_$pre/  --logpath=/data/data2/mongodb34/log_$pre --fork
     /data/home/server/mongodb/bin/mongod --port 27018 --dbpath=/data/data2/mongodb/badjs/  --logpath=/data/data2/mongodb/log_$pre --fork
     # restart badjs storage
     sleep 10
     forever restart /data/badjs/badjs-installer/badjs-storage/app.js
fi
