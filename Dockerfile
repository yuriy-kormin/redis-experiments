FROM python:latest

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN mkdir /app
COPY main.py pyproject.toml /app/
#COPY pyproject.toml /app
#COPY README.md manage.py .env /app
#COPY ./docker/services/task-manager/docker-entrypoint.sh /app

WORKDIR /app
RUN pip3 install poetry
RUN poetry config virtualenvs.create false
RUN poetry install

CMD ["python3","main.py"]
