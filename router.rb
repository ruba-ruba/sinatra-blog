module Blog
  module Router  
    def self.included(receiver)
      receiver.class_eval do
        get('/') { HomeController.call(env) }
      end
    end
  end
end