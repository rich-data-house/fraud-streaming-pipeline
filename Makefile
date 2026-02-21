.PHONY: setup lint format test

setup:
	pip install -r requirements.txt -r requirements-dev.txt
	pre-commit install

lint:
	ruff check .

format:
	ruff format .

test:
	pytest