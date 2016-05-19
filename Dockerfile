FROM sparklyballs/base-vanilla-armhf

RUN \
apk add --no-cache \
	openssl \
	wget && \

apk add --no-cache --repository http://nl.alpinelinux.org/alpine/edge/main \
	apache-mod-fcgid \
	apache2-proxy \
	php5 \
	php5-cli \
	php5-curl \
	php5-fpm \
	php5-gd \
	php5-ldap \
	php5-mcrypt \
	php5-opcache \
	php5-pdo_mysql \
	php5-pdo_pgsql \
	php5-pdo_sqlite && \

# cleanup
rm -rf /var/cache/apk/*

# ports and volumes
EXPOSE 80 443
VOLUME /config



