require 'require_all'
require 'rubygems'
require 'sinatra/base'
require 'bundler'
require 'pry'
require 'active_record'
require 'tilt/haml'

Bundler.require

require File.join(File.dirname(__FILE__), 'router.rb')
require File.join(File.dirname(__FILE__), 'blog.rb')

require_all "./app"
require_all "./config"
require_all "./db"



ActiveRecord::Base.establish_connection(
  :adapter  => "mysql2",
  :host     => "localhost",
  :username => "root",
  :password => "",
  :database => "sinatra_blog_development"
)

run Blog::Application
