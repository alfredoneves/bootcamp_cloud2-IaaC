#!/bin/bash

echo "updating the system"
apt-get update && apt-get upgrade -y
apt-get install apache2 unzip wget -y

echo "downloading files"
wget "https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip" -O /tmp/main.zip
cd /tmp
unzip main.zip
cp -R linux-site-dio-main/* /var/www/html/
systemctl start apache2
echo "finished"
