class ApplicationController < ActionController::Base
  
  def authenticate_admin!
    if user_signed_in? && current_user.admin?
      true
    else
      redirect_to root_path
    end
  end
end