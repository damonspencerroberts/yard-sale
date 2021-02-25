class UsersController < ApplicationController
  def update
    flash.now[:notice] = "Cannot add this image" unless current_user.update(image_params)
    redirect_to user_profile_path
  end

  private

  def image_params
    params.require(:user).permit(:avatar)
  end
end
