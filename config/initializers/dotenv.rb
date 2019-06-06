# frozen_string_literal: true

# Raise an error if the following config vars arent set
Dotenv.require_keys('FLICKRAW_API_KEY', 'FLICKRAW_SHARED_SECRET')
