FROM nextcloud:fpm-alpine

RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.9/main" > /etc/apk/repositories

# init
# RUN apk update; \
RUN apk add aria2 sudo curl python py-pip bash;

# https://github.com/e-alfred/ocdownloader
RUN pip install --upgrade youtube_dl

# aria2
RUN mkdir /var/aria2; \
    touch /var/aria2/aria2c.sess; \
    chown -R www-data:root /var/aria2

ADD run.sh /var/www
RUN chmod +x /var/www/run.sh
ADD aria2.conf /etc/aria2

# RUN bash -c /var/www/run.sh
CMD ["/bin/bash", "-c", "/var/www/run.sh"]