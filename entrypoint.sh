#!/bin/bash
if [ ! -f "/data/mysql/ibdata1" ];then
  mv /opt/lampp/var/mysql /data/
  chmod 777 -R /data/mysql
else
  rm -rf /opt/lampp/var/mysql
fi
ln -s /data/mysql /opt/lampp/var/mysql
if [ ! -f "/data/wwwroot" ];then
  mkdir -p /data/wwwroot
  chmod 777 -R /data/wwwroot
fi
sleep 3
/opt/lampp/xampp startapache
/opt/lampp/xampp startmysql
tail -f /opt/lampp/logs/access_log