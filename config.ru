require 'require_all'
require 'sinatra/base'
require 'bundler'
require 'pry'
require 'active_record'

Bundler.require

require_all "./app"

# require File.join(File.dirname(__FILE__), 'blog.rb')
# run Blog::Application

map('/main') { run MainController }