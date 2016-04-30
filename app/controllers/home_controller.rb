module Blog
  class HomeController < ApplicationController
    get '/' do
      haml :'home/index', layout: :application
    end
  end
end