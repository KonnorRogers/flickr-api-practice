# frozen_string_literal: true

# Raise an error if the following config vars arent set
Dotenv.require_keys('FLICKR_API_KEY', 'FLICKR_SECRET_KEY')
