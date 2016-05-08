module Blog
  class PostsController < ApplicationController
    get '/posts' do
      @posts = Post.all
      haml :'posts/index', layout: :application
    end
  end
end