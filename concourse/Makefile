DOCKER_COMPOSE := ../bin/docker-compose
export CONCOURSE_EXTERNAL_URL=http://127.0.0.1:8080

run:
	$(MAKE) create_key
	$(MAKE) up

clean: 
	$(MAKE) down
	$(MAKE) remove_key

create_key:
	mkdir -p keys/web keys/worker
	ssh-keygen -t rsa -f ./keys/web/tsa_host_key -N ''
	ssh-keygen -t rsa -f ./keys/web/session_signing_key -N ''
	ssh-keygen -t rsa -f ./keys/worker/worker_key -N ''
	cp ./keys/worker/worker_key.pub ./keys/web/authorized_worker_keys
	cp ./keys/web/tsa_host_key.pub ./keys/worker

remove_key:
	rm -rf ./keys/*

up:
	sudo -E $(DOCKER_COMPOSE) up -d

init:
	bin/fly -t main login -c http://127.0.0.1:18080/ -u concourse -p changeme
	bin/fly -t main set-pipeline -p hello-world -c pipelines/01_hello/task.yml --non-interactive
	bin/fly -t main set-pipeline -p simple-app -c pipelines/02_clone_and_test/pipeline.yml --non-interactive
	bin/fly -t main unpause-pipeline --pipeline simple-app
 

down:
	sudo -E $(DOCKER_COMPOSE) down

logs:
	sudo $(DOCKER_COMPOSE) logs -f

port:
	sudo $(DOCKER_COMPOSE) port all

ps:
	sudo $(DOCKER_COMPOSE) ps

test:
	./test.sh

