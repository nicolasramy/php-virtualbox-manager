FROM alpine
MAINTAINER Nicolas RAMY <nicolas.ramy@darkelda.com>

RUN apk update && apk upgrade
RUN apk add php php-soap php-json unzip

ADD http://downloads.sourceforge.net/project/phpvirtualbox/phpvirtualbox-5.0-5.zip phpvirtualbox-5.0-5.zip
RUN unzip phpvirtualbox-5.0-5.zip
RUN mv phpvirtualbox-5.0-5 /var/www
ADD config.php /var/www/config.php

EXPOSE 8000
CMD ["php", "-S", "0.0.0.0:8000", "-t", "/var/www"]
