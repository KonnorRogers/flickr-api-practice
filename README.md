# README

## Purpose

Part of [TheOdinProject - Working with external APIs](https://www.theodinproject.com/courses/ruby-on-rails/lessons/apis) 
and learning to deal with external APIs.
Documentation obtained from [Flickr API documentation](https://www.flickr.com/services/api/).

## What it looks like

![Gif of the website in use](/public/flickr-api.gif)

## Getting started

### Prereqs
* Ruby 2.6.2
* Rails 5.2.3
* Postgresql
* docker / docker-compose

### Additional Tools
* dotenv
* flickraw

### Add your flickr api key

Obtain your flickr api key here [Link to flickr api](https://www.flickr.com/services/api/)

Then, create a file called ".env" in your projects root directory 
(Dont worry, its already .gitignored)
add your keys in the following format:

FLICKRAW_API_KEY=1e812e81
FLICKRAW_SHARED_SECRET=123438

```bash
git clone https://github.com/ParamagicDev/flickr-api-practice
cd flickr-api-practice
touch .env
echo "FLICKRAW_API_KEY=xyz" >> .env
echo "FLICKRAW_SHARED_SECRET=zyx" >> .env
```

### Running locally

```bash
docker-compose build
docker-compose run --rm web rails db:create
docker-compose up

# If on linux, some permission issues may arise, run:
sudo chown -R $USER:$USER .
```

Your server is now available @ localhost:3000
Enter in your user id or another persons and their photostream will pop up
