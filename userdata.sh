#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install awscli -y
sudo apt-get install apache2 -y
sudo chmod -R 777 /var/www/html
aws s3 cp s3://demo-335479894667/sample index.html/var/www/html/index.html
