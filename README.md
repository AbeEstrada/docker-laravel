## Setup

```
docker-compose up -d
docker run --rm --interactive --tty --volume $PWD:/app composer create-project --prefer-dist laravel/laravel www
docker-compose exec app php artisan preset react
```

It creates two containers, `app` is a PHP container to run a dev server and the code, and `db` is a MySQL container. Both containers configuration are inside the `docker` directory.

Then runs `composer` inside a container to install Laravel and all its dependencies.

Optional: use React for the frontend.

## Dev

```
docker-compose up -d
docker-compose exec app php artisan serve --host=0.0.0.0
```

The local dev server runs using the `app` container.

## Frontend

```
cd www
npm run hot
```

The frontend is compiled and reloads on every change.
