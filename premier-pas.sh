#!/usr/bin/bash


## Suppression de la précédente version de Docker
sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine


## Mise en place du dépôt Docker
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo


## Installation de docker
sudo dnf upgrade
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker


## Premier pas 

docker ps
docker run nginx:latest
docker ps -a
docker run -d nginx:latest
