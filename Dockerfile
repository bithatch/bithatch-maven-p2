FROM ubuntu
RUN apt update -y
RUN apt install apache2 -y
COPY target/repository /var/www/html/repositories/p2
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
