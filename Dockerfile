FROM ruby:2.7

RUN mkdir /app
WORKDIR /app

ADD Gemfile Gemfile.lock /app/
RUN bundle update --bundler
RUN bundle install -j 8

ADD . /app
