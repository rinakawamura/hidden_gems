class FavoritesController < ApplicationController
    def create
        fav = Favorite.find_or_create_by(user_id: params[:user_id], location_id: params[:location_id])
        redirect_to location_path(fav.location)
    end

    def destroy
        fav = Favorite.find_by(user_id: params[:user_id], location_id: params[:location_id])
        loc = fav.location
        fav.delete
        redirect_to location_path(loc)
    end
end
