DOCKER_COMPOSE := ../bin/docker-compose

setup:
	$(DOCKER_COMPOSE) run web rails new . --force --database=postgresql
	chown -R $$USER .
	$(DOCKER_COMPOSE) build

up:
	$(DOCKER_COMPOSE) up -d
	$(DOCKER_COMPOSE) run web rake db:create

down:
	$(DOCKER_COMPOSE) down
	rm -f tmp/pids/server.pid

logs:
	$(DOCKER_COMPOSE) logs -f

port:
	$(DOCKER_COMPOSE) port all

ps:
	$(DOCKER_COMPOSE) ps

SERVICE=web
exec:
	$(DOCKER_COMPOSE) exec $(SERVICE) /bin/bash
