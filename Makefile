POETRY=poetry
RUN_IN_POETRY=$(POETRY) run

# COMMANDS FOR DOCKER ENVIRONMENT
run-docker:
	docker-compose -f docker-compose.yaml up --build

stop-docker:
	docker-compose -f docker-compose.yaml down

# COMMANDS FOR LOCAL POETRY/VIRTUAL ENVIRONMENT
shell:
	$(POETRY) shell  # Spawn poetry shell

install:
	$(POETRY) install  # Installs dependencies from poetry.lock to local environment

update:
	$(POETRY) update  # Updates poetry.lock according to pyproject.toml

add:
	$(POETRY) add  # Adds a new dependency to pyproject.toml

run:
	$(RUN_IN_POETRY) uvicorn src.server:app --host 0.0.0.0 --reload --port 8000  # run app in local environment

# COMMANDS FOR LINTERS/FORMATTERS
formatter:
	$(RUN_IN_POETRY) isort src/
	$(RUN_IN_POETRY) black src/

typing-check:
	$(RUN_IN_POETRY) mypy --config-file pyproject.toml --strict .
