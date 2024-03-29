class PostsController < ApplicationController
    #before_action :authenticate_user!
    before_action :set_post ,only:[:show , :update ,:destroy]
    def index
        @posts = Post.all
        render json: @posts
    end
    def show
        render json: @post
    end
    def create 
        @post = Post.new(post_params)
        if @post.save 
            render json: @post ,statut: :created, location: @post 
       
        else
            render json: @post.errors, statut: :unprocessable_entity
        end    
    end    

    def update 
        if @post.update(post_params)
            render json: @post 
       
        else
            render json: @post.errors, statut: :unprocessable_entity
        end    
    end
    def destroy 
        @post.destroy
    end
    
    private 

    def set_post 
        @post = Post.find(params[:id])
    end    
    def post_params 
        params.require(:post).permit!
    end
end
