# Rails 6 on Docker working example

This app demonstrates Rails 6 with PostgreSQL and Webpacker, all running in Docker.

## Initial setup
```
$ docker-compose build
$ docker-compose run --rm web bundle exec rails db:setup
```

## Running server locally
```
$ docker-compose up
```

## Running tests
```
$ docker-compose run --rm web bundle exec rspec
```

## Updating gems
```
$ docker-compose run --rm web bundle install
$ docker-compose up --build
```

## Updating Yarn packages
```
$ docker-compose run --rm web yarn upgrade
$ docker-compose up --build
```

## Credits/References

* https://docs.docker.com/compose/rails/
* https://rubyinrails.com/2019/03/29/dockerify-rails-6-application-setup/
* https://pragprog.com/book/ridocker/docker-for-rails-developers

For Webpack dev server:
* https://github.com/rails/webpacker/blob/master/docs/docker.md
* https://github.com/rails/webpacker/issues/863
* https://github.com/rails/webpacker/issues/1019

For Bootstrap

* https://gorails.com/forum/install-bootstrap-with-webpack-with-rails-6-beta
