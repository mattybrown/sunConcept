require 'bundler'
Bundler.require
require 'tilt/erb'
require './model'

class SunConcept < Sinatra::Base

  get '/' do
    haml :index
  end

  get '/stories' do
    content_type :json

    story = Story.all
    story.to_json
  end
  get '/users' do
    content_type :json

  end
end
