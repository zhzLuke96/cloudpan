FROM nextcloud:fpm-alpine

# init
RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.9/main" > /etc/apk/repositories && \
    # apk update && \
    apk add aria2 sudo curl python py-pip bash && \
    pip install --upgrade youtube_dl

# aria2
ADD aria2.conf /etc/aria2/aria2.conf
RUN mkdir /var/aria2 && \
    touch /var/aria2/aria2c.sess && \
    chown -R www-data:root /var/aria2

ADD install_apps.sh /var/www/install_apps.sh
RUN chmod +x /var/www/install_apps.sh
# RUN /var/www/run.sh
CMD ["php-fpm"]