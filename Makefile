PATH=./srcs/docker-compose.yml

all: up

up:
	docker-compose -f $(PATH) up -d --build 

upv:
	docker-compose -f $(PATH) up --build 

down:
	docker-compose -f $(PATH) down
#--remove-orphans
downv:
	docker-compose -f $(PATH) down -v

network:
	docker network ls

ps:
	docker-compose -f $(PATH) ps

logs:
	@docker logs wordpress
	@docker logs nginx
	@docker logs mariadb
	@docker logs adminer