DOCKER_COMPOSE := ../bin/docker-compose

build:
	docker build -t swagger-go-echo . 

run:
	docker run -it swagger-go-echo


generate/client:
	docker run -v $(shell pwd):/local openapitools/openapi-generator-cli:v3.3.4 generate -i /local/swagger.yml -g go -o /local/out/go

generate/server:
	docker run -v $(shell pwd):/local openapitools/openapi-generator-cli:v3.3.4 generate -i /local/swagger.yml -g go-gin-server -o /local/out/go-gin-server

down:
	$(DOCKER_COMPOSE) down

logs:
	$(DOCKER_COMPOSE) logs -f

port:
	$(DOCKER_COMPOSE) port all

ps:
	$(DOCKER_COMPOSE) ps
