class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: :home
  def home
  end

  def profile
    @profile = "active"
  end

  def profilebookings
  end
end
