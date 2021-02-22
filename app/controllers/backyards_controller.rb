class BackyardsController < ApplicationController
  def show
    @backyard = Backyard.find(params[:id])
  end

	def index
    @backyards = Backyard.all
	end
end

