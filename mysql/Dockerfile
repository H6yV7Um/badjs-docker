FROM mysql:5.6

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=badjs
ENV TZ=Asia/Shanghai

ADD ./badjs.sql /docker-entrypoint-initdb.d/
RUN chmod 777 /docker-entrypoint-initdb.d/badjs.sql;\
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone;

VOLUME /var/lib/mysql

EXPOSE 3306
CMD ["mysqld"]

# docker run -v badjs-mysql:/var/lib/mysql -p 3306:3306 -ti --rm badjs-mysql
