
build:
	docker-compose up --build

clean:
	docker stop flexget_app
	docker rm flexget_app
	docker rmi $(docker images --format '{{.Repository}}:{{.Tag}}' | grep 'jojolabs/flexget')
