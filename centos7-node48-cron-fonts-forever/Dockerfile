# Use an official centos runtime as a parent image
FROM centos:7

ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;\
# backup sourcelist
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup;
VOLUME [ "/sys/fs/cgroup" ]

# set proxy http https
ENV HTTP_PROXY http://dev-proxy.oa.com:8080
ENV HTTPS_PROXY http://dev-proxy.oa.com:8080


# Set the working directory to /app
COPY . /app
WORKDIR /app

# set node path
ENV PATH="/app/node-v4.8.7-linux-x64/bin/:${PATH}"

# update source list
RUN mv /app/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo;\
yum makecache;\
# bzip2 for install photomjs
yum install bzip2 -y;\
yum -y install cronie;\
crond;\
yum -y install *-fonts-*;\
yum clean all;\
# install forever
npm  install forever -g;

CMD ["/usr/sbin/init"]
