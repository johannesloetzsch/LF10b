#!/usr/bin/env bash

docker network create -d bridge monitoring
docker run --name=nodeexporter -d --net=monitoring -p 9100:9100 -v "/:/host:ro,rslave" --pid="host" quay.io/prometheus/node-exporter:latest --path.rootfs=/host
docker run --name=prometheus -d --net=monitoring -p 9090:9090 -v ./prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus
docker run --name=grafana -d --net=monitoring -p 3000:3000 grafana/grafana-enterprise
