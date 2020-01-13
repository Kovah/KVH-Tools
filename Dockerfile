FROM ruby:2.7

RUN gem install -N rails

RUN mkdir -p /app
WORKDIR /app

COPY ./Gemfile /app
COPY ./Gemfile.lock /app

RUN bundle install
