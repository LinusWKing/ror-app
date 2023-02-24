class CommentsController < ApplicationController
    def create
        @favorite = Favorite.find(params[:id])
        @comment = @favorite.comments.create(comment_params)
        @comment.save
        redirect_to favorites_path(@favorite)
      end
    
      def update
        @favorite = Favorite.find(params[:id])
        @comment = @favorite.comments.find(params[:id])
        if @comment.update(comment_params)
          redirect_to favorites_path(@favorite)
        else
          render 'favorites/show'
        end
      end
    
      def destroy
        @favorite = Favorite.find(params[:id])
        @comment = @favorite.comments.find(params[:id])
        @comment.destroy
        redirect_to favorites_path(@favorite)
      end
    
      private
        def comment_params
          params.require(:comment).permit(:content)
        end
  end
  