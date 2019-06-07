FROM nextcloud:fpm-alpine

RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.9/main" > /etc/apk/repositories

# RUN apk update; \
RUN apk add aria2 sudo curl python py-pip bash;

# https://github.com/e-alfred/ocdownloader
RUN wget https://github.com/e-alfred/ocdownloader/archive/master.tar.gz && \
    tar xzvf  master.tar.gz && \
    mv ocdownloader-master ocdownloader && \
    mv ocdownloader /var/www/html/apps/ && \
    rm master.tar.gz

# install youtube-dl
RUN pip install --upgrade youtube_dl

# aria2
ADD run.sh /var/www
RUN chmod +x /var/www/run.sh

RUN mkdir /var/aria2; \
    touch /var/aria2/aria2c.sess; \
    chown -R www-data:root /var/aria2

RUN mkdir /etc/aria2
ADD ./aria2.conf /etc/aria2

RUN sudo -u www-data aria2c -D --conf-path=/etc/aria2/aria2.conf
CMD ["php-fpm"]
# CMD ["/bin/bash", "-c", "/var/www/run.sh"]