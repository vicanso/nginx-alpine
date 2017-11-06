# actp-nginx

生成nginx镜像，此nginx的upstream为varnish，所以配置十分简单，只是简单的做反向代理，hash基于request_uri


## docker build

```
docker build -t vicanso/nginx .
```


## docker run 

nginx的日志通过sys log，默认的地址为`SYS_LOG:3412`，因此需要配置相应的host

production

```
docker run -d --restart=always \
  --net="host" \
  -v /data/nginx:/etc/nginx/logs \
  -v /data/nginx/cert:/etc/nginx/cert:ro \
  --name=snack vicanso/nginx 
```

test

```
docker run -d --restart=always \
  --net="host" \
  -v /data/nginx:/etc/nginx/logs \
  -v /data/nginx/cert:/etc/nginx/cert:ro \
  --name=snack vicanso/nginx
```
