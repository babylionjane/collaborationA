class PostController < ApplicationController
    def index
        @post = Post.all
    end
    
    def new
        post = Post.new
        
        post.title = params[:title]
        post.text = params[:content]
        
        post.save
        
        redirect_to '/'
    end
end
