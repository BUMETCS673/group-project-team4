# Steps to test locally

```
docker build -t angular-nginx-demo .
docker run --name angular-nginx-demo -d -p 8080:80 angular-nginx-demo
```
In your browser go to http://localhost:8080/

Cleanup:
```
docker container ls
docker stop CONTAINER_ID
docker rm CONTAINER_ID
```