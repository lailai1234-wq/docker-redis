FROM centos:latest
LABEL author="yyl"
ADD redis-7.2.5.tar.gz /opt
RUN cd /etc/yum.repos.d && rm -f /etc/yum.repos.d/* && curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-8.repo
RUN yum install make gcc vim  -y
RUN cd /opt/redis-7.2.5 && make && make install
ADD redis.conf /opt/redis-7.2.5
CMD ["redis-server","/opt/redis-7.2.5/redis.conf"]
EXPOSE 6379 16379
