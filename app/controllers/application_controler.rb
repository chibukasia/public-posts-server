class ApplicationController < Sinatra::Base 
    set :default_content_type, 'application/json'

    # get all the posts from the posts table in the database
    get '/posts' do 
        posts = Post.all 
        posts.to_json(only: [:id, :title, :content, :category, :created_at, :posted_by], include: {
            comments: {only: [:id, :content, :created_at], include: {
                user: {only: [:id, :username]}
            }}
        }) 
    end

    # get a specific post using a post id
    get '/posts/:id' do 
        post = Post.find(params[:id])
        # post.to_json(include: {comments:{include: :user} })
        post.to_json(only: [:id, :title, :content, :category, :created_at, :posted_by], include: {
            comments: {only: [:content, :created_at], include: {
                user: {only: [:username]}
            }}
        })  
    end

    # update a post
    patch '/posts/:id' do 
        post = Post.find(params[:id])
        post.update(
            title: params[:title], 
            content: params[:content], 
            category: params[:category], 
            posted_by: params[:posted_by]
            )
        post.to_json
    end

    # delete a post
    delete '/posts/:id' do 
        post = Post.find(params[:id])
        post.destroy
        post.to_json
    end 

    # add a new post
    post '/posts' do 
        post = Post.create(title: params[:title], 
        content: params[:content],
        category: params[:category], 
        posted_by: params[:posted_by]
        )
        post.to_json
    end

    # add a new comment 
    post '/comments' do 
        comment = Comment.create(
            content: params[:content],
            user_id: params[:user_id],
            post_id: params[:post_id]
        )
        comment.to_json
    end


    # delete comment 
    delete '/comments/:id' do 
        comment = Comment.find(params[:id])
        comment.destroy
        comment.to_json
    end
    get '/comments' do 
        comments = Comment.all
        comments.to_json
    end
    # Get users
    get '/users' do 
        users = User.all 
        users.to_json 
    end

end