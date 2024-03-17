- Use [Docker](https://www.docker.com/)

## Create file `.env`

- example in `.env.example`

## Run all services

```bash
$ docker compose up -d
```

## Run one service

```bash
$ docker compose up  ${service_name} -d
```

## Bash

```bash
$ docker exec -it ${container_name} bash
```
