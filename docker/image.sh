#!/bin/bash

docker build -t base .
docker run --rm -d --privileged --name db-client base
ansible-playbook -i ../hosts/docker/inventory ../db_client.yml