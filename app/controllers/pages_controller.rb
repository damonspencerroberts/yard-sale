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
end
