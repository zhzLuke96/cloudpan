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
docker exec app-server bash -c /var/www/run.sh
```
one-line
```
git clone https://github.com/zhzLuke96/cloudpan.git --depth=1 && cd cloudpan && docker-compose build --pull &&  docker-compose up -d && docker exec app-server bash -c /var/www/run.sh
```

#### config onlyoffice
> 请先应用onlyoffice app再执行这个命令
```
sudo bash ./office.sh
```
# apps
- ocdownloader
- onlyoffice