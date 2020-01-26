#!/bin/bash
#
# CONF ENV

yum install epel-release -y
yum groupinstall 'Basic Web Server' -y

systemctl enable httpd.service
systemctl start httpd.service

useradd webdev
mkdir /var/www/html/www/
setfacl -m d:u:webdev:rwx /var/www/html/
setfacl -m d:u:webdev:rwx /etc/httpd/conf.d/

