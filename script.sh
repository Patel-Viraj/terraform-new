#!/bin/bash

yum update -y
yum install -y httpd
sudo touch /var/www/html/index.html
sudo chmod 777 /var/www/html/index.html
sudo echo '<h1>Wel-Come to My WebSite</h1><h4>viraj-cloud.com</h4>' > /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd