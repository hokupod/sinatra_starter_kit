FROM ruby:2.6.3

ADD . /home
WORKDIR /home
RUN gem install bundler
RUN bundle install

CMD ["bundle", "exec", "rackup", "config.ru", "-o", "0.0.0.0", "-p", "9292"]
