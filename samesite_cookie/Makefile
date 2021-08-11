DOCKER_COMPOSE := docker-compose

run: 
	$(MAKE) up 
	$(MAKE) test

clean: 
	$(MAKE) down

up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

exec:
	$(DOCKER_COMPOSE) exec nginx /bin/bash

logs:
	$(DOCKER_COMPOSE) logs -f

port:
	$(DOCKER_COMPOSE) port all

ps:
	$(DOCKER_COMPOSE) ps
