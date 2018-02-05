#/bin/bash

docker network create Ejercicio3

docker create  --name datacontainer3 -v /var/lib/mysql -v /var/www/html busybox

docker run --network Ejercicio3 --name=mariadb -p 3300:3308 -d -e MYSQL_ROOT_PASSWORD=mariadb -e MYSQL_DATABASE=db -e MYSQL_USER1=andres -e MYSQL_PASSWORD1=andres --volumes-from datacontainer3 orboan/dcsss-mariadb

docker create --name datacontainer3 -v /data:/var/www/html -v /data:/usr/share/nginx/html busybox

docker run -itd -p 8040:80  --network Ejercicio3 --volumes-from datacontainer3 --name nginx  nginx
