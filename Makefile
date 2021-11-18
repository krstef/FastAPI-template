POETRY=poetry
RUN_IN_POETRY=$(POETRY) run

# COMMANDS FOR DOCKER ENVIRONMENT
run-docker:
	docker-compose -f docker-compose.yaml up --build

stop-docker:
	docker-compose -f docker-compose.yaml down

# COMMANDS FOR LOCAL POETRY/VIRTUAL ENVIRONMENT
shell:
	$(POETRY) shell

install:
	$(POETRY) install

update:
	$(POETRY) update

add:
	$(POETRY) add

run:
	$(RUN_IN_POETRY) python src/server.py

# COMMANDS FOR LINTERS/FORMATTERS
formatter:
	$(RUN_IN_POETRY) isort .
	$(RUN_IN_POETRY) black .

typing-check:
	$(RUN_IN_POETRY) mypy --config-file pyproject.toml --strict .
