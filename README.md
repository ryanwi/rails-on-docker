# Rails 6 on Docker demo application

![Ruby](https://github.com/ryanwi/rails-on-docker/workflows/Ruby/badge.svg)

This app demonstrates Rails 6 with PostgreSQL and Webpack (with jsbundling-rails), all running in Docker.

**NOTE:** [There is also an example Rails 7 application working in Docker without Webpack or node.js](https://github.com/ryanwi/rails7-on-docker)

## Initial setup
```
cp .env.example .env
docker compose build
docker compose run --rm web bin/rails db:setup
```

## Running the Rails app
```
docker compose up
```

## Running the Rails console
When the app is already running with `docker-compose` up, attach to the container:
```
docker compose exec web bin/rails c
```

When no container running yet, start up a new one:
```
docker compose run --rm web bin/rails c
```

## Running tests
```
docker compose run --rm web bundle exec rspec
```

## Updating gems
```
docker compose run --rm web bundle update
docker compose up --build
```

## Updating Yarn packages
```
docker compose run --rm web yarn upgrade
docker compose up --build
```

## Webpacker retirement

Many Rails 6 apps will be or were created with the Webpacker gem. On January 19, 2022, [Webpacker announed its retirement](https://github.com/rails/webpacker#webpacker-has-been-retired-). As a result, it has been replaced in this repo with jsbundling-rails based on the recommendation in the announcement.

## Credits/References

* https://docs.docker.com/compose/rails/
* https://rubyinrails.com/2019/03/29/dockerify-rails-6-application-setup/
* https://pragprog.com/book/ridocker/docker-for-rails-developers
* https://evilmartians.com/chronicles/ruby-on-whales-docker-for-ruby-rails-development
* https://medium.com/@cristian_rivera/cache-rails-bundle-w-docker-compose-45512d952c2d
* https://github.com/rails/jsbundling-rails/blob/main/docs/switch_from_webpacker.md
* https://dev.to/thomasvanholder/how-to-migrate-from-webpacker-to-jsbundling-rails-esbuild-5f2

