.PHONY: test
deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt
# test:
#	pip install

lint:
	flake8 hello_world test

docker_build:
	docker build -t hello-world-printer .

USERNAME=olatesterka
TAG=$(USERNAME)/hello-world-printer
docker_push:
	docker login --username $(USERNAME) --password $(PASSWORD) ; \
	docker tag hello-world-printer $(TAG); \
	docker push $(TAG); \
	docker logout;

