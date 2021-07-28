FROM ruby:2.7.2-alpine

RUN apk add --no-cache --update build-base bash tzdata \
      libxslt-dev libxml2-dev git nodejs yarn sqlite-dev

RUN mkdir /app
WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .

RUN gem update bundler
RUN bundle install --jobs 5 --retry 3

COPY package.json .
COPY yarn.lock .
RUN yarn install
