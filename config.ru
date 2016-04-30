require 'require_all'
require 'rubygems'
require 'sinatra/base'
require 'bundler'
require 'pry'
require 'active_record'

Bundler.require

require_all "./app"
require_all "./config"
require_all "./db"

# require File.join(File.dirname(__FILE__), 'blog.rb')
# run Blog::Application

map('/') { run MainController }