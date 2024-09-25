#!/usr/bin/env bash

docker rm -f nodeexporter
docker rm -f prometheus
docker rm -f grafana
docker network rm monitoring
