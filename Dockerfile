FROM sparklyballs/base-vanilla-armhf

RUN \
apk add --no-cache \
	apache2 \
	apache-mod-fcgid \
	apache2-proxy \
	php \
	php-cli \
	php-curl \
	php-fpm \
	php-gd \
	php-ldap \
	php-mcrypt \
	php-opcache \
	php-pdo_mysql \
	php-pdo_pgsql \
	php-pdo_sqlite \
	wget && \

# cleanup
rm -rf /var/cache/apk/*

# ports and volumes
EXPOSE 80 443
VOLUME /config



