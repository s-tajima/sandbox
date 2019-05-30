DOCKER_COMPOSE := ../bin/docker-compose

MOUNT_PATH := /go/src/github.com/go-swagger-sample

docker/build:
	docker build -t swagger-go-echo . 

docker/bash:
	docker run -v $(shell pwd)/src:$(MOUNT_PATH) -it swagger-go-echo /bin/bash

docker/generate:
	docker run -v $(shell pwd):$(MOUNT_PATH) -it swagger-go-echo swagger generate server -f swagger.yml -A SwaggerExp1

down:
	$(DOCKER_COMPOSE) down

logs:
	$(DOCKER_COMPOSE) logs -f

port:
	$(DOCKER_COMPOSE) port all

ps:
	$(DOCKER_COMPOSE) ps
