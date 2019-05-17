#How to build a docker image

```bash
docker build -t magic-nginx .
docker run -p 80:80 --name magic magic-nginx
docker stop magic
docker rm magic
docker rmi magic-nginx 
```