FROM ruby:3.0.0

WORKDIR /blog-app

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails s -p 3000 -b '0.0.0.0'"]