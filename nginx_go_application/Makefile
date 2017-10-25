DOCKER_COMPOSE := ../bin/docker-compose

run: 
	$(MAKE) up 
	$(MAKE) test

clean: 
	$(MAKE) down

up:
	sudo $(DOCKER_COMPOSE) up -d

down:
	sudo $(DOCKER_COMPOSE) down

exec:
	sudo $(DOCKER_COMPOSE) exec nginx /bin/bash

logs:
	sudo $(DOCKER_COMPOSE) logs -f

port:
	sudo $(DOCKER_COMPOSE) port all

ps:
	sudo $(DOCKER_COMPOSE) ps

test:
	./test.sh

