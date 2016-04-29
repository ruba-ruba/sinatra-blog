class MainController < ApplicationController
  set :views, File.expand_path('../../views/main', __FILE__)

  get '/' do
    haml :index
  end
end