#!/bin/bash
yum install -y httpd php git
service httpd start
sudo systemctl enable httpd.service
cd
git clone https://github.com/AventureCloud/Centos-Bootstrap
cp ./Centos-Bootstrap/* /var/www/html
mv /var/www/html/htaccess /var/www/html/.htaccess
sudo systemctl restart httpd.service
