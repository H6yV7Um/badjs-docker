FROM nginx-cron


ADD nginx.conf /etc/nginx/nginx.conf
ADD badjs.conf /etc/nginx/conf.d/
ADD badjs.web.conf /etc/nginx/conf.d/
ADD crontabfile /etc/cron.d/

ENV TZ=Asia/Shanghai

ADD . /app
WORKDIR /app


# set proxy http https
ENV HTTP_PROXY http://dev-proxy.oa.com:8080
ENV HTTPS_PROXY http://dev-proxy.oa.com:8080


RUN chmod 777 /app/start.sh;\
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone;
# service cron start;\

VOLUME /app/log/


EXPOSE 80

CMD /app/start.sh

# docker run -ti --rm --network host -v badjs-nginx:/app/log/ badjs-nginx
