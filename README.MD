- Use [Docker](https://www.docker.com/)

### 1. Create file `.env`

- example in `.env.example`

### 2. Run all services

```bash
$ docker compose up -d
```

### 3. Run one service

```bash
$ docker compose up  ${service_name} -d
```

### 4. Bash

```bash
$ docker exec -it ${container_name} bash
```
