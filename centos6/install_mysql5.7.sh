#!/bin/bash

sudo rpm -Uvh http://dev.mysql.com/get/mysql57-community-release-el6-7.noarch.rpm
sudo yum -y install mysql-community-server

echo "temporary password is '$(grep 'temporary password' /var/log/mysqld.log)'."
echo "Start security settings ・・・"
sudo mysql_secure_installation
