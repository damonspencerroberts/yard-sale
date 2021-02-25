class ReviewsController < ApplicationController
	# :edit, :update, :destroy
	def new
		@review = Review.new
	end

	def create
		@backyard = Backyard.find(params[:backyard_id])
		@review = Review.new(review_params)
		@review.user = current_user
		@review.backyard = @backyard
		if @review.save!
			redirect_to backyard_path(@backyard)
		else
			flash[:notice] = "Review not saved!"
			redirect_to backyard_path(@backyard)
		end
	end

	private

	def review_params
		params.require(:review).permit(:content, :rating)
	end
end

