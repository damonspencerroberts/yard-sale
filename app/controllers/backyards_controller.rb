class BackyardsController < ApplicationController
	before_action :set_backyard, only: [:show, :destroy]
  
  def show; end

	def index
    @backyards = Backyard.all
	end

  def new
    @backyard = Backyard.new
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
  
  def destroy
		@backyard.destroy
		redirect_to backyards_path
	end

  private

	def set_backyard
		@backyard = Backyard.find(params[:id])
	end

  # must add photos below
  def backyard_params
    params.require(:backyard).permit(:name, :address, :price, :description, :max_capacity)
  end
end
