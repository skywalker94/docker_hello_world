# docker_hello_world


A simple docker hello world project.

## Pre-setup

1. install docker
> sudo apt install docker && sudo apt install docker.io

2. install docker-compose [official documentation](https://docs.docker.com/compose/install/)

> linux instructions: these could be Obsolete. Follow the official documentation linked above

> sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

> sudo chmod +x /usr/local/bin/docker-compose

3. Check versions
> docker -v

> docker-compose -v

4. In case the installation does not go smoothly, just uninstall and reinstall the wonky package

## Setup

1. clone the repo onto a linux server

2. run:
> make build

> make run
