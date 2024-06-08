此镜像在centos官方镜像基础上，使用Dokcerfile制作而来的，redis版本是7.2.5
command:

cd redis
docker build -t centos-redis:1.1 .
