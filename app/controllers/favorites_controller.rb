class FavoritesController < ApplicationController

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

    private

    def favorite_params
        params.require(:favorite).permit(:title, :release_date)
    end
end
