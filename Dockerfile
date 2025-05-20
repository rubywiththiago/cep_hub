FROM ruby:3.3-alpine

RUN apk add --no-cache build-base tzdata

WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]
