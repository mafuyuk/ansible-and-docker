# ansible-and-docker
Dockerで立てた環境にAnsibleを流し込む

## 環境構築
```bash
$ cd docker
$ sh ./bin/build-image.sh
$ docker-compose up -d
$ docker exec -it docker_db-client_1 /bin/bash
[[root@aaaaaaaa] mysql -hdb-server -p

```
 