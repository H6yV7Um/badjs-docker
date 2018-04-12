# Use an official centos runtime as a parent image
FROM node:4.9

# backup sourcelist
VOLUME [ "/sys/fs/cgroup" ]

# set proxy http https
#ENV HTTP_PROXY http://dev-proxy.oa.com:8080
#ENV HTTPS_PROXY http://dev-proxy.oa.com:8080


# Set the working directory to /app
COPY . /app
WORKDIR /app

RUN mv /app/sources.list /etc/apt/sources.list

# bzip2 for install photomjs
#yum install bzip2 -y;\
#yum -y install *-fonts-*;\
#yum clean all;\

# CMD ["/usr/sbin/init"]
