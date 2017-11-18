DOCKER_COMPOSE := ../bin/docker-compose

run: build down up redis-trib

build:
	sudo $(DOCKER_COMPOSE) build
	sudo docker build -t redis-trib -f Dockerfile_redis-tirb .

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

redis-trib:
	sudo docker run --network=host --rm -it redis-trib create \
		--replicas 1 \
		127.0.0.1:17010 \
		127.0.0.1:17011 \
		127.0.0.1:17020 \
		127.0.0.1:17021 \
		127.0.0.1:17030 \
		127.0.0.1:17031

PORT=17010
redis-cli:
	sudo docker run --network=host --rm -it redis redis-cli -h 127.0.0.1 -p $(PORT)

SERVICE=redis_sh1_master
exec:
	sudo $(DOCKER_COMPOSE) exec $(SERVICE) /bin/bash
