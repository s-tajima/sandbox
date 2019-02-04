OS := $(shell uname)

setup:
	mkdir -p ./bin/
	curl -L https://dl.bintray.com/docker-compose/master/docker-compose-$(OS)-x86_64 > ./bin/docker-compose
	chmod +x ./bin/docker-compose
