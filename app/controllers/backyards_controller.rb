class BackyardsController < ApplicationController
  def show
    @backyard = Backyard.find(params[:id])
  end

	def index
    @backyards = Backyard.all
	end

  def backyard_params
    params.require(:backyard).permit(:name, :address, :price, :description, photos: [])
  end
end

