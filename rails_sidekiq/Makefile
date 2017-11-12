setup:
	sudo ../bin/docker-compose run web rails new . --force --database=postgresql
	sudo chown -R $$USER .
	sudo ../bin/docker-compose build

up:
	sudo ../bin/docker-compose up -d 
	sudo ../bin/docker-compose run web rake db:create

down:
	sudo ../bin/docker-compose down
	sudo rm -f tmp/pids/server.pid

logs:
	sudo ../bin/docker-compose logs -f
	
