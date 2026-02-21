VENV := .venv
PY := $(VENV)/bin/python
RUFF := $(VENV)/bin/ruff
PYTEST := $(VENV)/bin/pytest
PRECOMMIT := $(VENV)/bin/pre-commit

.PHONY: setup lint format test precommit

setup:
	$(PY) -m pip install -r requirements.txt -r requirements-dev.txt
	$(PRECOMMIT) install

lint:
	$(RUFF) check .

format:
	$(RUFF) format .

test:
	$(PYTEST)

precommit:
	$(PRECOMMIT) run --all-files