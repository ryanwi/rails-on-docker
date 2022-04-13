FROM ruby:3.1.2-slim

RUN apt-get update -qq && apt-get install -yq --no-install-recommends \
    build-essential \
    gnupg2 \
    curl \
    less \
    git \
    libpq-dev \
    postgresql-client \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add Node.js to sources list
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -

# Install Node.js version that will enable installation of yarn
RUN apt-get install -y --no-install-recommends \
    nodejs \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install -g yarn

RUN gem update --system && gem install bundler

# Use what the base image provides rather than create our own  app directory
WORKDIR /usr/src/app/

# Add a script to be executed every time the container starts.
COPY .dockerdev/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
