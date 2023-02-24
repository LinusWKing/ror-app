class FavoritesController < ApplicationController

    def show
        @favorites = Favorite.all
    end

    def new
        @favorite = Favorite.new

    end

    def create
        @favorite = Favorite.new(favorite_params)        

        if @favorite.save
            redirect_to root_path, notice: 'Favorite was successfully added.'
        else
            render :new
        end
    end

    def edit
        @favorite = Favorite.find(params[:id])
    
    end


    def destroy
        @favorite = Favorite.find(params[:id])
        @favorite.destroy

        redirect_to favorites_path
    end

    private

    def favorite_params
        params.require(:favorite).permit(:title, :release_date)
    end
    def comment_params
        params.require(:comment).permit(:content)
      end
end
