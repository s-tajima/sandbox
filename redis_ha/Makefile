DOCKER_COMPOSE := ../bin/docker-compose

run: build down up redis-trib

build:
	sudo $(DOCKER_COMPOSE) build
	sudo docker build -t redis-client -f Dockerfile_redis-client .

up:
	sudo $(DOCKER_COMPOSE) up -d 

down:
	sudo $(DOCKER_COMPOSE) down

logs:
	sudo $(DOCKER_COMPOSE) logs -f

port:
	sudo $(DOCKER_COMPOSE) port all

ps:
	sudo $(DOCKER_COMPOSE) ps

redis-client:
	sudo docker run --rm -it --network redisha_default --link redis1 -v $(PWD)/mounts/client.rb:/client.rb redis-client /bin/sh

SERVICE=redis1
exec:
	sudo $(DOCKER_COMPOSE) exec $(SERVICE) /bin/bash
