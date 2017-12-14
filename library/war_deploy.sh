#!/bin/bash

source $1

curl --user $username:$password --upload-file /vagrant/$war "http://127.0.0.1:8080/manager/text/deploy?path=/$url&update=true" 

sudo mkdir -p /var/lib/tomcat/webapps/
sudo touch /var/lib/tomcat/webapps/deploy-info.txt
sudo chmod -R 777 /var/lib/tomcat

echo "
Deployment time: $(date +'%Y-%m-%d %T')
Deploy User: $username
" > /var/lib/tomcat/webapps/deploy-info.txt

echo -e "{\"Deploy User\":\""$user"\", \"App\":\""$war"\"}"
