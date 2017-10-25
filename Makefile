DOCKER_COMPOSE := bin/docker-compose
PROJECT := mysql_replication

setup:

up:
	sudo $(DOCKER_COMPOSE) -f $(PROJECT)/docker-compose.yml up

down:
	sudo $(DOCKER_COMPOSE) -f $(PROJECT)/docker-compose.yml down

logs:
	sudo $(DOCKER_COMPOSE) -f $(PROJECT)/docker-compose.yml logs -f

port:
	sudo $(DOCKER_COMPOSE) -f $(PROJECT)/docker-compose.yml port all

ps:
	sudo $(DOCKER_COMPOSE) -f $(PROJECT)/docker-compose.yml ps
