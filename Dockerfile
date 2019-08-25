FROM ruby:2.6.3

RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends nodejs

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app/
RUN bundle install

COPY . /usr/src/app/

CMD ["rails", "s", "-b", "0.0.0.0"]