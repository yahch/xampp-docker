FROM registry.cn-hangzhou.aliyuncs.com/aliyun-docker-registry/xampp:base
COPY entrypoint.sh /
COPY httpd.conf /opt/lampp/etc/
COPY php.ini /opt/lampp/etc/
COPY mime.types /opt/lampp/etc/
COPY httpd-default.conf /opt/lampp/etc/extra/
COPY httpd-xampp.conf /opt/lampp/etc/extra/
RUN apt-get -y install net-tools
EXPOSE 80
VOLUME ["/data"]
ENTRYPOINT ["/entrypoint.sh"]