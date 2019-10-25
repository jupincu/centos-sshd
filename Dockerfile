FROM jupincu/centos:latest
MAINTAINER Nopost(nopost@qq.com)
COPY container-files /
RUN cd /install && sh ./docker_build.sh
EXPOSE 22 
ENTRYPOINT ["/config/bootstrap.sh"]
