DOCKER_COMPOSE := ../bin/docker-compose

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

run:
	mysql -h 127.0.0.1 -u root -ppass -P 23306 repltest -e "select * from time_test;"
	mysql -h 127.0.0.1 -u root -ppass -P 23316 repltest -e "select * from time_test;"

