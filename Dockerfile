FROM ruby:2.6.5-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    curl \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /usr/src/app/

# Install node version that will enable installation of yarn
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -

RUN apt-get install -y --no-install-recommends \
    nodejs \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY Gemfile* package.json yarn.lock /usr/src/app/
RUN gem install bundler -v 1.17.2
RUN bundle install
RUN npm install -g yarn
RUN yarn install

COPY . /usr/src/app/

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
