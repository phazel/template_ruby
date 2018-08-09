FROM ruby:2.5.1

WORKDIR /app

COPY app/ /app

RUN gem install bundler --version 1.16.2
RUN bundle install --without development test

ENTRYPOINT ["./run.sh"]
