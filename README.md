# Keycloak for Raspberry Pi

[![dockeri.co](http://dockeri.co/image/nadahmed/rpi-keycloak)](https://registry.hub.docker.com/u/nadahmed/rpi-keycloak/)

This Docker image provides [Keycloak](http://keycloak.jboss.org/)

## Package included

- raspberry-pi-debian-openjdk:8-stretch from balenalib
- keycloak 11.0.0 Standalone

### Build Details

- [Source Repository](https://github.com/nadahmed/docker-rpi-keycloak)
- [Dockerfile](https://github.com/nadahmed/docker-rpi-keycloak/blob/master/Dockerfile)
- [DockerHub](https://registry.hub.docker.com/u/nadahmed/rpi-keycloak/)

#### Build the Docker Image

```bash
make build
```

#### Push the Docker Image to the Docker Hub

- First use a `docker login` with username, password and email address
- Second push the Docker Image to the official Docker Hub

```bash
make push
```

### Run Details

```docker
docker run --name keycloak --privileged -d -p 8180:8080 nadahmed/rpi-keycloak
```

### Also execute the following command if you want to run the container on reboot

```docker
docker update --restart unless-stopped keycloak
```

![Keycloak Welcome ScreeShot](https://github.com/nadahmed/docker-rpi-keycloak/blob/master/imagens/keycloak_welcomepage.png?raw=true)

### Login

- Open <http://ADDRESS:8180> in browser
- Login to Administration Console with username and password as `admin` and `admin`

### Forked from ruifigueiredo/docker-rpi-keycloak
