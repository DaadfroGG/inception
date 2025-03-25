all:
	docker compose up -d --build
	# --build rebuilds the Docker images
	# -d runs in detached (background) mode
	# -f allows specifying a custom docker-compose file

build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

restart: down up
	echo "Containers restarted successfully."

clean:
	docker rm -f $$(docker ps -aq)
	docker volume prune -f  # Removes unused volumes

logs:
	docker compose logs 

