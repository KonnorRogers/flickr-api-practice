# README

## Purpose

Part of [TheOdinProject - Working with external APIs](https://www.theodinproject.com/courses/ruby-on-rails/lessons/apis) 
and learning to deal with external APIs.
Documentation obtained from [Flickr API documentation](https://www.flickr.com/services/api/).

## Getting started

### Prereqs
* Ruby 2.6.2
* Rails 5.2.3
* Postgresql

#### Optional
* Docker
* Docker-compose

### Running locally

```bash
docker-compose build

# If on linux, some permission issues may arise, run:
sudo chown -R $USER:$USER .

docker-compose up
docker-compose exec web rails db:create
docker-compose exec web rails db:migrate

# Add an API here
docker-compose run --rm -it -e EDITOR="vim --wait" bin/rails credentials:edit
```

Your server is now available @ localhost:3000

### Running the test suite
```bash
docker-compose build # if not previously built
docker-compose run --rm web rails test

# Optionally, to run using an existing container
docker-compose
docker-compose exec web rails test
```
