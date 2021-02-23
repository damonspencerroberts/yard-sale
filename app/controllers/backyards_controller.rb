class BackyardsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :destroy]

  def index
    @backyards = Backyard.all
  end

  def show
    @backyard = Backyard.find(params[:id])
  end

  def new
    @backyard = Backyard.new
  end

  def destroy
    @backyard = Backyard.find(params[:id])
    if @backyard.user == current_user
      @backyard.destroy
      redirect_to backyards_path
    else
      flash.now[:notice] = "Only the owner can delete their yard!"
    end
  end

  def create
    @backyard = Backyard.new(backyard_params)
    @backyard.user_id = current_user.id
    if @backyard.save
      redirect_to backyard_path(@backyard)
    else
      render :new
    end
  end

  private

  def backyard_params
    params.require(:backyard).permit(:name, :address, :price, :description, :max_capacity, photos: [])
  end
end
