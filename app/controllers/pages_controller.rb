class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: :home
  
  def home
    @backyards = Backyard.all.first(6)
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
    # current_user.backyards.where(confirmed: nil)
    @backyards = current_user.backyards
    @pending_bookings = @backyards.map { |y| Booking.where('backyard_id = ?', y.id).where(confirmed: nil) }.flatten
  end

  def profilereviews
    @reviews = Review.where(user_id: current_user)
  end

  def profilefavourites
    @favourites = Favourite.where(user: current_user)
    @backyards = @favourites.map { |f| Backyard.where(id: f.backyard_id) }.flatten
  end
end
