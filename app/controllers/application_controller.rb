module Blog
  class ApplicationController < Application
    register Sinatra::ActiveRecordExtension

    # set folder for templates to ../views, but make the path absolute
    set :views, File.expand_path('../../views', __FILE__)
  end
end
