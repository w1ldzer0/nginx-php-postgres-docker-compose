#Docker-compose for regular php app
It's working base template for apps used NGINX php-fpm and postgres.

## Versions:
+ Nginx - latest
+ PHP - 7.4
+ PostgreSQL - 12

All backend sources need to store in subdir `backend`.

## Running
`cp .env.example .env`

Change environment variables and up docker-compose

`docker-compose up -d`

After that your project will be able in http://localhost:${INCOME_PORT}}

