class BackyardsController < ApplicationController
	def index
    @backyards = Backyard.all
	end
end
