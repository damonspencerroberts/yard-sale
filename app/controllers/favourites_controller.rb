class FavouritesController < ApplicationController
  def new
    @favourite = Favourite.new
  end

  def create
    @backyard = Backyard.find(params[:backyard_id])
    @favourite = Favourite.new(user: current_user, backyard: @backyard)
    @favourite.save
    redirect_to user_profile_favourites_path
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to user_profile_favourites_path
  end
end
