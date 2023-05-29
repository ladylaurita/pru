#!/bin/bash

sudo mkdir -p /srv/docker/grafana/data
docker-compose up -d
sudo chown -R 472:472 /srv/docker/grafana/data

echo "Grafana: http://192.168.0.19:3000 - admin/admin"

echo
echo "Current database list"
curl -G http://192.168.0.19:8086/query?pretty=true --data-urlencode "db=glances" --data-urlencode "q=SHOW DATABASES"

echo
echo "Create a new database ?"
echo "curl -XPOST 'http://192.168.0.19:8086/query' --data-urlencode 'q=CREATE DATABASE mydb'"
