# Use an official centos runtime as a parent image
FROM gogoday/badjs-node_modules:0.1.0

# Set the working directory to /app
COPY . /app
WORKDIR /app

ENV TZ=Asia/Shanghai


RUN cd /app/badjs-ivweb/badjs-acceptor; cp project.debug.json project.json;\
cd /app/badjs-ivweb/badjs-mq; cp project.debug.json project.json;\
cd /app/badjs-ivweb/badjs-storage; cp project.debug.json project.json;\
cd /app/badjs-ivweb/badjs-web; cp project.debug.json project.json;\
cd /app/badjs-ivweb/badjs-web/plugin/oaLogin/;\
echo $'{\n\
    "auth": "https://login.oa.tencent.com/Connect/Authorize.ashx",\n\
    "logout": "https://login.oa.tencent.com/Modules/SignOut.ashx"\n\
}' > config.json;\
cp /app/crontabfile /etc/cron.d/;\
#echo "Asia/Shanghai" >> /etc/localtime;
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone;

VOLUME ["/app/log"]

# web service 
EXPOSE 8081
# acceptor report
EXPOSE 8082
# mq report server
EXPOSE 2001 
# acceptor project.db update
EXPOSE 9001 
# mq openapi syncProjects
EXPOSE 9002 
# node acceptor report
EXPOSE 8082 
# mongodb service
EXPOSE 9000 
EXPOSE 9010 
# mq openapi
EXPOSE 9500 
# mq dispatcher
EXPOSE 10000 
# mq acceptor; acceptor dispatcher
EXPOSE 10001 



CMD node start.js


# mongodb start
# docker run --name badjs-mongo -v badjs-mongodb:/data/db -p 27017:27017 -ti --rm mongo:latest

# mysql start
# docker run --name badjs-mysql -v badjs-mysql:/var/lib/mysql -p 3306:3306 -ti --rm badjs-mysql

# nginx start
# docker run --name badjs-nginx -v badjs-nginx:/app/log -p 80:80 -ti --rm badjs-nginx

# web start
# docker run --name badjs-run -v badjs-nginx:/app/log -ti --rm badjs-run





