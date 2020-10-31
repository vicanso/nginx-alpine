# actp-nginx

生成nginx镜像，此nginx的upstream为varnish，所以配置十分简单，只是简单的做反向代理，hash基于request_uri。

配置文件参考：https://github.com/h5bp/server-configs-nginx


## docker build

```
docker build -t vicanso/nginx .
```


## docker run 

production

```
docker run -it --rm \
  -v $PWD:/etc/nginx \
  nginx:alpine
```

test

```
docker run -d --restart=always \
  --net="host" \
  -v /data/nginx:/etc/nginx/logs \
  -v /data/nginx/cert:/etc/nginx/cert:ro \
  --name=snack nginx:alpine 
```
