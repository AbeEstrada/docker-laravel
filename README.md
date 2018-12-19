## Setup

```
docker-compose up -d
docker run --rm --interactive --tty --volume $PWD:/app composer create-project --prefer-dist laravel/laravel www
docker-compose exec app php artisan preset react
```

## Dev

```
docker-compose up -d
docker-compose exec app php artisan serve --host=0.0.0.0
```

## Frontend

```
cd www
npm run hot
```
