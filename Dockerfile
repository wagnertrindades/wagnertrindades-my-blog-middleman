# sudo docker build -t wagnertrindade/wagnertrindades-github-io:latest .
FROM ruby:2.3.1

WORKDIR var/app
VOLUME .:/var/app

RUN apt-get update \
    && apt-get install -y apt-utils \
    && apt-get install -y libicu-dev \
    && apt-get install -y nodejs --no-install-recommends

RUN gem install middleman --source http://rubygems.org \
    && gem install bundler --source http://rubygems.org

COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock

RUN bundle install
