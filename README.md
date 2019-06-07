# cloudpan
☁️Nextcloud Drive Docker file.

# require
- docker-compose
- git
- nextcloud/docker

# usage
```
git clone https://github.com/zhzLuke96/cloudpan.git --depth=1
cd cloudpan
docker-compose build --pull
docker-compose up -d
sudo bash ./office.sh
docker exec app-server bash -c /var/www/run.sh
```
one-line
```
git clone https://github.com/zhzLuke96/cloudpan.git --depth=1 && cd cloudpan && docker-compose build --pull &&  docker-compose up -d && sudo bash ./office.sh && docker exec app-server bash -c /var/www/run.sh
```

# apps
- ocdownloader
- onlyoffice