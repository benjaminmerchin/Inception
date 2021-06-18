all: up

up:
	docker-compose -f ./srcs/docker-compose.yml up -d --build 

upv:
	docker-compose -f ./srcs/docker-compose.yml up --build 

down:
	docker-compose -f ./srcs/docker-compose.yml down
#--remove-orphans
downv:
	docker-compose -f ./srcs/docker-compose.yml down -v

network:
	docker network ls

ps:
	docker-compose -f ./srcs/docker-compose.yml ps

logs:
	@docker logs wordpress
	@docker logs nginx
	@docker logs mariadb