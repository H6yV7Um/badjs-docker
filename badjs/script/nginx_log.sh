#nginx日志切割脚本
#author: http://www.nginx.cn

#!/bin/bash
#设置日志文件存放目录
logs_path="/app/log/access/"
logs_path_log="/app/log/logaccess/"
#设置pid文件
pid_path="/data/home/server/nginx/logs/nginx.pid"

#重命名日志文件
mv ${logs_path}default.log ${logs_path}access_$(date -d "yesterday" +"%Y%m%d").log
mv ${logs_path_log}default.log ${logs_path_log}access_$(date -d "yesterday" +"%Y%m%d").log

#向nginx主进程发信号重新打开日志
kill -USR1 `cat ${pid_path}`

# 定期删除7天前的日志
find /app/log/access/ -mtime +0 -type f -name \*.log | xargs rm -f

# 定期删除7天前的日志
find /app/log/logaccess/ -mtime +3 -type f -name \*.log | xargs rm -f
