#!/usr/bin/env bash

docker network rm monitoring
docker rm -f nodeexporter
docker rm -f prometheus
docker rm -f grafana
