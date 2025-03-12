all :
	docker compose up -d --build
	# --buld rebuild le docker
	# -d run in background mode
	# -f to choose dockerfile

	# docker run -it test_service

down:
	docker compose down

clean:
	docker rm -f $$(docker ps -aq)