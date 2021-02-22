class BackyardsController < ApplicationController
	before_action :set_backyard, only: [:show, :destroy]
  
  def show; end

	def index
    @backyards = Backyard.all
	end

	def destroy
		@backyard.destroy
		redirect_to backyards_path
	end

	private

	def set_backyard
		@backyard = Backyard.find(params[:id])
	end

end

