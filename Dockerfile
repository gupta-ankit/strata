FROM ruby:3.1.2 AS rails-toolbox

WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

CMD ["rails", "server", "-p", "3000", "-b", "0.0.0.0"] 
