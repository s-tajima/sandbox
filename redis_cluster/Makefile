DOCKER_COMPOSE := ../bin/docker-compose

build:
	sudo $(DOCKER_COMPOSE) build

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

SERVICE=redis_sh1_master
exec:
	sudo $(DOCKER_COMPOSE) exec $(SERVICE) /bin/bash
