# base this image on the PHP image that comes with Apache https://hub.docker.com/_/php/
FROM php:7.0-apache

RUN apt-get update -y \
  && apt-get clean -y \
  && rm -rf /var/cache/apt/archives

# take the contents of the local html/ folder, and copy to /var/www/html/ inside the container
# this is the expected web root of the default website for this server, so put your index.php here
COPY html/ /var/www/html/