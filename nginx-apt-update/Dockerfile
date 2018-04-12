FROM nginx:1.13


# set proxy http https
ENV http_proxy http://dev-proxy.oa.com:8080
ENV https_proxy http://dev-proxy.oa.com:8080

RUN echo 'cquire::http::Proxy "http://dev-proxy.oa.com:8080";' > /etc/apt/apt.conf;\
apt-get update;\
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone;
# apt-get install -y cron;\
# service cron start;\


# docker run -ti --rm --network host -v badjs-nginx:/data/log/ badjs-nginx
