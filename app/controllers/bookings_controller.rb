class BookingsController < ApplicationController
	def index
		@bookings = Booking.all
	end

	def show
		@booking = Booking.find(params[:id])
	end

	def new
		@booking = Booking.new
		@backyard = Backyard.find(params[:backyard_id])
	end

	def create
		@backyard = Backyard.find(params[:backyard_id])
		@booking = Booking.new(booking_params)
		@booking.backyard = @backyard
		@booking.user = current_user
		if @booking.save!
			redirect_to user_profile_bookings_path
		else
			render :new
		end
	end

	def edit
		@booking = Booking.find(params[:id])
		if @booking.user == current_user
			@backyard = Backyard.find(params[:backyard_id])
		else
			flash.now[:notice] = "Cannot update this booking"
			redirect_to user_profile_bookings_path
		end
	end

	def update
		@booking = Booking.find(params[:id])
		if @booking.update(booking_params)
			redirect_to user_profile_bookings_path
		else
			render :new
		end
	end

	def destroy
		@booking = Booking.find(params[:id])
		if @booking.user == current_user
			@booking.destroy
			redirect_to user_profile_bookings_path
		else
			flash.now[:notice] = "Cannot delete this booking"
			redirect_to user_profile_bookings_path
		end
	end

	private

	def booking_params
		params.require(:booking).permit(:date, :number_of_guests)
	end
end
