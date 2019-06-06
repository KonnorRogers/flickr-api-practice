# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def index
    FlickRaw.api_key = ENV['FLICKRAW_API_KEY']
    FlickRaw.shared_secret = ENV['FLICKRAW_SHARED_SECRET']
    flickr = FlickRaw::Flickr.new

    user_id = params[:user_id]
    return unless user_id

    begin
      photos = flickr.photos.search(user_id: user_id, per_page: 50)
      @photos = photos.map { |photo| FlickRaw.url_s(photo) }
    rescue FlickRaw::FailedResponse
      @no_user_found = 'Could not find a user with photos to display'
    end
  end

  private

  def user_params
    params.permit(:user_id)
  end
end
