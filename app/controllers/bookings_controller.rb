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
			redirect_to backyard_bookings_path
		else
			render :new
		end
	end

	def destroy
		@booking = Booking.find(params[:id])
		if @booking.user == current_user
			@booking.destroy
			redirect_to backyard_bookings_path
		else
			flash.now[:notice] = "Cannot delete this booking"
		end
	end

	private

	def booking_params
		params.require(:booking).permit(:date, :number_of_guests)
	end
end
