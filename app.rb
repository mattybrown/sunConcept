require 'bundler'
Bundler.require
require 'tilt/erb'
require './model'

class SunConcept < Sinatra::Base

  get '/' do
    @title = "Blenheim Sun online - Our community news"
    @date = Date.today.strftime '%a %-d %b %Y'

    haml :index
  end

  get '/stories' do

    story = Story.all
    @story
  end
  get '/users' do

  end
end
