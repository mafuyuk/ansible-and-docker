#!/bin/bash
cd `dirname $0`
cd ../

mkdir -p ./cache
cache_dir=./cache

if [ -e $cache_dir/db-client-base.tar ]; then
  docker load -i $cache_dir/db-client-base.tar
else
  docker build -t db-client-base .
  docker run --rm -d --privileged --name db-client db-client-base
  ansible-playbook -i ../hosts/docker/inventory ../db_client.yml
  docker commit db-client db-client-base
  docker stop db-client
  docker save db-client-base -o $cache_dir/db-client-base.tar
fi