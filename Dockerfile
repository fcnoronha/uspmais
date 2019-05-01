FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Docker directories
RUN mkdir /uspmais
WORKDIR /uspmais
COPY Gemfile /uspmais/Gemfile
COPY Gemfile.lock /uspmais/Gemfile.lock
RUN bundle install
COPY . /uspmais

# Script to be executed every time the container starts
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process, put DB on
CMD ["rails", "server", "-b", "0.0.0.0"]
