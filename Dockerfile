
FROM php:7.0-apache
MAINTAINER Aprajita Shukla


COPY src2/ /var/www/html/

#EXPOSE is just for information and doesn't actually perform port exposing 
#It functions as a type of documentation between the person who builds the image 
#and the person who runs the container, about which ports are intended to be published.
EXPOSE 80