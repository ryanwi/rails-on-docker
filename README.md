# Rails 6 on Docker working example

This app demonstrates Rails 6 with PostgreSQL and Webpacker, all running in Docker.

## Initial setup
```
$ docker-compose build
$ docker-compose run web bundle exec rails db:setup
```

## running
```
$ docker-compose up
```
