class CommentsController < ApplicationController
    before_filter :require_login, except: [:create]
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:comment].permit(:name,:body))
        redirect_to post_path(@post)
    end
    
    def destroy
        @post = Post.find(params[:post_id])
        @comment= @post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
        
    end
end
