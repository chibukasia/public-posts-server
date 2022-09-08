class ApplicationController < Sinatra::Base 
    set :default_content_type, 'application/json'

    get '/posts' do 
        posts = Post.all 
        posts.to_json
    end
end