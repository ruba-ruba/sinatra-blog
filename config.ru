require 'sinatra/base'

Dir.glob('./app/{helpers,controllers,views}/*.rb').each { |file| require file }
