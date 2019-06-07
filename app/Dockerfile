FROM nextcloud:fpm-alpine

# init
RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.9/main" > /etc/apk/repositories && \
    # apk update && \
    apk add aria2 sudo curl python py-pip bash && \
    pip install --upgrade youtube_dl

# ocdownloader
RUN cd ~ && \
    wget https://github.com/e-alfred/ocdownloader/archive/master.tar.gz && \
# onlyoffice
    wget https://github.com/ONLYOFFICE/onlyoffice-nextcloud/releases/download/v2.1.10/onlyoffice.tar.gz

# aria2
ADD aria2.conf /etc/aria2/aria2.conf
RUN mkdir /var/aria2 && \
    touch /var/aria2/aria2c.sess && \
    chown -R www-data:root /var/aria2 && \
    nohup sudo -u www-data aria2c -D --conf-path=/etc/aria2/aria2.conf

ADD run.sh /var/www/run.sh
RUN chmod +x /var/www/run.sh
# RUN /var/www/run.sh
CMD ["php-fpm"]