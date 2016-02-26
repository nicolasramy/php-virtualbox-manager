FROM alpine
MAINTAINER Nicolas RAMY <nicolas.ramy@darkelda.com>

RUN apk update && apk upgrade
RUN apk add php unzip

ADD http://downloads.sourceforge.net/project/phpvirtualbox/phpvirtualbox-4.3-3.zip phpvirtualbox-4.3-3.zip
RUN unzip phpvirtualbox-4.3-3.zip
RUN mv phpvirtualbox-4.3-3 /var/www
ADD config.php /var/www/config.php

EXPOSE 8000
CMD ["php", "-S", "0.0.0.0:8000", "-t", "/var/www"]
