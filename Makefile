MOVE=cd srcs &&

all: up

up:
	$(MOVE) docker-compose up -d --build

upv:
	$(MOVE) docker-compose up -d --build -v

down:
	$(MOVE) docker-compose down
#--remove-orphans
downv:
	$(MOVE) docker-compose down -v

network:
	docker network ls

ps:
	$(MOVE) docker-compose ps

logs:
	@docker logs wordpress
	@docker logs nginx
	@docker logs mariadb
#	@docker logs adminer
