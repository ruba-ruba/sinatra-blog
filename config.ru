require 'sinatra/base'
require 'bundler'

Bundler.require

Dir.glob('./app/{helpers,controllers,views}/*.rb').each { |file| require file }

# require File.join(File.dirname(__FILE__), 'blog.rb')
# run Blog::Application

map('/main') { run MainController }