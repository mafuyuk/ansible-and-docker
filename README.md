# ansible-and-docker
Dockerで立てた環境にAnsibleを流し込む

## 環境構築
```bash
$ docker-compose up -d
$ ansible-playbook -i hosts/docker/inventory client_server.yml
```
 