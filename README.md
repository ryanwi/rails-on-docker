# Rails 6 on Docker working example

This app demonstrates Rails 6 with PostgreSQL and Webpacker, all running in Docker.

## Initial setup
```
$ docker-compose build
$ docker-compose run web bundle exec rails db:setup
```

## Running
```
$ docker-compose up
```

## Credits/References

* https://docs.docker.com/compose/rails/
* https://rubyinrails.com/2019/03/29/dockerify-rails-6-application-setup/
* https://pragprog.com/book/ridocker/docker-for-rails-developers
* https://github.com/rails/webpacker/blob/master/docs/docker.md
