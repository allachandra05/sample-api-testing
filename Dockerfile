FROM python:3.12
WORKDIR /app
COPY . .
RUN curl -sSL https://install.python-poetry.org | python3 - --version 1.8.3
RUN /root/.local/bin/poetry install
EXPOSE 3003
ENTRYPOINT ["/app/start-local.sh"]