setup:
	python3 -m venv ~/.project-ml-microservice-kubernetes
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	hadolint Dockerfile

all: install lint test
