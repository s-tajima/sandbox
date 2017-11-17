DOCKER_COMPOSE := ../bin/docker-compose

setup:
	sudo $(DOCKER_COMPOSE) run web rails new . --force --database=postgresql
	sudo chown -R $$USER .
	sudo $(DOCKER_COMPOSE) build

up:
	sudo $(DOCKER_COMPOSE) up -d 
	sudo $(DOCKER_COMPOSE) run web rake db:create

down:
	sudo $(DOCKER_COMPOSE) down
	sudo rm -f tmp/pids/server.pid

logs:
	sudo $(DOCKER_COMPOSE) logs -f

port:
	sudo $(DOCKER_COMPOSE) port all

ps:
	sudo $(DOCKER_COMPOSE) ps

SERVICE=web
exec:
	sudo $(DOCKER_COMPOSE) exec $(SERVICE) /bin/bash
