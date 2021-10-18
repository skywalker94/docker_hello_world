# docker_hello_world


A simple docker hello world project.

Hope this helps a few fellow wandering souls on their journey to dockertopia.

## Pre-setup

1. install docker
> sudo apt install docker && sudo apt install docker.io

2. install docker-compose [official documentation](https://docs.docker.com/compose/install/)

linux instructions: these could be Obsolete. Follow the official documentation linked above

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


## Dockerfile Explanation
> FROM python:3.8-alpine

Use an image from [dockerhub](https://hub.docker.com/_/python). Add an appropriate 'singletag' like `3.8-alpine` after `python:`

> WORKDIR .

set your work directory. The `.` is the current directory

> COPY lib.txt .

copy your dependencies file across to the container. you can run: `pip freeze > lib.txt` before building to create the dependency file.

> RUN pip install -r lib.txt

this is so that you get your dependencies installed. It's basically `pip install`ing each line in `lib.txt`. Our lib.txt is blank because out code does not require external libraries (outside the python version)

> COPY /. .

clone all your files into the container

> CMD ["python", "main.py"]

CMD is basically a RUN command **AFTER** you have created the docker container. any CMD command runs **INSIDE**
