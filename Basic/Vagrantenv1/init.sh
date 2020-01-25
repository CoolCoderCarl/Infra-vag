#!/bin/bash
#
# CONF ENV

yum install epel-release -y
yum groupinstall 'basic web server' -y

systemctl enable httpd.service
systemctl start httpd.service

useradd webdev
setfacl -m d:u:webdev:rwx -R /var/www/html/
setfacl -m d:u:webdev:rwx -R /etc/httpd/conf.d/