require 'sinatra'

module Blog
  class Application < Sinatra::Application
    include Blog::Router
  end
end