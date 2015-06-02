all: build push

build:
	docker build -t ${USER}/elasticsearch:1.5.2 .

push: build
	docker push ${USER}/elasticsearch:1.5.2

test: build
	docker run -i ${USER}/elasticsearch:1.5.2 /srv/elasticsearch/bin/elasticsearch -v
