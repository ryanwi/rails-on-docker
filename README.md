# Rails 6 on Docker demo application

![Ruby](https://github.com/ryanwi/rails-on-docker/workflows/Ruby/badge.svg)

This app demonstrates Rails 6 with PostgreSQL and Webpacker, all running in Docker.

## Initial setup
```
$ docker compose build
$ docker compose run --rm web bin/rails db:setup
```

## Running the Rails app
```
$ docker compose up
```

## Running the Rails console
When the app is already running with `docker-compose` up, attach to the container:
```
$ docker compose exec web bin/rails c
```

When no container running yet, start up a new one:
```
$ docker compose run --rm web bin/rails c
```

## Running tests
```
$ docker compose run --rm web bundle exec rspec
```

## Updating gems
```
$ docker compose run --rm web bundle update
$ docker compose up --build
```

## Updating Yarn packages
```
$ docker compose run --rm web yarn upgrade
$ docker compose up --build
```

## Credits/References

* https://docs.docker.com/compose/rails/
* https://rubyinrails.com/2019/03/29/dockerify-rails-6-application-setup/
* https://pragprog.com/book/ridocker/docker-for-rails-developers
* https://evilmartians.com/chronicles/ruby-on-whales-docker-for-ruby-rails-development
* https://medium.com/@cristian_rivera/cache-rails-bundle-w-docker-compose-45512d952c2d

For Webpack dev server:
* https://github.com/rails/webpacker/blob/master/docs/docker.md
* https://github.com/rails/webpacker/issues/863
* https://github.com/rails/webpacker/issues/1019
