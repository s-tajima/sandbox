DOCKER_COMPOSE := ../bin/docker-compose

run:
	$(MAKE) up
	sleep 60
	$(MAKE) test

clean: 
	$(MAKE) down

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

test:
	./test.sh

