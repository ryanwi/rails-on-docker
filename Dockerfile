FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y nodejs

WORKDIR /usr/src/app/

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

COPY Gemfile* package.json yarn.lock /usr/src/app/
RUN bundle install
RUN npm install -g yarn
# RUN yarn -v
# RUN which yarn
# RUN yarn config current
RUN yarn install --check-files

COPY . /usr/src/app/

EXPOSE 3000

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
