.PHONY: test
deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt
# test:
#	pip install

lint:
	flake8 hello_world test