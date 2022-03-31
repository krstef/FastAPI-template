FROM python:3.9

RUN mkdir /code

WORKDIR /code

ADD poetry.lock /code
ADD pyproject.toml /code

RUN pip3 install poetry
RUN poetry config virtualenvs.create false
RUN poetry install

ADD --chown=1000:1000 src /code/src/

USER 1000:1000

EXPOSE 8000

CMD ["uvicorn", "--reload", "--host=0.0.0.0", "--port=8000", "src.server:app"]