all:
	docker compose up --build
	# --build rebuilds the Docker images
	# -d runs in detached (background) mode
	# -f allows specifying a custom docker-compose file

build:
	docker compose build --no-cache  -t

up:
	docker compose up

down:
	docker compose down -v

restart: down up
	echo "Containers restarted successfully."

clean:
	docker compose down -v
	docker system prune -f
logs:
	docker compose logs 

