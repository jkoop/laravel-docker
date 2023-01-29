# Laravel Docker

A basic, general-purpose, production-ready docker image for running a Laravel site.

## Usage

```yml
# /path/to/laravel/base/docker-compose.prod.yml
version: "3"
services:
  app:
    image: jkoop/laravel
    restart: unless-stopped
    volumes:
      - .:/app
  db:
    image: mariadb
    restart: unless-stopped
    environment:
      MYSQL_ROOT_PASSWORD: "${DB_PASSWORD}"
      MYSQL_DATABASE: "${DB_DATABASE}"
      MYSQL_USER: "${DB_USERNAME}"
      MYSQL_PASSWORD: "${DB_PASSWORD}"
      MYSQL_ALLOW_EMPTY_PASSWORD: "yes"
    volumes:
      - ./db-data:/var/lib/mysql
  # and whatever other services you have
```
