class TagsController < ApplicationController
    
    def index
       @tags = Tag.all.order("created_at DESC") 
    end
    def show
       @tag = Tag.find(params[:id]) 
    end
    def destroy
        @tag.destroy
        redirect_to root_path
    end
end
