FROM python:3.9

RUN mkdir /code

COPY /src /code
COPY pyproject.toml /code

WORKDIR /code
ENV PYTHONPATH=${PYTHONPATH}:${PWD}

RUN pip3 install poetry
RUN poetry config virtualenvs.create false
RUN poetry install

USER 1000:1000

EXPOSE 8000

CMD ["uvicorn", "--reload", "--host=0.0.0.0", "--port=8000", "server:app"]