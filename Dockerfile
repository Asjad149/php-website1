FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y apache2 php libapache2-mod-php php-mysql php-cli && \
    apt-get clean
COPY .  /var/www/html/
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
