all: up

up:
	docker-compose -f ./srcs/docker-compose.yml up -d --build 

down:
	docker-compose -f ./srcs/docker-compose.yml down
#--remove-orphans

network:
	docker network ls

ps:
	docker-compose -f ./srcs/docker-compose.yml ps