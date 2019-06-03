FROM ruby:2.6.2-alpine
RUN apk update && apk upgrade 
RUN apk add --no-cache nodejs \
                       bash \
                       postgresql-dev \
                       postgresql-libs \
                       postgresql-client \
                       neovim \
                       build-base
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
# RUN bundle config build.nokogiri --use-system-libraries
RUN bundle install
COPY . /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
