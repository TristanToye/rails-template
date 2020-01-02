FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client vim
RUN curl -o- -L https://yarnpkg.com/install.sh | bash

RUN mkdir /rails-template
WORKDIR /rails-template

COPY Gemfile /rails-template/Gemfile
COPY Gemfile.lock /rails-template/Gemfile.lock

RUN gem install bundler

COPY . /rails-template

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["bundle", "exec", "rails", "s", "-b", "0.0.0.0"]
