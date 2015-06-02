all: build push

build:
	docker build -t ${DOCKER_USER}/elasticsearch:1.5.2 .

push: build
	docker push ${DOCKER_USER}/elasticsearch:1.5.2

test: build
	docker run -i ${DOCKER_USER}/elasticsearch:1.5.2 /srv/elasticsearch/bin/elasticsearch -v
