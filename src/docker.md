# [Docker](https://docs.docker.com/)

## Hallo Welt

```bash
cd examples/docker/hallo
cat Dockerfile

docker build -t hallo .
docker images

docker run hallo
```


## reales Praxisbeispiel: Hedegedoc

```bash
cd examples/docker/hedgedoc
less Dockerfile

docker build -t hedgedoc .
docker images

docker run -p 3000:3000 hededoc
```
> [http://localhost:3000/](http://localhost:3000/)


## mehrere Anwendungscontainer: Prometheus

```bash
cd examples/docker/prometheus

docker network create -d bridge monitoring
docker run --name=nodeexporter -d --net=monitoring -p 9100:9100 -v "/:/host:ro,rslave" --pid="host" quay.io/prometheus/node-exporter:latest --path.rootfs=/host
docker run --name=prometheus -d --net=monitoring -p 9090:9090 -v ./prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus
docker run --name=grafana -d --net=monitoring -p 3000:3000 grafana/grafana-enterprise
```

### [compose.yaml](https://docs.docker.com/compose/)
