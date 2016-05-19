#!/bin/bash

/usr/sbin/httpd -D FOREGROUND
/usr/sbin/php-fpm -D FOREGROUND
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
