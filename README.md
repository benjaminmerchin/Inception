# Inception

A Dockerfile is a recipe for creating Docker images. A Docker image gets built by running a Docker command (which uses that Dockerfile). A Docker container is a running instance of a Docker image.  
  
How to launch the project: make  
  
The volumes are at /home/login/data therefore, it will only works on a computer which has already the required volumes.  
  
The wordpress website is accessible at bmerchin.42.fr  
The bonus services are accessible through bmerchin.42.fr/adminer and bmerchin.42.fr/website  
  
On this project
- wordpress/php and nginx are both connected through port 9000  
- wordpress/php and mariadb are both connected through port 3306  
- nginx can access the web through 443 with TLSv1.2 (ssl_protocol)  
- the mysql database is accessible only from the mariadb container  
- the wordpress volumes is accessible through the wordpress/php container  
  
mysql and wordpress login info:  
database/user_name/user_password: wordpress  
root_password: password  
  
<!--
docker build -t hello-world .
docker run -p 80:80 -v /User/Benjamin...:/var/www/html/ hello-world


apt-get install vim -y

todo : http://bmerchin.42.fr qui renvoie sur nginx
-->

There is 5 possible bonuses  
Bonus: redis [ ]  
Bonus:  FTP  [ ] TODO  
Bonus:website[X]  
Bonus:adminer[X]  
Bonus: open  [ ]  