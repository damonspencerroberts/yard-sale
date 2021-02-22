class BackyardsController < ApplicationController
  def show
    @backyard = Backyard.find(params[:id])
  end
end
