#!/bin/bash
sudo yum update
sudo yum install nginx -y
sudo service nginx start
sudo echo "Hello Krish" >/var/www/html/index.nginx-debian.html