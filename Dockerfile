FROM ubuntu:latest

# Install Apache
RUN apt-get update && apt-get install -y apache2

# Copy website files into Apache document root
COPY /website/ /var/www/html/

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
