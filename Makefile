all: up

up:
	docker-compose -f ./rendu/docker-compose.yml up -d --build

down:
	docker-compose -f ./rendu/docker-compose.yml down

network:
	docker network ls

ps:
	docker-compose -f ./rendu/docker-compose.yml ps