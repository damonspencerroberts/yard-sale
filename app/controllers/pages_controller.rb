class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: :home
  def home
  end

  def profile
    @profile = "active"
  end

  def profilebookings
    @bookings = Booking.where('user_id = ?', current_user.id)
    @backyards = @bookings.map { |booking| Backyard.find(booking.backyard_id) }
  end

  def profilebackyards
    @backyards = Backyard.where('user_id = ?', current_user.id)
  end

  def profileconfirmation
    @backyards = Backyard.where('user_id = ?', current_user.id)
    @pending_bookings = @backyards.map { |yard| Booking.where('backyard_id = ?', yard.id) }.flatten
  end 
end
