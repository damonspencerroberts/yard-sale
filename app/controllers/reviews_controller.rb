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
			flash.now[:notice] = "Review not saved!"
			redirect_to backyard_path(@backyard)
		end
	end

	def edit
		@review = Review.find(params[:id])
		if @review.user == current_user
			@review = Review.find(params[:id])
			@backyard = @review.backyard
		else
			flash.now[:notice] = "You cannot update this review"
			redirect_to user_profile_reviews_path
		end
	end

	def update
		@review = Review.find(params[:id])
		if @review.update(review_params)
			redirect_to user_profile_reviews_path
		else
			flash.now[:notice] = "Cannot update this review"
			redirect_to user_profile_reviews_path
		end
	end

	def destroy
		@review = Review.find(params[:id])
		if @review.user == current_user
			@review.destroy
			redirect_to user_profile_reviews_path
		else
			flash.now[:notice] = "Cannot delete this review"
			redirect_to user_profile_reviews_path
		end
	end

	private

	def review_params
		params.require(:review).permit(:content, :rating)
	end
end

