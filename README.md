# Template FastAPI application managed by Poetry
This repository serves as a minimal reference on setting up FastAPI server application.

*NOTE* - Run all commands from project root

## Running app in local virtual environment
This application is managed by [Poetry](https://python-poetry.org/).

To install Poetry on your machine, please follow [Poetry installation guide](https://python-poetry.org/docs/#installation).

One Poetry has been installed, create the virtual environment and install dependencies with:
```bash
$ make run-docker
```
See the [poetry docs](https://python-poetry.org/docs/) for information on how to add/update dependencies.

Spawn a shell inside the virtual environment with:
```bash
$ make shell
```

Start the application in local virtual environment:
```bash
$ make run
```

## Running app in docker-compose environment
As a prerequisite, [docker](https://docs.docker.com/get-docker/) &
[docker-compose](https://docs.docker.com/compose/install/) have to be installed.

To run app in docker-compose environment:
```bash
$ make run-docker
```

To clean up docker containers:
```bash
$ make stop-docker
```

## How to develop
Recommended setup for usual development practices is to use `make run-docker`.
In that mode, `uvicorn` is running in reload on save mode.

However, for specific tasks like package management, it is simpler to install virtual environment managed by `Poetry`.

For managing code readability and unifying coding style following libraries are used:
- [black](https://black.readthedocs.io/en/stable/) -> enforces uncompromising code formatting  
- [isort](https://pypi.org/project/isort/) -> sorts the imports
- [mypy](https://mypy.readthedocs.io/en/stable/) -> enforces static typing


